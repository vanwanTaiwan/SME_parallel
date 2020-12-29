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

  wire [`NUM_PE - 1 : 0] pe_valid;
  wire [`NUM_PE - 1 : 0] pe_match;
  wire [`NUM_PE * `MAX_STR_ADD - 1 : 0] pe_m_idx;

  wire [`NUM_PE * `MAX_STR_ADD  - 1 : 0] pe_start_idx;
  wire [`NUM_PE * `MAX_STR_ADD  - 1 : 0] pe_pro_2idx;

  KMP_Control control(.clk(clk),
                      .reset(reset),
                      .input_valid(input_valid),
                      .str_last_idx(str_last_index),
                      .pat_last_idx(pat_last_index),
                      .i_match_valid(pe_valid),
                      .i_match(pe_match),
                      .i_match_idx(pe_m_idx),
                      .pe_valid(pe_valid),
                      .start_idx(pe_start_idx),
                      .process_2idx(pe_pro_2idx),
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

  genvar i;
  generate
    begin: pe_block
      for(i = 0; i < `NUM_PE; i = i + 1)
      begin
      KMP_pe pe(.clk(clk),
                .reset(reset),
                .str_input(str), 
                .pat_input(pat),
                .input_valid(input_valid),
                .start_idx( pe_start_idx[i * `MAX_STR_ADD +: `MAX_STR_ADD] ),
                .process_2idx( pe_pro_2idx[i * `MAX_STR_ADD +: `MAX_STR_ADD] ),
                .pat_last_idx(pat_last_index),
                .ff_result(ff_result),
                .output_valid( pe_valid[i] ),
                .match( pe_match[i] ),
                .match_idx(pe_m_idx[i * `MAX_STR_ADD +: `MAX_STR_ADD]));
      end
    end
  endgenerate

endmodule