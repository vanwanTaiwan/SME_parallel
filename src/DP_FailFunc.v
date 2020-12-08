`include "SME_spec_param.v"

module DP_FailFunc(clk, reset, i_valid, pattern, last_pat_idx, o_fail_func, o_valid);
  input clk;
  input reset;
  input i_valid;
  input [`MAX_PATTERN * `BYTE - 1 : 0] pattern;
  input [`MAX_PAT_ADD - 1: 0] last_pat_idx;
  output reg [`MAX_PAT_ADD * `MAX_PATTERN - 1 : 0] o_fail_func;
  output reg o_valid;
  //---------------------input/output---------------------//

  reg [`MAX_PAT_ADD - 1 : 0] process_idx;
  reg [`MAX_PAT_ADD - 1 : 0] last_ff_map;
  reg done_flag;
  //---------------------control signal---------------------//

  localparam NUM_STATE = 2;
  reg [NUM_STATE - 1:0] current_st;
  reg [NUM_STATE - 1:0] next_st;
    localparam IDLE_ST = 2'b00;
    localparam CALCU_ST = 2'b01;
    localparam DONE_ST = 2'b10;
  //---------------------FSM declare---------------------//

  integer i;
  //---------------------end declare---------------------//

  //FSM state current change.
  always@(posedge clk)
  begin
    if(reset) current_st <= IDLE_ST;
    else current_st <= next_st;
  end

  //FSM state next state change condition.
  always@(*)
  begin
    if(reset) next_st = IDLE_ST;
    else
    begin
      case(current_st)
        IDLE_ST : if(i_valid) next_st = CALCU_ST; else next_st = IDLE_ST;
        CALCU_ST : if(done_flag) next_st = DONE_ST; else next_st = CALCU_ST;
        DONE_ST : if(!i_valid) next_st = IDLE_ST; else next_st = DONE_ST;
        default : ; // Do Nothing
      endcase
    end
  end

  //output syn. reset
  always@(posedge clk)
  begin
    if(reset || (!i_valid) )
    begin
      o_valid <= 0;
    end

    else if(done_flag)
    begin
      o_valid <= 1;
    end

    else ;// Do Nothing

  end

  //main(state: CALCU_ST): (DP)failure function implement.
  //!!!Respect!!! Richard Bellman
  always@(posedge clk)
  begin
    if(reset)
    begin
      process_idx <= 0;
      done_flag <= 0;
      last_ff_map <= 0;

      for(i = 0; i < (`MAX_PAT_ADD * `MAX_PATTERN); i = i + 1)
      begin
        o_fail_func[i] <= 0;
      end
    end

    else if(current_st == CALCU_ST)
    begin
      if(!done_flag)
      begin
        if(process_idx == 0)begin o_fail_func[2:0] <= 0; process_idx <= process_idx + 1; last_ff_map <= 0; end
        else
        begin
          if(pattern[last_ff_map * `BYTE +: `BYTE] == pattern[process_idx * `BYTE +: `BYTE])
          begin
            o_fail_func[process_idx * `MAX_PAT_ADD +: `MAX_PAT_ADD] <= last_ff_map + 1;
            last_ff_map <= last_ff_map + 1;
            process_idx <= process_idx + 1;
          end
          else
          begin
            o_fail_func[process_idx * `MAX_PAT_ADD +: `MAX_PAT_ADD] <= 0;
            last_ff_map <= 0;
            process_idx <= process_idx + 1;
          end
        end
        if(process_idx == last_pat_idx)begin process_idx <= 0; last_ff_map <= 0; done_flag <= 1; end else ;
      end
    end

    else
    begin
      process_idx <= 0;
      done_flag <= 0;
      last_ff_map <= 0;
    end
  end
endmodule