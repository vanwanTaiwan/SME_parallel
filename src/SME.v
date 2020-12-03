module SME(
  input clk,
  input reset,
  input [7:0] chardata,
  input isstring,
  input ispattern,
  output reg valid,
  output reg match,
  output reg [4:0] match_index
  );

  wire write;
  assign write = (ispattern || isstring)? 1:0;
  wire w_sel;
  assign w_sel = (ispattern)? 1:0;

  wire [255:0]str;
  wire [63:0] pat;
  shared_memory s1(.clk(clk), .reset(reset), .w_data(chardata), .write(write), .w_sel(w_sel), .str_reg(str), .pat_reg(pat));



endmodule