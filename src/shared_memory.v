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
  reg [1:0] active;
    localparam NON_READ = 0;
    localparam READING = 1;
    localparam FF_CAL = 2;
    localparam DONE = 3;

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
      if(reset)
      begin
        s_index <= 0;
        p_index <= 0;
        str_last_idx <= 0;
        pat_last_idx <= 0;
        active <= NON_READ;
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
        active <= READING;
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
        if(active == READING) begin active <= FF_CAL; read_done <= 1; end
        else if(active == FF_CAL)begin if(ff_valid) begin active <= DONE;  end end
        else if(active == DONE) begin active <= NON_READ; valid <= 1; end
        else begin active <= NON_READ; end

        s_index <= 0;
        p_index <= 0;
      end
end

endmodule