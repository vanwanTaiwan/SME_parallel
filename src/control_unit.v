`include "SME_spec_param.v"


module KMP_Control(clk, reset, input_valid, str_last_idx, pat_last_idx, i_match_valid ,i_match, i_match_idx, pe_valid, start_idx, process_2idx, o_match, o_valid, o_match_idx);
input clk;
input reset;
input input_valid;
input [`MAX_STR_ADD - 1: 0] str_last_idx;
input [`MAX_PAT_ADD - 1: 0] pat_last_idx; // the same as "overlap"

input [`NUM_PE - 1 : 0] i_match_valid;
input [`NUM_PE - 1 : 0] i_match;
input [`NUM_PE  * `MAX_STR_ADD - 1 : 0] i_match_idx;

//for PE
output reg pe_valid;
output reg [`MAX_STR_ADD * `NUM_PE - 1 : 0] start_idx;
output reg [`MAX_STR_ADD * `NUM_PE - 1 : 0] process_2idx;

//for output
output o_match;
output reg o_valid;
output reg [`MAX_STR_ADD - 1 : 0] o_match_idx;
//---------------------input/output---------------------//

wire [`MAX_STR_ADD - 1: 0] num_part;
assign num_part = (str_last_idx + 1) >> `DIVIDE_SHIFT;

wire [`MAX_STR_ADD - 1: 0] remaining;
assign remaining = (str_last_idx + 1) - (num_part * `NUM_PE);

assign o_match = i_match[0] | i_match[1] | i_match[2] | i_match[3];

wire [`NUM_PE  * (`MAX_STR_ADD + 1) - 1 : 0] match_idx_extension;
wire [(`MAX_STR_ADD + 1) - 1 : 0] compare_1a, compare_1b, compare_result;
assign match_idx_extension = { !i_match[0], i_match_idx[0 * `MAX_STR_ADD +: `MAX_STR_ADD],
                               !i_match[1], i_match_idx[1 * `MAX_STR_ADD +: `MAX_STR_ADD],
                               !i_match[2], i_match_idx[2 * `MAX_STR_ADD +: `MAX_STR_ADD],
                               !i_match[3], i_match_idx[3 * `MAX_STR_ADD +: `MAX_STR_ADD]};

assign compare_1a = (match_idx_extension[0 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)] <= match_idx_extension[1 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)])?  
                    match_idx_extension[0 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)] : match_idx_extension[1 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)];
assign compare_1b = (match_idx_extension[2 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)] <= match_idx_extension[3 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)])?  
                    match_idx_extension[2 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)] : match_idx_extension[3 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)];
assign compare_result = (compare_1a <= compare_1b)? compare_1a[0 +: `MAX_STR_ADD]:compare_1b[0 +: `MAX_STR_ADD];


always@(posedge clk)
begin
  if(reset)
  begin
    pe_valid <= 0;
    start_idx <= 0;
    process_2idx <= 0;
    o_valid <= 0;
    o_match_idx <= 0;
  end

  else
  begin
    if(input_valid)
    begin
      if(remaining > pat_last_idx)
      begin
        pe_valid <= 1;

        start_idx[0 * `MAX_STR_ADD +: `MAX_STR_ADD] <= 0;
        start_idx[1 * `MAX_STR_ADD +: `MAX_STR_ADD] <= num_part + remaining - pat_last_idx;
        start_idx[2 * `MAX_STR_ADD +: `MAX_STR_ADD] <= 2 * num_part + remaining - pat_last_idx;
        start_idx[3 * `MAX_STR_ADD +: `MAX_STR_ADD] <= 3 * num_part + remaining - pat_last_idx;

        process_2idx[0 * `MAX_STR_ADD +: `MAX_STR_ADD] <= num_part + remaining - 1;
        process_2idx[1 * `MAX_STR_ADD +: `MAX_STR_ADD] <= 2 * num_part + remaining - 1;
        process_2idx[2 * `MAX_STR_ADD +: `MAX_STR_ADD] <= 3 * num_part + remaining - 1;
        process_2idx[3 * `MAX_STR_ADD +: `MAX_STR_ADD] <= 4 * num_part + remaining - 1;
      end
      else
      begin
        pe_valid <= 1;

        start_idx[0 * `MAX_STR_ADD +: `MAX_STR_ADD] <= 0;
        start_idx[1 * `MAX_STR_ADD +: `MAX_STR_ADD] <= num_part;
        start_idx[2 * `MAX_STR_ADD +: `MAX_STR_ADD] <= 2 * num_part;
        start_idx[3 * `MAX_STR_ADD +: `MAX_STR_ADD] <= 3 * num_part;

        process_2idx[0 * `MAX_STR_ADD +: `MAX_STR_ADD] <= num_part + pat_last_idx - 1;
        process_2idx[1 * `MAX_STR_ADD +: `MAX_STR_ADD] <= 2 * num_part + pat_last_idx - 1;
        process_2idx[2 * `MAX_STR_ADD +: `MAX_STR_ADD] <= 3 * num_part + pat_last_idx - 1;
        process_2idx[3 * `MAX_STR_ADD +: `MAX_STR_ADD] <= 4 * num_part + remaining - 1;
      end
    end
    else
    begin
      pe_valid <= 0;
      start_idx <= 0;
      process_2idx <= 0;
    end

    if(i_match_valid == {`NUM_PE{1'b1}} && input_valid)
    begin
      if(!o_match)
      begin
        o_valid <= 1;
        o_match_idx <= 0;
      end
      else
      begin
        o_valid <= 1;
        o_match_idx <= compare_result;
      end
    end
    else
    begin
      o_valid <= 0;
      o_match_idx <= 0;
    end
  end

end

endmodule