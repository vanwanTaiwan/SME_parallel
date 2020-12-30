`include "SME_spec_param.v"

module PE_Result_Comparator(clk, reset, pe_result, i_valid, output_result, o_valid);
input clk;
input reset;
input [`NUM_PE  * (`MAX_STR_ADD + 1) - 1 : 0] pe_result;
input i_valid;
output reg [`MAX_STR_ADD - 1 : 0] output_result;
output reg o_valid;

reg [ `NUM_PE * (`MAX_STR_ADD + 1) - 1 : 0] compare_buf;
reg [ `PE_ADD_LEN : 0] left_compare;

localparam NUM_STATE = 4;
reg [NUM_STATE - 2 : 0] current_st;
reg [NUM_STATE - 2 : 0] next_st;
  localparam IDLE = 3'b000;
  localparam LOAD_IN = 3'b001;
  localparam COMPARE = 3'b010;
  localparam DONE = 3'b100;

reg load_done;
reg compare_done;

integer i;

always@(*)
begin
  if(reset)
  begin
    next_st = IDLE;
  end
  else
  begin
    case(current_st)
    IDLE:begin if(i_valid) next_st = LOAD_IN; else next_st = IDLE; end
    LOAD_IN:begin if(load_done) next_st = COMPARE; else next_st = LOAD_IN; end
    COMPARE:begin if(compare_done) next_st = DONE; else next_st = COMPARE; end
    DONE:begin if(!i_valid) next_st = IDLE; else next_st = DONE; end
    default: next_st = next_st; //do Nothing;
    endcase
  end
end

always@(posedge clk)
begin
  if(reset)  current_st <= IDLE;
  else current_st <= next_st;
end


always@(posedge clk)
begin
  if(reset)
  begin
    output_result <= 0;
    o_valid <= 0;
    compare_buf <= 0;
    left_compare <= `NUM_PE;
    load_done <= 0;
    compare_done <= 0;
  end
  else
  begin
    if(current_st == LOAD_IN)
    begin
      compare_buf <= pe_result;
      load_done <= 1;
    end
    else if(current_st == COMPARE)
    begin
      load_done <= 0;
      if(left_compare != 1)
      begin
        left_compare <= left_compare >> 1;
      
        for(i = 0; i < `NUM_PE; i = i + 1)
        begin
            if((left_compare - 1 - i) >= 0)
            begin
            compare_buf[i * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)] <= 
            (compare_buf[i * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)] <= compare_buf[(left_compare - 1 - i) * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)])?
            compare_buf[i * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)] : compare_buf[(left_compare - 1 - i) * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)];
            end
            else begin compare_buf[i * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)] <= 0; end
        end
      end
      else
      begin
        compare_done <= 1;
        output_result <= compare_buf[0 +: `MAX_STR_ADD];
      end
    end
    else if(current_st == DONE)
    begin
      left_compare <= `NUM_PE;
      compare_done <= 0;
      o_valid <= 1;
    end
    else
    begin
      o_valid <= 0;
      output_result <= 0;
    end
  end
end

endmodule