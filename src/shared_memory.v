`define BYTE 8
`define NUM_SLAVE 4
`define MAX_STRING 32
  `define MAX_STR_ADD 5
`define MAX_PATTERN 8
  `define MAX_PAT_ADD 3

module shared_memory(clk, reset, w_data, write, w_sel, str_reg, pat_reg, str_last_idx, pat_last_idx, valid);
  input clk;
  input reset;
  input [`BYTE - 1:0] w_data;
  input write;
  input w_sel;

  output reg [`MAX_STRING * `BYTE - 1 : 0] str_reg;
  output reg [`MAX_PATTERN * `BYTE - 1 : 0] pat_reg;
  output reg [`MAX_STR_ADD - 1: 0] str_last_idx;
  output reg [`MAX_PAT_ADD - 1: 0] pat_last_idx;
  output reg valid;
//---------------------input/output---------------------//

  integer i, j;
  parameter sel_str_reg = 0;
  parameter sel_pat_reg = 1;

  reg [`MAX_STR_ADD - 1 : 0] s_index;
  reg [`MAX_PAT_ADD - 1 : 0] p_index;
  reg [2:0] active;
    localparam NON_READ = 0;
    localparam READING = 1;
    localparam DONE = 2;


  always@(posedge clk)
  begin
      if(reset)
      begin
        s_index <= 0;
        p_index <= 0;
        str_last_idx <= 0;
        pat_last_idx <= 0;
        active <= 0;
        valid <= 0;

        for(i = 0; i < (`MAX_STRING * `BYTE); i = i + 1)
        begin
          str_reg[i] <= 0;
        end

        for(j = 0; j < (`MAX_PATTERN * `BYTE); j = j + 1)
        begin
          pat_reg[j] <= 0;
        end
      end
      
      else if(write)
      begin
        active <= READING;
        valid <= 0;
        case(w_sel)
          sel_str_reg : begin str_reg[s_index * `BYTE +: `BYTE] <= w_data; s_index <= s_index + 1; str_last_idx <= s_index; end
          sel_pat_reg : begin pat_reg[p_index * `BYTE +: `BYTE] <= w_data; p_index <= p_index + 1; pat_last_idx <= p_index; end
        endcase
      end

      else
      begin
        if(active == READING) begin active <= DONE; valid <= 1; end
        else active <= NON_READ;

        s_index <= 0;
        p_index <= 0;
      end
end

endmodule