`include "SME_spec_param.v"


module KMP_Control(clk, reset, input_valid, str_last_idx, pat_last_idx, i_match_valid ,i_match, i_match_idx, pe_valid, start_idx, process_2idx, o_match, o_valid, o_match_idx);
input clk;
input reset;
input input_valid;
input [`MAX_STR_ADD - 1: 0] str_last_idx;
input [`MAX_PAT_ADD - 1: 0] pat_last_idx; // as same as "overlap size"

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

reg compare_valid;
reg pe_done_distri;
reg o_done;
integer i, j;

wire [`MAX_STR_ADD - 1: 0] num_part;
assign num_part = (str_last_idx + 1) >> `DIVIDE_SHIFT;

wire [`MAX_STR_ADD - 1: 0] remaining;
assign remaining = (str_last_idx + 1) - (num_part * `NUM_PE);

assign o_match = (i_match == 0)?  0 : 1;

wire [`NUM_PE  * (`MAX_STR_ADD + 1) - 1 : 0] match_idx_extension;
genvar g_i;
generate
  for(g_i = 0; g_i < `NUM_PE; g_i = g_i + 1)
  begin
    assign match_idx_extension[(`MAX_STR_ADD + 1) * g_i +: (`MAX_STR_ADD + 1)] = { !i_match[g_i], i_match_idx[g_i * `MAX_STR_ADD +: `MAX_STR_ADD] };
  end
endgenerate

wire [`MAX_STR_ADD - 1 : 0] compare_result;
wire compare_done;

PE_Result_Comparator comp1(
  .clk(clk),
  .reset(reset),
  .pe_result(match_idx_extension),
  .i_valid(compare_valid),
  .output_result(compare_result),
  .o_valid(compare_done));

/*
assign compare_1a = (match_idx_extension[0 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)] <= match_idx_extension[1 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)])?  
                    match_idx_extension[0 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)] : match_idx_extension[1 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)];
assign compare_1b = (match_idx_extension[2 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)] <= match_idx_extension[3 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)])?  
                    match_idx_extension[2 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)] : match_idx_extension[3 * (`MAX_STR_ADD + 1) +: (`MAX_STR_ADD + 1)];
assign compare_result = (compare_1a <= compare_1b)? compare_1a[0 +: `MAX_STR_ADD]:compare_1b[0 +: `MAX_STR_ADD];
*/

always@(posedge clk)
begin
  if(reset)
  begin
    pe_valid <= 0;
    start_idx <= 0;
    process_2idx <= 0;
    o_valid <= 0;
    o_match_idx <= 0;
    pe_done_distri <= 0;
    o_done <= 0;
    compare_valid <= 0;
  end

  else
  begin
    if(input_valid)
    begin
      if(pe_done_distri)begin pe_valid <= 1; pe_done_distri <= 0; end else ;
      if(remaining > pat_last_idx)
      begin

        pe_done_distri <= 1;
        start_idx[0 * `MAX_STR_ADD +: `MAX_STR_ADD] <= 0;
        for(i = 1; i < `NUM_PE; i = i + 1)
        begin
          start_idx[i * `MAX_STR_ADD +: `MAX_STR_ADD] <= i * num_part + remaining - pat_last_idx;
        end

        for(j = 0; j < `NUM_PE; j = j + 1)
        begin
          process_2idx[j * `MAX_STR_ADD +: `MAX_STR_ADD] <= (j+1) * num_part + remaining - 1;
        end

      end
      else
      begin
        pe_done_distri <= 1;

        for(i = 0; i < `NUM_PE; i = i + 1)
        begin
          start_idx[i * `MAX_STR_ADD +: `MAX_STR_ADD] <= i * num_part;
        end

        for(j = 0; j < `NUM_PE - 1; j = j + 1)
        begin
          process_2idx[j * `MAX_STR_ADD +: `MAX_STR_ADD] <= (j+1) * num_part + pat_last_idx - 1;
        end
        process_2idx[(`NUM_PE - 1) * `MAX_STR_ADD +: `MAX_STR_ADD] <= `NUM_PE * num_part + remaining - 1;

      end
    end
    else
    begin
      pe_valid <= 0;
      start_idx <= 0;
      process_2idx <= 0;
      pe_done_distri <= 0;
    end

    if(i_match_valid == {`NUM_PE{1'b1}} && input_valid)
    begin
      if(!o_match)
      begin
        o_done <= 1;
        o_match_idx <= 0;
      end
      else
      begin//compare result
        compare_valid <= 1;
        if(compare_done)
        begin
          o_done <= 1;
          o_match_idx <= compare_result;
        end
      end
      if(o_done)begin o_valid <= 1; o_done <= 0; end else o_valid <= 0;
    end
    else
    begin
      o_done <= 0;
      o_valid <= 0;
      o_match_idx <= 0;
      compare_valid <= 0;
    end
  end

end

endmodule