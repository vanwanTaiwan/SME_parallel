`include "SME_spec_param.v"

module pe_slave(clk, reset, str_input, pat_input, input_valid, start_idx, process_2idx, ff_result, output_valid, match, match_idx);
input clk;
input reset;
input [`MAX_STRING * `BYTE - 1 : 0] str_input;
input [`MAX_PATTERN * `BYTE - 1 : 0] pat_input;
input input_valid;
input [`MAX_STR_ADD - 1 : 0] start_idx;
input [`MAX_STR_ADD - 1 : 0] process_2idx;
input [`MAX_PAT_ADD * `MAX_PATTERN - 1 : 0] ff_result;

output reg output_valid;
output reg match;
output reg [`MAX_STR_ADD - 1 : 0] match_idx;
//---------------------input/output---------------------//

localparam NUM_STATE = 4;
reg [NUM_STATE - 1 : 0] current_st;
reg [NUM_STATE - 1 : 0] next_st;
  localparam IDLE_ST = 'b0001;
  localparam PRE_ST = 'b0010;
  localparam COM_ST = 'b0100;
  localparam DONE_ST = 'b1000;
//---------------------FSM PARM---------------------//

reg signed [`MAX_PAT_ADD - 1 : 0] kmp_map [0 : `MAX_PATTERN - 1];


always@(posedge clk)
begin
  if(reset) current_st <= IDLE_ST;
  else current_st <= next_st;
end

always@(*)
begin
  case(current_st)
  IDLE_ST: if(input_valid) next_st = PRE_ST;
  endcase
end



endmodule