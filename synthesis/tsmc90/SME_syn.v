/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Dec  7 21:28:58 2020
/////////////////////////////////////////////////////////////


module KMP_Control ( clk, reset, input_valid, str_last_idx, pat_last_idx, 
        i_match_valid, i_match, i_match_idx, pe_valid, start_idx, process_2idx, 
        o_match, o_valid, o_match_idx );
  input [4:0] str_last_idx;
  input [2:0] pat_last_idx;
  input [3:0] i_match_valid;
  input [3:0] i_match;
  input [19:0] i_match_idx;
  output [19:0] start_idx;
  output [19:0] process_2idx;
  output [4:0] o_match_idx;
  input clk, reset, input_valid;
  output pe_valid, o_match, o_valid;
  wire   n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, \remaining[1] , N16, N18, N20, N26, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59,
         N60, N61, N62, N69, N70, N71, N72, N79, N80, N81, N82, N94, N95, N96,
         N97, N118, N119, N120, N121, N122, N128, N129, N130, N131, N132, N143,
         N144, N145, N146, N147, N190, N191, N192, N242, N243, N244, N245,
         N248, N249, N250, N251, N252, N253, N254, N255, N256, N257, N258,
         N259, N260, N261, N262, N263, N264, N265, N266, N267, N268, N269,
         N270, N271, N277, N278, N279, N280, N281, N282, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, N142, N140, N139, N102, N101, N100,
         N117, N115, N114, \lte_43/A[5] , \lte_41/B[5] , \r418/carry[1] ,
         \r418/carry[2] , \r418/carry[3] , \r422/n3 , \r422/n2 , \r422/n1 ,
         n85, n86, n87, n88, n89, n90, n91, n92, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206;
  wire   [3:0] num_part;
  wire   [5:0] compare_1a;
  wire   [5:0] compare_1b;
  wire   [5:0] \sub_0_root_sub_70/carry ;
  wire   [5:0] \sub_0_root_sub_69/carry ;
  wire   [5:0] \sub_0_root_sub_68/carry ;
  wire   [4:1] \r423/carry ;
  wire   [4:1] \r420/carry ;
  wire   [4:1] \add_0_root_sub_0_root_sub_87/carry ;
  wire   [4:1] \add_0_root_sub_0_root_sub_86/carry ;
  wire   [5:2] \r412/carry ;
  wire   [4:1] \add_0_root_sub_0_root_sub_88/carry ;
  wire   [4:1] \add_0_root_r429/carry ;

  ADDHX1 \r422/U4  ( .A(N48), .B(num_part[1]), .CO(\r422/n3 ), .S(N49) );
  ADDFX1 \r422/U3  ( .A(num_part[2]), .B(num_part[1]), .CI(\r422/n3 ), .CO(
        \r422/n2 ), .S(N50) );
  ADDFX1 \r422/U2  ( .A(num_part[3]), .B(num_part[2]), .CI(\r422/n2 ), .CO(
        \r422/n1 ), .S(N51) );
  DFFQXL \o_match_idx_reg[0]  ( .D(N278), .CK(clk), .Q(n246) );
  DFFQXL \o_match_idx_reg[1]  ( .D(N279), .CK(clk), .Q(n245) );
  DFFQXL \o_match_idx_reg[2]  ( .D(N280), .CK(clk), .Q(n244) );
  DFFQXL \o_match_idx_reg[3]  ( .D(N281), .CK(clk), .Q(n243) );
  DFFQXL \o_match_idx_reg[4]  ( .D(N282), .CK(clk), .Q(n242) );
  DFFQXL o_valid_reg ( .D(N277), .CK(clk), .Q(n241) );
  DFFQXL \process_2idx_reg[0]  ( .D(N257), .CK(clk), .Q(n239) );
  DFFQXL \process_2idx_reg[1]  ( .D(N258), .CK(clk), .Q(n238) );
  DFFQXL \process_2idx_reg[2]  ( .D(N259), .CK(clk), .Q(n237) );
  DFFQXL \process_2idx_reg[3]  ( .D(N260), .CK(clk), .Q(n236) );
  DFFQXL \process_2idx_reg[4]  ( .D(N261), .CK(clk), .Q(n235) );
  DFFQXL \process_2idx_reg[5]  ( .D(N262), .CK(clk), .Q(n234) );
  DFFQXL \process_2idx_reg[6]  ( .D(N263), .CK(clk), .Q(n233) );
  DFFQXL \process_2idx_reg[7]  ( .D(N264), .CK(clk), .Q(n232) );
  DFFQXL \process_2idx_reg[8]  ( .D(N265), .CK(clk), .Q(n231) );
  DFFQXL \process_2idx_reg[9]  ( .D(N266), .CK(clk), .Q(n230) );
  DFFQXL \process_2idx_reg[10]  ( .D(N267), .CK(clk), .Q(n229) );
  DFFQXL \process_2idx_reg[11]  ( .D(N268), .CK(clk), .Q(n228) );
  DFFQXL \process_2idx_reg[12]  ( .D(N269), .CK(clk), .Q(n227) );
  DFFQXL \process_2idx_reg[13]  ( .D(N270), .CK(clk), .Q(n226) );
  DFFQXL \process_2idx_reg[14]  ( .D(N271), .CK(clk), .Q(n225) );
  DFFQXL \start_idx_reg[5]  ( .D(N242), .CK(clk), .Q(n219) );
  DFFQXL \start_idx_reg[6]  ( .D(N243), .CK(clk), .Q(n218) );
  DFFQXL \start_idx_reg[7]  ( .D(N244), .CK(clk), .Q(n217) );
  DFFQXL \start_idx_reg[8]  ( .D(N245), .CK(clk), .Q(n216) );
  DFFQXL \start_idx_reg[11]  ( .D(N248), .CK(clk), .Q(n215) );
  DFFQXL \start_idx_reg[12]  ( .D(N249), .CK(clk), .Q(n214) );
  DFFQXL \start_idx_reg[13]  ( .D(N250), .CK(clk), .Q(n213) );
  DFFQXL \start_idx_reg[14]  ( .D(N251), .CK(clk), .Q(n212) );
  DFFQXL \start_idx_reg[15]  ( .D(N252), .CK(clk), .Q(n211) );
  DFFQXL \start_idx_reg[16]  ( .D(N253), .CK(clk), .Q(n210) );
  DFFQXL \start_idx_reg[17]  ( .D(N254), .CK(clk), .Q(n209) );
  DFFQXL \start_idx_reg[18]  ( .D(N255), .CK(clk), .Q(n208) );
  DFFQXL \start_idx_reg[19]  ( .D(N256), .CK(clk), .Q(n207) );
  DFFTRXL pe_valid_reg ( .D(input_valid), .RN(n201), .CK(clk), .QN(n92) );
  DFFTRXL \process_2idx_reg[15]  ( .D(str_last_idx[0]), .RN(n200), .CK(clk), 
        .QN(n85) );
  DFFTRXL \process_2idx_reg[16]  ( .D(str_last_idx[1]), .RN(n200), .CK(clk), 
        .QN(n86) );
  DFFTRXL \start_idx_reg[10]  ( .D(N43), .RN(n140), .CK(clk), .QN(n91) );
  DFFTRXL \process_2idx_reg[18]  ( .D(N191), .RN(n200), .CK(clk), .QN(n88) );
  DFFTRXL \process_2idx_reg[19]  ( .D(N192), .RN(n200), .CK(clk), .QN(n89) );
  DFFTRXL \start_idx_reg[9]  ( .D(N37), .RN(n139), .CK(clk), .QN(n90) );
  DFFTRXL \process_2idx_reg[17]  ( .D(N190), .RN(n200), .CK(clk), .QN(n87) );
  INVX20 U86 ( .A(1'b1), .Y(start_idx[4]) );
  INVX20 U87 ( .A(1'b1), .Y(start_idx[3]) );
  INVX20 U88 ( .A(1'b1), .Y(start_idx[2]) );
  INVX20 U89 ( .A(1'b1), .Y(start_idx[1]) );
  INVX20 U90 ( .A(1'b1), .Y(start_idx[0]) );
  INVX20 U96 ( .A(n87), .Y(process_2idx[17]) );
  INVX20 U97 ( .A(n90), .Y(start_idx[9]) );
  INVX20 U98 ( .A(n89), .Y(process_2idx[19]) );
  INVX20 U99 ( .A(n88), .Y(process_2idx[18]) );
  INVX20 U100 ( .A(n91), .Y(start_idx[10]) );
  INVX20 U101 ( .A(n86), .Y(process_2idx[16]) );
  INVX20 U102 ( .A(n85), .Y(process_2idx[15]) );
  INVX20 U103 ( .A(n92), .Y(pe_valid) );
  CLKBUFX20 U104 ( .A(n207), .Y(start_idx[19]) );
  CLKBUFX20 U105 ( .A(n208), .Y(start_idx[18]) );
  CLKBUFX20 U106 ( .A(n209), .Y(start_idx[17]) );
  CLKBUFX20 U107 ( .A(n210), .Y(start_idx[16]) );
  CLKBUFX20 U108 ( .A(n211), .Y(start_idx[15]) );
  CLKBUFX20 U109 ( .A(n212), .Y(start_idx[14]) );
  CLKBUFX20 U110 ( .A(n213), .Y(start_idx[13]) );
  CLKBUFX20 U111 ( .A(n214), .Y(start_idx[12]) );
  CLKBUFX20 U112 ( .A(n215), .Y(start_idx[11]) );
  CLKBUFX20 U113 ( .A(n216), .Y(start_idx[8]) );
  CLKBUFX20 U114 ( .A(n217), .Y(start_idx[7]) );
  CLKBUFX20 U115 ( .A(n218), .Y(start_idx[6]) );
  CLKBUFX20 U116 ( .A(n219), .Y(start_idx[5]) );
  CLKBUFX20 U117 ( .A(n225), .Y(process_2idx[14]) );
  CLKBUFX20 U118 ( .A(n226), .Y(process_2idx[13]) );
  CLKBUFX20 U119 ( .A(n227), .Y(process_2idx[12]) );
  CLKBUFX20 U120 ( .A(n228), .Y(process_2idx[11]) );
  CLKBUFX20 U121 ( .A(n229), .Y(process_2idx[10]) );
  CLKBUFX20 U122 ( .A(n230), .Y(process_2idx[9]) );
  CLKBUFX20 U123 ( .A(n231), .Y(process_2idx[8]) );
  CLKBUFX20 U124 ( .A(n232), .Y(process_2idx[7]) );
  CLKBUFX20 U125 ( .A(n233), .Y(process_2idx[6]) );
  CLKBUFX20 U126 ( .A(n234), .Y(process_2idx[5]) );
  CLKBUFX20 U127 ( .A(n235), .Y(process_2idx[4]) );
  CLKBUFX20 U128 ( .A(n236), .Y(process_2idx[3]) );
  CLKBUFX20 U129 ( .A(n237), .Y(process_2idx[2]) );
  CLKBUFX20 U130 ( .A(n238), .Y(process_2idx[1]) );
  CLKBUFX20 U131 ( .A(n239), .Y(process_2idx[0]) );
  CLKBUFX20 U132 ( .A(n241), .Y(o_valid) );
  CLKBUFX20 U133 ( .A(n242), .Y(o_match_idx[4]) );
  CLKBUFX20 U134 ( .A(n243), .Y(o_match_idx[3]) );
  CLKBUFX20 U135 ( .A(n244), .Y(o_match_idx[2]) );
  CLKBUFX20 U136 ( .A(n245), .Y(o_match_idx[1]) );
  CLKBUFX20 U137 ( .A(n246), .Y(o_match_idx[0]) );
  AND4X2 U138 ( .A(n206), .B(\lte_43/A[5] ), .C(\lte_41/B[5] ), .D(n204), .Y(
        n240) );
  INVX20 U139 ( .A(n240), .Y(o_match) );
  ADDHX1 U140 ( .A(str_last_idx[2]), .B(\r412/carry [2]), .CO(\r412/carry [3]), 
        .S(N48) );
  ADDHX1 U141 ( .A(str_last_idx[4]), .B(\r412/carry [4]), .CO(num_part[3]), 
        .S(num_part[2]) );
  ADDHX1 U142 ( .A(str_last_idx[3]), .B(\r412/carry [3]), .CO(\r412/carry [4]), 
        .S(num_part[1]) );
  ADDHX1 U143 ( .A(str_last_idx[1]), .B(str_last_idx[0]), .CO(\r412/carry [2]), 
        .S(\remaining[1] ) );
  INVX2 U144 ( .A(N55), .Y(n157) );
  INVX2 U145 ( .A(N20), .Y(n202) );
  INVX2 U146 ( .A(N40), .Y(n153) );
  INVX2 U147 ( .A(N30), .Y(n149) );
  AO22X2 U148 ( .A0(N70), .A1(n73), .B0(N120), .B1(n138), .Y(N259) );
  AO22X2 U149 ( .A0(N69), .A1(n140), .B0(N119), .B1(n137), .Y(N258) );
  AO22X2 U150 ( .A0(N81), .A1(n73), .B0(N131), .B1(n138), .Y(N265) );
  AO22X2 U151 ( .A0(N71), .A1(n139), .B0(N121), .B1(n74), .Y(N260) );
  AO22X2 U152 ( .A0(N80), .A1(n140), .B0(N130), .B1(n137), .Y(N264) );
  AO22X2 U153 ( .A0(N96), .A1(n140), .B0(N146), .B1(n137), .Y(N270) );
  NAND2X1 U154 ( .A(N277), .B(o_match), .Y(n66) );
  INVX2 U155 ( .A(N16), .Y(n203) );
  INVX2 U156 ( .A(N18), .Y(n205) );
  NOR2X2 U157 ( .A(n70), .B(n66), .Y(N278) );
  AOI22XL U158 ( .A0(N20), .A1(compare_1a[0]), .B0(compare_1b[0]), .B1(n202), 
        .Y(n70) );
  NOR2X2 U159 ( .A(n69), .B(n66), .Y(N279) );
  AOI22XL U160 ( .A0(N20), .A1(compare_1a[1]), .B0(compare_1b[1]), .B1(n202), 
        .Y(n69) );
  NOR2X2 U161 ( .A(n68), .B(n66), .Y(N280) );
  AOI22XL U162 ( .A0(N20), .A1(compare_1a[2]), .B0(compare_1b[2]), .B1(n202), 
        .Y(n68) );
  NOR2X2 U163 ( .A(n67), .B(n66), .Y(N281) );
  AOI22XL U164 ( .A0(N20), .A1(compare_1a[3]), .B0(compare_1b[3]), .B1(n202), 
        .Y(n67) );
  NOR2X2 U165 ( .A(n65), .B(n66), .Y(N282) );
  AOI22XL U166 ( .A0(N20), .A1(compare_1a[4]), .B0(compare_1b[4]), .B1(n202), 
        .Y(n65) );
  INVX2 U167 ( .A(compare_1b[1]), .Y(n196) );
  INVX2 U168 ( .A(compare_1b[2]), .Y(n197) );
  INVX2 U169 ( .A(compare_1a[4]), .Y(n199) );
  INVX2 U170 ( .A(compare_1b[3]), .Y(n198) );
  AO22X2 U171 ( .A0(N59), .A1(n73), .B0(N49), .B1(n138), .Y(N253) );
  AO22X2 U172 ( .A0(N62), .A1(n73), .B0(N52), .B1(n138), .Y(N256) );
  ADDFX1 U173 ( .A(N114), .B(num_part[1]), .CI(
        \add_0_root_sub_0_root_sub_86/carry [1]), .CO(
        \add_0_root_sub_0_root_sub_86/carry [2]), .S(N119) );
  ADDFX1 U174 ( .A(N115), .B(num_part[1]), .CI(
        \add_0_root_sub_0_root_sub_87/carry [2]), .CO(
        \add_0_root_sub_0_root_sub_87/carry [3]), .S(N130) );
  ADDFX1 U175 ( .A(N115), .B(num_part[2]), .CI(
        \add_0_root_sub_0_root_sub_86/carry [2]), .CO(
        \add_0_root_sub_0_root_sub_86/carry [3]), .S(N120) );
  ADDFX1 U176 ( .A(N117), .B(num_part[2]), .CI(
        \add_0_root_sub_0_root_sub_87/carry [3]), .CO(
        \add_0_root_sub_0_root_sub_87/carry [4]), .S(N131) );
  ADDFX1 U177 ( .A(N142), .B(N51), .CI(\add_0_root_sub_0_root_sub_88/carry [3]), .CO(\add_0_root_sub_0_root_sub_88/carry [4]), .S(N146) );
  AO22X2 U178 ( .A0(n137), .A1(num_part[1]), .B0(N34), .B1(n139), .Y(N243) );
  AO22X2 U179 ( .A0(n138), .A1(num_part[1]), .B0(N45), .B1(n140), .Y(N249) );
  AO22X2 U180 ( .A0(n138), .A1(num_part[2]), .B0(N35), .B1(n140), .Y(N244) );
  AO22X2 U181 ( .A0(n74), .A1(num_part[2]), .B0(N46), .B1(n73), .Y(N250) );
  AO22X2 U182 ( .A0(n137), .A1(N48), .B0(N44), .B1(n139), .Y(N248) );
  AO22X2 U183 ( .A0(N60), .A1(n139), .B0(N50), .B1(n74), .Y(N254) );
  AO22X2 U184 ( .A0(N61), .A1(n140), .B0(N51), .B1(n137), .Y(N255) );
  AO22X2 U185 ( .A0(N94), .A1(n73), .B0(N144), .B1(n138), .Y(N268) );
  AO22X2 U186 ( .A0(N97), .A1(n73), .B0(N147), .B1(n138), .Y(N271) );
  XOR3XL U187 ( .A(N142), .B(N52), .C(\add_0_root_sub_0_root_sub_88/carry [4]), 
        .Y(N147) );
  AO22X2 U188 ( .A0(n74), .A1(num_part[3]), .B0(N36), .B1(n73), .Y(N245) );
  AO22X2 U189 ( .A0(N72), .A1(n140), .B0(N122), .B1(n137), .Y(N261) );
  AO22X2 U190 ( .A0(N79), .A1(n139), .B0(N129), .B1(n74), .Y(N263) );
  AO22X2 U191 ( .A0(N82), .A1(n139), .B0(N132), .B1(n74), .Y(N266) );
  XOR3XL U192 ( .A(N117), .B(num_part[3]), .C(
        \add_0_root_sub_0_root_sub_87/carry [4]), .Y(N132) );
  AO22X2 U193 ( .A0(N95), .A1(n139), .B0(N145), .B1(n74), .Y(N269) );
  AO22X2 U194 ( .A0(n137), .A1(num_part[3]), .B0(N47), .B1(n139), .Y(N251) );
  ADDFX1 U195 ( .A(num_part[1]), .B(\remaining[1] ), .CI(\r418/carry[1] ), 
        .CO(\r418/carry[2] ), .S(N29) );
  ADDFX1 U196 ( .A(N49), .B(\remaining[1] ), .CI(\r423/carry [1]), .CO(
        \r423/carry [2]), .S(N54) );
  ADDFX1 U197 ( .A(N117), .B(num_part[3]), .CI(
        \add_0_root_sub_0_root_sub_86/carry [3]), .CO(
        \add_0_root_sub_0_root_sub_86/carry [4]), .S(N121) );
  NOR2X2 U198 ( .A(n72), .B(N26), .Y(n138) );
  NOR2X2 U199 ( .A(n72), .B(N26), .Y(n74) );
  NOR2X2 U200 ( .A(n72), .B(N26), .Y(n137) );
  AND2X2 U201 ( .A(N26), .B(n200), .Y(n73) );
  AND2X2 U202 ( .A(N26), .B(n200), .Y(n140) );
  AND2X2 U203 ( .A(N26), .B(n200), .Y(n139) );
  AO22X2 U204 ( .A0(N58), .A1(n140), .B0(N48), .B1(n138), .Y(N252) );
  AO22X2 U205 ( .A0(n74), .A1(N48), .B0(N33), .B1(n73), .Y(N242) );
  INVX2 U206 ( .A(n72), .Y(n200) );
  AO2B2X2 U207 ( .B0(N128), .B1(n138), .A0(n73), .A1N(N38), .Y(N262) );
  AO2B2X2 U208 ( .B0(N118), .B1(n74), .A0(n139), .A1N(N28), .Y(N257) );
  AO2B2X2 U209 ( .B0(N143), .B1(n137), .A0(n140), .A1N(N53), .Y(N267) );
  INVX2 U210 ( .A(i_match[0]), .Y(n206) );
  OAI22X1 U211 ( .A0(i_match[1]), .A1(n205), .B0(i_match[0]), .B1(N18), .Y(
        compare_1b[5]) );
  AO22X2 U212 ( .A0(i_match_idx[19]), .A1(N16), .B0(i_match_idx[14]), .B1(n203), .Y(compare_1a[4]) );
  AO22X2 U213 ( .A0(i_match_idx[6]), .A1(N18), .B0(i_match_idx[1]), .B1(n205), 
        .Y(compare_1b[1]) );
  AO22X2 U214 ( .A0(i_match_idx[8]), .A1(N18), .B0(i_match_idx[3]), .B1(n205), 
        .Y(compare_1b[3]) );
  AO22X2 U215 ( .A0(i_match_idx[7]), .A1(N18), .B0(i_match_idx[2]), .B1(n205), 
        .Y(compare_1b[2]) );
  INVX2 U216 ( .A(i_match_idx[11]), .Y(n170) );
  INVX2 U217 ( .A(i_match_idx[1]), .Y(n183) );
  AO22X2 U218 ( .A0(i_match_idx[9]), .A1(N18), .B0(i_match_idx[4]), .B1(n205), 
        .Y(compare_1b[4]) );
  AO22X2 U219 ( .A0(i_match_idx[17]), .A1(N16), .B0(i_match_idx[12]), .B1(n203), .Y(compare_1a[2]) );
  AO22X2 U220 ( .A0(i_match_idx[16]), .A1(N16), .B0(i_match_idx[11]), .B1(n203), .Y(compare_1a[1]) );
  AO22X2 U221 ( .A0(i_match_idx[18]), .A1(N16), .B0(i_match_idx[13]), .B1(n203), .Y(compare_1a[3]) );
  AO22X2 U222 ( .A0(i_match_idx[5]), .A1(N18), .B0(i_match_idx[0]), .B1(n205), 
        .Y(compare_1b[0]) );
  AO22X2 U223 ( .A0(i_match_idx[15]), .A1(N16), .B0(i_match_idx[10]), .B1(n203), .Y(compare_1a[0]) );
  OA22X2 U224 ( .A0(i_match[3]), .A1(n203), .B0(i_match[2]), .B1(N16), .Y(n136) );
  INVX2 U225 ( .A(i_match[3]), .Y(n204) );
  INVX2 U226 ( .A(i_match[1]), .Y(\lte_43/A[5] ) );
  INVX2 U227 ( .A(i_match[2]), .Y(\lte_41/B[5] ) );
  INVX2 U228 ( .A(i_match_idx[12]), .Y(n171) );
  INVX2 U229 ( .A(i_match_idx[2]), .Y(n184) );
  INVX2 U230 ( .A(i_match_idx[19]), .Y(n173) );
  INVX2 U231 ( .A(i_match_idx[9]), .Y(n186) );
  INVX2 U232 ( .A(i_match_idx[13]), .Y(n172) );
  INVX2 U233 ( .A(i_match_idx[3]), .Y(n185) );
  ADDFX1 U234 ( .A(N54), .B(n160), .CI(\sub_0_root_sub_70/carry [1]), .CO(
        \sub_0_root_sub_70/carry [2]), .S(N59) );
  ADDFX1 U235 ( .A(N29), .B(n160), .CI(\sub_0_root_sub_68/carry [1]), .CO(
        \sub_0_root_sub_68/carry [2]), .S(N34) );
  ADDFX1 U236 ( .A(N39), .B(n160), .CI(\sub_0_root_sub_69/carry [1]), .CO(
        \sub_0_root_sub_69/carry [2]), .S(N44) );
  ADDFX1 U237 ( .A(N139), .B(N49), .CI(\add_0_root_sub_0_root_sub_88/carry [1]), .CO(\add_0_root_sub_0_root_sub_88/carry [2]), .S(N144) );
  ADDFX1 U238 ( .A(N140), .B(N50), .CI(\add_0_root_sub_0_root_sub_88/carry [2]), .CO(\add_0_root_sub_0_root_sub_88/carry [3]), .S(N145) );
  ADDFX1 U239 ( .A(N40), .B(n145), .CI(\sub_0_root_sub_69/carry [2]), .CO(
        \sub_0_root_sub_69/carry [3]), .S(N45) );
  ADDFX1 U240 ( .A(N55), .B(n145), .CI(\sub_0_root_sub_70/carry [2]), .CO(
        \sub_0_root_sub_70/carry [3]), .S(N60) );
  ADDFX1 U241 ( .A(N30), .B(n145), .CI(\sub_0_root_sub_68/carry [2]), .CO(
        \sub_0_root_sub_68/carry [3]), .S(N35) );
  INVX2 U242 ( .A(pat_last_idx[2]), .Y(n145) );
  INVX2 U243 ( .A(str_last_idx[0]), .Y(N38) );
  NAND2X2 U244 ( .A(input_valid), .B(n201), .Y(n72) );
  INVX2 U245 ( .A(n159), .Y(N26) );
  OAI211XL U246 ( .A0(\remaining[1] ), .A1(n160), .B0(n158), .C0(n145), .Y(
        n159) );
  AND4X2 U247 ( .A(i_match_valid[0]), .B(n201), .C(i_match_valid[1]), .D(n71), 
        .Y(N277) );
  AND3X2 U248 ( .A(i_match_valid[3]), .B(i_match_valid[2]), .C(input_valid), 
        .Y(n71) );
  INVX2 U249 ( .A(reset), .Y(n201) );
  INVX2 U250 ( .A(pat_last_idx[1]), .Y(n160) );
  XOR2X1 U251 ( .A(N117), .B(\add_0_root_sub_0_root_sub_86/carry [4]), .Y(N122) );
  AND2X1 U252 ( .A(N128), .B(N48), .Y(\add_0_root_sub_0_root_sub_86/carry [1])
         );
  XOR2X1 U253 ( .A(N48), .B(N128), .Y(N118) );
  AND2X1 U254 ( .A(N114), .B(N48), .Y(\add_0_root_sub_0_root_sub_87/carry [2])
         );
  XOR2X1 U255 ( .A(N48), .B(N114), .Y(N129) );
  AND2X1 U256 ( .A(N128), .B(N48), .Y(\add_0_root_sub_0_root_sub_88/carry [1])
         );
  XOR2X1 U257 ( .A(N48), .B(N128), .Y(N143) );
  XNOR2X1 U258 ( .A(N42), .B(\sub_0_root_sub_69/carry [4]), .Y(N47) );
  OR2X1 U259 ( .A(N41), .B(\sub_0_root_sub_69/carry [3]), .Y(
        \sub_0_root_sub_69/carry [4]) );
  XNOR2X1 U260 ( .A(\sub_0_root_sub_69/carry [3]), .B(N41), .Y(N46) );
  XOR2X1 U261 ( .A(num_part[3]), .B(\r420/carry [4]), .Y(N42) );
  AND2X1 U262 ( .A(\r420/carry [3]), .B(num_part[2]), .Y(\r420/carry [4]) );
  XOR2X1 U263 ( .A(num_part[2]), .B(\r420/carry [3]), .Y(N41) );
  AND2X1 U264 ( .A(\r420/carry [2]), .B(num_part[1]), .Y(\r420/carry [3]) );
  XOR2X1 U265 ( .A(num_part[1]), .B(\r420/carry [2]), .Y(N40) );
  AND2X1 U266 ( .A(N48), .B(\remaining[1] ), .Y(\r420/carry [2]) );
  XOR2X1 U267 ( .A(\remaining[1] ), .B(N48), .Y(N39) );
  XNOR2X1 U268 ( .A(N57), .B(\sub_0_root_sub_70/carry [4]), .Y(N62) );
  OR2X1 U269 ( .A(N56), .B(\sub_0_root_sub_70/carry [3]), .Y(
        \sub_0_root_sub_70/carry [4]) );
  XNOR2X1 U270 ( .A(\sub_0_root_sub_70/carry [3]), .B(N56), .Y(N61) );
  OR2X1 U271 ( .A(N128), .B(N53), .Y(\sub_0_root_sub_70/carry [1]) );
  XNOR2X1 U272 ( .A(N53), .B(N128), .Y(N58) );
  XOR2X1 U273 ( .A(N52), .B(\r423/carry [4]), .Y(N57) );
  AND2X1 U274 ( .A(\r423/carry [3]), .B(N51), .Y(\r423/carry [4]) );
  XOR2X1 U275 ( .A(N51), .B(\r423/carry [3]), .Y(N56) );
  AND2X1 U276 ( .A(\r423/carry [2]), .B(N50), .Y(\r423/carry [3]) );
  XOR2X1 U277 ( .A(N50), .B(\r423/carry [2]), .Y(N55) );
  AND2X1 U278 ( .A(N48), .B(N38), .Y(\r423/carry [1]) );
  XOR2X1 U279 ( .A(N38), .B(N48), .Y(N53) );
  XOR2X1 U280 ( .A(N102), .B(\add_0_root_r429/carry [4]), .Y(N192) );
  AND2X1 U281 ( .A(\add_0_root_r429/carry [3]), .B(N101), .Y(
        \add_0_root_r429/carry [4]) );
  XOR2X1 U282 ( .A(N101), .B(\add_0_root_r429/carry [3]), .Y(N191) );
  AND2X1 U283 ( .A(\add_0_root_r429/carry [2]), .B(N100), .Y(
        \add_0_root_r429/carry [3]) );
  XOR2X1 U284 ( .A(N100), .B(\add_0_root_r429/carry [2]), .Y(N190) );
  OR2X1 U285 ( .A(\remaining[1] ), .B(N38), .Y(\add_0_root_r429/carry [2]) );
  XNOR2X1 U286 ( .A(N32), .B(\sub_0_root_sub_68/carry [4]), .Y(N37) );
  OR2X1 U287 ( .A(N31), .B(\sub_0_root_sub_68/carry [3]), .Y(
        \sub_0_root_sub_68/carry [4]) );
  XNOR2X1 U288 ( .A(\sub_0_root_sub_68/carry [3]), .B(N31), .Y(N36) );
  OR2X1 U289 ( .A(N128), .B(N28), .Y(\sub_0_root_sub_68/carry [1]) );
  XNOR2X1 U290 ( .A(N28), .B(N128), .Y(N33) );
  AND2X1 U291 ( .A(\r418/carry[3] ), .B(num_part[3]), .Y(N32) );
  XOR2X1 U292 ( .A(num_part[3]), .B(\r418/carry[3] ), .Y(N31) );
  AND2X1 U293 ( .A(\r418/carry[2] ), .B(num_part[2]), .Y(\r418/carry[3] ) );
  XOR2X1 U294 ( .A(num_part[2]), .B(\r418/carry[2] ), .Y(N30) );
  AND2X1 U295 ( .A(N48), .B(N38), .Y(\r418/carry[1] ) );
  XOR2X1 U296 ( .A(N38), .B(N48), .Y(N28) );
  OR2X1 U297 ( .A(N128), .B(N38), .Y(\sub_0_root_sub_69/carry [1]) );
  XNOR2X1 U298 ( .A(N38), .B(N128), .Y(N43) );
  CLKINVX1 U299 ( .A(N48), .Y(N100) );
  XNOR2X1 U300 ( .A(N48), .B(num_part[1]), .Y(N101) );
  CLKNAND2X2 U301 ( .A(N101), .B(N100), .Y(n142) );
  NOR2BX1 U302 ( .AN(N101), .B(N48), .Y(n141) );
  MXI2X1 U303 ( .A(n142), .B(n141), .S0(num_part[2]), .Y(N102) );
  XNOR2X1 U304 ( .A(pat_last_idx[1]), .B(pat_last_idx[0]), .Y(N139) );
  NOR3X1 U305 ( .A(pat_last_idx[1]), .B(pat_last_idx[2]), .C(pat_last_idx[0]), 
        .Y(N142) );
  OAI21X1 U306 ( .A0(pat_last_idx[0]), .A1(pat_last_idx[1]), .B0(
        pat_last_idx[2]), .Y(n143) );
  NAND2BX1 U307 ( .AN(N142), .B(n143), .Y(N140) );
  CLKINVX1 U308 ( .A(pat_last_idx[0]), .Y(N128) );
  XNOR2X1 U309 ( .A(pat_last_idx[1]), .B(pat_last_idx[0]), .Y(N114) );
  NOR3X1 U310 ( .A(pat_last_idx[1]), .B(pat_last_idx[2]), .C(pat_last_idx[0]), 
        .Y(N117) );
  OAI21X1 U311 ( .A0(pat_last_idx[0]), .A1(pat_last_idx[1]), .B0(
        pat_last_idx[2]), .Y(n144) );
  NAND2BX1 U312 ( .AN(N117), .B(n144), .Y(N115) );
  XOR2X1 U313 ( .A(\r422/n1 ), .B(num_part[3]), .Y(N52) );
  NOR2X1 U314 ( .A(N29), .B(N28), .Y(n146) );
  AO21X1 U315 ( .A0(N28), .A1(N29), .B0(n146), .Y(N69) );
  CLKNAND2X2 U316 ( .A(n146), .B(n149), .Y(n147) );
  OAI21X1 U317 ( .A0(n146), .A1(n149), .B0(n147), .Y(N70) );
  XNOR2X1 U318 ( .A(N31), .B(n147), .Y(N71) );
  NOR2X1 U319 ( .A(N31), .B(n147), .Y(n148) );
  XOR2X1 U320 ( .A(N32), .B(n148), .Y(N72) );
  NOR2X1 U321 ( .A(N39), .B(N38), .Y(n150) );
  AO21X1 U322 ( .A0(N38), .A1(N39), .B0(n150), .Y(N79) );
  CLKNAND2X2 U323 ( .A(n150), .B(n153), .Y(n151) );
  OAI21X1 U324 ( .A0(n150), .A1(n153), .B0(n151), .Y(N80) );
  XNOR2X1 U325 ( .A(N41), .B(n151), .Y(N81) );
  NOR2X1 U326 ( .A(N41), .B(n151), .Y(n152) );
  XOR2X1 U327 ( .A(N42), .B(n152), .Y(N82) );
  NOR2X1 U328 ( .A(N54), .B(N53), .Y(n154) );
  AO21X1 U329 ( .A0(N53), .A1(N54), .B0(n154), .Y(N94) );
  CLKNAND2X2 U330 ( .A(n154), .B(n157), .Y(n155) );
  OAI21X1 U331 ( .A0(n154), .A1(n157), .B0(n155), .Y(N95) );
  XNOR2X1 U332 ( .A(N56), .B(n155), .Y(N96) );
  NOR2X1 U333 ( .A(N56), .B(n155), .Y(n156) );
  XOR2X1 U334 ( .A(N57), .B(n156), .Y(N97) );
  AO2B2X1 U335 ( .B0(n160), .B1(\remaining[1] ), .A0(N38), .A1N(
        pat_last_idx[0]), .Y(n158) );
  NOR2X1 U336 ( .A(i_match[3]), .B(\lte_41/B[5] ), .Y(n169) );
  AOI22XL U337 ( .A0(i_match_idx[14]), .A1(n173), .B0(\lte_41/B[5] ), .B1(
        i_match[3]), .Y(n168) );
  OAI21BX1 U338 ( .A0(i_match_idx[14]), .A1(n173), .B0N(n169), .Y(n167) );
  AND2X1 U339 ( .A(i_match_idx[18]), .B(n172), .Y(n162) );
  OAI32XL U340 ( .A0(n171), .A1(i_match_idx[17]), .A2(n162), .B0(
        i_match_idx[18]), .B1(n172), .Y(n165) );
  AO2B2X1 U341 ( .B0(n170), .B1(i_match_idx[16]), .A0(i_match_idx[15]), .A1N(
        i_match_idx[10]), .Y(n161) );
  OAI21X1 U342 ( .A0(i_match_idx[16]), .A1(n170), .B0(n161), .Y(n164) );
  AOI21X1 U343 ( .A0(i_match_idx[17]), .A1(n171), .B0(n162), .Y(n163) );
  OAI22X1 U344 ( .A0(n165), .A1(n164), .B0(n163), .B1(n165), .Y(n166) );
  OAI22X1 U345 ( .A0(n169), .A1(n168), .B0(n167), .B1(n166), .Y(N16) );
  NOR2X1 U346 ( .A(i_match[1]), .B(n206), .Y(n182) );
  AOI22XL U347 ( .A0(i_match_idx[4]), .A1(n186), .B0(n206), .B1(i_match[1]), 
        .Y(n181) );
  OAI21BX1 U348 ( .A0(i_match_idx[4]), .A1(n186), .B0N(n182), .Y(n180) );
  AND2X1 U349 ( .A(i_match_idx[8]), .B(n185), .Y(n175) );
  OAI32XL U350 ( .A0(n184), .A1(i_match_idx[7]), .A2(n175), .B0(i_match_idx[8]), .B1(n185), .Y(n178) );
  AO2B2X1 U351 ( .B0(n183), .B1(i_match_idx[6]), .A0(i_match_idx[5]), .A1N(
        i_match_idx[0]), .Y(n174) );
  OAI21X1 U352 ( .A0(i_match_idx[6]), .A1(n183), .B0(n174), .Y(n177) );
  AOI21X1 U353 ( .A0(i_match_idx[7]), .A1(n184), .B0(n175), .Y(n176) );
  OAI22X1 U354 ( .A0(n178), .A1(n177), .B0(n176), .B1(n178), .Y(n179) );
  OAI22X1 U355 ( .A0(n182), .A1(n181), .B0(n180), .B1(n179), .Y(N18) );
  NOR2X1 U356 ( .A(n136), .B(compare_1b[5]), .Y(n195) );
  AOI22XL U357 ( .A0(compare_1b[4]), .A1(n199), .B0(compare_1b[5]), .B1(n136), 
        .Y(n194) );
  OAI21BX1 U358 ( .A0(compare_1b[4]), .A1(n199), .B0N(n195), .Y(n193) );
  AND2X1 U359 ( .A(compare_1a[3]), .B(n198), .Y(n188) );
  OAI32XL U360 ( .A0(n197), .A1(compare_1a[2]), .A2(n188), .B0(compare_1a[3]), 
        .B1(n198), .Y(n191) );
  AO2B2X1 U361 ( .B0(n196), .B1(compare_1a[1]), .A0(compare_1a[0]), .A1N(
        compare_1b[0]), .Y(n187) );
  OAI21X1 U362 ( .A0(compare_1a[1]), .A1(n196), .B0(n187), .Y(n190) );
  AOI21X1 U363 ( .A0(compare_1a[2]), .A1(n197), .B0(n188), .Y(n189) );
  OAI22X1 U364 ( .A0(n191), .A1(n190), .B0(n189), .B1(n191), .Y(n192) );
  OAI22X1 U365 ( .A0(n195), .A1(n194), .B0(n193), .B1(n192), .Y(N20) );
endmodule

