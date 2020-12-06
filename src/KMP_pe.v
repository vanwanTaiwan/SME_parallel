`include "SME_spec_param.v"

module KMP_pe(clk, reset, str_input, pat_input, input_valid, start_idx, process_2idx, pat_last_idx, ff_result, output_valid, match, match_idx);
  input clk;
  input reset;
  input [`MAX_STRING * `BYTE - 1 : 0] str_input;
  input [`MAX_PATTERN * `BYTE - 1 : 0] pat_input;
  input input_valid;
  input [`MAX_STR_ADD - 1 : 0] start_idx;
  input [`MAX_STR_ADD - 1 : 0] process_2idx;
  input [`MAX_PAT_ADD - 1 : 0] pat_last_idx;
  input [`MAX_PAT_ADD * `MAX_PATTERN - 1 : 0] ff_result;

  output reg output_valid;
  output reg match;
  output reg [`MAX_STR_ADD - 1 : 0] match_idx;
  //---------------------input/output---------------------//

  localparam NUM_STATE = 4;
  reg [NUM_STATE - 1 : 0] current_st;
  reg [NUM_STATE - 1 : 0] next_st;
    localparam IDLE_ST = 4'b0001;
    localparam INIT_PRO_IDX = 4'b0010;
    localparam COM_ST = 4'b0100;
    localparam DONE_ST = 4'b1000;
  //---------------------FSM PARM---------------------//

  reg done;
  reg [`MAX_STR_ADD - 1 : 0] str_pro_idx;
  reg [`MAX_PAT_ADD - 1 : 0] pat_pro_idx;
  //---------------------control signal---------------------//

  //FSM state current change.
  always@(posedge clk)
  begin
    if(reset) current_st <= IDLE_ST;
    else current_st <= next_st;
  end

  //FSM state next state change condition.
  always@(*)
  begin
    case(current_st)
    IDLE_ST: if(input_valid) next_st = INIT_PRO_IDX; else next_st = IDLE_ST;
    INIT_PRO_IDX: next_st = COM_ST;
    COM_ST: if(done) next_st = DONE_ST; else next_st = COM_ST;
    DONE_ST: if(!input_valid) next_st = IDLE_ST; else next_st = DONE_ST;
    default : ;// Do Nothing
    endcase
  end

  //output syn. reset
  always@(posedge clk)
  begin
    if(reset)
    begin
      output_valid <= 0;
      match <= 0;
      match_idx <= 0;
      str_pro_idx <= 0;
      pat_pro_idx <= 0;
    end

    else if(current_st == INIT_PRO_IDX)
    begin
      str_pro_idx <= start_idx;
      pat_pro_idx <= 0;
    end

    else if(current_st == COM_ST)
    begin
      if(str_input[str_pro_idx * `BYTE +: `BYTE] == pat_input[pat_pro_idx * `BYTE +: `BYTE])
      begin
        if(pat_pro_idx == pat_last_idx)
        begin
          done <= 1;
          match <= 1;
          match_idx <= str_pro_idx - pat_last_idx;
        end
        else if(str_pro_idx == process_2idx)
        begin
          done <= 1;
          match <= 0;
          match_idx <= 0;
        end
        else
        begin
          str_pro_idx <= str_pro_idx + 1;
          pat_pro_idx <= pat_pro_idx + 1;
        end
      end

      else
      begin
        if(str_pro_idx == process_2idx)
        begin
          done <= 1;
          match <= 0;
          match_idx <= 0;
        end
        else
        begin
          if(pat_pro_idx == 0) begin pat_pro_idx <= 0; str_pro_idx <= str_pro_idx + 1; end
          else pat_pro_idx <= ff_result[(pat_pro_idx - 1) * `MAX_PAT_ADD +: `MAX_PAT_ADD];
        end
      end
    end

    else if(current_st == DONE_ST && input_valid)
    begin
      output_valid <= 1;
    end

    else
    begin
      done <= 0;
      output_valid <= 0;
      match <= 0;
      match_idx <= 0;
    end
  end


endmodule