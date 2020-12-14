`include "SME_spec_param.v"

module SME(
  input clk,
  input reset,
  input [`BYTE - 1 : 0] chardata,
  input isstring,
  input ispattern,
  output valid,
  output match,
  output [`MAX_STR_ADD - 1 : 0] match_index
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

  wire pe1_valid, pe2_valid, pe3_valid, pe4_valid;
  wire pe1_match, pe2_match, pe3_match, pe4_match;
  wire [`MAX_STR_ADD - 1 : 0] pe1_m_idx, pe2_m_idx, pe3_m_idx, pe4_m_idx;


  wire pe_valid;
  wire [`MAX_STR_ADD  - 1 : 0] pe1_start_idx, pe2_start_idx, pe3_start_idx, pe4_start_idx;
  wire [`MAX_STR_ADD  - 1 : 0] pe1_pro_2idx, pe2_pro_2idx, pe3_pro_2idx, pe4_pro_2idx;

  KMP_Control control(.clk(clk),
                      .reset(reset),
                      .input_valid(input_valid),
                      .str_last_idx(str_last_index),
                      .pat_last_idx(pat_last_index),
                      .i_match_valid({pe1_valid, pe2_valid, pe3_valid, pe4_valid}),
                      .i_match({pe1_match, pe2_match, pe3_match, pe4_match}),
                      .i_match_idx({pe1_m_idx, pe2_m_idx, pe3_m_idx, pe4_m_idx}),
                      .pe_valid(pe_valid),
                      .start_idx({pe1_start_idx, pe2_start_idx, pe3_start_idx, pe4_start_idx}),
                      .process_2idx({pe1_pro_2idx, pe2_pro_2idx, pe3_pro_2idx, pe4_pro_2idx}),
                      .o_match(match),
                      .o_valid(valid),
                      .o_match_idx(match_index));

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


  KMP_pe pe1(.clk(clk), 
               .reset(reset), 
               .str_input(str), 
               .pat_input(pat), 
               .input_valid(pe_valid), 
               .start_idx(pe1_start_idx), 
               .process_2idx(pe1_pro_2idx),
               .pat_last_idx(pat_last_index),
               .ff_result(ff_result),
               .output_valid(pe1_valid), 
               .match(pe1_match), 
               .match_idx(pe1_m_idx));

  KMP_pe pe2(.clk(clk), 
               .reset(reset), 
               .str_input(str), 
               .pat_input(pat), 
               .input_valid(pe_valid), 
               .start_idx(pe2_start_idx), 
               .process_2idx(pe2_pro_2idx),
               .pat_last_idx(pat_last_index),
               .ff_result(ff_result),
               .output_valid(pe2_valid), 
               .match(pe2_match), 
               .match_idx(pe2_m_idx));
  
  KMP_pe pe3(.clk(clk), 
               .reset(reset), 
               .str_input(str), 
               .pat_input(pat), 
               .input_valid(pe_valid), 
               .start_idx(pe3_start_idx), 
               .process_2idx(pe3_pro_2idx),
               .pat_last_idx(pat_last_index),
               .ff_result(ff_result),
               .output_valid(pe3_valid), 
               .match(pe3_match), 
               .match_idx(pe3_m_idx));
  
  KMP_pe pe4(.clk(clk), 
               .reset(reset), 
               .str_input(str), 
               .pat_input(pat), 
               .input_valid(pe_valid), 
               .start_idx(pe4_start_idx), 
               .process_2idx(pe4_pro_2idx),
               .pat_last_idx(pat_last_index),
               .ff_result(ff_result),
               .output_valid(pe4_valid), 
               .match(pe4_match), 
               .match_idx(pe4_m_idx));



endmodule