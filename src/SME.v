`include "SME_spec_param.v"

module SME(
  input clk,
  input reset,
  input [`BYTE - 1 : 0] chardata,
  input isstring,
  input ispattern,
  output reg valid,
  output reg match,
  output reg [`MAX_STR_ADD - 1 : 0] match_index
  );

  wire write;
  assign write = (ispattern || isstring)? 1:0;
  wire w_sel;
  assign w_sel = (ispattern)? 1:0;

  wire [`MAX_STRING * `BYTE - 1 : 0]str;
  wire [`MAX_PATTERN * `BYTE - 1 : 0] pat;
  wire [`MAX_STR_ADD - 1: 0] str_last_index;
  wire [`MAX_PAT_ADD - 1: 0] pat_last_index;
  wire input_valid;
  wire [`MAX_PAT_ADD * `MAX_PATTERN - 1 : 0] ff_result;
  shared_memory s1(.clk(clk), 
                   .reset(reset), 
                   .w_data(chardata), 
                   .write(write), 
                   .w_sel(w_sel), 
                   .str_reg(str), 
                   .pat_reg(pat), 
                   .str_last_idx(str_last_index), 
                   .pat_last_idx(pat_last_index), 
                   .ff_result(ff_result), 
                   .valid(input_valid));

  wire o_valid;
  wire s_match;
  wire [`MAX_STR_ADD - 1 : 0] s_match_idx;
  pe_slave ps1(.clk(clk), 
               .reset(reset), 
               .str_input(str), 
               .pat_input(pat), 
               .input_valid(input_valid), 
               .start_idx(5'b0), 
               .process_2idx(str_last_index), 
               .ff_result(ff_result),
               .output_valid(o_valid), 
               .match(s_match), 
               .match_idx(s_match_idx));



endmodule