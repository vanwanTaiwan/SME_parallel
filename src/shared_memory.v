`include "SME_spec_param.v"

module shared_memory(clk, reset, w_data, write, w_sel, str_reg, pat_reg, str_last_idx, pat_last_idx, ff_result, valid);
  input clk;
  input reset;
  input [`BYTE - 1:0] w_data;
  input write;
  input w_sel;

  output reg [`MAX_STRING * `BYTE - 1 : 0] str_reg;
  output reg [`MAX_PATTERN * `BYTE - 1 : 0] pat_reg;
  output reg [`MAX_STR_ADD - 1: 0] str_last_idx;
  output reg [`MAX_PAT_ADD - 1: 0] pat_last_idx;
  output [`MAX_PAT_ADD * `MAX_PATTERN - 1 : 0] ff_result;
  output reg valid;
//---------------------input/output---------------------//
  integer i, j;
  parameter sel_str_reg = 0;
  parameter sel_pat_reg = 1;

  reg [`MAX_STR_ADD - 1 : 0] s_index;
  reg [`MAX_PAT_ADD - 1 : 0] p_index;
  reg [1:0] current_st;
  reg [1:0] next_st;
    localparam NON_READ = 2'd0;
    localparam READING = 2'd1;
    localparam FF_CAL = 2'd2;
    localparam DONE = 2'd3;

  reg read_done;

  wire ff_valid;
  DP_FailFunc dp1(.clk(clk), 
                  .reset(reset), 
                  .i_valid(read_done), 
                  .pattern(pat_reg), 
                  .last_pat_idx(pat_last_idx), 
                  .o_fail_func(ff_result), 
                  .o_valid(ff_valid));

  always@(posedge clk)
  begin
    if(reset) current_st <= NON_READ;
    else current_st <= next_st;
  end
  
  always@(*)
  begin
    if(reset) next_st = NON_READ;
    else
    begin
      case(current_st)
        NON_READ : if(write) next_st = READING; else next_st = NON_READ;
        READING  : if(!write) next_st = FF_CAL; else next_st = READING;
        FF_CAL   : if(ff_valid) next_st = DONE; else next_st = FF_CAL;
        DONE     : next_st = NON_READ;
        default  : ;//Do Nothing
      endcase
    end
  end

  always@(posedge clk)
  begin
      if(reset)
      begin
        s_index <= 0;
        p_index <= 0;
        str_last_idx <= 0;
        pat_last_idx <= 0;
        valid <= 0;
        read_done <= 0;

        for(i = 0; i < (`MAX_STRING * `BYTE); i = i + 1)
        begin
          str_reg[i] <= 0;
        end

        for(j = 0; j < (`MAX_PATTERN * `BYTE); j = j + 1)
        begin
          pat_reg[j] <= 0;
        end
      end
      
      else if(write)
      begin
        read_done <= 0;
        valid <= 0;
        case(w_sel)
          sel_str_reg : begin str_reg[s_index * `BYTE +: `BYTE] <= w_data; s_index <= s_index + 1; str_last_idx <= s_index; p_index <= p_index; pat_last_idx <= pat_last_idx; end
          sel_pat_reg : begin pat_reg[p_index * `BYTE +: `BYTE] <= w_data; p_index <= p_index + 1; pat_last_idx <= p_index; s_index <= s_index; str_last_idx <= str_last_idx; end
          default : ;
        endcase
      end

      else
      begin
        if(current_st == READING) begin read_done <= 1; end
        else if(current_st == DONE) begin valid <= 1; end
        
        s_index <= 0;
        p_index <= 0;
      end
end

endmodule