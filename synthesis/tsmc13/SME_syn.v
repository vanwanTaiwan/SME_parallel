/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Dec  7 17:34:06 2020
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
  wire   N37, N43, N178, N179, N180, N181, N182, N188, N189, N190, N191, N192,
         N242, N243, N244, N245, N248, N249, N250, N251, N252, N253, N254,
         N255, N256, N257, N258, N259, N260, N267, N268, N269, N270, N271,
         N277, n113, n115, n116, n117, n118, n120, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n114, n119, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192;
  assign start_idx[4] = 1'b0;
  assign start_idx[3] = 1'b0;
  assign start_idx[2] = 1'b0;
  assign start_idx[1] = 1'b0;
  assign start_idx[0] = 1'b0;
  assign process_2idx[4] = 1'b0;
  assign N188 = str_last_idx[0];

  DFFQX1 \start_idx_reg[19]  ( .D(N256), .CK(clk), .Q(start_idx[19]) );
  DFFQX1 \start_idx_reg[18]  ( .D(N255), .CK(clk), .Q(start_idx[18]) );
  DFFQX1 \start_idx_reg[17]  ( .D(N254), .CK(clk), .Q(start_idx[17]) );
  DFFQX1 \start_idx_reg[16]  ( .D(N253), .CK(clk), .Q(start_idx[16]) );
  DFFQX1 \start_idx_reg[15]  ( .D(N252), .CK(clk), .Q(start_idx[15]) );
  DFFQX1 \start_idx_reg[14]  ( .D(N251), .CK(clk), .Q(start_idx[14]) );
  DFFQX1 \start_idx_reg[13]  ( .D(N250), .CK(clk), .Q(start_idx[13]) );
  DFFQX1 \start_idx_reg[12]  ( .D(N249), .CK(clk), .Q(start_idx[12]) );
  DFFQX1 \start_idx_reg[11]  ( .D(N248), .CK(clk), .Q(start_idx[11]) );
  DFFQX1 \start_idx_reg[8]  ( .D(N245), .CK(clk), .Q(start_idx[8]) );
  DFFQX1 \start_idx_reg[7]  ( .D(N244), .CK(clk), .Q(start_idx[7]) );
  DFFQX1 \start_idx_reg[6]  ( .D(N243), .CK(clk), .Q(start_idx[6]) );
  DFFQX1 \start_idx_reg[5]  ( .D(N242), .CK(clk), .Q(start_idx[5]) );
  DFFQX1 \process_2idx_reg[14]  ( .D(N271), .CK(clk), .Q(process_2idx[14]) );
  DFFQX1 \process_2idx_reg[13]  ( .D(N270), .CK(clk), .Q(process_2idx[13]) );
  DFFQX1 \process_2idx_reg[12]  ( .D(N269), .CK(clk), .Q(process_2idx[12]) );
  DFFQX1 \process_2idx_reg[11]  ( .D(N268), .CK(clk), .Q(process_2idx[11]) );
  DFFQX1 \process_2idx_reg[10]  ( .D(N267), .CK(clk), .Q(process_2idx[10]) );
  DFFQX1 \process_2idx_reg[3]  ( .D(N260), .CK(clk), .Q(process_2idx[3]) );
  DFFQX1 \process_2idx_reg[2]  ( .D(N259), .CK(clk), .Q(process_2idx[2]) );
  DFFQX1 \process_2idx_reg[1]  ( .D(N258), .CK(clk), .Q(process_2idx[1]) );
  DFFQX1 \process_2idx_reg[0]  ( .D(N257), .CK(clk), .Q(process_2idx[0]) );
  DFFTRX1 \start_idx_reg[10]  ( .D(N43), .RN(n120), .CK(clk), .Q(start_idx[10]) );
  DFFTRX1 \start_idx_reg[9]  ( .D(N37), .RN(n120), .CK(clk), .Q(start_idx[9])
         );
  DFFTRX1 \process_2idx_reg[19]  ( .D(N192), .RN(n191), .CK(clk), .Q(
        process_2idx[19]) );
  DFFTRX1 \process_2idx_reg[18]  ( .D(N191), .RN(n191), .CK(clk), .Q(
        process_2idx[18]) );
  DFFTRX1 \process_2idx_reg[17]  ( .D(N190), .RN(n191), .CK(clk), .Q(
        process_2idx[17]) );
  DFFTRX1 \process_2idx_reg[16]  ( .D(N189), .RN(n191), .CK(clk), .Q(
        process_2idx[16]) );
  DFFTRX1 \process_2idx_reg[15]  ( .D(N188), .RN(n191), .CK(clk), .Q(
        process_2idx[15]) );
  DFFTRX1 \process_2idx_reg[9]  ( .D(N182), .RN(n191), .CK(clk), .Q(
        process_2idx[9]) );
  DFFTRX1 \process_2idx_reg[8]  ( .D(N181), .RN(n191), .CK(clk), .Q(
        process_2idx[8]) );
  DFFTRX1 \process_2idx_reg[7]  ( .D(N180), .RN(n191), .CK(clk), .Q(
        process_2idx[7]) );
  DFFTRX1 \process_2idx_reg[6]  ( .D(N179), .RN(n191), .CK(clk), .Q(
        process_2idx[6]) );
  DFFTRX1 \process_2idx_reg[5]  ( .D(N178), .RN(n191), .CK(clk), .Q(
        process_2idx[5]) );
  DFFQX1 o_valid_reg ( .D(N277), .CK(clk), .Q(o_valid) );
  DFFTRX1 pe_valid_reg ( .D(input_valid), .RN(n192), .CK(clk), .Q(pe_valid) );
  DFFTRX1 \o_match_idx_reg[0]  ( .D(n118), .RN(n190), .CK(clk), .Q(
        o_match_idx[0]) );
  DFFTRX1 \o_match_idx_reg[4]  ( .D(n113), .RN(n190), .CK(clk), .Q(
        o_match_idx[4]) );
  DFFTRX1 \o_match_idx_reg[3]  ( .D(n115), .RN(n190), .CK(clk), .Q(
        o_match_idx[3]) );
  DFFTRX1 \o_match_idx_reg[2]  ( .D(n116), .RN(n190), .CK(clk), .Q(
        o_match_idx[2]) );
  DFFTRX1 \o_match_idx_reg[1]  ( .D(n117), .RN(n190), .CK(clk), .Q(
        o_match_idx[1]) );
  AND2X1 U8 ( .A(o_match), .B(N277), .Y(n190) );
  NAND4X1 U9 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(o_match) );
  MX3XL U10 ( .A(i_match_idx[15]), .B(i_match_idx[10]), .C(n5), .S0(n6), .S1(
        n7), .Y(n118) );
  MXI2X1 U11 ( .A(n8), .B(n9), .S0(n7), .Y(n117) );
  MXI2X1 U12 ( .A(n10), .B(n11), .S0(n7), .Y(n116) );
  MXI2X1 U13 ( .A(n12), .B(n13), .S0(n7), .Y(n115) );
  MXI2X1 U14 ( .A(n14), .B(n15), .S0(n7), .Y(n113) );
  OA21XL U15 ( .A0(n16), .A1(n17), .B0(n18), .Y(n7) );
  OAI211X1 U16 ( .A0(n14), .A1(n19), .B0(n20), .C0(n21), .Y(n18) );
  OAI2BB2XL U17 ( .B0(n22), .B1(n23), .A0N(n19), .A1N(n14), .Y(n21) );
  AOI222XL U18 ( .A0(n12), .A1(n24), .B0(n25), .B1(n26), .C0(n27), .C1(n10), 
        .Y(n23) );
  OR2X1 U19 ( .A(n10), .B(n27), .Y(n26) );
  OA21XL U20 ( .A0(n8), .A1(n28), .B0(n29), .Y(n27) );
  AO21X1 U21 ( .A0(n28), .A1(n8), .B0(n5), .Y(n29) );
  CLKMX2X2 U22 ( .A(i_match_idx[5]), .B(i_match_idx[0]), .S0(n30), .Y(n5) );
  CLKINVX1 U23 ( .A(n9), .Y(n28) );
  MXI2X1 U24 ( .A(i_match_idx[6]), .B(i_match_idx[1]), .S0(n30), .Y(n9) );
  MXI2X1 U25 ( .A(i_match_idx[16]), .B(i_match_idx[11]), .S0(n6), .Y(n8) );
  MXI2X1 U27 ( .A(i_match_idx[17]), .B(i_match_idx[12]), .S0(n6), .Y(n10) );
  CLKINVX1 U28 ( .A(n11), .Y(n25) );
  MXI2X1 U29 ( .A(i_match_idx[7]), .B(i_match_idx[2]), .S0(n30), .Y(n11) );
  NOR2X1 U30 ( .A(n12), .B(n24), .Y(n22) );
  CLKINVX1 U31 ( .A(n13), .Y(n24) );
  MXI2X1 U32 ( .A(i_match_idx[8]), .B(i_match_idx[3]), .S0(n30), .Y(n13) );
  MXI2X1 U33 ( .A(i_match_idx[18]), .B(i_match_idx[13]), .S0(n6), .Y(n12) );
  NAND3X1 U34 ( .A(n3), .B(n4), .C(n16), .Y(n20) );
  CLKINVX1 U35 ( .A(n15), .Y(n19) );
  MXI2X1 U36 ( .A(i_match[3]), .B(i_match[2]), .S0(n6), .Y(n17) );
  MXI2X1 U37 ( .A(n2), .B(n1), .S0(n30), .Y(n16) );
  MXI2X1 U38 ( .A(i_match_idx[9]), .B(i_match_idx[4]), .S0(n30), .Y(n15) );
  OA21XL U39 ( .A0(i_match[0]), .A1(n2), .B0(n31), .Y(n30) );
  OAI221XL U40 ( .A0(i_match[1]), .A1(n1), .B0(i_match_idx[4]), .B1(n32), .C0(
        n33), .Y(n31) );
  OAI2BB1X1 U41 ( .A0N(n32), .A1N(i_match_idx[4]), .B0(n34), .Y(n33) );
  OAI2BB1X1 U42 ( .A0N(n35), .A1N(i_match_idx[8]), .B0(n36), .Y(n34) );
  OAI221XL U43 ( .A0(n37), .A1(n38), .B0(i_match_idx[8]), .B1(n35), .C0(n39), 
        .Y(n36) );
  AO21X1 U44 ( .A0(n37), .A1(n38), .B0(i_match_idx[7]), .Y(n39) );
  CLKINVX1 U45 ( .A(i_match_idx[2]), .Y(n38) );
  OAI22XL U46 ( .A0(i_match_idx[1]), .A1(n40), .B0(i_match_idx[0]), .B1(n41), 
        .Y(n37) );
  AND2X1 U47 ( .A(i_match_idx[1]), .B(n40), .Y(n41) );
  CLKINVX1 U48 ( .A(i_match_idx[6]), .Y(n40) );
  CLKINVX1 U49 ( .A(i_match_idx[3]), .Y(n35) );
  CLKINVX1 U50 ( .A(i_match_idx[9]), .Y(n32) );
  CLKINVX1 U51 ( .A(i_match[0]), .Y(n1) );
  CLKINVX1 U52 ( .A(i_match[1]), .Y(n2) );
  MXI2X1 U53 ( .A(i_match_idx[19]), .B(i_match_idx[14]), .S0(n6), .Y(n14) );
  OA21XL U54 ( .A0(i_match[2]), .A1(n4), .B0(n42), .Y(n6) );
  OAI221XL U55 ( .A0(i_match[3]), .A1(n3), .B0(i_match_idx[14]), .B1(n43), 
        .C0(n44), .Y(n42) );
  OAI2BB1X1 U56 ( .A0N(n43), .A1N(i_match_idx[14]), .B0(n45), .Y(n44) );
  OAI2BB1X1 U57 ( .A0N(n46), .A1N(i_match_idx[18]), .B0(n47), .Y(n45) );
  OAI221XL U58 ( .A0(n48), .A1(n49), .B0(i_match_idx[18]), .B1(n46), .C0(n50), 
        .Y(n47) );
  AO21X1 U59 ( .A0(n48), .A1(n49), .B0(i_match_idx[17]), .Y(n50) );
  CLKINVX1 U60 ( .A(i_match_idx[12]), .Y(n49) );
  OAI22XL U61 ( .A0(i_match_idx[11]), .A1(n51), .B0(i_match_idx[10]), .B1(n52), 
        .Y(n48) );
  AND2X1 U62 ( .A(i_match_idx[11]), .B(n51), .Y(n52) );
  CLKINVX1 U63 ( .A(i_match_idx[16]), .Y(n51) );
  CLKINVX1 U64 ( .A(i_match_idx[13]), .Y(n46) );
  CLKINVX1 U65 ( .A(i_match_idx[19]), .Y(n43) );
  CLKINVX1 U66 ( .A(i_match[2]), .Y(n3) );
  CLKINVX1 U67 ( .A(i_match[3]), .Y(n4) );
  OAI21XL U68 ( .A0(pat_last_idx[0]), .A1(N178), .B0(n53), .Y(N43) );
  OA21XL U69 ( .A0(n54), .A1(n55), .B0(n56), .Y(N37) );
  CLKINVX1 U70 ( .A(n57), .Y(n54) );
  AND4X1 U71 ( .A(i_match_valid[0]), .B(n191), .C(i_match_valid[1]), .D(n58), 
        .Y(N277) );
  AND2X1 U72 ( .A(i_match_valid[3]), .B(i_match_valid[2]), .Y(n58) );
  NAND2X1 U73 ( .A(n59), .B(n60), .Y(N271) );
  OAI211X1 U74 ( .A0(n61), .A1(n62), .B0(n63), .C0(n120), .Y(n60) );
  OAI211X1 U75 ( .A0(n55), .A1(n64), .B0(n56), .C0(n65), .Y(n59) );
  OAI21XL U76 ( .A0(n66), .A1(n67), .B0(n68), .Y(n56) );
  OAI2BB1X1 U77 ( .A0N(n69), .A1N(n70), .B0(n71), .Y(n68) );
  CLKINVX1 U78 ( .A(n72), .Y(n55) );
  OAI22XL U79 ( .A0(n73), .A1(n74), .B0(n75), .B1(n76), .Y(N270) );
  OAI22XL U80 ( .A0(n77), .A1(n75), .B0(n78), .B1(n73), .Y(N269) );
  OAI22XL U81 ( .A0(n79), .A1(n73), .B0(n80), .B1(n75), .Y(N268) );
  OAI22XL U82 ( .A0(n81), .A1(n75), .B0(n82), .B1(n73), .Y(N267) );
  OAI22XL U83 ( .A0(n75), .A1(n74), .B0(n73), .B1(n76), .Y(N260) );
  XNOR2X1 U84 ( .A(n64), .B(n72), .Y(n76) );
  XOR2X1 U85 ( .A(n62), .B(n61), .Y(n74) );
  OAI22XL U86 ( .A0(n77), .A1(n73), .B0(n78), .B1(n75), .Y(N259) );
  OA21XL U87 ( .A0(n83), .A1(n84), .B0(n62), .Y(n78) );
  NAND2X1 U88 ( .A(n83), .B(n84), .Y(n62) );
  OA21XL U89 ( .A0(n85), .A1(n86), .B0(n64), .Y(n77) );
  NAND2X1 U90 ( .A(n85), .B(n86), .Y(n64) );
  OAI22XL U91 ( .A0(n79), .A1(n75), .B0(n80), .B1(n73), .Y(N258) );
  AOI2BB1X1 U92 ( .A0N(n87), .A1N(n88), .B0(n85), .Y(n80) );
  NOR2X1 U93 ( .A(n89), .B(n81), .Y(n85) );
  CLKINVX1 U94 ( .A(n89), .Y(n88) );
  AOI2BB1X1 U95 ( .A0N(n90), .A1N(n91), .B0(n83), .Y(n79) );
  NOR2X1 U96 ( .A(n92), .B(n82), .Y(n83) );
  CLKINVX1 U97 ( .A(n90), .Y(n92) );
  OAI22XL U98 ( .A0(n81), .A1(n73), .B0(n82), .B1(n75), .Y(N257) );
  OAI221XL U99 ( .A0(n93), .A1(n73), .B0(n75), .B1(n70), .C0(n94), .Y(N256) );
  CLKINVX1 U100 ( .A(n63), .Y(n93) );
  OAI21XL U101 ( .A0(n95), .A1(n96), .B0(n70), .Y(n63) );
  NAND2X1 U102 ( .A(n97), .B(n98), .Y(n70) );
  OAI2BB1X1 U103 ( .A0N(n99), .A1N(n65), .B0(n100), .Y(N255) );
  OAI211X1 U104 ( .A0(n101), .A1(n102), .B0(n120), .C0(n61), .Y(n100) );
  XOR2X1 U105 ( .A(n96), .B(n95), .Y(n61) );
  AOI2BB2X1 U106 ( .B0(n103), .B1(n104), .A0N(n105), .A1N(n106), .Y(n95) );
  NOR2X1 U107 ( .A(n103), .B(n104), .Y(n105) );
  OA21XL U108 ( .A0(n71), .A1(n107), .B0(n69), .Y(n96) );
  CLKINVX1 U109 ( .A(n84), .Y(n101) );
  OAI22XL U110 ( .A0(n108), .A1(n75), .B0(n73), .B1(n109), .Y(N254) );
  XNOR2X1 U111 ( .A(n102), .B(n84), .Y(n109) );
  XNOR2X1 U112 ( .A(n110), .B(n104), .Y(n84) );
  XOR2X1 U113 ( .A(n111), .B(n112), .Y(n104) );
  NAND2X1 U114 ( .A(n114), .B(n119), .Y(n111) );
  XNOR2X1 U115 ( .A(n106), .B(n103), .Y(n110) );
  OAI2BB1X1 U116 ( .A0N(n121), .A1N(n122), .B0(n123), .Y(n103) );
  OAI21XL U117 ( .A0(n122), .A1(n121), .B0(n124), .Y(n123) );
  OAI21XL U118 ( .A0(pat_last_idx[1]), .A1(n125), .B0(n90), .Y(n102) );
  OAI2BB2XL U119 ( .B0(n126), .B1(n73), .A0N(n127), .A1N(n65), .Y(N253) );
  XNOR2X1 U120 ( .A(n90), .B(n128), .Y(n126) );
  NOR2X1 U121 ( .A(pat_last_idx[1]), .B(n125), .Y(n128) );
  CLKINVX1 U122 ( .A(n129), .Y(n125) );
  XNOR2X1 U123 ( .A(n130), .B(n121), .Y(n90) );
  XOR2X1 U124 ( .A(n131), .B(n132), .Y(n121) );
  NAND2X1 U125 ( .A(n119), .B(n133), .Y(n131) );
  XNOR2X1 U126 ( .A(n122), .B(n134), .Y(n130) );
  NOR2X1 U127 ( .A(n135), .B(N178), .Y(n122) );
  OAI2BB1X1 U128 ( .A0N(n120), .A1N(n136), .B0(n137), .Y(N252) );
  OAI21XL U129 ( .A0(pat_last_idx[0]), .A1(n91), .B0(n129), .Y(n136) );
  NAND2X1 U130 ( .A(n91), .B(pat_last_idx[0]), .Y(n129) );
  CLKINVX1 U131 ( .A(n82), .Y(n91) );
  XOR2X1 U132 ( .A(N178), .B(n135), .Y(n82) );
  OAI31XL U133 ( .A0(n73), .A1(n138), .A2(n139), .B0(n94), .Y(N251) );
  OAI22XL U134 ( .A0(n112), .A1(n75), .B0(n73), .B1(n140), .Y(N250) );
  XOR2X1 U135 ( .A(n138), .B(n141), .Y(n140) );
  NOR2BX1 U136 ( .AN(n142), .B(n143), .Y(n138) );
  OAI22XL U137 ( .A0(n132), .A1(n75), .B0(n144), .B1(n73), .Y(N249) );
  XNOR2X1 U138 ( .A(n142), .B(n143), .Y(n144) );
  OAI2BB1X1 U139 ( .A0N(n145), .A1N(n53), .B0(n146), .Y(n143) );
  OAI21XL U140 ( .A0(n147), .A1(n73), .B0(n137), .Y(N248) );
  XOR2X1 U141 ( .A(n148), .B(n146), .Y(n147) );
  NAND2X1 U142 ( .A(n53), .B(n145), .Y(n148) );
  NAND2X1 U143 ( .A(N178), .B(pat_last_idx[0]), .Y(n53) );
  OAI31XL U144 ( .A0(n72), .A1(n57), .A2(n73), .B0(n94), .Y(N245) );
  NAND2BX1 U145 ( .AN(n69), .B(n65), .Y(n94) );
  AOI2BB2X1 U146 ( .B0(n149), .B1(n150), .A0N(pat_last_idx[2]), .A1N(n151), 
        .Y(n57) );
  NOR2X1 U147 ( .A(n150), .B(n149), .Y(n151) );
  XNOR2X1 U148 ( .A(n67), .B(n66), .Y(n72) );
  AOI2BB2X1 U149 ( .B0(n152), .B1(n153), .A0N(n154), .A1N(n155), .Y(n66) );
  NOR2X1 U150 ( .A(n153), .B(n152), .Y(n155) );
  NAND2X1 U151 ( .A(n99), .B(n71), .Y(n67) );
  NAND2X1 U152 ( .A(n107), .B(n69), .Y(n99) );
  XNOR2X1 U153 ( .A(n98), .B(n97), .Y(n107) );
  OA21XL U154 ( .A0(n133), .A1(n98), .B0(n156), .Y(n97) );
  OAI22XL U155 ( .A0(n112), .A1(n75), .B0(n157), .B1(n73), .Y(N244) );
  XNOR2X1 U156 ( .A(n86), .B(n149), .Y(n157) );
  OAI2BB1X1 U157 ( .A0N(n158), .A1N(n89), .B0(n159), .Y(n149) );
  OAI21XL U158 ( .A0(n89), .A1(n158), .B0(n145), .Y(n159) );
  CLKINVX1 U159 ( .A(n150), .Y(n86) );
  XOR2X1 U160 ( .A(n153), .B(n160), .Y(n150) );
  XNOR2X1 U161 ( .A(n154), .B(n152), .Y(n160) );
  OAI21XL U162 ( .A0(n112), .A1(n71), .B0(n106), .Y(n152) );
  OA21XL U163 ( .A0(n161), .A1(n162), .B0(n163), .Y(n154) );
  OAI2BB1X1 U164 ( .A0N(n162), .A1N(n161), .B0(n164), .Y(n163) );
  NOR2X1 U165 ( .A(n108), .B(n119), .Y(n153) );
  XOR2X1 U166 ( .A(n112), .B(n114), .Y(n108) );
  NOR2X1 U167 ( .A(n133), .B(n132), .Y(n114) );
  OAI22XL U168 ( .A0(n132), .A1(n75), .B0(n165), .B1(n73), .Y(N243) );
  XNOR2X1 U169 ( .A(n166), .B(n89), .Y(n165) );
  XNOR2X1 U170 ( .A(n167), .B(n164), .Y(n89) );
  MXI2X1 U171 ( .A(n145), .B(n132), .S0(n119), .Y(n164) );
  XNOR2X1 U172 ( .A(n162), .B(n161), .Y(n167) );
  MXI2X1 U173 ( .A(n168), .B(n127), .S0(n71), .Y(n161) );
  XNOR2X1 U174 ( .A(n156), .B(n135), .Y(n127) );
  NAND2X1 U175 ( .A(n169), .B(n170), .Y(n162) );
  NAND2X1 U176 ( .A(n158), .B(n145), .Y(n166) );
  OAI2BB1X1 U177 ( .A0N(n120), .A1N(n171), .B0(n137), .Y(N242) );
  NAND2X1 U178 ( .A(n65), .B(n133), .Y(n137) );
  CLKINVX1 U179 ( .A(n75), .Y(n65) );
  NAND2X1 U180 ( .A(n191), .B(n71), .Y(n75) );
  OAI21XL U181 ( .A0(pat_last_idx[0]), .A1(n87), .B0(n158), .Y(n171) );
  NAND2X1 U182 ( .A(n87), .B(pat_last_idx[0]), .Y(n158) );
  CLKINVX1 U183 ( .A(n81), .Y(n87) );
  XOR2X1 U184 ( .A(n169), .B(n170), .Y(n81) );
  MXI2X1 U185 ( .A(n135), .B(N188), .S0(n119), .Y(n170) );
  CLKMX2X2 U186 ( .A(pat_last_idx[0]), .B(n133), .S0(n119), .Y(n169) );
  CLKINVX1 U187 ( .A(n73), .Y(n120) );
  NAND2X1 U188 ( .A(n119), .B(n191), .Y(n73) );
  AND2X1 U189 ( .A(input_valid), .B(n192), .Y(n191) );
  CLKINVX1 U190 ( .A(reset), .Y(n192) );
  CLKINVX1 U191 ( .A(n71), .Y(n119) );
  XNOR2X1 U192 ( .A(n172), .B(n112), .Y(N192) );
  NOR2X1 U193 ( .A(n156), .B(n173), .Y(n172) );
  XNOR2X1 U194 ( .A(n173), .B(n156), .Y(N191) );
  OAI21XL U195 ( .A0(n174), .A1(n135), .B0(n173), .Y(N190) );
  NAND2X1 U196 ( .A(n174), .B(n135), .Y(n173) );
  AO21X1 U197 ( .A0(n175), .A1(n168), .B0(n174), .Y(N189) );
  NOR2X1 U198 ( .A(n168), .B(n175), .Y(n174) );
  NOR2BX1 U199 ( .AN(n176), .B(n139), .Y(N182) );
  OA21XL U200 ( .A0(n177), .A1(n112), .B0(n69), .Y(n139) );
  NAND3X1 U201 ( .A(n178), .B(str_last_idx[3]), .C(str_last_idx[4]), .Y(n69)
         );
  CLKINVX1 U202 ( .A(n98), .Y(n112) );
  XOR2X1 U203 ( .A(n176), .B(n141), .Y(N181) );
  XOR2X1 U204 ( .A(n98), .B(n177), .Y(n141) );
  AOI2BB2X1 U205 ( .B0(pat_last_idx[2]), .B1(n179), .A0N(n180), .A1N(n132), 
        .Y(n177) );
  NOR2X1 U206 ( .A(pat_last_idx[2]), .B(n179), .Y(n180) );
  XOR2X1 U207 ( .A(str_last_idx[4]), .B(n181), .Y(n98) );
  NOR2BX1 U208 ( .AN(str_last_idx[3]), .B(n182), .Y(n181) );
  OAI21XL U209 ( .A0(n183), .A1(n142), .B0(n176), .Y(N180) );
  NAND2X1 U210 ( .A(n183), .B(n142), .Y(n176) );
  XNOR2X1 U211 ( .A(n184), .B(n132), .Y(n142) );
  CLKINVX1 U212 ( .A(n156), .Y(n132) );
  XOR2X1 U213 ( .A(n178), .B(str_last_idx[3]), .Y(n156) );
  CLKINVX1 U214 ( .A(n182), .Y(n178) );
  NAND3X1 U215 ( .A(N188), .B(str_last_idx[1]), .C(str_last_idx[2]), .Y(n182)
         );
  XNOR2X1 U216 ( .A(pat_last_idx[2]), .B(n179), .Y(n184) );
  NOR2X1 U217 ( .A(n134), .B(n135), .Y(n179) );
  CLKINVX1 U218 ( .A(n185), .Y(n183) );
  OAI21XL U219 ( .A0(N178), .A1(n146), .B0(n185), .Y(N179) );
  NAND2X1 U220 ( .A(n146), .B(N178), .Y(n185) );
  XNOR2X1 U221 ( .A(n135), .B(n134), .Y(n146) );
  CLKINVX1 U222 ( .A(n124), .Y(n134) );
  OAI21XL U223 ( .A0(n186), .A1(n71), .B0(n145), .Y(n124) );
  CLKINVX1 U224 ( .A(n133), .Y(n135) );
  XNOR2X1 U225 ( .A(n187), .B(str_last_idx[2]), .Y(n133) );
  NAND2X1 U226 ( .A(N188), .B(str_last_idx[1]), .Y(n187) );
  MXI2X1 U227 ( .A(n175), .B(pat_last_idx[0]), .S0(n71), .Y(N178) );
  NAND2X1 U228 ( .A(n188), .B(n106), .Y(n71) );
  CLKINVX1 U229 ( .A(pat_last_idx[2]), .Y(n106) );
  AO21X1 U230 ( .A0(n145), .A1(n168), .B0(n189), .Y(n188) );
  AOI211X1 U231 ( .A0(n186), .A1(pat_last_idx[1]), .B0(pat_last_idx[0]), .C0(
        N188), .Y(n189) );
  CLKINVX1 U232 ( .A(n186), .Y(n168) );
  XOR2X1 U233 ( .A(str_last_idx[1]), .B(n175), .Y(n186) );
  CLKINVX1 U234 ( .A(pat_last_idx[1]), .Y(n145) );
  CLKINVX1 U235 ( .A(N188), .Y(n175) );
endmodule


module DP_FailFunc ( clk, reset, i_valid, pattern, last_pat_idx, o_fail_func, 
        o_valid );
  input [63:0] pattern;
  input [2:0] last_pat_idx;
  output [23:0] o_fail_func;
  input clk, reset, i_valid;
  output o_valid;
  wire   \current_st[0] , N44, N63, N64, N65, N66, n18, n111, n113, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n112, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137;
  wire   [2:0] next_st;
  wire   [2:0] process_idx;
  wire   [2:0] last_ff_map;

  EDFFX1 done_flag_reg ( .D(n111), .E(n113), .CK(clk), .Q(n2), .QN(n18) );
  DFFTRX1 \current_st_reg[1]  ( .D(next_st[1]), .RN(n137), .CK(clk), .Q(n1), 
        .QN(n134) );
  DFFTRX1 \current_st_reg[2]  ( .D(next_st[2]), .RN(n137), .CK(clk), .QN(n135)
         );
  TLATX1 \next_st_reg[0]  ( .G(N63), .D(N64), .QN(n136) );
  DFFQX1 \o_fail_func_reg[21]  ( .D(n186), .CK(clk), .Q(o_fail_func[21]) );
  DFFQX1 \o_fail_func_reg[22]  ( .D(n185), .CK(clk), .Q(o_fail_func[22]) );
  DFFQX1 \o_fail_func_reg[23]  ( .D(n184), .CK(clk), .Q(o_fail_func[23]) );
  DFFQX1 \current_st_reg[0]  ( .D(N44), .CK(clk), .Q(\current_st[0] ) );
  DFFQX1 \o_fail_func_reg[6]  ( .D(n201), .CK(clk), .Q(o_fail_func[6]) );
  DFFQX1 \o_fail_func_reg[7]  ( .D(n200), .CK(clk), .Q(o_fail_func[7]) );
  DFFQX1 \o_fail_func_reg[8]  ( .D(n199), .CK(clk), .Q(o_fail_func[8]) );
  DFFQX1 \last_ff_map_reg[1]  ( .D(n209), .CK(clk), .Q(last_ff_map[1]) );
  DFFQX1 \o_fail_func_reg[12]  ( .D(n195), .CK(clk), .Q(o_fail_func[12]) );
  DFFQX1 \o_fail_func_reg[13]  ( .D(n194), .CK(clk), .Q(o_fail_func[13]) );
  DFFQX1 \o_fail_func_reg[14]  ( .D(n193), .CK(clk), .Q(o_fail_func[14]) );
  DFFQX1 o_valid_reg ( .D(n214), .CK(clk), .Q(o_valid) );
  DFFQX1 \o_fail_func_reg[18]  ( .D(n189), .CK(clk), .Q(o_fail_func[18]) );
  DFFQX1 \o_fail_func_reg[19]  ( .D(n188), .CK(clk), .Q(o_fail_func[19]) );
  DFFQX1 \o_fail_func_reg[20]  ( .D(n187), .CK(clk), .Q(o_fail_func[20]) );
  DFFQX1 \last_ff_map_reg[0]  ( .D(n210), .CK(clk), .Q(last_ff_map[0]) );
  DFFQX1 \last_ff_map_reg[2]  ( .D(n208), .CK(clk), .Q(last_ff_map[2]) );
  DFFQX1 \o_fail_func_reg[15]  ( .D(n192), .CK(clk), .Q(o_fail_func[15]) );
  DFFQX1 \o_fail_func_reg[16]  ( .D(n191), .CK(clk), .Q(o_fail_func[16]) );
  DFFQX1 \o_fail_func_reg[17]  ( .D(n190), .CK(clk), .Q(o_fail_func[17]) );
  DFFQX1 \process_idx_reg[1]  ( .D(n213), .CK(clk), .Q(process_idx[1]) );
  DFFQX1 \process_idx_reg[2]  ( .D(n211), .CK(clk), .Q(process_idx[2]) );
  DFFQX1 \o_fail_func_reg[9]  ( .D(n198), .CK(clk), .Q(o_fail_func[9]) );
  DFFQX1 \o_fail_func_reg[10]  ( .D(n197), .CK(clk), .Q(o_fail_func[10]) );
  DFFQX1 \o_fail_func_reg[11]  ( .D(n196), .CK(clk), .Q(o_fail_func[11]) );
  DFFQX1 \o_fail_func_reg[3]  ( .D(n204), .CK(clk), .Q(o_fail_func[3]) );
  DFFQX1 \o_fail_func_reg[4]  ( .D(n203), .CK(clk), .Q(o_fail_func[4]) );
  DFFQX1 \o_fail_func_reg[5]  ( .D(n202), .CK(clk), .Q(o_fail_func[5]) );
  DFFQX1 \process_idx_reg[0]  ( .D(n212), .CK(clk), .Q(process_idx[0]) );
  DFFQX1 \o_fail_func_reg[2]  ( .D(n205), .CK(clk), .Q(o_fail_func[2]) );
  DFFQX1 \o_fail_func_reg[1]  ( .D(n206), .CK(clk), .Q(o_fail_func[1]) );
  DFFQX1 \o_fail_func_reg[0]  ( .D(n207), .CK(clk), .Q(o_fail_func[0]) );
  TLATX1 \next_st_reg[1]  ( .G(N63), .D(N65), .Q(next_st[1]) );
  TLATX1 \next_st_reg[2]  ( .G(N63), .D(N66), .Q(next_st[2]) );
  CLKINVX1 U3 ( .A(n3), .Y(n214) );
  OAI211X1 U4 ( .A0(n2), .A1(o_valid), .B0(i_valid), .C0(n137), .Y(n3) );
  MXI2X1 U5 ( .A(n4), .B(n5), .S0(n6), .Y(n213) );
  MXI2X1 U6 ( .A(n7), .B(n8), .S0(n9), .Y(n212) );
  NAND2X1 U7 ( .A(n10), .B(n7), .Y(n8) );
  OAI222XL U8 ( .A0(n4), .A1(n11), .B0(n5), .B1(n12), .C0(n113), .C1(n13), .Y(
        n211) );
  CLKINVX1 U9 ( .A(n14), .Y(n13) );
  CLKINVX1 U10 ( .A(n15), .Y(n12) );
  NAND3X1 U11 ( .A(n7), .B(n10), .C(process_idx[0]), .Y(n5) );
  CLKINVX1 U12 ( .A(n113), .Y(n10) );
  OA21XL U13 ( .A0(process_idx[0]), .A1(n113), .B0(n7), .Y(n4) );
  OAI22XL U14 ( .A0(n7), .A1(n16), .B0(n17), .B1(n19), .Y(n210) );
  OAI22XL U15 ( .A0(n7), .A1(n20), .B0(n19), .B1(n21), .Y(n209) );
  OAI22XL U16 ( .A0(n7), .A1(n22), .B0(n19), .B1(n23), .Y(n208) );
  NAND3X1 U17 ( .A(n24), .B(n7), .C(n25), .Y(n19) );
  NAND2X1 U18 ( .A(n111), .B(n26), .Y(n7) );
  NOR2BX1 U19 ( .AN(o_fail_func[0]), .B(n27), .Y(n207) );
  NOR2BX1 U20 ( .AN(o_fail_func[1]), .B(n27), .Y(n206) );
  NOR2BX1 U21 ( .AN(o_fail_func[2]), .B(n27), .Y(n205) );
  OAI21XL U22 ( .A0(n25), .A1(n26), .B0(n137), .Y(n27) );
  NAND3X1 U23 ( .A(n6), .B(n11), .C(n9), .Y(n25) );
  CLKMX2X2 U24 ( .A(n28), .B(o_fail_func[3]), .S0(n29), .Y(n204) );
  CLKMX2X2 U25 ( .A(n30), .B(o_fail_func[4]), .S0(n29), .Y(n203) );
  CLKMX2X2 U26 ( .A(n31), .B(o_fail_func[5]), .S0(n29), .Y(n202) );
  OA21XL U27 ( .A0(n32), .A1(n26), .B0(n137), .Y(n29) );
  CLKINVX1 U28 ( .A(n33), .Y(n32) );
  CLKMX2X2 U29 ( .A(o_fail_func[6]), .B(n28), .S0(n34), .Y(n201) );
  CLKMX2X2 U30 ( .A(o_fail_func[7]), .B(n30), .S0(n34), .Y(n200) );
  CLKMX2X2 U31 ( .A(o_fail_func[8]), .B(n31), .S0(n34), .Y(n199) );
  OA21XL U32 ( .A0(reset), .A1(n15), .B0(n35), .Y(n34) );
  CLKMX2X2 U33 ( .A(o_fail_func[9]), .B(n28), .S0(n36), .Y(n198) );
  CLKMX2X2 U34 ( .A(o_fail_func[10]), .B(n30), .S0(n36), .Y(n197) );
  CLKMX2X2 U35 ( .A(o_fail_func[11]), .B(n31), .S0(n36), .Y(n196) );
  OA21XL U36 ( .A0(reset), .A1(n15), .B0(n37), .Y(n36) );
  CLKMX2X2 U37 ( .A(o_fail_func[12]), .B(n28), .S0(n38), .Y(n195) );
  CLKMX2X2 U38 ( .A(o_fail_func[13]), .B(n30), .S0(n38), .Y(n194) );
  CLKMX2X2 U39 ( .A(o_fail_func[14]), .B(n31), .S0(n38), .Y(n193) );
  OA21XL U40 ( .A0(reset), .A1(n14), .B0(n35), .Y(n38) );
  CLKMX2X2 U41 ( .A(o_fail_func[15]), .B(n28), .S0(n39), .Y(n192) );
  CLKMX2X2 U42 ( .A(o_fail_func[16]), .B(n30), .S0(n39), .Y(n191) );
  CLKMX2X2 U43 ( .A(o_fail_func[17]), .B(n31), .S0(n39), .Y(n190) );
  OA21XL U44 ( .A0(reset), .A1(n14), .B0(n37), .Y(n39) );
  CLKMX2X2 U45 ( .A(o_fail_func[18]), .B(n28), .S0(n40), .Y(n189) );
  CLKMX2X2 U46 ( .A(o_fail_func[19]), .B(n30), .S0(n40), .Y(n188) );
  CLKMX2X2 U47 ( .A(o_fail_func[20]), .B(n31), .S0(n40), .Y(n187) );
  OA21XL U48 ( .A0(reset), .A1(n41), .B0(n35), .Y(n40) );
  OAI21XL U49 ( .A0(process_idx[0]), .A1(n26), .B0(n137), .Y(n35) );
  CLKMX2X2 U50 ( .A(o_fail_func[21]), .B(n28), .S0(n42), .Y(n186) );
  CLKINVX1 U51 ( .A(n17), .Y(n28) );
  NAND2X1 U52 ( .A(n43), .B(n16), .Y(n17) );
  CLKMX2X2 U53 ( .A(o_fail_func[22]), .B(n30), .S0(n42), .Y(n185) );
  CLKINVX1 U54 ( .A(n21), .Y(n30) );
  NAND2X1 U55 ( .A(n43), .B(n44), .Y(n21) );
  XNOR2X1 U56 ( .A(n20), .B(last_ff_map[0]), .Y(n44) );
  CLKMX2X2 U57 ( .A(o_fail_func[23]), .B(n31), .S0(n42), .Y(n184) );
  OA21XL U58 ( .A0(reset), .A1(n41), .B0(n37), .Y(n42) );
  OAI21XL U59 ( .A0(n9), .A1(n26), .B0(n137), .Y(n37) );
  NAND2X1 U60 ( .A(n111), .B(n18), .Y(n26) );
  CLKINVX1 U61 ( .A(n23), .Y(n31) );
  OAI21XL U62 ( .A0(n45), .A1(n46), .B0(n43), .Y(n23) );
  AND4X1 U63 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n43) );
  NOR4BX1 U64 ( .AN(n111), .B(n51), .C(n52), .D(n53), .Y(n50) );
  XOR2X1 U65 ( .A(n54), .B(n55), .Y(n53) );
  MXI2X1 U66 ( .A(n56), .B(n57), .S0(n16), .Y(n55) );
  AOI221XL U67 ( .A0(pattern[50]), .A1(n58), .B0(pattern[2]), .B1(n59), .C0(
        n60), .Y(n57) );
  AO22X1 U68 ( .A0(n45), .A1(pattern[34]), .B0(n61), .B1(pattern[18]), .Y(n60)
         );
  AOI222XL U69 ( .A0(pattern[10]), .A1(n59), .B0(pattern[26]), .B1(n61), .C0(
        pattern[42]), .C1(n45), .Y(n56) );
  OAI2BB1X1 U70 ( .A0N(n33), .A1N(pattern[10]), .B0(n62), .Y(n54) );
  CLKMX2X2 U71 ( .A(n63), .B(n64), .S0(n9), .Y(n62) );
  AOI222XL U72 ( .A0(pattern[50]), .A1(n41), .B0(pattern[34]), .B1(n14), .C0(
        pattern[18]), .C1(n15), .Y(n64) );
  AOI222XL U73 ( .A0(pattern[58]), .A1(n41), .B0(pattern[42]), .B1(n14), .C0(
        pattern[26]), .C1(n15), .Y(n63) );
  XOR2X1 U74 ( .A(n65), .B(n66), .Y(n52) );
  MXI2X1 U75 ( .A(n67), .B(n68), .S0(n16), .Y(n66) );
  AOI221XL U76 ( .A0(pattern[55]), .A1(n58), .B0(pattern[7]), .B1(n59), .C0(
        n69), .Y(n68) );
  AO22X1 U77 ( .A0(n45), .A1(pattern[39]), .B0(n61), .B1(pattern[23]), .Y(n69)
         );
  AOI222XL U78 ( .A0(pattern[15]), .A1(n59), .B0(pattern[31]), .B1(n61), .C0(
        pattern[47]), .C1(n45), .Y(n67) );
  OAI2BB1X1 U79 ( .A0N(n33), .A1N(pattern[15]), .B0(n70), .Y(n65) );
  CLKMX2X2 U80 ( .A(n71), .B(n72), .S0(n9), .Y(n70) );
  AOI222XL U81 ( .A0(pattern[55]), .A1(n41), .B0(pattern[39]), .B1(n14), .C0(
        pattern[23]), .C1(n15), .Y(n72) );
  AOI222XL U82 ( .A0(pattern[63]), .A1(n41), .B0(pattern[47]), .B1(n14), .C0(
        pattern[31]), .C1(n15), .Y(n71) );
  XOR2X1 U83 ( .A(n73), .B(n74), .Y(n51) );
  MXI2X1 U84 ( .A(n75), .B(n76), .S0(n16), .Y(n74) );
  AOI221XL U85 ( .A0(pattern[48]), .A1(n58), .B0(pattern[0]), .B1(n59), .C0(
        n77), .Y(n76) );
  AO22X1 U86 ( .A0(n45), .A1(pattern[32]), .B0(n61), .B1(pattern[16]), .Y(n77)
         );
  AOI222XL U87 ( .A0(pattern[8]), .A1(n59), .B0(pattern[24]), .B1(n61), .C0(
        pattern[40]), .C1(n45), .Y(n75) );
  OAI2BB1X1 U88 ( .A0N(n33), .A1N(pattern[8]), .B0(n78), .Y(n73) );
  CLKMX2X2 U89 ( .A(n79), .B(n80), .S0(n9), .Y(n78) );
  AOI222XL U90 ( .A0(pattern[48]), .A1(n41), .B0(pattern[32]), .B1(n14), .C0(
        pattern[16]), .C1(n15), .Y(n80) );
  AOI222XL U91 ( .A0(pattern[56]), .A1(n41), .B0(pattern[40]), .B1(n14), .C0(
        pattern[24]), .C1(n15), .Y(n79) );
  NOR3X1 U92 ( .A(n81), .B(n82), .C(n83), .Y(n49) );
  XOR2X1 U93 ( .A(n84), .B(n85), .Y(n83) );
  MXI2X1 U94 ( .A(n86), .B(n87), .S0(n16), .Y(n85) );
  AOI221XL U95 ( .A0(pattern[51]), .A1(n58), .B0(pattern[3]), .B1(n59), .C0(
        n88), .Y(n87) );
  AO22X1 U96 ( .A0(n45), .A1(pattern[35]), .B0(n61), .B1(pattern[19]), .Y(n88)
         );
  AOI222XL U97 ( .A0(pattern[11]), .A1(n59), .B0(pattern[27]), .B1(n61), .C0(
        pattern[43]), .C1(n45), .Y(n86) );
  OAI2BB1X1 U98 ( .A0N(n33), .A1N(pattern[11]), .B0(n89), .Y(n84) );
  CLKMX2X2 U99 ( .A(n90), .B(n91), .S0(n9), .Y(n89) );
  AOI222XL U100 ( .A0(pattern[51]), .A1(n41), .B0(pattern[35]), .B1(n14), .C0(
        pattern[19]), .C1(n15), .Y(n91) );
  AOI222XL U101 ( .A0(pattern[59]), .A1(n41), .B0(pattern[43]), .B1(n14), .C0(
        pattern[27]), .C1(n15), .Y(n90) );
  XOR2X1 U102 ( .A(n92), .B(n93), .Y(n82) );
  MXI2X1 U103 ( .A(n94), .B(n95), .S0(n16), .Y(n93) );
  AOI221XL U104 ( .A0(n58), .A1(pattern[52]), .B0(pattern[4]), .B1(n59), .C0(
        n96), .Y(n95) );
  AO22X1 U105 ( .A0(pattern[36]), .A1(n45), .B0(pattern[20]), .B1(n61), .Y(n96) );
  AOI222XL U106 ( .A0(n59), .A1(pattern[12]), .B0(n61), .B1(pattern[28]), .C0(
        n45), .C1(pattern[44]), .Y(n94) );
  OAI2BB1X1 U107 ( .A0N(n33), .A1N(pattern[12]), .B0(n97), .Y(n92) );
  CLKMX2X2 U108 ( .A(n98), .B(n99), .S0(n9), .Y(n97) );
  AOI222XL U109 ( .A0(pattern[52]), .A1(n41), .B0(pattern[36]), .B1(n14), .C0(
        pattern[20]), .C1(n15), .Y(n99) );
  AOI222XL U110 ( .A0(pattern[60]), .A1(n41), .B0(pattern[44]), .B1(n14), .C0(
        pattern[28]), .C1(n15), .Y(n98) );
  XOR2X1 U111 ( .A(n100), .B(n101), .Y(n81) );
  MXI2X1 U112 ( .A(n102), .B(n103), .S0(n16), .Y(n101) );
  AOI221XL U113 ( .A0(pattern[53]), .A1(n58), .B0(pattern[5]), .B1(n59), .C0(
        n104), .Y(n103) );
  AO22X1 U114 ( .A0(n45), .A1(pattern[37]), .B0(n61), .B1(pattern[21]), .Y(
        n104) );
  AOI222XL U115 ( .A0(pattern[13]), .A1(n59), .B0(pattern[29]), .B1(n61), .C0(
        pattern[45]), .C1(n45), .Y(n102) );
  OAI2BB1X1 U116 ( .A0N(n33), .A1N(pattern[13]), .B0(n105), .Y(n100) );
  CLKMX2X2 U117 ( .A(n106), .B(n107), .S0(n9), .Y(n105) );
  AOI222XL U118 ( .A0(pattern[53]), .A1(n41), .B0(pattern[37]), .B1(n14), .C0(
        pattern[21]), .C1(n15), .Y(n107) );
  AOI222XL U119 ( .A0(pattern[61]), .A1(n41), .B0(pattern[45]), .B1(n14), .C0(
        pattern[29]), .C1(n15), .Y(n106) );
  XOR2X1 U120 ( .A(n108), .B(n109), .Y(n48) );
  MXI2X1 U121 ( .A(n110), .B(n112), .S0(n16), .Y(n109) );
  AOI221XL U122 ( .A0(pattern[54]), .A1(n58), .B0(pattern[6]), .B1(n59), .C0(
        n114), .Y(n112) );
  AO22X1 U123 ( .A0(n45), .A1(pattern[38]), .B0(n61), .B1(pattern[22]), .Y(
        n114) );
  AOI222XL U124 ( .A0(pattern[14]), .A1(n59), .B0(pattern[30]), .B1(n61), .C0(
        pattern[46]), .C1(n45), .Y(n110) );
  AOI21X1 U125 ( .A0(pattern[14]), .A1(n33), .B0(n115), .Y(n108) );
  MXI2X1 U126 ( .A(n116), .B(n117), .S0(n9), .Y(n115) );
  AOI222XL U127 ( .A0(pattern[54]), .A1(n41), .B0(pattern[38]), .B1(n14), .C0(
        pattern[22]), .C1(n15), .Y(n117) );
  AOI222XL U128 ( .A0(pattern[62]), .A1(n41), .B0(pattern[46]), .B1(n14), .C0(
        pattern[30]), .C1(n15), .Y(n116) );
  XOR2X1 U129 ( .A(n118), .B(n119), .Y(n47) );
  MXI2X1 U130 ( .A(n120), .B(n121), .S0(n16), .Y(n119) );
  CLKINVX1 U131 ( .A(last_ff_map[0]), .Y(n16) );
  AOI221XL U132 ( .A0(pattern[49]), .A1(n58), .B0(pattern[1]), .B1(n59), .C0(
        n122), .Y(n121) );
  AO22X1 U133 ( .A0(n45), .A1(pattern[33]), .B0(n61), .B1(pattern[17]), .Y(
        n122) );
  NOR2X1 U134 ( .A(n22), .B(n20), .Y(n58) );
  AOI222XL U135 ( .A0(pattern[9]), .A1(n59), .B0(pattern[25]), .B1(n61), .C0(
        pattern[41]), .C1(n45), .Y(n120) );
  NOR2X1 U136 ( .A(last_ff_map[1]), .B(last_ff_map[2]), .Y(n59) );
  AOI21X1 U137 ( .A0(pattern[9]), .A1(n33), .B0(n123), .Y(n118) );
  MXI2X1 U138 ( .A(n124), .B(n125), .S0(n9), .Y(n123) );
  AOI222XL U139 ( .A0(pattern[49]), .A1(n41), .B0(pattern[33]), .B1(n14), .C0(
        pattern[17]), .C1(n15), .Y(n125) );
  AOI222XL U140 ( .A0(pattern[57]), .A1(n41), .B0(pattern[41]), .B1(n14), .C0(
        pattern[25]), .C1(n15), .Y(n124) );
  NOR2X1 U141 ( .A(n6), .B(process_idx[2]), .Y(n15) );
  NOR2X1 U142 ( .A(n11), .B(process_idx[1]), .Y(n14) );
  NOR2X1 U143 ( .A(n6), .B(n11), .Y(n41) );
  CLKINVX1 U144 ( .A(process_idx[2]), .Y(n11) );
  CLKINVX1 U145 ( .A(process_idx[1]), .Y(n6) );
  NOR3X1 U146 ( .A(process_idx[1]), .B(process_idx[2]), .C(n9), .Y(n33) );
  CLKINVX1 U147 ( .A(process_idx[0]), .Y(n9) );
  CLKMX2X2 U148 ( .A(last_ff_map[2]), .B(n61), .S0(last_ff_map[0]), .Y(n46) );
  NOR2X1 U149 ( .A(n20), .B(last_ff_map[2]), .Y(n61) );
  CLKINVX1 U150 ( .A(last_ff_map[1]), .Y(n20) );
  NOR2X1 U151 ( .A(n22), .B(last_ff_map[1]), .Y(n45) );
  CLKINVX1 U152 ( .A(last_ff_map[2]), .Y(n22) );
  NAND2X1 U153 ( .A(n111), .B(n24), .Y(n113) );
  NAND3X1 U154 ( .A(n126), .B(n127), .C(n128), .Y(n24) );
  XNOR2X1 U155 ( .A(process_idx[1]), .B(last_pat_idx[1]), .Y(n128) );
  XNOR2X1 U156 ( .A(process_idx[2]), .B(last_pat_idx[2]), .Y(n127) );
  XNOR2X1 U157 ( .A(process_idx[0]), .B(last_pat_idx[0]), .Y(n126) );
  NOR2X1 U158 ( .A(n129), .B(reset), .Y(n111) );
  OAI21XL U159 ( .A0(n18), .A1(n129), .B0(n130), .Y(N66) );
  NAND4BX1 U160 ( .AN(n135), .B(n134), .C(i_valid), .D(n131), .Y(n130) );
  OAI21XL U161 ( .A0(n2), .A1(n129), .B0(n132), .Y(N65) );
  NAND4X1 U162 ( .A(\current_st[0] ), .B(n134), .C(n135), .D(i_valid), .Y(n132) );
  NOR3X1 U163 ( .A(n133), .B(i_valid), .C(n1), .Y(N64) );
  OAI21XL U164 ( .A0(n1), .A1(n133), .B0(n129), .Y(N63) );
  NAND3X1 U165 ( .A(n131), .B(n1), .C(n135), .Y(n129) );
  XNOR2X1 U166 ( .A(n131), .B(n135), .Y(n133) );
  CLKINVX1 U167 ( .A(\current_st[0] ), .Y(n131) );
  NAND2X1 U168 ( .A(n137), .B(n136), .Y(N44) );
  CLKINVX1 U169 ( .A(reset), .Y(n137) );
endmodule


module shared_memory ( clk, reset, w_data, write, w_sel, str_reg, pat_reg, 
        str_last_idx, pat_last_idx, ff_result, valid );
  input [7:0] w_data;
  output [255:0] str_reg;
  output [63:0] pat_reg;
  output [4:0] str_last_idx;
  output [2:0] pat_last_idx;
  output [23:0] ff_result;
  input clk, reset, write, w_sel;
  output valid;
  wire   read_done, ff_valid, \active[0] , n86, n90, n93, n97, n99, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n87, n88, n89, n91, n92, n94,
         n95, n96, n98, n100, n101, n102, n103, n104, n105, n412, n413, n414,
         n415, n416, n417, n418;
  wire   [4:0] s_index;
  wire   [2:0] p_index;

  DP_FailFunc dp1 ( .clk(clk), .reset(reset), .i_valid(read_done), .pattern(
        pat_reg), .last_pat_idx(pat_last_idx), .o_fail_func(ff_result), 
        .o_valid(ff_valid) );
  DFFQX1 \p_index_reg[2]  ( .D(n409), .CK(clk), .Q(p_index[2]) );
  DFFQX1 \s_index_reg[4]  ( .D(n367), .CK(clk), .Q(s_index[4]) );
  DFFQX1 \str_last_idx_reg[2]  ( .D(n364), .CK(clk), .Q(str_last_idx[2]) );
  DFFQX1 \str_last_idx_reg[4]  ( .D(n362), .CK(clk), .Q(str_last_idx[4]) );
  DFFQX1 \active_reg[0]  ( .D(n372), .CK(clk), .Q(\active[0] ) );
  DFFQX1 \str_last_idx_reg[3]  ( .D(n363), .CK(clk), .Q(str_last_idx[3]) );
  DFFQX1 \str_reg_reg[247]  ( .D(n114), .CK(clk), .Q(str_reg[247]) );
  DFFQX1 \str_reg_reg[246]  ( .D(n115), .CK(clk), .Q(str_reg[246]) );
  DFFQX1 \str_reg_reg[245]  ( .D(n116), .CK(clk), .Q(str_reg[245]) );
  DFFQX1 \str_reg_reg[244]  ( .D(n117), .CK(clk), .Q(str_reg[244]) );
  DFFQX1 \str_reg_reg[243]  ( .D(n118), .CK(clk), .Q(str_reg[243]) );
  DFFQX1 \str_reg_reg[242]  ( .D(n119), .CK(clk), .Q(str_reg[242]) );
  DFFQX1 \str_reg_reg[241]  ( .D(n120), .CK(clk), .Q(str_reg[241]) );
  DFFQX1 \str_reg_reg[240]  ( .D(n121), .CK(clk), .Q(str_reg[240]) );
  DFFQX1 \str_reg_reg[55]  ( .D(n306), .CK(clk), .Q(str_reg[55]) );
  DFFQX1 \str_reg_reg[54]  ( .D(n307), .CK(clk), .Q(str_reg[54]) );
  DFFQX1 \str_reg_reg[53]  ( .D(n308), .CK(clk), .Q(str_reg[53]) );
  DFFQX1 \str_reg_reg[52]  ( .D(n309), .CK(clk), .Q(str_reg[52]) );
  DFFQX1 \str_reg_reg[51]  ( .D(n310), .CK(clk), .Q(str_reg[51]) );
  DFFQX1 \str_reg_reg[50]  ( .D(n311), .CK(clk), .Q(str_reg[50]) );
  DFFQX1 \str_reg_reg[49]  ( .D(n312), .CK(clk), .Q(str_reg[49]) );
  DFFQX1 \str_reg_reg[48]  ( .D(n313), .CK(clk), .Q(str_reg[48]) );
  DFFQX1 \str_reg_reg[215]  ( .D(n146), .CK(clk), .Q(str_reg[215]) );
  DFFQX1 \str_reg_reg[214]  ( .D(n147), .CK(clk), .Q(str_reg[214]) );
  DFFQX1 \str_reg_reg[213]  ( .D(n148), .CK(clk), .Q(str_reg[213]) );
  DFFQX1 \str_reg_reg[212]  ( .D(n149), .CK(clk), .Q(str_reg[212]) );
  DFFQX1 \str_reg_reg[211]  ( .D(n150), .CK(clk), .Q(str_reg[211]) );
  DFFQX1 \str_reg_reg[210]  ( .D(n151), .CK(clk), .Q(str_reg[210]) );
  DFFQX1 \str_reg_reg[209]  ( .D(n152), .CK(clk), .Q(str_reg[209]) );
  DFFQX1 \str_reg_reg[208]  ( .D(n153), .CK(clk), .Q(str_reg[208]) );
  DFFQX1 \str_reg_reg[23]  ( .D(n338), .CK(clk), .Q(str_reg[23]) );
  DFFQX1 \str_reg_reg[22]  ( .D(n339), .CK(clk), .Q(str_reg[22]) );
  DFFQX1 \str_reg_reg[21]  ( .D(n340), .CK(clk), .Q(str_reg[21]) );
  DFFQX1 \str_reg_reg[20]  ( .D(n341), .CK(clk), .Q(str_reg[20]) );
  DFFQX1 \str_reg_reg[19]  ( .D(n342), .CK(clk), .Q(str_reg[19]) );
  DFFQX1 \str_reg_reg[18]  ( .D(n343), .CK(clk), .Q(str_reg[18]) );
  DFFQX1 \str_reg_reg[17]  ( .D(n344), .CK(clk), .Q(str_reg[17]) );
  DFFQX1 \str_reg_reg[16]  ( .D(n345), .CK(clk), .Q(str_reg[16]) );
  DFFQX1 \str_reg_reg[7]  ( .D(n354), .CK(clk), .Q(str_reg[7]) );
  DFFQX1 \str_reg_reg[6]  ( .D(n355), .CK(clk), .Q(str_reg[6]) );
  DFFQX1 \str_reg_reg[5]  ( .D(n356), .CK(clk), .Q(str_reg[5]) );
  DFFQX1 \str_reg_reg[4]  ( .D(n357), .CK(clk), .Q(str_reg[4]) );
  DFFQX1 \str_reg_reg[3]  ( .D(n358), .CK(clk), .Q(str_reg[3]) );
  DFFQX1 \str_reg_reg[2]  ( .D(n359), .CK(clk), .Q(str_reg[2]) );
  DFFQX1 \str_reg_reg[1]  ( .D(n360), .CK(clk), .Q(str_reg[1]) );
  DFFQX1 \str_reg_reg[0]  ( .D(n361), .CK(clk), .Q(str_reg[0]) );
  DFFQX1 \str_reg_reg[255]  ( .D(n106), .CK(clk), .Q(str_reg[255]) );
  DFFQX1 \str_reg_reg[254]  ( .D(n107), .CK(clk), .Q(str_reg[254]) );
  DFFQX1 \str_reg_reg[253]  ( .D(n108), .CK(clk), .Q(str_reg[253]) );
  DFFQX1 \str_reg_reg[252]  ( .D(n109), .CK(clk), .Q(str_reg[252]) );
  DFFQX1 \str_reg_reg[251]  ( .D(n110), .CK(clk), .Q(str_reg[251]) );
  DFFQX1 \str_reg_reg[250]  ( .D(n111), .CK(clk), .Q(str_reg[250]) );
  DFFQX1 \str_reg_reg[249]  ( .D(n112), .CK(clk), .Q(str_reg[249]) );
  DFFQX1 \str_reg_reg[248]  ( .D(n113), .CK(clk), .Q(str_reg[248]) );
  DFFQX1 \str_reg_reg[63]  ( .D(n298), .CK(clk), .Q(str_reg[63]) );
  DFFQX1 \str_reg_reg[62]  ( .D(n299), .CK(clk), .Q(str_reg[62]) );
  DFFQX1 \str_reg_reg[61]  ( .D(n300), .CK(clk), .Q(str_reg[61]) );
  DFFQX1 \str_reg_reg[60]  ( .D(n301), .CK(clk), .Q(str_reg[60]) );
  DFFQX1 \str_reg_reg[59]  ( .D(n302), .CK(clk), .Q(str_reg[59]) );
  DFFQX1 \str_reg_reg[58]  ( .D(n303), .CK(clk), .Q(str_reg[58]) );
  DFFQX1 \str_reg_reg[57]  ( .D(n304), .CK(clk), .Q(str_reg[57]) );
  DFFQX1 \str_reg_reg[56]  ( .D(n305), .CK(clk), .Q(str_reg[56]) );
  DFFQX1 \str_reg_reg[223]  ( .D(n138), .CK(clk), .Q(str_reg[223]) );
  DFFQX1 \str_reg_reg[222]  ( .D(n139), .CK(clk), .Q(str_reg[222]) );
  DFFQX1 \str_reg_reg[221]  ( .D(n140), .CK(clk), .Q(str_reg[221]) );
  DFFQX1 \str_reg_reg[220]  ( .D(n141), .CK(clk), .Q(str_reg[220]) );
  DFFQX1 \str_reg_reg[219]  ( .D(n142), .CK(clk), .Q(str_reg[219]) );
  DFFQX1 \str_reg_reg[218]  ( .D(n143), .CK(clk), .Q(str_reg[218]) );
  DFFQX1 \str_reg_reg[217]  ( .D(n144), .CK(clk), .Q(str_reg[217]) );
  DFFQX1 \str_reg_reg[216]  ( .D(n145), .CK(clk), .Q(str_reg[216]) );
  DFFQX1 \str_reg_reg[31]  ( .D(n330), .CK(clk), .Q(str_reg[31]) );
  DFFQX1 \str_reg_reg[30]  ( .D(n331), .CK(clk), .Q(str_reg[30]) );
  DFFQX1 \str_reg_reg[29]  ( .D(n332), .CK(clk), .Q(str_reg[29]) );
  DFFQX1 \str_reg_reg[28]  ( .D(n333), .CK(clk), .Q(str_reg[28]) );
  DFFQX1 \str_reg_reg[27]  ( .D(n334), .CK(clk), .Q(str_reg[27]) );
  DFFQX1 \str_reg_reg[26]  ( .D(n335), .CK(clk), .Q(str_reg[26]) );
  DFFQX1 \str_reg_reg[25]  ( .D(n336), .CK(clk), .Q(str_reg[25]) );
  DFFQX1 \str_reg_reg[24]  ( .D(n337), .CK(clk), .Q(str_reg[24]) );
  EDFFX1 \pat_reg_reg[7]  ( .D(n105), .E(n99), .CK(clk), .Q(pat_reg[7]) );
  EDFFX1 \pat_reg_reg[6]  ( .D(n412), .E(n99), .CK(clk), .Q(pat_reg[6]) );
  EDFFX1 \pat_reg_reg[5]  ( .D(n413), .E(n99), .CK(clk), .Q(pat_reg[5]) );
  EDFFX1 \pat_reg_reg[4]  ( .D(n414), .E(n99), .CK(clk), .Q(pat_reg[4]) );
  EDFFX1 \pat_reg_reg[3]  ( .D(n415), .E(n99), .CK(clk), .Q(pat_reg[3]) );
  EDFFX1 \pat_reg_reg[2]  ( .D(n416), .E(n99), .CK(clk), .Q(pat_reg[2]) );
  EDFFX1 \pat_reg_reg[1]  ( .D(n417), .E(n99), .CK(clk), .Q(pat_reg[1]) );
  EDFFX1 \pat_reg_reg[0]  ( .D(n418), .E(n99), .CK(clk), .Q(pat_reg[0]) );
  DFFQX1 \str_reg_reg[183]  ( .D(n178), .CK(clk), .Q(str_reg[183]) );
  DFFQX1 \str_reg_reg[182]  ( .D(n179), .CK(clk), .Q(str_reg[182]) );
  DFFQX1 \str_reg_reg[181]  ( .D(n180), .CK(clk), .Q(str_reg[181]) );
  DFFQX1 \str_reg_reg[180]  ( .D(n181), .CK(clk), .Q(str_reg[180]) );
  DFFQX1 \str_reg_reg[179]  ( .D(n182), .CK(clk), .Q(str_reg[179]) );
  DFFQX1 \str_reg_reg[178]  ( .D(n183), .CK(clk), .Q(str_reg[178]) );
  DFFQX1 \str_reg_reg[177]  ( .D(n184), .CK(clk), .Q(str_reg[177]) );
  DFFQX1 \str_reg_reg[176]  ( .D(n185), .CK(clk), .Q(str_reg[176]) );
  DFFQX1 \str_reg_reg[119]  ( .D(n242), .CK(clk), .Q(str_reg[119]) );
  DFFQX1 \str_reg_reg[118]  ( .D(n243), .CK(clk), .Q(str_reg[118]) );
  DFFQX1 \str_reg_reg[117]  ( .D(n244), .CK(clk), .Q(str_reg[117]) );
  DFFQX1 \str_reg_reg[116]  ( .D(n245), .CK(clk), .Q(str_reg[116]) );
  DFFQX1 \str_reg_reg[115]  ( .D(n246), .CK(clk), .Q(str_reg[115]) );
  DFFQX1 \str_reg_reg[114]  ( .D(n247), .CK(clk), .Q(str_reg[114]) );
  DFFQX1 \str_reg_reg[113]  ( .D(n248), .CK(clk), .Q(str_reg[113]) );
  DFFQX1 \str_reg_reg[112]  ( .D(n249), .CK(clk), .Q(str_reg[112]) );
  DFFQX1 \str_reg_reg[151]  ( .D(n210), .CK(clk), .Q(str_reg[151]) );
  DFFQX1 \str_reg_reg[150]  ( .D(n211), .CK(clk), .Q(str_reg[150]) );
  DFFQX1 \str_reg_reg[149]  ( .D(n212), .CK(clk), .Q(str_reg[149]) );
  DFFQX1 \str_reg_reg[148]  ( .D(n213), .CK(clk), .Q(str_reg[148]) );
  DFFQX1 \str_reg_reg[147]  ( .D(n214), .CK(clk), .Q(str_reg[147]) );
  DFFQX1 \str_reg_reg[146]  ( .D(n215), .CK(clk), .Q(str_reg[146]) );
  DFFQX1 \str_reg_reg[145]  ( .D(n216), .CK(clk), .Q(str_reg[145]) );
  DFFQX1 \str_reg_reg[144]  ( .D(n217), .CK(clk), .Q(str_reg[144]) );
  DFFQX1 \str_reg_reg[87]  ( .D(n274), .CK(clk), .Q(str_reg[87]) );
  DFFQX1 \str_reg_reg[86]  ( .D(n275), .CK(clk), .Q(str_reg[86]) );
  DFFQX1 \str_reg_reg[85]  ( .D(n276), .CK(clk), .Q(str_reg[85]) );
  DFFQX1 \str_reg_reg[84]  ( .D(n277), .CK(clk), .Q(str_reg[84]) );
  DFFQX1 \str_reg_reg[83]  ( .D(n278), .CK(clk), .Q(str_reg[83]) );
  DFFQX1 \str_reg_reg[82]  ( .D(n279), .CK(clk), .Q(str_reg[82]) );
  DFFQX1 \str_reg_reg[81]  ( .D(n280), .CK(clk), .Q(str_reg[81]) );
  DFFQX1 \str_reg_reg[80]  ( .D(n281), .CK(clk), .Q(str_reg[80]) );
  DFFQX1 \str_reg_reg[71]  ( .D(n290), .CK(clk), .Q(str_reg[71]) );
  DFFQX1 \str_reg_reg[70]  ( .D(n291), .CK(clk), .Q(str_reg[70]) );
  DFFQX1 \str_reg_reg[69]  ( .D(n292), .CK(clk), .Q(str_reg[69]) );
  DFFQX1 \str_reg_reg[68]  ( .D(n293), .CK(clk), .Q(str_reg[68]) );
  DFFQX1 \str_reg_reg[67]  ( .D(n294), .CK(clk), .Q(str_reg[67]) );
  DFFQX1 \str_reg_reg[66]  ( .D(n295), .CK(clk), .Q(str_reg[66]) );
  DFFQX1 \str_reg_reg[65]  ( .D(n296), .CK(clk), .Q(str_reg[65]) );
  DFFQX1 \str_reg_reg[64]  ( .D(n297), .CK(clk), .Q(str_reg[64]) );
  DFFQX1 \str_reg_reg[191]  ( .D(n170), .CK(clk), .Q(str_reg[191]) );
  DFFQX1 \str_reg_reg[190]  ( .D(n171), .CK(clk), .Q(str_reg[190]) );
  DFFQX1 \str_reg_reg[189]  ( .D(n172), .CK(clk), .Q(str_reg[189]) );
  DFFQX1 \str_reg_reg[188]  ( .D(n173), .CK(clk), .Q(str_reg[188]) );
  DFFQX1 \str_reg_reg[187]  ( .D(n174), .CK(clk), .Q(str_reg[187]) );
  DFFQX1 \str_reg_reg[186]  ( .D(n175), .CK(clk), .Q(str_reg[186]) );
  DFFQX1 \str_reg_reg[185]  ( .D(n176), .CK(clk), .Q(str_reg[185]) );
  DFFQX1 \str_reg_reg[184]  ( .D(n177), .CK(clk), .Q(str_reg[184]) );
  DFFQX1 \str_reg_reg[127]  ( .D(n234), .CK(clk), .Q(str_reg[127]) );
  DFFQX1 \str_reg_reg[126]  ( .D(n235), .CK(clk), .Q(str_reg[126]) );
  DFFQX1 \str_reg_reg[125]  ( .D(n236), .CK(clk), .Q(str_reg[125]) );
  DFFQX1 \str_reg_reg[124]  ( .D(n237), .CK(clk), .Q(str_reg[124]) );
  DFFQX1 \str_reg_reg[123]  ( .D(n238), .CK(clk), .Q(str_reg[123]) );
  DFFQX1 \str_reg_reg[122]  ( .D(n239), .CK(clk), .Q(str_reg[122]) );
  DFFQX1 \str_reg_reg[121]  ( .D(n240), .CK(clk), .Q(str_reg[121]) );
  DFFQX1 \str_reg_reg[120]  ( .D(n241), .CK(clk), .Q(str_reg[120]) );
  DFFQX1 \str_reg_reg[159]  ( .D(n202), .CK(clk), .Q(str_reg[159]) );
  DFFQX1 \str_reg_reg[158]  ( .D(n203), .CK(clk), .Q(str_reg[158]) );
  DFFQX1 \str_reg_reg[157]  ( .D(n204), .CK(clk), .Q(str_reg[157]) );
  DFFQX1 \str_reg_reg[156]  ( .D(n205), .CK(clk), .Q(str_reg[156]) );
  DFFQX1 \str_reg_reg[155]  ( .D(n206), .CK(clk), .Q(str_reg[155]) );
  DFFQX1 \str_reg_reg[154]  ( .D(n207), .CK(clk), .Q(str_reg[154]) );
  DFFQX1 \str_reg_reg[153]  ( .D(n208), .CK(clk), .Q(str_reg[153]) );
  DFFQX1 \str_reg_reg[152]  ( .D(n209), .CK(clk), .Q(str_reg[152]) );
  DFFQX1 \str_reg_reg[95]  ( .D(n266), .CK(clk), .Q(str_reg[95]) );
  DFFQX1 \str_reg_reg[94]  ( .D(n267), .CK(clk), .Q(str_reg[94]) );
  DFFQX1 \str_reg_reg[93]  ( .D(n268), .CK(clk), .Q(str_reg[93]) );
  DFFQX1 \str_reg_reg[92]  ( .D(n269), .CK(clk), .Q(str_reg[92]) );
  DFFQX1 \str_reg_reg[91]  ( .D(n270), .CK(clk), .Q(str_reg[91]) );
  DFFQX1 \str_reg_reg[90]  ( .D(n271), .CK(clk), .Q(str_reg[90]) );
  DFFQX1 \str_reg_reg[89]  ( .D(n272), .CK(clk), .Q(str_reg[89]) );
  DFFQX1 \str_reg_reg[88]  ( .D(n273), .CK(clk), .Q(str_reg[88]) );
  DFFQX1 \str_last_idx_reg[1]  ( .D(n365), .CK(clk), .Q(str_last_idx[1]) );
  DFFQX1 \s_index_reg[2]  ( .D(n369), .CK(clk), .Q(s_index[2]) );
  DFFQX1 \s_index_reg[3]  ( .D(n368), .CK(clk), .Q(s_index[3]) );
  DFFQX1 \str_reg_reg[199]  ( .D(n162), .CK(clk), .Q(str_reg[199]) );
  DFFQX1 \str_reg_reg[198]  ( .D(n163), .CK(clk), .Q(str_reg[198]) );
  DFFQX1 \str_reg_reg[197]  ( .D(n164), .CK(clk), .Q(str_reg[197]) );
  DFFQX1 \str_reg_reg[196]  ( .D(n165), .CK(clk), .Q(str_reg[196]) );
  DFFQX1 \str_reg_reg[195]  ( .D(n166), .CK(clk), .Q(str_reg[195]) );
  DFFQX1 \str_reg_reg[194]  ( .D(n167), .CK(clk), .Q(str_reg[194]) );
  DFFQX1 \str_reg_reg[193]  ( .D(n168), .CK(clk), .Q(str_reg[193]) );
  DFFQX1 \str_reg_reg[192]  ( .D(n169), .CK(clk), .Q(str_reg[192]) );
  DFFQX1 \str_reg_reg[135]  ( .D(n226), .CK(clk), .Q(str_reg[135]) );
  DFFQX1 \str_reg_reg[134]  ( .D(n227), .CK(clk), .Q(str_reg[134]) );
  DFFQX1 \str_reg_reg[133]  ( .D(n228), .CK(clk), .Q(str_reg[133]) );
  DFFQX1 \str_reg_reg[132]  ( .D(n229), .CK(clk), .Q(str_reg[132]) );
  DFFQX1 \str_reg_reg[131]  ( .D(n230), .CK(clk), .Q(str_reg[131]) );
  DFFQX1 \str_reg_reg[130]  ( .D(n231), .CK(clk), .Q(str_reg[130]) );
  DFFQX1 \str_reg_reg[129]  ( .D(n232), .CK(clk), .Q(str_reg[129]) );
  DFFQX1 \str_reg_reg[128]  ( .D(n233), .CK(clk), .Q(str_reg[128]) );
  DFFX1 \active_reg[1]  ( .D(n373), .CK(clk), .Q(n102), .QN(n1) );
  DFFQX1 \p_index_reg[0]  ( .D(n411), .CK(clk), .Q(p_index[0]) );
  DFFQX1 \p_index_reg[1]  ( .D(n410), .CK(clk), .Q(p_index[1]) );
  DFFQX1 \pat_reg_reg[63]  ( .D(n374), .CK(clk), .Q(pat_reg[63]) );
  DFFQX1 \pat_reg_reg[62]  ( .D(n375), .CK(clk), .Q(pat_reg[62]) );
  DFFQX1 \pat_reg_reg[61]  ( .D(n376), .CK(clk), .Q(pat_reg[61]) );
  DFFQX1 \pat_reg_reg[60]  ( .D(n377), .CK(clk), .Q(pat_reg[60]) );
  DFFQX1 \pat_reg_reg[59]  ( .D(n378), .CK(clk), .Q(pat_reg[59]) );
  DFFQX1 \pat_reg_reg[58]  ( .D(n379), .CK(clk), .Q(pat_reg[58]) );
  DFFQX1 \pat_reg_reg[57]  ( .D(n380), .CK(clk), .Q(pat_reg[57]) );
  DFFQX1 \pat_reg_reg[56]  ( .D(n381), .CK(clk), .Q(pat_reg[56]) );
  DFFQX1 \pat_reg_reg[15]  ( .D(n398), .CK(clk), .Q(pat_reg[15]) );
  DFFQX1 \pat_reg_reg[13]  ( .D(n400), .CK(clk), .Q(pat_reg[13]) );
  DFFQX1 \pat_reg_reg[11]  ( .D(n402), .CK(clk), .Q(pat_reg[11]) );
  DFFQX1 \pat_reg_reg[10]  ( .D(n403), .CK(clk), .Q(pat_reg[10]) );
  DFFQX1 \pat_reg_reg[8]  ( .D(n405), .CK(clk), .Q(pat_reg[8]) );
  DFFQX1 \pat_reg_reg[12]  ( .D(n401), .CK(clk), .Q(pat_reg[12]) );
  DFFQX1 \pat_reg_reg[47]  ( .D(n382), .CK(clk), .Q(pat_reg[47]) );
  DFFQX1 \pat_reg_reg[46]  ( .D(n383), .CK(clk), .Q(pat_reg[46]) );
  DFFQX1 \pat_reg_reg[45]  ( .D(n384), .CK(clk), .Q(pat_reg[45]) );
  DFFQX1 \pat_reg_reg[43]  ( .D(n386), .CK(clk), .Q(pat_reg[43]) );
  DFFQX1 \pat_reg_reg[42]  ( .D(n387), .CK(clk), .Q(pat_reg[42]) );
  DFFQX1 \pat_reg_reg[41]  ( .D(n388), .CK(clk), .Q(pat_reg[41]) );
  DFFQX1 \pat_reg_reg[40]  ( .D(n389), .CK(clk), .Q(pat_reg[40]) );
  DFFQX1 \pat_reg_reg[44]  ( .D(n385), .CK(clk), .Q(pat_reg[44]) );
  DFFQX1 \s_index_reg[1]  ( .D(n370), .CK(clk), .Q(s_index[1]) );
  DFFQX1 \str_reg_reg[167]  ( .D(n194), .CK(clk), .Q(str_reg[167]) );
  DFFQX1 \str_reg_reg[166]  ( .D(n195), .CK(clk), .Q(str_reg[166]) );
  DFFQX1 \str_reg_reg[165]  ( .D(n196), .CK(clk), .Q(str_reg[165]) );
  DFFQX1 \str_reg_reg[164]  ( .D(n197), .CK(clk), .Q(str_reg[164]) );
  DFFQX1 \str_reg_reg[163]  ( .D(n198), .CK(clk), .Q(str_reg[163]) );
  DFFQX1 \str_reg_reg[162]  ( .D(n199), .CK(clk), .Q(str_reg[162]) );
  DFFQX1 \str_reg_reg[161]  ( .D(n200), .CK(clk), .Q(str_reg[161]) );
  DFFQX1 \str_reg_reg[160]  ( .D(n201), .CK(clk), .Q(str_reg[160]) );
  DFFQX1 \str_reg_reg[103]  ( .D(n258), .CK(clk), .Q(str_reg[103]) );
  DFFQX1 \str_reg_reg[102]  ( .D(n259), .CK(clk), .Q(str_reg[102]) );
  DFFQX1 \str_reg_reg[101]  ( .D(n260), .CK(clk), .Q(str_reg[101]) );
  DFFQX1 \str_reg_reg[100]  ( .D(n261), .CK(clk), .Q(str_reg[100]) );
  DFFQX1 \str_reg_reg[99]  ( .D(n262), .CK(clk), .Q(str_reg[99]) );
  DFFQX1 \str_reg_reg[98]  ( .D(n263), .CK(clk), .Q(str_reg[98]) );
  DFFQX1 \str_reg_reg[97]  ( .D(n264), .CK(clk), .Q(str_reg[97]) );
  DFFQX1 \str_reg_reg[96]  ( .D(n265), .CK(clk), .Q(str_reg[96]) );
  DFFQX1 \str_reg_reg[175]  ( .D(n186), .CK(clk), .Q(str_reg[175]) );
  DFFQX1 \str_reg_reg[174]  ( .D(n187), .CK(clk), .Q(str_reg[174]) );
  DFFQX1 \str_reg_reg[173]  ( .D(n188), .CK(clk), .Q(str_reg[173]) );
  DFFQX1 \str_reg_reg[172]  ( .D(n189), .CK(clk), .Q(str_reg[172]) );
  DFFQX1 \str_reg_reg[171]  ( .D(n190), .CK(clk), .Q(str_reg[171]) );
  DFFQX1 \str_reg_reg[170]  ( .D(n191), .CK(clk), .Q(str_reg[170]) );
  DFFQX1 \str_reg_reg[169]  ( .D(n192), .CK(clk), .Q(str_reg[169]) );
  DFFQX1 \str_reg_reg[168]  ( .D(n193), .CK(clk), .Q(str_reg[168]) );
  DFFQX1 \str_reg_reg[111]  ( .D(n250), .CK(clk), .Q(str_reg[111]) );
  DFFQX1 \str_reg_reg[110]  ( .D(n251), .CK(clk), .Q(str_reg[110]) );
  DFFQX1 \str_reg_reg[109]  ( .D(n252), .CK(clk), .Q(str_reg[109]) );
  DFFQX1 \str_reg_reg[108]  ( .D(n253), .CK(clk), .Q(str_reg[108]) );
  DFFQX1 \str_reg_reg[107]  ( .D(n254), .CK(clk), .Q(str_reg[107]) );
  DFFQX1 \str_reg_reg[106]  ( .D(n255), .CK(clk), .Q(str_reg[106]) );
  DFFQX1 \str_reg_reg[105]  ( .D(n256), .CK(clk), .Q(str_reg[105]) );
  DFFQX1 \str_reg_reg[104]  ( .D(n257), .CK(clk), .Q(str_reg[104]) );
  DFFQX1 \str_reg_reg[143]  ( .D(n218), .CK(clk), .Q(str_reg[143]) );
  DFFQX1 \str_reg_reg[142]  ( .D(n219), .CK(clk), .Q(str_reg[142]) );
  DFFQX1 \str_reg_reg[141]  ( .D(n220), .CK(clk), .Q(str_reg[141]) );
  DFFQX1 \str_reg_reg[140]  ( .D(n221), .CK(clk), .Q(str_reg[140]) );
  DFFQX1 \str_reg_reg[139]  ( .D(n222), .CK(clk), .Q(str_reg[139]) );
  DFFQX1 \str_reg_reg[138]  ( .D(n223), .CK(clk), .Q(str_reg[138]) );
  DFFQX1 \str_reg_reg[137]  ( .D(n224), .CK(clk), .Q(str_reg[137]) );
  DFFQX1 \str_reg_reg[136]  ( .D(n225), .CK(clk), .Q(str_reg[136]) );
  DFFQX1 \str_reg_reg[79]  ( .D(n282), .CK(clk), .Q(str_reg[79]) );
  DFFQX1 \str_reg_reg[78]  ( .D(n283), .CK(clk), .Q(str_reg[78]) );
  DFFQX1 \str_reg_reg[77]  ( .D(n284), .CK(clk), .Q(str_reg[77]) );
  DFFQX1 \str_reg_reg[76]  ( .D(n285), .CK(clk), .Q(str_reg[76]) );
  DFFQX1 \str_reg_reg[75]  ( .D(n286), .CK(clk), .Q(str_reg[75]) );
  DFFQX1 \str_reg_reg[74]  ( .D(n287), .CK(clk), .Q(str_reg[74]) );
  DFFQX1 \str_reg_reg[73]  ( .D(n288), .CK(clk), .Q(str_reg[73]) );
  DFFQX1 \str_reg_reg[72]  ( .D(n289), .CK(clk), .Q(str_reg[72]) );
  DFFQX1 \str_reg_reg[231]  ( .D(n130), .CK(clk), .Q(str_reg[231]) );
  DFFQX1 \str_reg_reg[230]  ( .D(n131), .CK(clk), .Q(str_reg[230]) );
  DFFQX1 \str_reg_reg[229]  ( .D(n132), .CK(clk), .Q(str_reg[229]) );
  DFFQX1 \str_reg_reg[228]  ( .D(n133), .CK(clk), .Q(str_reg[228]) );
  DFFQX1 \str_reg_reg[227]  ( .D(n134), .CK(clk), .Q(str_reg[227]) );
  DFFQX1 \str_reg_reg[226]  ( .D(n135), .CK(clk), .Q(str_reg[226]) );
  DFFQX1 \str_reg_reg[225]  ( .D(n136), .CK(clk), .Q(str_reg[225]) );
  DFFQX1 \str_reg_reg[224]  ( .D(n137), .CK(clk), .Q(str_reg[224]) );
  DFFQX1 \str_reg_reg[39]  ( .D(n322), .CK(clk), .Q(str_reg[39]) );
  DFFQX1 \str_reg_reg[38]  ( .D(n323), .CK(clk), .Q(str_reg[38]) );
  DFFQX1 \str_reg_reg[37]  ( .D(n324), .CK(clk), .Q(str_reg[37]) );
  DFFQX1 \str_reg_reg[36]  ( .D(n325), .CK(clk), .Q(str_reg[36]) );
  DFFQX1 \str_reg_reg[35]  ( .D(n326), .CK(clk), .Q(str_reg[35]) );
  DFFQX1 \str_reg_reg[34]  ( .D(n327), .CK(clk), .Q(str_reg[34]) );
  DFFQX1 \str_reg_reg[33]  ( .D(n328), .CK(clk), .Q(str_reg[33]) );
  DFFQX1 \str_reg_reg[32]  ( .D(n329), .CK(clk), .Q(str_reg[32]) );
  DFFQX1 \str_reg_reg[239]  ( .D(n122), .CK(clk), .Q(str_reg[239]) );
  DFFQX1 \str_reg_reg[238]  ( .D(n123), .CK(clk), .Q(str_reg[238]) );
  DFFQX1 \str_reg_reg[237]  ( .D(n124), .CK(clk), .Q(str_reg[237]) );
  DFFQX1 \str_reg_reg[236]  ( .D(n125), .CK(clk), .Q(str_reg[236]) );
  DFFQX1 \str_reg_reg[235]  ( .D(n126), .CK(clk), .Q(str_reg[235]) );
  DFFQX1 \str_reg_reg[234]  ( .D(n127), .CK(clk), .Q(str_reg[234]) );
  DFFQX1 \str_reg_reg[233]  ( .D(n128), .CK(clk), .Q(str_reg[233]) );
  DFFQX1 \str_reg_reg[232]  ( .D(n129), .CK(clk), .Q(str_reg[232]) );
  DFFQX1 \str_reg_reg[47]  ( .D(n314), .CK(clk), .Q(str_reg[47]) );
  DFFQX1 \str_reg_reg[46]  ( .D(n315), .CK(clk), .Q(str_reg[46]) );
  DFFQX1 \str_reg_reg[45]  ( .D(n316), .CK(clk), .Q(str_reg[45]) );
  DFFQX1 \str_reg_reg[44]  ( .D(n317), .CK(clk), .Q(str_reg[44]) );
  DFFQX1 \str_reg_reg[43]  ( .D(n318), .CK(clk), .Q(str_reg[43]) );
  DFFQX1 \str_reg_reg[42]  ( .D(n319), .CK(clk), .Q(str_reg[42]) );
  DFFQX1 \str_reg_reg[41]  ( .D(n320), .CK(clk), .Q(str_reg[41]) );
  DFFQX1 \str_reg_reg[40]  ( .D(n321), .CK(clk), .Q(str_reg[40]) );
  DFFQX1 \str_reg_reg[207]  ( .D(n154), .CK(clk), .Q(str_reg[207]) );
  DFFQX1 \str_reg_reg[206]  ( .D(n155), .CK(clk), .Q(str_reg[206]) );
  DFFQX1 \str_reg_reg[205]  ( .D(n156), .CK(clk), .Q(str_reg[205]) );
  DFFQX1 \str_reg_reg[204]  ( .D(n157), .CK(clk), .Q(str_reg[204]) );
  DFFQX1 \str_reg_reg[203]  ( .D(n158), .CK(clk), .Q(str_reg[203]) );
  DFFQX1 \str_reg_reg[202]  ( .D(n159), .CK(clk), .Q(str_reg[202]) );
  DFFQX1 \str_reg_reg[201]  ( .D(n160), .CK(clk), .Q(str_reg[201]) );
  DFFQX1 \str_reg_reg[200]  ( .D(n161), .CK(clk), .Q(str_reg[200]) );
  DFFQX1 \str_reg_reg[15]  ( .D(n346), .CK(clk), .Q(str_reg[15]) );
  DFFQX1 \str_reg_reg[14]  ( .D(n347), .CK(clk), .Q(str_reg[14]) );
  DFFQX1 \str_reg_reg[13]  ( .D(n348), .CK(clk), .Q(str_reg[13]) );
  DFFQX1 \str_reg_reg[12]  ( .D(n349), .CK(clk), .Q(str_reg[12]) );
  DFFQX1 \str_reg_reg[11]  ( .D(n350), .CK(clk), .Q(str_reg[11]) );
  DFFQX1 \str_reg_reg[10]  ( .D(n351), .CK(clk), .Q(str_reg[10]) );
  DFFQX1 \str_reg_reg[9]  ( .D(n352), .CK(clk), .Q(str_reg[9]) );
  DFFQX1 \str_reg_reg[8]  ( .D(n353), .CK(clk), .Q(str_reg[8]) );
  DFFQX1 \pat_reg_reg[14]  ( .D(n399), .CK(clk), .Q(pat_reg[14]) );
  DFFQX1 \pat_reg_reg[9]  ( .D(n404), .CK(clk), .Q(pat_reg[9]) );
  DFFQX1 \s_index_reg[0]  ( .D(n371), .CK(clk), .Q(s_index[0]) );
  DFFQX1 \str_last_idx_reg[0]  ( .D(n366), .CK(clk), .Q(str_last_idx[0]) );
  EDFFX1 \pat_reg_reg[23]  ( .D(n105), .E(n97), .CK(clk), .Q(pat_reg[23]) );
  EDFFX1 \pat_reg_reg[22]  ( .D(n412), .E(n97), .CK(clk), .Q(pat_reg[22]) );
  EDFFX1 \pat_reg_reg[21]  ( .D(n413), .E(n97), .CK(clk), .Q(pat_reg[21]) );
  EDFFX1 \pat_reg_reg[19]  ( .D(n415), .E(n97), .CK(clk), .Q(pat_reg[19]) );
  EDFFX1 \pat_reg_reg[18]  ( .D(n416), .E(n97), .CK(clk), .Q(pat_reg[18]) );
  EDFFX1 \pat_reg_reg[17]  ( .D(n417), .E(n97), .CK(clk), .Q(pat_reg[17]) );
  EDFFX1 \pat_reg_reg[16]  ( .D(n418), .E(n97), .CK(clk), .Q(pat_reg[16]) );
  EDFFX1 \pat_reg_reg[20]  ( .D(n414), .E(n97), .CK(clk), .Q(pat_reg[20]) );
  EDFFX1 \pat_reg_reg[39]  ( .D(n105), .E(n93), .CK(clk), .Q(pat_reg[39]) );
  EDFFX1 \pat_reg_reg[38]  ( .D(n412), .E(n93), .CK(clk), .Q(pat_reg[38]) );
  EDFFX1 \pat_reg_reg[37]  ( .D(n413), .E(n93), .CK(clk), .Q(pat_reg[37]) );
  EDFFX1 \pat_reg_reg[35]  ( .D(n415), .E(n93), .CK(clk), .Q(pat_reg[35]) );
  EDFFX1 \pat_reg_reg[34]  ( .D(n416), .E(n93), .CK(clk), .Q(pat_reg[34]) );
  EDFFX1 \pat_reg_reg[33]  ( .D(n417), .E(n93), .CK(clk), .Q(pat_reg[33]) );
  EDFFX1 \pat_reg_reg[32]  ( .D(n418), .E(n93), .CK(clk), .Q(pat_reg[32]) );
  EDFFX1 \pat_reg_reg[36]  ( .D(n414), .E(n93), .CK(clk), .Q(pat_reg[36]) );
  DFFQX1 \pat_reg_reg[31]  ( .D(n390), .CK(clk), .Q(pat_reg[31]) );
  DFFQX1 \pat_reg_reg[30]  ( .D(n391), .CK(clk), .Q(pat_reg[30]) );
  DFFQX1 \pat_reg_reg[29]  ( .D(n392), .CK(clk), .Q(pat_reg[29]) );
  DFFQX1 \pat_reg_reg[28]  ( .D(n393), .CK(clk), .Q(pat_reg[28]) );
  DFFQX1 \pat_reg_reg[27]  ( .D(n394), .CK(clk), .Q(pat_reg[27]) );
  DFFQX1 \pat_reg_reg[26]  ( .D(n395), .CK(clk), .Q(pat_reg[26]) );
  DFFQX1 \pat_reg_reg[25]  ( .D(n396), .CK(clk), .Q(pat_reg[25]) );
  DFFQX1 \pat_reg_reg[24]  ( .D(n397), .CK(clk), .Q(pat_reg[24]) );
  EDFFX1 read_done_reg ( .D(n86), .E(n104), .CK(clk), .Q(read_done) );
  EDFFX1 \pat_reg_reg[55]  ( .D(n105), .E(n90), .CK(clk), .Q(pat_reg[55]) );
  EDFFX1 \pat_reg_reg[54]  ( .D(n412), .E(n90), .CK(clk), .Q(pat_reg[54]) );
  EDFFX1 \pat_reg_reg[53]  ( .D(n413), .E(n90), .CK(clk), .Q(pat_reg[53]) );
  EDFFX1 \pat_reg_reg[51]  ( .D(n415), .E(n90), .CK(clk), .Q(pat_reg[51]) );
  EDFFX1 \pat_reg_reg[50]  ( .D(n416), .E(n90), .CK(clk), .Q(pat_reg[50]) );
  EDFFX1 \pat_reg_reg[49]  ( .D(n417), .E(n90), .CK(clk), .Q(pat_reg[49]) );
  EDFFX1 \pat_reg_reg[48]  ( .D(n418), .E(n90), .CK(clk), .Q(pat_reg[48]) );
  EDFFX1 \pat_reg_reg[52]  ( .D(n414), .E(n90), .CK(clk), .Q(pat_reg[52]) );
  DFFQX1 \pat_last_idx_reg[1]  ( .D(n407), .CK(clk), .Q(pat_last_idx[1]) );
  DFFQX1 \pat_last_idx_reg[2]  ( .D(n406), .CK(clk), .Q(pat_last_idx[2]) );
  DFFQX1 \pat_last_idx_reg[0]  ( .D(n408), .CK(clk), .Q(pat_last_idx[0]) );
  EDFFX1 valid_reg ( .D(n86), .E(n103), .CK(clk), .Q(valid) );
  AND2X2 U3 ( .A(w_data[7]), .B(n19), .Y(n105) );
  AND2X2 U4 ( .A(w_data[6]), .B(n19), .Y(n412) );
  AND2X2 U5 ( .A(w_data[5]), .B(n19), .Y(n413) );
  AND2X2 U6 ( .A(w_data[4]), .B(n19), .Y(n414) );
  AND2X2 U7 ( .A(w_data[3]), .B(n19), .Y(n415) );
  AND2X2 U8 ( .A(w_data[2]), .B(n19), .Y(n416) );
  AND2X2 U9 ( .A(w_data[1]), .B(n19), .Y(n417) );
  AND2X2 U10 ( .A(w_data[0]), .B(n19), .Y(n418) );
  OAI31XL U11 ( .A0(n1), .A1(\active[0] ), .A2(n2), .B0(n3), .Y(n103) );
  CLKINVX1 U12 ( .A(ff_valid), .Y(n2) );
  OAI21XL U13 ( .A0(n102), .A1(n4), .B0(n3), .Y(n104) );
  OAI31XL U14 ( .A0(n5), .A1(p_index[1]), .A2(p_index[0]), .B0(n6), .Y(n99) );
  OAI21XL U15 ( .A0(n5), .A1(n7), .B0(n6), .Y(n97) );
  OAI31XL U16 ( .A0(n8), .A1(p_index[1]), .A2(p_index[0]), .B0(n6), .Y(n93) );
  OAI21XL U17 ( .A0(n7), .A1(n8), .B0(n6), .Y(n90) );
  MXI2X1 U18 ( .A(n9), .B(n10), .S0(n11), .Y(n411) );
  OAI222XL U19 ( .A0(n12), .A1(n7), .B0(n10), .B1(n13), .C0(n14), .C1(n9), .Y(
        n410) );
  NAND2X1 U20 ( .A(p_index[1]), .B(n11), .Y(n7) );
  MXI2X1 U21 ( .A(n15), .B(n16), .S0(n17), .Y(n409) );
  NAND2BX1 U22 ( .AN(n10), .B(n18), .Y(n16) );
  NAND2X1 U23 ( .A(n19), .B(n9), .Y(n10) );
  OA21XL U24 ( .A0(n18), .A1(n12), .B0(n9), .Y(n15) );
  NAND2BX1 U25 ( .AN(n86), .B(n20), .Y(n9) );
  CLKINVX1 U26 ( .A(n21), .Y(n18) );
  OAI2BB2XL U27 ( .B0(n11), .B1(n22), .A0N(pat_last_idx[0]), .A1N(n20), .Y(
        n408) );
  CLKINVX1 U28 ( .A(p_index[0]), .Y(n11) );
  OAI2BB2XL U29 ( .B0(n14), .B1(n22), .A0N(pat_last_idx[1]), .A1N(n20), .Y(
        n407) );
  OAI2BB2XL U30 ( .B0(n17), .B1(n22), .A0N(pat_last_idx[2]), .A1N(n20), .Y(
        n406) );
  OR2X1 U31 ( .A(n20), .B(n12), .Y(n22) );
  NOR2X1 U32 ( .A(n23), .B(reset), .Y(n20) );
  CLKMX2X2 U33 ( .A(n418), .B(pat_reg[8]), .S0(n24), .Y(n405) );
  CLKMX2X2 U34 ( .A(n417), .B(pat_reg[9]), .S0(n24), .Y(n404) );
  CLKMX2X2 U35 ( .A(n416), .B(pat_reg[10]), .S0(n24), .Y(n403) );
  CLKMX2X2 U36 ( .A(n415), .B(pat_reg[11]), .S0(n24), .Y(n402) );
  CLKMX2X2 U37 ( .A(n414), .B(pat_reg[12]), .S0(n24), .Y(n401) );
  CLKMX2X2 U38 ( .A(n413), .B(pat_reg[13]), .S0(n24), .Y(n400) );
  CLKMX2X2 U39 ( .A(n412), .B(pat_reg[14]), .S0(n24), .Y(n399) );
  CLKMX2X2 U40 ( .A(n105), .B(pat_reg[15]), .S0(n24), .Y(n398) );
  OA21XL U41 ( .A0(n5), .A1(n13), .B0(n6), .Y(n24) );
  CLKMX2X2 U42 ( .A(n418), .B(pat_reg[24]), .S0(n25), .Y(n397) );
  CLKMX2X2 U43 ( .A(n417), .B(pat_reg[25]), .S0(n25), .Y(n396) );
  CLKMX2X2 U44 ( .A(n416), .B(pat_reg[26]), .S0(n25), .Y(n395) );
  CLKMX2X2 U45 ( .A(n415), .B(pat_reg[27]), .S0(n25), .Y(n394) );
  CLKMX2X2 U46 ( .A(n414), .B(pat_reg[28]), .S0(n25), .Y(n393) );
  CLKMX2X2 U47 ( .A(n413), .B(pat_reg[29]), .S0(n25), .Y(n392) );
  CLKMX2X2 U48 ( .A(n412), .B(pat_reg[30]), .S0(n25), .Y(n391) );
  CLKMX2X2 U49 ( .A(n105), .B(pat_reg[31]), .S0(n25), .Y(n390) );
  OA21XL U50 ( .A0(n5), .A1(n21), .B0(n6), .Y(n25) );
  NAND2X1 U51 ( .A(n23), .B(n17), .Y(n5) );
  CLKINVX1 U52 ( .A(p_index[2]), .Y(n17) );
  CLKMX2X2 U53 ( .A(n418), .B(pat_reg[40]), .S0(n26), .Y(n389) );
  CLKMX2X2 U54 ( .A(n417), .B(pat_reg[41]), .S0(n26), .Y(n388) );
  CLKMX2X2 U55 ( .A(n416), .B(pat_reg[42]), .S0(n26), .Y(n387) );
  CLKMX2X2 U56 ( .A(n415), .B(pat_reg[43]), .S0(n26), .Y(n386) );
  CLKMX2X2 U57 ( .A(n414), .B(pat_reg[44]), .S0(n26), .Y(n385) );
  CLKMX2X2 U58 ( .A(n413), .B(pat_reg[45]), .S0(n26), .Y(n384) );
  CLKMX2X2 U59 ( .A(n412), .B(pat_reg[46]), .S0(n26), .Y(n383) );
  CLKMX2X2 U60 ( .A(n105), .B(pat_reg[47]), .S0(n26), .Y(n382) );
  OA21XL U61 ( .A0(n8), .A1(n13), .B0(n6), .Y(n26) );
  NAND2X1 U62 ( .A(p_index[0]), .B(n14), .Y(n13) );
  CLKINVX1 U63 ( .A(p_index[1]), .Y(n14) );
  CLKMX2X2 U64 ( .A(n418), .B(pat_reg[56]), .S0(n27), .Y(n381) );
  CLKMX2X2 U65 ( .A(n417), .B(pat_reg[57]), .S0(n27), .Y(n380) );
  CLKMX2X2 U66 ( .A(n416), .B(pat_reg[58]), .S0(n27), .Y(n379) );
  CLKMX2X2 U67 ( .A(n415), .B(pat_reg[59]), .S0(n27), .Y(n378) );
  CLKMX2X2 U68 ( .A(n414), .B(pat_reg[60]), .S0(n27), .Y(n377) );
  CLKMX2X2 U69 ( .A(n413), .B(pat_reg[61]), .S0(n27), .Y(n376) );
  CLKMX2X2 U70 ( .A(n412), .B(pat_reg[62]), .S0(n27), .Y(n375) );
  CLKMX2X2 U71 ( .A(n105), .B(pat_reg[63]), .S0(n27), .Y(n374) );
  OA21XL U72 ( .A0(n8), .A1(n21), .B0(n6), .Y(n27) );
  NAND2X1 U73 ( .A(p_index[0]), .B(p_index[1]), .Y(n21) );
  NAND2X1 U74 ( .A(p_index[2]), .B(n23), .Y(n8) );
  NOR2X1 U75 ( .A(n28), .B(n12), .Y(n23) );
  MXI2X1 U76 ( .A(n29), .B(n30), .S0(n1), .Y(n373) );
  NAND2X1 U77 ( .A(n86), .B(\active[0] ), .Y(n30) );
  NAND2X1 U78 ( .A(n3), .B(n4), .Y(n29) );
  NOR2X1 U79 ( .A(n19), .B(reset), .Y(n3) );
  NAND2X1 U80 ( .A(n12), .B(n31), .Y(n372) );
  NAND4X1 U81 ( .A(n86), .B(n102), .C(ff_valid), .D(n4), .Y(n31) );
  CLKINVX1 U82 ( .A(\active[0] ), .Y(n4) );
  MXI2X1 U83 ( .A(n32), .B(n33), .S0(n34), .Y(n371) );
  MXI2X1 U84 ( .A(n35), .B(n36), .S0(n37), .Y(n370) );
  NAND2X1 U85 ( .A(n38), .B(s_index[0]), .Y(n36) );
  OAI2BB2XL U86 ( .B0(n33), .B1(n39), .A0N(s_index[2]), .A1N(n40), .Y(n369) );
  OAI21XL U87 ( .A0(s_index[1]), .A1(n33), .B0(n35), .Y(n40) );
  OA21XL U88 ( .A0(s_index[0]), .A1(n33), .B0(n32), .Y(n35) );
  MXI2X1 U89 ( .A(n41), .B(n42), .S0(n43), .Y(n368) );
  NAND2X1 U90 ( .A(n44), .B(n38), .Y(n42) );
  MXI2X1 U91 ( .A(n45), .B(n46), .S0(n47), .Y(n367) );
  NAND3X1 U92 ( .A(n44), .B(n38), .C(s_index[3]), .Y(n46) );
  CLKINVX1 U93 ( .A(n33), .Y(n38) );
  OA21XL U94 ( .A0(s_index[3]), .A1(n33), .B0(n41), .Y(n45) );
  OA21XL U95 ( .A0(n44), .A1(n33), .B0(n32), .Y(n41) );
  NAND2X1 U96 ( .A(n19), .B(n32), .Y(n33) );
  NAND2BX1 U97 ( .AN(n86), .B(n48), .Y(n32) );
  NOR2X1 U98 ( .A(reset), .B(write), .Y(n86) );
  OAI2BB2XL U99 ( .B0(n34), .B1(n49), .A0N(str_last_idx[0]), .A1N(n48), .Y(
        n366) );
  OAI2BB2XL U100 ( .B0(n37), .B1(n49), .A0N(str_last_idx[1]), .A1N(n48), .Y(
        n365) );
  OAI2BB2XL U101 ( .B0(n50), .B1(n49), .A0N(str_last_idx[2]), .A1N(n48), .Y(
        n364) );
  OAI2BB2XL U102 ( .B0(n43), .B1(n49), .A0N(str_last_idx[3]), .A1N(n48), .Y(
        n363) );
  OAI2BB2XL U103 ( .B0(n47), .B1(n49), .A0N(str_last_idx[4]), .A1N(n48), .Y(
        n362) );
  CLKINVX1 U104 ( .A(n51), .Y(n48) );
  NAND2X1 U105 ( .A(n19), .B(n51), .Y(n49) );
  NAND2X1 U106 ( .A(n52), .B(n6), .Y(n51) );
  CLKMX2X2 U107 ( .A(str_reg[0]), .B(n418), .S0(n53), .Y(n361) );
  CLKMX2X2 U108 ( .A(str_reg[1]), .B(n417), .S0(n53), .Y(n360) );
  CLKMX2X2 U109 ( .A(str_reg[2]), .B(n416), .S0(n53), .Y(n359) );
  CLKMX2X2 U110 ( .A(str_reg[3]), .B(n415), .S0(n53), .Y(n358) );
  CLKMX2X2 U111 ( .A(str_reg[4]), .B(n414), .S0(n53), .Y(n357) );
  CLKMX2X2 U112 ( .A(str_reg[5]), .B(n413), .S0(n53), .Y(n356) );
  CLKMX2X2 U113 ( .A(str_reg[6]), .B(n412), .S0(n53), .Y(n355) );
  CLKMX2X2 U114 ( .A(str_reg[7]), .B(n105), .S0(n53), .Y(n354) );
  AND2X1 U115 ( .A(n54), .B(n55), .Y(n53) );
  CLKMX2X2 U116 ( .A(str_reg[8]), .B(n418), .S0(n56), .Y(n353) );
  CLKMX2X2 U117 ( .A(str_reg[9]), .B(n417), .S0(n56), .Y(n352) );
  CLKMX2X2 U118 ( .A(str_reg[10]), .B(n416), .S0(n56), .Y(n351) );
  CLKMX2X2 U119 ( .A(str_reg[11]), .B(n415), .S0(n56), .Y(n350) );
  CLKMX2X2 U120 ( .A(str_reg[12]), .B(n414), .S0(n56), .Y(n349) );
  CLKMX2X2 U121 ( .A(str_reg[13]), .B(n413), .S0(n56), .Y(n348) );
  CLKMX2X2 U122 ( .A(str_reg[14]), .B(n412), .S0(n56), .Y(n347) );
  CLKMX2X2 U123 ( .A(str_reg[15]), .B(n105), .S0(n56), .Y(n346) );
  AND2X1 U124 ( .A(n54), .B(n57), .Y(n56) );
  CLKMX2X2 U125 ( .A(str_reg[16]), .B(n418), .S0(n58), .Y(n345) );
  CLKMX2X2 U126 ( .A(str_reg[17]), .B(n417), .S0(n58), .Y(n344) );
  CLKMX2X2 U127 ( .A(str_reg[18]), .B(n416), .S0(n58), .Y(n343) );
  CLKMX2X2 U128 ( .A(str_reg[19]), .B(n415), .S0(n58), .Y(n342) );
  CLKMX2X2 U129 ( .A(str_reg[20]), .B(n414), .S0(n58), .Y(n341) );
  CLKMX2X2 U130 ( .A(str_reg[21]), .B(n413), .S0(n58), .Y(n340) );
  CLKMX2X2 U131 ( .A(str_reg[22]), .B(n412), .S0(n58), .Y(n339) );
  CLKMX2X2 U132 ( .A(str_reg[23]), .B(n105), .S0(n58), .Y(n338) );
  AND2X1 U133 ( .A(n54), .B(n59), .Y(n58) );
  CLKMX2X2 U134 ( .A(str_reg[24]), .B(n418), .S0(n60), .Y(n337) );
  CLKMX2X2 U135 ( .A(str_reg[25]), .B(n417), .S0(n60), .Y(n336) );
  CLKMX2X2 U136 ( .A(str_reg[26]), .B(n416), .S0(n60), .Y(n335) );
  CLKMX2X2 U137 ( .A(str_reg[27]), .B(n415), .S0(n60), .Y(n334) );
  CLKMX2X2 U138 ( .A(str_reg[28]), .B(n414), .S0(n60), .Y(n333) );
  CLKMX2X2 U139 ( .A(str_reg[29]), .B(n413), .S0(n60), .Y(n332) );
  CLKMX2X2 U140 ( .A(str_reg[30]), .B(n412), .S0(n60), .Y(n331) );
  CLKMX2X2 U141 ( .A(str_reg[31]), .B(n105), .S0(n60), .Y(n330) );
  AND2X1 U142 ( .A(n54), .B(n61), .Y(n60) );
  CLKMX2X2 U143 ( .A(str_reg[32]), .B(n418), .S0(n62), .Y(n329) );
  CLKMX2X2 U144 ( .A(str_reg[33]), .B(n417), .S0(n62), .Y(n328) );
  CLKMX2X2 U145 ( .A(str_reg[34]), .B(n416), .S0(n62), .Y(n327) );
  CLKMX2X2 U146 ( .A(str_reg[35]), .B(n415), .S0(n62), .Y(n326) );
  CLKMX2X2 U147 ( .A(str_reg[36]), .B(n414), .S0(n62), .Y(n325) );
  CLKMX2X2 U148 ( .A(str_reg[37]), .B(n413), .S0(n62), .Y(n324) );
  CLKMX2X2 U149 ( .A(str_reg[38]), .B(n412), .S0(n62), .Y(n323) );
  CLKMX2X2 U150 ( .A(str_reg[39]), .B(n105), .S0(n62), .Y(n322) );
  AND2X1 U151 ( .A(n54), .B(n63), .Y(n62) );
  CLKMX2X2 U152 ( .A(str_reg[40]), .B(n418), .S0(n64), .Y(n321) );
  CLKMX2X2 U153 ( .A(str_reg[41]), .B(n417), .S0(n64), .Y(n320) );
  CLKMX2X2 U154 ( .A(str_reg[42]), .B(n416), .S0(n64), .Y(n319) );
  CLKMX2X2 U155 ( .A(str_reg[43]), .B(n415), .S0(n64), .Y(n318) );
  CLKMX2X2 U156 ( .A(str_reg[44]), .B(n414), .S0(n64), .Y(n317) );
  CLKMX2X2 U157 ( .A(str_reg[45]), .B(n413), .S0(n64), .Y(n316) );
  CLKMX2X2 U158 ( .A(str_reg[46]), .B(n412), .S0(n64), .Y(n315) );
  CLKMX2X2 U159 ( .A(str_reg[47]), .B(n105), .S0(n64), .Y(n314) );
  AND2X1 U160 ( .A(n54), .B(n65), .Y(n64) );
  CLKMX2X2 U161 ( .A(str_reg[48]), .B(n418), .S0(n66), .Y(n313) );
  CLKMX2X2 U162 ( .A(str_reg[49]), .B(n417), .S0(n66), .Y(n312) );
  CLKMX2X2 U163 ( .A(str_reg[50]), .B(n416), .S0(n66), .Y(n311) );
  CLKMX2X2 U164 ( .A(str_reg[51]), .B(n415), .S0(n66), .Y(n310) );
  CLKMX2X2 U165 ( .A(str_reg[52]), .B(n414), .S0(n66), .Y(n309) );
  CLKMX2X2 U166 ( .A(str_reg[53]), .B(n413), .S0(n66), .Y(n308) );
  CLKMX2X2 U167 ( .A(str_reg[54]), .B(n412), .S0(n66), .Y(n307) );
  CLKMX2X2 U168 ( .A(str_reg[55]), .B(n105), .S0(n66), .Y(n306) );
  AND2X1 U169 ( .A(n54), .B(n67), .Y(n66) );
  CLKMX2X2 U170 ( .A(str_reg[56]), .B(n418), .S0(n68), .Y(n305) );
  CLKMX2X2 U171 ( .A(str_reg[57]), .B(n417), .S0(n68), .Y(n304) );
  CLKMX2X2 U172 ( .A(str_reg[58]), .B(n416), .S0(n68), .Y(n303) );
  CLKMX2X2 U173 ( .A(str_reg[59]), .B(n415), .S0(n68), .Y(n302) );
  CLKMX2X2 U174 ( .A(str_reg[60]), .B(n414), .S0(n68), .Y(n301) );
  CLKMX2X2 U175 ( .A(str_reg[61]), .B(n413), .S0(n68), .Y(n300) );
  CLKMX2X2 U176 ( .A(str_reg[62]), .B(n412), .S0(n68), .Y(n299) );
  CLKMX2X2 U177 ( .A(str_reg[63]), .B(n105), .S0(n68), .Y(n298) );
  AND2X1 U178 ( .A(n54), .B(n69), .Y(n68) );
  OAI31XL U179 ( .A0(n52), .A1(s_index[4]), .A2(s_index[3]), .B0(n6), .Y(n54)
         );
  CLKMX2X2 U180 ( .A(str_reg[64]), .B(n418), .S0(n70), .Y(n297) );
  CLKMX2X2 U181 ( .A(str_reg[65]), .B(n417), .S0(n70), .Y(n296) );
  CLKMX2X2 U182 ( .A(str_reg[66]), .B(n416), .S0(n70), .Y(n295) );
  CLKMX2X2 U183 ( .A(str_reg[67]), .B(n415), .S0(n70), .Y(n294) );
  CLKMX2X2 U184 ( .A(str_reg[68]), .B(n414), .S0(n70), .Y(n293) );
  CLKMX2X2 U185 ( .A(str_reg[69]), .B(n413), .S0(n70), .Y(n292) );
  CLKMX2X2 U186 ( .A(str_reg[70]), .B(n412), .S0(n70), .Y(n291) );
  CLKMX2X2 U187 ( .A(str_reg[71]), .B(n105), .S0(n70), .Y(n290) );
  AND2X1 U188 ( .A(n71), .B(n55), .Y(n70) );
  CLKMX2X2 U189 ( .A(str_reg[72]), .B(n418), .S0(n72), .Y(n289) );
  CLKMX2X2 U190 ( .A(str_reg[73]), .B(n417), .S0(n72), .Y(n288) );
  CLKMX2X2 U191 ( .A(str_reg[74]), .B(n416), .S0(n72), .Y(n287) );
  CLKMX2X2 U192 ( .A(str_reg[75]), .B(n415), .S0(n72), .Y(n286) );
  CLKMX2X2 U193 ( .A(str_reg[76]), .B(n414), .S0(n72), .Y(n285) );
  CLKMX2X2 U194 ( .A(str_reg[77]), .B(n413), .S0(n72), .Y(n284) );
  CLKMX2X2 U195 ( .A(str_reg[78]), .B(n412), .S0(n72), .Y(n283) );
  CLKMX2X2 U196 ( .A(str_reg[79]), .B(n105), .S0(n72), .Y(n282) );
  AND2X1 U197 ( .A(n71), .B(n57), .Y(n72) );
  CLKMX2X2 U198 ( .A(str_reg[80]), .B(n418), .S0(n73), .Y(n281) );
  CLKMX2X2 U199 ( .A(str_reg[81]), .B(n417), .S0(n73), .Y(n280) );
  CLKMX2X2 U200 ( .A(str_reg[82]), .B(n416), .S0(n73), .Y(n279) );
  CLKMX2X2 U201 ( .A(str_reg[83]), .B(n415), .S0(n73), .Y(n278) );
  CLKMX2X2 U202 ( .A(str_reg[84]), .B(n414), .S0(n73), .Y(n277) );
  CLKMX2X2 U203 ( .A(str_reg[85]), .B(n413), .S0(n73), .Y(n276) );
  CLKMX2X2 U204 ( .A(str_reg[86]), .B(n412), .S0(n73), .Y(n275) );
  CLKMX2X2 U205 ( .A(str_reg[87]), .B(n105), .S0(n73), .Y(n274) );
  AND2X1 U206 ( .A(n71), .B(n59), .Y(n73) );
  CLKMX2X2 U207 ( .A(str_reg[88]), .B(n418), .S0(n74), .Y(n273) );
  CLKMX2X2 U208 ( .A(str_reg[89]), .B(n417), .S0(n74), .Y(n272) );
  CLKMX2X2 U209 ( .A(str_reg[90]), .B(n416), .S0(n74), .Y(n271) );
  CLKMX2X2 U210 ( .A(str_reg[91]), .B(n415), .S0(n74), .Y(n270) );
  CLKMX2X2 U211 ( .A(str_reg[92]), .B(n414), .S0(n74), .Y(n269) );
  CLKMX2X2 U212 ( .A(str_reg[93]), .B(n413), .S0(n74), .Y(n268) );
  CLKMX2X2 U213 ( .A(str_reg[94]), .B(n412), .S0(n74), .Y(n267) );
  CLKMX2X2 U214 ( .A(str_reg[95]), .B(n105), .S0(n74), .Y(n266) );
  AND2X1 U215 ( .A(n71), .B(n61), .Y(n74) );
  CLKMX2X2 U216 ( .A(str_reg[96]), .B(n418), .S0(n75), .Y(n265) );
  CLKMX2X2 U217 ( .A(str_reg[97]), .B(n417), .S0(n75), .Y(n264) );
  CLKMX2X2 U218 ( .A(str_reg[98]), .B(n416), .S0(n75), .Y(n263) );
  CLKMX2X2 U219 ( .A(str_reg[99]), .B(n415), .S0(n75), .Y(n262) );
  CLKMX2X2 U220 ( .A(str_reg[100]), .B(n414), .S0(n75), .Y(n261) );
  CLKMX2X2 U221 ( .A(str_reg[101]), .B(n413), .S0(n75), .Y(n260) );
  CLKMX2X2 U222 ( .A(str_reg[102]), .B(n412), .S0(n75), .Y(n259) );
  CLKMX2X2 U223 ( .A(str_reg[103]), .B(n105), .S0(n75), .Y(n258) );
  AND2X1 U224 ( .A(n71), .B(n63), .Y(n75) );
  CLKMX2X2 U225 ( .A(str_reg[104]), .B(n418), .S0(n76), .Y(n257) );
  CLKMX2X2 U226 ( .A(str_reg[105]), .B(n417), .S0(n76), .Y(n256) );
  CLKMX2X2 U227 ( .A(str_reg[106]), .B(n416), .S0(n76), .Y(n255) );
  CLKMX2X2 U228 ( .A(str_reg[107]), .B(n415), .S0(n76), .Y(n254) );
  CLKMX2X2 U229 ( .A(str_reg[108]), .B(n414), .S0(n76), .Y(n253) );
  CLKMX2X2 U230 ( .A(str_reg[109]), .B(n413), .S0(n76), .Y(n252) );
  CLKMX2X2 U231 ( .A(str_reg[110]), .B(n412), .S0(n76), .Y(n251) );
  CLKMX2X2 U232 ( .A(str_reg[111]), .B(n105), .S0(n76), .Y(n250) );
  AND2X1 U233 ( .A(n71), .B(n65), .Y(n76) );
  CLKMX2X2 U234 ( .A(str_reg[112]), .B(n418), .S0(n77), .Y(n249) );
  CLKMX2X2 U235 ( .A(str_reg[113]), .B(n417), .S0(n77), .Y(n248) );
  CLKMX2X2 U236 ( .A(str_reg[114]), .B(n416), .S0(n77), .Y(n247) );
  CLKMX2X2 U237 ( .A(str_reg[115]), .B(n415), .S0(n77), .Y(n246) );
  CLKMX2X2 U238 ( .A(str_reg[116]), .B(n414), .S0(n77), .Y(n245) );
  CLKMX2X2 U239 ( .A(str_reg[117]), .B(n413), .S0(n77), .Y(n244) );
  CLKMX2X2 U240 ( .A(str_reg[118]), .B(n412), .S0(n77), .Y(n243) );
  CLKMX2X2 U241 ( .A(str_reg[119]), .B(n105), .S0(n77), .Y(n242) );
  AND2X1 U242 ( .A(n71), .B(n67), .Y(n77) );
  CLKMX2X2 U243 ( .A(str_reg[120]), .B(n418), .S0(n78), .Y(n241) );
  CLKMX2X2 U244 ( .A(str_reg[121]), .B(n417), .S0(n78), .Y(n240) );
  CLKMX2X2 U245 ( .A(str_reg[122]), .B(n416), .S0(n78), .Y(n239) );
  CLKMX2X2 U246 ( .A(str_reg[123]), .B(n415), .S0(n78), .Y(n238) );
  CLKMX2X2 U247 ( .A(str_reg[124]), .B(n414), .S0(n78), .Y(n237) );
  CLKMX2X2 U248 ( .A(str_reg[125]), .B(n413), .S0(n78), .Y(n236) );
  CLKMX2X2 U249 ( .A(str_reg[126]), .B(n412), .S0(n78), .Y(n235) );
  CLKMX2X2 U250 ( .A(str_reg[127]), .B(n105), .S0(n78), .Y(n234) );
  AND2X1 U251 ( .A(n71), .B(n69), .Y(n78) );
  OAI31XL U252 ( .A0(n52), .A1(s_index[4]), .A2(n43), .B0(n6), .Y(n71) );
  CLKMX2X2 U253 ( .A(str_reg[128]), .B(n418), .S0(n79), .Y(n233) );
  CLKMX2X2 U254 ( .A(str_reg[129]), .B(n417), .S0(n79), .Y(n232) );
  CLKMX2X2 U255 ( .A(str_reg[130]), .B(n416), .S0(n79), .Y(n231) );
  CLKMX2X2 U256 ( .A(str_reg[131]), .B(n415), .S0(n79), .Y(n230) );
  CLKMX2X2 U257 ( .A(str_reg[132]), .B(n414), .S0(n79), .Y(n229) );
  CLKMX2X2 U258 ( .A(str_reg[133]), .B(n413), .S0(n79), .Y(n228) );
  CLKMX2X2 U259 ( .A(str_reg[134]), .B(n412), .S0(n79), .Y(n227) );
  CLKMX2X2 U260 ( .A(str_reg[135]), .B(n105), .S0(n79), .Y(n226) );
  AND2X1 U261 ( .A(n80), .B(n55), .Y(n79) );
  CLKMX2X2 U262 ( .A(str_reg[136]), .B(n418), .S0(n81), .Y(n225) );
  CLKMX2X2 U263 ( .A(str_reg[137]), .B(n417), .S0(n81), .Y(n224) );
  CLKMX2X2 U264 ( .A(str_reg[138]), .B(n416), .S0(n81), .Y(n223) );
  CLKMX2X2 U265 ( .A(str_reg[139]), .B(n415), .S0(n81), .Y(n222) );
  CLKMX2X2 U266 ( .A(str_reg[140]), .B(n414), .S0(n81), .Y(n221) );
  CLKMX2X2 U267 ( .A(str_reg[141]), .B(n413), .S0(n81), .Y(n220) );
  CLKMX2X2 U268 ( .A(str_reg[142]), .B(n412), .S0(n81), .Y(n219) );
  CLKMX2X2 U269 ( .A(str_reg[143]), .B(n105), .S0(n81), .Y(n218) );
  AND2X1 U270 ( .A(n80), .B(n57), .Y(n81) );
  CLKMX2X2 U271 ( .A(str_reg[144]), .B(n418), .S0(n82), .Y(n217) );
  CLKMX2X2 U272 ( .A(str_reg[145]), .B(n417), .S0(n82), .Y(n216) );
  CLKMX2X2 U273 ( .A(str_reg[146]), .B(n416), .S0(n82), .Y(n215) );
  CLKMX2X2 U274 ( .A(str_reg[147]), .B(n415), .S0(n82), .Y(n214) );
  CLKMX2X2 U275 ( .A(str_reg[148]), .B(n414), .S0(n82), .Y(n213) );
  CLKMX2X2 U276 ( .A(str_reg[149]), .B(n413), .S0(n82), .Y(n212) );
  CLKMX2X2 U277 ( .A(str_reg[150]), .B(n412), .S0(n82), .Y(n211) );
  CLKMX2X2 U278 ( .A(str_reg[151]), .B(n105), .S0(n82), .Y(n210) );
  AND2X1 U279 ( .A(n80), .B(n59), .Y(n82) );
  CLKMX2X2 U280 ( .A(str_reg[152]), .B(n418), .S0(n83), .Y(n209) );
  CLKMX2X2 U281 ( .A(str_reg[153]), .B(n417), .S0(n83), .Y(n208) );
  CLKMX2X2 U282 ( .A(str_reg[154]), .B(n416), .S0(n83), .Y(n207) );
  CLKMX2X2 U283 ( .A(str_reg[155]), .B(n415), .S0(n83), .Y(n206) );
  CLKMX2X2 U284 ( .A(str_reg[156]), .B(n414), .S0(n83), .Y(n205) );
  CLKMX2X2 U285 ( .A(str_reg[157]), .B(n413), .S0(n83), .Y(n204) );
  CLKMX2X2 U286 ( .A(str_reg[158]), .B(n412), .S0(n83), .Y(n203) );
  CLKMX2X2 U287 ( .A(str_reg[159]), .B(n105), .S0(n83), .Y(n202) );
  AND2X1 U288 ( .A(n80), .B(n61), .Y(n83) );
  CLKMX2X2 U289 ( .A(str_reg[160]), .B(n418), .S0(n84), .Y(n201) );
  CLKMX2X2 U290 ( .A(str_reg[161]), .B(n417), .S0(n84), .Y(n200) );
  CLKMX2X2 U291 ( .A(str_reg[162]), .B(n416), .S0(n84), .Y(n199) );
  CLKMX2X2 U292 ( .A(str_reg[163]), .B(n415), .S0(n84), .Y(n198) );
  CLKMX2X2 U293 ( .A(str_reg[164]), .B(n414), .S0(n84), .Y(n197) );
  CLKMX2X2 U294 ( .A(str_reg[165]), .B(n413), .S0(n84), .Y(n196) );
  CLKMX2X2 U295 ( .A(str_reg[166]), .B(n412), .S0(n84), .Y(n195) );
  CLKMX2X2 U296 ( .A(str_reg[167]), .B(n105), .S0(n84), .Y(n194) );
  AND2X1 U297 ( .A(n80), .B(n63), .Y(n84) );
  CLKMX2X2 U298 ( .A(str_reg[168]), .B(n418), .S0(n85), .Y(n193) );
  CLKMX2X2 U299 ( .A(str_reg[169]), .B(n417), .S0(n85), .Y(n192) );
  CLKMX2X2 U300 ( .A(str_reg[170]), .B(n416), .S0(n85), .Y(n191) );
  CLKMX2X2 U301 ( .A(str_reg[171]), .B(n415), .S0(n85), .Y(n190) );
  CLKMX2X2 U302 ( .A(str_reg[172]), .B(n414), .S0(n85), .Y(n189) );
  CLKMX2X2 U303 ( .A(str_reg[173]), .B(n413), .S0(n85), .Y(n188) );
  CLKMX2X2 U304 ( .A(str_reg[174]), .B(n412), .S0(n85), .Y(n187) );
  CLKMX2X2 U305 ( .A(str_reg[175]), .B(n105), .S0(n85), .Y(n186) );
  AND2X1 U306 ( .A(n80), .B(n65), .Y(n85) );
  CLKMX2X2 U307 ( .A(str_reg[176]), .B(n418), .S0(n87), .Y(n185) );
  CLKMX2X2 U308 ( .A(str_reg[177]), .B(n417), .S0(n87), .Y(n184) );
  CLKMX2X2 U309 ( .A(str_reg[178]), .B(n416), .S0(n87), .Y(n183) );
  CLKMX2X2 U310 ( .A(str_reg[179]), .B(n415), .S0(n87), .Y(n182) );
  CLKMX2X2 U311 ( .A(str_reg[180]), .B(n414), .S0(n87), .Y(n181) );
  CLKMX2X2 U312 ( .A(str_reg[181]), .B(n413), .S0(n87), .Y(n180) );
  CLKMX2X2 U313 ( .A(str_reg[182]), .B(n412), .S0(n87), .Y(n179) );
  CLKMX2X2 U314 ( .A(str_reg[183]), .B(n105), .S0(n87), .Y(n178) );
  AND2X1 U315 ( .A(n80), .B(n67), .Y(n87) );
  CLKMX2X2 U316 ( .A(str_reg[184]), .B(n418), .S0(n88), .Y(n177) );
  CLKMX2X2 U317 ( .A(str_reg[185]), .B(n417), .S0(n88), .Y(n176) );
  CLKMX2X2 U318 ( .A(str_reg[186]), .B(n416), .S0(n88), .Y(n175) );
  CLKMX2X2 U319 ( .A(str_reg[187]), .B(n415), .S0(n88), .Y(n174) );
  CLKMX2X2 U320 ( .A(str_reg[188]), .B(n414), .S0(n88), .Y(n173) );
  CLKMX2X2 U321 ( .A(str_reg[189]), .B(n413), .S0(n88), .Y(n172) );
  CLKMX2X2 U322 ( .A(str_reg[190]), .B(n412), .S0(n88), .Y(n171) );
  CLKMX2X2 U323 ( .A(str_reg[191]), .B(n105), .S0(n88), .Y(n170) );
  AND2X1 U324 ( .A(n80), .B(n69), .Y(n88) );
  OAI31XL U325 ( .A0(n52), .A1(s_index[3]), .A2(n47), .B0(n6), .Y(n80) );
  CLKMX2X2 U326 ( .A(str_reg[192]), .B(n418), .S0(n89), .Y(n169) );
  CLKMX2X2 U327 ( .A(str_reg[193]), .B(n417), .S0(n89), .Y(n168) );
  CLKMX2X2 U328 ( .A(str_reg[194]), .B(n416), .S0(n89), .Y(n167) );
  CLKMX2X2 U329 ( .A(str_reg[195]), .B(n415), .S0(n89), .Y(n166) );
  CLKMX2X2 U330 ( .A(str_reg[196]), .B(n414), .S0(n89), .Y(n165) );
  CLKMX2X2 U331 ( .A(str_reg[197]), .B(n413), .S0(n89), .Y(n164) );
  CLKMX2X2 U332 ( .A(str_reg[198]), .B(n412), .S0(n89), .Y(n163) );
  CLKMX2X2 U333 ( .A(str_reg[199]), .B(n105), .S0(n89), .Y(n162) );
  AND2X1 U334 ( .A(n91), .B(n55), .Y(n89) );
  OAI31XL U335 ( .A0(s_index[0]), .A1(s_index[2]), .A2(s_index[1]), .B0(n6), 
        .Y(n55) );
  CLKMX2X2 U336 ( .A(str_reg[200]), .B(n418), .S0(n92), .Y(n161) );
  CLKMX2X2 U337 ( .A(str_reg[201]), .B(n417), .S0(n92), .Y(n160) );
  CLKMX2X2 U338 ( .A(str_reg[202]), .B(n416), .S0(n92), .Y(n159) );
  CLKMX2X2 U339 ( .A(str_reg[203]), .B(n415), .S0(n92), .Y(n158) );
  CLKMX2X2 U340 ( .A(str_reg[204]), .B(n414), .S0(n92), .Y(n157) );
  CLKMX2X2 U341 ( .A(str_reg[205]), .B(n413), .S0(n92), .Y(n156) );
  CLKMX2X2 U342 ( .A(str_reg[206]), .B(n412), .S0(n92), .Y(n155) );
  CLKMX2X2 U343 ( .A(str_reg[207]), .B(n105), .S0(n92), .Y(n154) );
  AND2X1 U344 ( .A(n91), .B(n57), .Y(n92) );
  OAI31XL U345 ( .A0(n34), .A1(s_index[2]), .A2(s_index[1]), .B0(n6), .Y(n57)
         );
  CLKMX2X2 U346 ( .A(str_reg[208]), .B(n418), .S0(n94), .Y(n153) );
  CLKMX2X2 U347 ( .A(str_reg[209]), .B(n417), .S0(n94), .Y(n152) );
  CLKMX2X2 U348 ( .A(str_reg[210]), .B(n416), .S0(n94), .Y(n151) );
  CLKMX2X2 U349 ( .A(str_reg[211]), .B(n415), .S0(n94), .Y(n150) );
  CLKMX2X2 U350 ( .A(str_reg[212]), .B(n414), .S0(n94), .Y(n149) );
  CLKMX2X2 U351 ( .A(str_reg[213]), .B(n413), .S0(n94), .Y(n148) );
  CLKMX2X2 U352 ( .A(str_reg[214]), .B(n412), .S0(n94), .Y(n147) );
  CLKMX2X2 U353 ( .A(str_reg[215]), .B(n105), .S0(n94), .Y(n146) );
  AND2X1 U354 ( .A(n91), .B(n59), .Y(n94) );
  OAI31XL U355 ( .A0(n37), .A1(s_index[2]), .A2(s_index[0]), .B0(n6), .Y(n59)
         );
  CLKMX2X2 U356 ( .A(str_reg[216]), .B(n418), .S0(n95), .Y(n145) );
  CLKMX2X2 U357 ( .A(str_reg[217]), .B(n417), .S0(n95), .Y(n144) );
  CLKMX2X2 U358 ( .A(str_reg[218]), .B(n416), .S0(n95), .Y(n143) );
  CLKMX2X2 U359 ( .A(str_reg[219]), .B(n415), .S0(n95), .Y(n142) );
  CLKMX2X2 U360 ( .A(str_reg[220]), .B(n414), .S0(n95), .Y(n141) );
  CLKMX2X2 U361 ( .A(str_reg[221]), .B(n413), .S0(n95), .Y(n140) );
  CLKMX2X2 U362 ( .A(str_reg[222]), .B(n412), .S0(n95), .Y(n139) );
  CLKMX2X2 U363 ( .A(str_reg[223]), .B(n105), .S0(n95), .Y(n138) );
  AND2X1 U364 ( .A(n91), .B(n61), .Y(n95) );
  NAND2X1 U365 ( .A(n39), .B(n6), .Y(n61) );
  NAND3X1 U366 ( .A(s_index[0]), .B(n50), .C(s_index[1]), .Y(n39) );
  CLKMX2X2 U367 ( .A(str_reg[224]), .B(n418), .S0(n96), .Y(n137) );
  CLKMX2X2 U368 ( .A(str_reg[225]), .B(n417), .S0(n96), .Y(n136) );
  CLKMX2X2 U369 ( .A(str_reg[226]), .B(n416), .S0(n96), .Y(n135) );
  CLKMX2X2 U370 ( .A(str_reg[227]), .B(n415), .S0(n96), .Y(n134) );
  CLKMX2X2 U371 ( .A(str_reg[228]), .B(n414), .S0(n96), .Y(n133) );
  CLKMX2X2 U372 ( .A(str_reg[229]), .B(n413), .S0(n96), .Y(n132) );
  CLKMX2X2 U373 ( .A(str_reg[230]), .B(n412), .S0(n96), .Y(n131) );
  CLKMX2X2 U374 ( .A(str_reg[231]), .B(n105), .S0(n96), .Y(n130) );
  AND2X1 U375 ( .A(n91), .B(n63), .Y(n96) );
  OAI31XL U376 ( .A0(n50), .A1(s_index[1]), .A2(s_index[0]), .B0(n6), .Y(n63)
         );
  CLKMX2X2 U377 ( .A(str_reg[232]), .B(n418), .S0(n98), .Y(n129) );
  CLKMX2X2 U378 ( .A(str_reg[233]), .B(n417), .S0(n98), .Y(n128) );
  CLKMX2X2 U379 ( .A(str_reg[234]), .B(n416), .S0(n98), .Y(n127) );
  CLKMX2X2 U380 ( .A(str_reg[235]), .B(n415), .S0(n98), .Y(n126) );
  CLKMX2X2 U381 ( .A(str_reg[236]), .B(n414), .S0(n98), .Y(n125) );
  CLKMX2X2 U382 ( .A(str_reg[237]), .B(n413), .S0(n98), .Y(n124) );
  CLKMX2X2 U383 ( .A(str_reg[238]), .B(n412), .S0(n98), .Y(n123) );
  CLKMX2X2 U384 ( .A(str_reg[239]), .B(n105), .S0(n98), .Y(n122) );
  AND2X1 U385 ( .A(n91), .B(n65), .Y(n98) );
  OAI31XL U386 ( .A0(n50), .A1(s_index[1]), .A2(n34), .B0(n6), .Y(n65) );
  CLKMX2X2 U387 ( .A(str_reg[240]), .B(n418), .S0(n100), .Y(n121) );
  CLKMX2X2 U388 ( .A(str_reg[241]), .B(n417), .S0(n100), .Y(n120) );
  CLKMX2X2 U389 ( .A(str_reg[242]), .B(n416), .S0(n100), .Y(n119) );
  CLKMX2X2 U390 ( .A(str_reg[243]), .B(n415), .S0(n100), .Y(n118) );
  CLKMX2X2 U391 ( .A(str_reg[244]), .B(n414), .S0(n100), .Y(n117) );
  CLKMX2X2 U392 ( .A(str_reg[245]), .B(n413), .S0(n100), .Y(n116) );
  CLKMX2X2 U393 ( .A(str_reg[246]), .B(n412), .S0(n100), .Y(n115) );
  CLKMX2X2 U394 ( .A(str_reg[247]), .B(n105), .S0(n100), .Y(n114) );
  AND2X1 U395 ( .A(n91), .B(n67), .Y(n100) );
  OAI31XL U396 ( .A0(n50), .A1(s_index[0]), .A2(n37), .B0(n6), .Y(n67) );
  CLKMX2X2 U397 ( .A(str_reg[248]), .B(n418), .S0(n101), .Y(n113) );
  CLKMX2X2 U398 ( .A(str_reg[249]), .B(n417), .S0(n101), .Y(n112) );
  CLKMX2X2 U399 ( .A(str_reg[250]), .B(n416), .S0(n101), .Y(n111) );
  CLKMX2X2 U400 ( .A(str_reg[251]), .B(n415), .S0(n101), .Y(n110) );
  CLKMX2X2 U401 ( .A(str_reg[252]), .B(n414), .S0(n101), .Y(n109) );
  CLKMX2X2 U402 ( .A(str_reg[253]), .B(n413), .S0(n101), .Y(n108) );
  CLKMX2X2 U403 ( .A(str_reg[254]), .B(n412), .S0(n101), .Y(n107) );
  CLKMX2X2 U404 ( .A(str_reg[255]), .B(n105), .S0(n101), .Y(n106) );
  AND2X1 U405 ( .A(n91), .B(n69), .Y(n101) );
  NAND2BX1 U406 ( .AN(n44), .B(n6), .Y(n69) );
  NOR3X1 U407 ( .A(n37), .B(n34), .C(n50), .Y(n44) );
  CLKINVX1 U408 ( .A(s_index[2]), .Y(n50) );
  CLKINVX1 U409 ( .A(s_index[0]), .Y(n34) );
  CLKINVX1 U410 ( .A(s_index[1]), .Y(n37) );
  OAI31XL U411 ( .A0(n52), .A1(n43), .A2(n47), .B0(n6), .Y(n91) );
  CLKINVX1 U412 ( .A(s_index[4]), .Y(n47) );
  CLKINVX1 U413 ( .A(s_index[3]), .Y(n43) );
  NAND2X1 U414 ( .A(n19), .B(n28), .Y(n52) );
  CLKINVX1 U415 ( .A(w_sel), .Y(n28) );
  CLKINVX1 U416 ( .A(n12), .Y(n19) );
  NAND2X1 U417 ( .A(write), .B(n6), .Y(n12) );
  CLKINVX1 U418 ( .A(reset), .Y(n6) );
endmodule


module KMP_pe_0 ( clk, reset, str_input, pat_input, input_valid, start_idx, 
        process_2idx, pat_last_idx, ff_result, output_valid, match, match_idx
 );
  input [255:0] str_input;
  input [63:0] pat_input;
  input [4:0] start_idx;
  input [4:0] process_2idx;
  input [2:0] pat_last_idx;
  input [23:0] ff_result;
  output [4:0] match_idx;
  input clk, reset, input_valid;
  output output_valid, match;
  wire   \current_st[0] , N33, done, N60, N61, N62, N63, N64, n21, n26, n27,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n22, n23, n24, n25,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358;
  wire   [3:0] next_st;
  wire   [4:0] str_pro_idx;
  wire   [2:0] pat_pro_idx;

  DFFTRX1 \current_st_reg[2]  ( .D(next_st[2]), .RN(n358), .CK(clk), .Q(n1), 
        .QN(n26) );
  DFFTRX1 \current_st_reg[1]  ( .D(next_st[1]), .RN(n358), .CK(clk), .Q(n2), 
        .QN(n27) );
  DFFTRX1 \current_st_reg[3]  ( .D(next_st[3]), .RN(n358), .CK(clk), .QN(n21)
         );
  TLATX1 \next_st_reg[0]  ( .G(N60), .D(N61), .QN(n357) );
  DFFQX1 \match_idx_reg[0]  ( .D(n304), .CK(clk), .Q(match_idx[0]) );
  DFFQX1 output_valid_reg ( .D(n310), .CK(clk), .Q(output_valid) );
  DFFQX1 done_reg ( .D(n319), .CK(clk), .Q(done) );
  DFFQX1 \match_idx_reg[2]  ( .D(n306), .CK(clk), .Q(match_idx[2]) );
  DFFQX1 \str_pro_idx_reg[0]  ( .D(n314), .CK(clk), .Q(str_pro_idx[0]) );
  DFFQX1 \match_idx_reg[4]  ( .D(n308), .CK(clk), .Q(match_idx[4]) );
  DFFQX1 \match_idx_reg[1]  ( .D(n305), .CK(clk), .Q(match_idx[1]) );
  DFFQX1 \match_idx_reg[3]  ( .D(n307), .CK(clk), .Q(match_idx[3]) );
  DFFQX1 match_reg ( .D(n309), .CK(clk), .Q(match) );
  DFFQX1 \current_st_reg[0]  ( .D(N33), .CK(clk), .Q(\current_st[0] ) );
  DFFQX1 \pat_pro_idx_reg[2]  ( .D(n315), .CK(clk), .Q(pat_pro_idx[2]) );
  DFFQX1 \str_pro_idx_reg[1]  ( .D(n311), .CK(clk), .Q(str_pro_idx[1]) );
  DFFQX1 \pat_pro_idx_reg[1]  ( .D(n318), .CK(clk), .Q(pat_pro_idx[1]) );
  DFFQX1 \str_pro_idx_reg[2]  ( .D(n312), .CK(clk), .Q(str_pro_idx[2]) );
  DFFQX1 \str_pro_idx_reg[3]  ( .D(n313), .CK(clk), .Q(str_pro_idx[3]) );
  DFFQX1 \str_pro_idx_reg[4]  ( .D(n317), .CK(clk), .Q(str_pro_idx[4]) );
  DFFQX1 \pat_pro_idx_reg[0]  ( .D(n316), .CK(clk), .Q(pat_pro_idx[0]) );
  TLATX1 \next_st_reg[2]  ( .G(N60), .D(N63), .Q(next_st[2]) );
  TLATX1 \next_st_reg[1]  ( .G(N60), .D(N62), .Q(next_st[1]) );
  TLATX1 \next_st_reg[3]  ( .G(N60), .D(N64), .Q(next_st[3]) );
  NOR3X2 U3 ( .A(n54), .B(str_pro_idx[2]), .C(n31), .Y(n115) );
  NOR3X2 U4 ( .A(str_pro_idx[3]), .B(str_pro_idx[4]), .C(n57), .Y(n120) );
  NOR3X2 U5 ( .A(n31), .B(n54), .C(n57), .Y(n122) );
  NOR3X2 U6 ( .A(str_pro_idx[2]), .B(str_pro_idx[3]), .C(n31), .Y(n116) );
  NOR3X2 U7 ( .A(n54), .B(str_pro_idx[4]), .C(n57), .Y(n121) );
  NOR3X2 U8 ( .A(str_pro_idx[2]), .B(str_pro_idx[4]), .C(n54), .Y(n118) );
  NOR3X2 U9 ( .A(n31), .B(str_pro_idx[3]), .C(n57), .Y(n123) );
  OAI221XL U10 ( .A0(n3), .A1(n4), .B0(n5), .B1(n6), .C0(n7), .Y(n319) );
  OAI2BB2XL U11 ( .B0(n8), .B1(n9), .A0N(n10), .A1N(n11), .Y(n318) );
  OAI32X1 U12 ( .A0(n12), .A1(pat_pro_idx[1]), .A2(n13), .B0(n14), .B1(n15), 
        .Y(n11) );
  AOI211X1 U13 ( .A0(ff_result[1]), .A1(n16), .B0(n17), .C0(n18), .Y(n14) );
  OAI2BB2XL U14 ( .B0(pat_pro_idx[0]), .B1(n19), .A0N(ff_result[7]), .A1N(n20), 
        .Y(n18) );
  AOI222XL U15 ( .A0(ff_result[10]), .A1(n22), .B0(ff_result[4]), .B1(n23), 
        .C0(ff_result[16]), .C1(n24), .Y(n19) );
  AO22X1 U16 ( .A0(ff_result[19]), .A1(n25), .B0(ff_result[13]), .B1(n28), .Y(
        n17) );
  OAI221XL U17 ( .A0(n29), .A1(n30), .B0(n31), .B1(n32), .C0(n33), .Y(n317) );
  NAND2X1 U18 ( .A(start_idx[4]), .B(n34), .Y(n33) );
  AO22X1 U19 ( .A0(n35), .A1(pat_pro_idx[0]), .B0(n10), .B1(n36), .Y(n316) );
  OAI22XL U20 ( .A0(pat_pro_idx[0]), .A1(n12), .B0(n37), .B1(n15), .Y(n36) );
  AOI211X1 U21 ( .A0(ff_result[0]), .A1(n16), .B0(n38), .C0(n39), .Y(n37) );
  OAI2BB2XL U22 ( .B0(pat_pro_idx[0]), .B1(n40), .A0N(ff_result[6]), .A1N(n20), 
        .Y(n39) );
  AOI222XL U23 ( .A0(ff_result[9]), .A1(n22), .B0(ff_result[3]), .B1(n23), 
        .C0(ff_result[15]), .C1(n24), .Y(n40) );
  AO22X1 U24 ( .A0(ff_result[18]), .A1(n25), .B0(ff_result[12]), .B1(n28), .Y(
        n38) );
  OAI2BB2XL U25 ( .B0(n8), .B1(n41), .A0N(n10), .A1N(n42), .Y(n315) );
  OAI22XL U26 ( .A0(n43), .A1(n15), .B0(n44), .B1(n12), .Y(n42) );
  NOR2X1 U27 ( .A(n20), .B(n22), .Y(n44) );
  AOI211X1 U28 ( .A0(ff_result[2]), .A1(n16), .B0(n45), .C0(n46), .Y(n43) );
  OAI2BB2XL U29 ( .B0(pat_pro_idx[0]), .B1(n47), .A0N(ff_result[8]), .A1N(n20), 
        .Y(n46) );
  AOI222XL U30 ( .A0(ff_result[11]), .A1(n22), .B0(ff_result[5]), .B1(n23), 
        .C0(ff_result[17]), .C1(n24), .Y(n47) );
  AO22X1 U31 ( .A0(ff_result[20]), .A1(n25), .B0(ff_result[14]), .B1(n28), .Y(
        n45) );
  AOI31X1 U32 ( .A0(n10), .A1(n13), .A2(n48), .B0(n35), .Y(n8) );
  NOR2X1 U33 ( .A(n5), .B(n35), .Y(n10) );
  AOI2BB1X1 U34 ( .A0N(n5), .A1N(n15), .B0(n32), .Y(n35) );
  NAND2X1 U35 ( .A(n6), .B(n12), .Y(n15) );
  CLKINVX1 U36 ( .A(n49), .Y(n5) );
  OAI221XL U37 ( .A0(n30), .A1(n50), .B0(n51), .B1(n32), .C0(n52), .Y(n314) );
  NAND2X1 U38 ( .A(start_idx[0]), .B(n34), .Y(n52) );
  OAI221XL U39 ( .A0(n30), .A1(n53), .B0(n54), .B1(n32), .C0(n55), .Y(n313) );
  NAND2X1 U40 ( .A(start_idx[3]), .B(n34), .Y(n55) );
  OAI221XL U41 ( .A0(n30), .A1(n56), .B0(n57), .B1(n32), .C0(n58), .Y(n312) );
  NAND2X1 U42 ( .A(start_idx[2]), .B(n34), .Y(n58) );
  OAI221XL U43 ( .A0(n30), .A1(n59), .B0(n60), .B1(n32), .C0(n61), .Y(n311) );
  NAND2X1 U44 ( .A(start_idx[1]), .B(n34), .Y(n61) );
  NAND2X1 U45 ( .A(n49), .B(n32), .Y(n30) );
  OAI211X1 U46 ( .A0(n62), .A1(n63), .B0(n64), .C0(n358), .Y(n32) );
  OAI21XL U47 ( .A0(n65), .A1(n48), .B0(n49), .Y(n63) );
  NAND2X1 U48 ( .A(n6), .B(n66), .Y(n62) );
  OAI2BB2XL U49 ( .B0(n67), .B1(n68), .A0N(output_valid), .A1N(n69), .Y(n310)
         );
  OAI21XL U50 ( .A0(reset), .A1(n70), .B0(n64), .Y(n69) );
  CLKINVX1 U51 ( .A(n34), .Y(n64) );
  NOR2X1 U52 ( .A(n71), .B(reset), .Y(n34) );
  OAI2BB1X1 U53 ( .A0N(match), .A1N(n72), .B0(n7), .Y(n309) );
  OAI2BB2XL U54 ( .B0(n29), .B1(n7), .A0N(match_idx[4]), .A1N(n72), .Y(n308)
         );
  XNOR2X1 U55 ( .A(n73), .B(n74), .Y(n29) );
  XNOR2X1 U56 ( .A(str_pro_idx[4]), .B(n66), .Y(n74) );
  OAI21XL U57 ( .A0(n75), .A1(n66), .B0(n76), .Y(n73) );
  OAI2BB1X1 U58 ( .A0N(n66), .A1N(n75), .B0(str_pro_idx[3]), .Y(n76) );
  OAI2BB2XL U59 ( .B0(n53), .B1(n7), .A0N(match_idx[3]), .A1N(n72), .Y(n307)
         );
  XNOR2X1 U60 ( .A(n77), .B(n75), .Y(n53) );
  AOI2BB2X1 U61 ( .B0(n78), .B1(n79), .A0N(n80), .A1N(n57), .Y(n75) );
  NOR2X1 U62 ( .A(n79), .B(n78), .Y(n80) );
  XNOR2X1 U63 ( .A(n66), .B(n54), .Y(n77) );
  OAI2BB2XL U64 ( .B0(n56), .B1(n7), .A0N(match_idx[2]), .A1N(n72), .Y(n306)
         );
  XOR2X1 U65 ( .A(n81), .B(n78), .Y(n56) );
  OAI2BB1X1 U66 ( .A0N(n82), .A1N(n83), .B0(n84), .Y(n78) );
  OAI21XL U67 ( .A0(n83), .A1(n82), .B0(str_pro_idx[1]), .Y(n84) );
  XNOR2X1 U68 ( .A(str_pro_idx[2]), .B(n79), .Y(n81) );
  NOR2X1 U69 ( .A(n66), .B(pat_last_idx[2]), .Y(n79) );
  OAI2BB2XL U70 ( .B0(n59), .B1(n7), .A0N(match_idx[1]), .A1N(n72), .Y(n305)
         );
  XOR2X1 U71 ( .A(n85), .B(n82), .Y(n59) );
  OAI21XL U72 ( .A0(n86), .A1(n66), .B0(n51), .Y(n82) );
  XNOR2X1 U73 ( .A(str_pro_idx[1]), .B(n83), .Y(n85) );
  NOR2X1 U74 ( .A(n66), .B(pat_last_idx[1]), .Y(n83) );
  OAI2BB2XL U75 ( .B0(n50), .B1(n7), .A0N(match_idx[0]), .A1N(n72), .Y(n304)
         );
  NOR3BXL U76 ( .AN(n87), .B(n3), .C(reset), .Y(n72) );
  CLKINVX1 U77 ( .A(n88), .Y(n3) );
  NAND3BX1 U78 ( .AN(n67), .B(n68), .C(n70), .Y(n88) );
  OAI2BB1X1 U79 ( .A0N(n66), .A1N(n6), .B0(n49), .Y(n87) );
  NAND3X1 U80 ( .A(n89), .B(n90), .C(n91), .Y(n6) );
  NOR3X1 U81 ( .A(n92), .B(n93), .C(n94), .Y(n91) );
  XNOR2X1 U82 ( .A(n51), .B(process_2idx[0]), .Y(n94) );
  XNOR2X1 U83 ( .A(n57), .B(process_2idx[2]), .Y(n93) );
  XNOR2X1 U84 ( .A(n60), .B(process_2idx[1]), .Y(n92) );
  XNOR2X1 U85 ( .A(str_pro_idx[3]), .B(process_2idx[3]), .Y(n90) );
  XNOR2X1 U86 ( .A(str_pro_idx[4]), .B(process_2idx[4]), .Y(n89) );
  NAND2BX1 U87 ( .AN(n66), .B(n49), .Y(n7) );
  NOR2X1 U88 ( .A(n70), .B(n67), .Y(n49) );
  NAND2X1 U89 ( .A(n71), .B(n358), .Y(n67) );
  XNOR2X1 U90 ( .A(n95), .B(n86), .Y(n50) );
  NOR2BX1 U91 ( .AN(pat_last_idx[0]), .B(n66), .Y(n86) );
  XNOR2X1 U92 ( .A(n66), .B(n51), .Y(n95) );
  NAND4X1 U93 ( .A(n96), .B(n97), .C(n98), .D(n48), .Y(n66) );
  CLKINVX1 U94 ( .A(n12), .Y(n48) );
  NAND2X1 U95 ( .A(n99), .B(n100), .Y(n12) );
  NOR4X1 U96 ( .A(n101), .B(n102), .C(n103), .D(n104), .Y(n100) );
  XOR2X1 U97 ( .A(n105), .B(n106), .Y(n104) );
  AOI211X1 U98 ( .A0(n107), .A1(n108), .B0(n109), .C0(n110), .Y(n106) );
  AOI31X1 U99 ( .A0(n111), .A1(n112), .A2(n113), .B0(n114), .Y(n110) );
  AOI221XL U100 ( .A0(str_input[194]), .A1(n115), .B0(str_input[130]), .B1(
        n116), .C0(n117), .Y(n113) );
  AO22X1 U101 ( .A0(str_input[66]), .A1(n118), .B0(str_input[2]), .B1(n119), 
        .Y(n117) );
  AOI22X1 U102 ( .A0(str_input[34]), .A1(n120), .B0(str_input[98]), .B1(n121), 
        .Y(n112) );
  AOI22X1 U103 ( .A0(str_input[226]), .A1(n122), .B0(str_input[162]), .B1(n123), .Y(n111) );
  OAI22XL U104 ( .A0(n124), .A1(n125), .B0(n126), .B1(n127), .Y(n109) );
  NOR4X1 U105 ( .A(n128), .B(n129), .C(n130), .D(n131), .Y(n126) );
  AO22X1 U106 ( .A0(str_input[178]), .A1(n123), .B0(str_input[242]), .B1(n122), 
        .Y(n131) );
  AO22X1 U107 ( .A0(str_input[114]), .A1(n121), .B0(str_input[50]), .B1(n120), 
        .Y(n130) );
  AO22X1 U108 ( .A0(str_input[146]), .A1(n116), .B0(str_input[210]), .B1(n115), 
        .Y(n129) );
  AO22X1 U109 ( .A0(str_input[82]), .A1(n118), .B0(str_input[18]), .B1(n119), 
        .Y(n128) );
  NOR4X1 U110 ( .A(n132), .B(n133), .C(n134), .D(n135), .Y(n124) );
  AO22X1 U111 ( .A0(str_input[186]), .A1(n123), .B0(str_input[250]), .B1(n122), 
        .Y(n135) );
  AO22X1 U112 ( .A0(str_input[122]), .A1(n121), .B0(str_input[58]), .B1(n120), 
        .Y(n134) );
  AO22X1 U113 ( .A0(str_input[154]), .A1(n116), .B0(str_input[218]), .B1(n115), 
        .Y(n133) );
  AO22X1 U114 ( .A0(str_input[90]), .A1(n118), .B0(str_input[26]), .B1(n119), 
        .Y(n132) );
  NAND4X1 U115 ( .A(n136), .B(n137), .C(n138), .D(n139), .Y(n108) );
  AOI22X1 U116 ( .A0(str_input[10]), .A1(n119), .B0(str_input[74]), .B1(n118), 
        .Y(n139) );
  AOI22X1 U117 ( .A0(str_input[202]), .A1(n115), .B0(str_input[138]), .B1(n116), .Y(n138) );
  AOI22X1 U118 ( .A0(str_input[42]), .A1(n120), .B0(str_input[106]), .B1(n121), 
        .Y(n137) );
  AOI22X1 U119 ( .A0(str_input[234]), .A1(n122), .B0(str_input[170]), .B1(n123), .Y(n136) );
  AOI211X1 U120 ( .A0(pat_input[26]), .A1(n20), .B0(n140), .C0(n141), .Y(n105)
         );
  OAI2BB2XL U121 ( .B0(pat_pro_idx[0]), .B1(n142), .A0N(pat_input[2]), .A1N(
        n65), .Y(n141) );
  AOI222XL U122 ( .A0(pat_input[34]), .A1(n22), .B0(pat_input[18]), .B1(n23), 
        .C0(pat_input[50]), .C1(n24), .Y(n142) );
  CLKINVX1 U123 ( .A(n143), .Y(n140) );
  AOI222XL U124 ( .A0(pat_input[58]), .A1(n25), .B0(pat_input[10]), .B1(n16), 
        .C0(pat_input[42]), .C1(n28), .Y(n143) );
  XOR2X1 U125 ( .A(n144), .B(n145), .Y(n103) );
  AOI211X1 U126 ( .A0(n107), .A1(n146), .B0(n147), .C0(n148), .Y(n145) );
  AOI31X1 U127 ( .A0(n149), .A1(n150), .A2(n151), .B0(n114), .Y(n148) );
  AOI221XL U128 ( .A0(str_input[199]), .A1(n115), .B0(str_input[135]), .B1(
        n116), .C0(n152), .Y(n151) );
  AO22X1 U129 ( .A0(str_input[71]), .A1(n118), .B0(str_input[7]), .B1(n119), 
        .Y(n152) );
  AOI22X1 U130 ( .A0(str_input[39]), .A1(n120), .B0(str_input[103]), .B1(n121), 
        .Y(n150) );
  AOI22X1 U131 ( .A0(str_input[231]), .A1(n122), .B0(str_input[167]), .B1(n123), .Y(n149) );
  OAI22XL U132 ( .A0(n153), .A1(n125), .B0(n154), .B1(n127), .Y(n147) );
  NOR4X1 U133 ( .A(n155), .B(n156), .C(n157), .D(n158), .Y(n154) );
  AO22X1 U134 ( .A0(str_input[183]), .A1(n123), .B0(str_input[247]), .B1(n122), 
        .Y(n158) );
  AO22X1 U135 ( .A0(str_input[119]), .A1(n121), .B0(str_input[55]), .B1(n120), 
        .Y(n157) );
  AO22X1 U136 ( .A0(str_input[151]), .A1(n116), .B0(str_input[215]), .B1(n115), 
        .Y(n156) );
  AO22X1 U137 ( .A0(str_input[87]), .A1(n118), .B0(str_input[23]), .B1(n119), 
        .Y(n155) );
  NOR4X1 U138 ( .A(n159), .B(n160), .C(n161), .D(n162), .Y(n153) );
  AO22X1 U139 ( .A0(str_input[191]), .A1(n123), .B0(str_input[255]), .B1(n122), 
        .Y(n162) );
  AO22X1 U140 ( .A0(str_input[127]), .A1(n121), .B0(str_input[63]), .B1(n120), 
        .Y(n161) );
  AO22X1 U141 ( .A0(str_input[159]), .A1(n116), .B0(str_input[223]), .B1(n115), 
        .Y(n160) );
  AO22X1 U142 ( .A0(str_input[95]), .A1(n118), .B0(str_input[31]), .B1(n119), 
        .Y(n159) );
  NAND4X1 U143 ( .A(n163), .B(n164), .C(n165), .D(n166), .Y(n146) );
  AOI22X1 U144 ( .A0(str_input[15]), .A1(n119), .B0(str_input[79]), .B1(n118), 
        .Y(n166) );
  AOI22X1 U145 ( .A0(str_input[207]), .A1(n115), .B0(str_input[143]), .B1(n116), .Y(n165) );
  AOI22X1 U146 ( .A0(str_input[47]), .A1(n120), .B0(str_input[111]), .B1(n121), 
        .Y(n164) );
  AOI22X1 U147 ( .A0(str_input[239]), .A1(n122), .B0(str_input[175]), .B1(n123), .Y(n163) );
  AOI211X1 U148 ( .A0(pat_input[31]), .A1(n20), .B0(n167), .C0(n168), .Y(n144)
         );
  OAI2BB2XL U149 ( .B0(pat_pro_idx[0]), .B1(n169), .A0N(pat_input[7]), .A1N(
        n65), .Y(n168) );
  AOI222XL U150 ( .A0(pat_input[39]), .A1(n22), .B0(pat_input[23]), .B1(n23), 
        .C0(pat_input[55]), .C1(n24), .Y(n169) );
  CLKINVX1 U151 ( .A(n170), .Y(n167) );
  AOI222XL U152 ( .A0(pat_input[63]), .A1(n25), .B0(pat_input[15]), .B1(n16), 
        .C0(pat_input[47]), .C1(n28), .Y(n170) );
  XOR2X1 U153 ( .A(n171), .B(n172), .Y(n102) );
  AOI211X1 U154 ( .A0(pat_input[24]), .A1(n20), .B0(n173), .C0(n174), .Y(n172)
         );
  OAI2BB2XL U155 ( .B0(pat_pro_idx[0]), .B1(n175), .A0N(pat_input[0]), .A1N(
        n65), .Y(n174) );
  AOI222XL U156 ( .A0(pat_input[32]), .A1(n22), .B0(pat_input[16]), .B1(n23), 
        .C0(pat_input[48]), .C1(n24), .Y(n175) );
  CLKINVX1 U157 ( .A(n176), .Y(n173) );
  AOI222XL U158 ( .A0(pat_input[56]), .A1(n25), .B0(pat_input[8]), .B1(n16), 
        .C0(pat_input[40]), .C1(n28), .Y(n176) );
  AOI211X1 U159 ( .A0(n107), .A1(n177), .B0(n178), .C0(n179), .Y(n171) );
  AOI31X1 U160 ( .A0(n180), .A1(n181), .A2(n182), .B0(n114), .Y(n179) );
  AOI221XL U161 ( .A0(str_input[192]), .A1(n115), .B0(str_input[128]), .B1(
        n116), .C0(n183), .Y(n182) );
  AO22X1 U162 ( .A0(str_input[64]), .A1(n118), .B0(str_input[0]), .B1(n119), 
        .Y(n183) );
  AOI22X1 U163 ( .A0(str_input[32]), .A1(n120), .B0(str_input[96]), .B1(n121), 
        .Y(n181) );
  AOI22X1 U164 ( .A0(str_input[224]), .A1(n122), .B0(str_input[160]), .B1(n123), .Y(n180) );
  OAI22XL U165 ( .A0(n184), .A1(n125), .B0(n185), .B1(n127), .Y(n178) );
  NOR4X1 U166 ( .A(n186), .B(n187), .C(n188), .D(n189), .Y(n185) );
  AO22X1 U167 ( .A0(str_input[176]), .A1(n123), .B0(str_input[240]), .B1(n122), 
        .Y(n189) );
  AO22X1 U168 ( .A0(str_input[112]), .A1(n121), .B0(str_input[48]), .B1(n120), 
        .Y(n188) );
  AO22X1 U169 ( .A0(str_input[144]), .A1(n116), .B0(str_input[208]), .B1(n115), 
        .Y(n187) );
  AO22X1 U170 ( .A0(str_input[80]), .A1(n118), .B0(str_input[16]), .B1(n119), 
        .Y(n186) );
  NOR4X1 U171 ( .A(n190), .B(n191), .C(n192), .D(n193), .Y(n184) );
  AO22X1 U172 ( .A0(str_input[184]), .A1(n123), .B0(str_input[248]), .B1(n122), 
        .Y(n193) );
  AO22X1 U173 ( .A0(str_input[120]), .A1(n121), .B0(str_input[56]), .B1(n120), 
        .Y(n192) );
  AO22X1 U174 ( .A0(str_input[152]), .A1(n116), .B0(str_input[216]), .B1(n115), 
        .Y(n191) );
  AO22X1 U175 ( .A0(str_input[88]), .A1(n118), .B0(str_input[24]), .B1(n119), 
        .Y(n190) );
  NAND4X1 U176 ( .A(n194), .B(n195), .C(n196), .D(n197), .Y(n177) );
  AOI22X1 U177 ( .A0(str_input[8]), .A1(n119), .B0(str_input[72]), .B1(n118), 
        .Y(n197) );
  AOI22X1 U178 ( .A0(str_input[200]), .A1(n115), .B0(str_input[136]), .B1(n116), .Y(n196) );
  AOI22X1 U179 ( .A0(str_input[40]), .A1(n120), .B0(str_input[104]), .B1(n121), 
        .Y(n195) );
  AOI22X1 U180 ( .A0(str_input[232]), .A1(n122), .B0(str_input[168]), .B1(n123), .Y(n194) );
  XOR2X1 U181 ( .A(n198), .B(n199), .Y(n101) );
  AOI211X1 U182 ( .A0(pat_input[25]), .A1(n20), .B0(n200), .C0(n201), .Y(n199)
         );
  OAI2BB2XL U183 ( .B0(pat_pro_idx[0]), .B1(n202), .A0N(pat_input[1]), .A1N(
        n65), .Y(n201) );
  AOI222XL U184 ( .A0(pat_input[33]), .A1(n22), .B0(pat_input[17]), .B1(n23), 
        .C0(pat_input[49]), .C1(n24), .Y(n202) );
  CLKINVX1 U185 ( .A(n203), .Y(n200) );
  AOI222XL U186 ( .A0(pat_input[57]), .A1(n25), .B0(pat_input[9]), .B1(n16), 
        .C0(pat_input[41]), .C1(n28), .Y(n203) );
  AOI211X1 U187 ( .A0(n107), .A1(n204), .B0(n205), .C0(n206), .Y(n198) );
  AOI31X1 U188 ( .A0(n207), .A1(n208), .A2(n209), .B0(n114), .Y(n206) );
  AOI221XL U189 ( .A0(str_input[193]), .A1(n115), .B0(str_input[129]), .B1(
        n116), .C0(n210), .Y(n209) );
  AO22X1 U190 ( .A0(str_input[65]), .A1(n118), .B0(str_input[1]), .B1(n119), 
        .Y(n210) );
  AOI22X1 U191 ( .A0(str_input[33]), .A1(n120), .B0(str_input[97]), .B1(n121), 
        .Y(n208) );
  AOI22X1 U192 ( .A0(str_input[225]), .A1(n122), .B0(str_input[161]), .B1(n123), .Y(n207) );
  OAI22XL U193 ( .A0(n211), .A1(n125), .B0(n212), .B1(n127), .Y(n205) );
  NOR4X1 U194 ( .A(n213), .B(n214), .C(n215), .D(n216), .Y(n212) );
  AO22X1 U195 ( .A0(str_input[177]), .A1(n123), .B0(str_input[241]), .B1(n122), 
        .Y(n216) );
  AO22X1 U196 ( .A0(str_input[113]), .A1(n121), .B0(str_input[49]), .B1(n120), 
        .Y(n215) );
  AO22X1 U197 ( .A0(str_input[145]), .A1(n116), .B0(str_input[209]), .B1(n115), 
        .Y(n214) );
  AO22X1 U198 ( .A0(str_input[81]), .A1(n118), .B0(str_input[17]), .B1(n119), 
        .Y(n213) );
  NOR4X1 U199 ( .A(n217), .B(n218), .C(n219), .D(n220), .Y(n211) );
  AO22X1 U200 ( .A0(str_input[185]), .A1(n123), .B0(str_input[249]), .B1(n122), 
        .Y(n220) );
  AO22X1 U201 ( .A0(str_input[121]), .A1(n121), .B0(str_input[57]), .B1(n120), 
        .Y(n219) );
  AO22X1 U202 ( .A0(str_input[153]), .A1(n116), .B0(str_input[217]), .B1(n115), 
        .Y(n218) );
  AO22X1 U203 ( .A0(str_input[89]), .A1(n118), .B0(str_input[25]), .B1(n119), 
        .Y(n217) );
  NAND4X1 U204 ( .A(n221), .B(n222), .C(n223), .D(n224), .Y(n204) );
  AOI22X1 U205 ( .A0(str_input[9]), .A1(n119), .B0(str_input[73]), .B1(n118), 
        .Y(n224) );
  AOI22X1 U206 ( .A0(str_input[201]), .A1(n115), .B0(str_input[137]), .B1(n116), .Y(n223) );
  AOI22X1 U207 ( .A0(str_input[41]), .A1(n120), .B0(str_input[105]), .B1(n121), 
        .Y(n222) );
  AOI22X1 U208 ( .A0(str_input[233]), .A1(n122), .B0(str_input[169]), .B1(n123), .Y(n221) );
  NOR4X1 U209 ( .A(n225), .B(n226), .C(n227), .D(n228), .Y(n99) );
  XOR2X1 U210 ( .A(n229), .B(n230), .Y(n228) );
  AOI211X1 U211 ( .A0(n107), .A1(n231), .B0(n232), .C0(n233), .Y(n230) );
  AOI31X1 U212 ( .A0(n234), .A1(n235), .A2(n236), .B0(n114), .Y(n233) );
  AOI221XL U213 ( .A0(str_input[198]), .A1(n115), .B0(str_input[134]), .B1(
        n116), .C0(n237), .Y(n236) );
  AO22X1 U214 ( .A0(str_input[70]), .A1(n118), .B0(str_input[6]), .B1(n119), 
        .Y(n237) );
  AOI22X1 U215 ( .A0(str_input[38]), .A1(n120), .B0(str_input[102]), .B1(n121), 
        .Y(n235) );
  AOI22X1 U216 ( .A0(str_input[230]), .A1(n122), .B0(str_input[166]), .B1(n123), .Y(n234) );
  OAI22XL U217 ( .A0(n238), .A1(n125), .B0(n239), .B1(n127), .Y(n232) );
  NOR4X1 U218 ( .A(n240), .B(n241), .C(n242), .D(n243), .Y(n239) );
  AO22X1 U219 ( .A0(str_input[182]), .A1(n123), .B0(str_input[246]), .B1(n122), 
        .Y(n243) );
  AO22X1 U220 ( .A0(str_input[118]), .A1(n121), .B0(str_input[54]), .B1(n120), 
        .Y(n242) );
  AO22X1 U221 ( .A0(str_input[150]), .A1(n116), .B0(str_input[214]), .B1(n115), 
        .Y(n241) );
  AO22X1 U222 ( .A0(str_input[86]), .A1(n118), .B0(str_input[22]), .B1(n119), 
        .Y(n240) );
  NOR4X1 U223 ( .A(n244), .B(n245), .C(n246), .D(n247), .Y(n238) );
  AO22X1 U224 ( .A0(str_input[190]), .A1(n123), .B0(str_input[254]), .B1(n122), 
        .Y(n247) );
  AO22X1 U225 ( .A0(str_input[126]), .A1(n121), .B0(str_input[62]), .B1(n120), 
        .Y(n246) );
  AO22X1 U226 ( .A0(str_input[158]), .A1(n116), .B0(str_input[222]), .B1(n115), 
        .Y(n245) );
  AO22X1 U227 ( .A0(str_input[94]), .A1(n118), .B0(str_input[30]), .B1(n119), 
        .Y(n244) );
  NAND4X1 U228 ( .A(n248), .B(n249), .C(n250), .D(n251), .Y(n231) );
  AOI22X1 U229 ( .A0(str_input[14]), .A1(n119), .B0(str_input[78]), .B1(n118), 
        .Y(n251) );
  AOI22X1 U230 ( .A0(str_input[206]), .A1(n115), .B0(str_input[142]), .B1(n116), .Y(n250) );
  AOI22X1 U231 ( .A0(str_input[46]), .A1(n120), .B0(str_input[110]), .B1(n121), 
        .Y(n249) );
  AOI22X1 U232 ( .A0(str_input[238]), .A1(n122), .B0(str_input[174]), .B1(n123), .Y(n248) );
  AOI211X1 U233 ( .A0(pat_input[30]), .A1(n20), .B0(n252), .C0(n253), .Y(n229)
         );
  OAI2BB2XL U234 ( .B0(pat_pro_idx[0]), .B1(n254), .A0N(pat_input[6]), .A1N(
        n65), .Y(n253) );
  AOI222XL U235 ( .A0(pat_input[38]), .A1(n22), .B0(pat_input[22]), .B1(n23), 
        .C0(pat_input[54]), .C1(n24), .Y(n254) );
  CLKINVX1 U236 ( .A(n255), .Y(n252) );
  AOI222XL U237 ( .A0(pat_input[62]), .A1(n25), .B0(pat_input[14]), .B1(n16), 
        .C0(pat_input[46]), .C1(n28), .Y(n255) );
  XOR2X1 U238 ( .A(n256), .B(n257), .Y(n227) );
  AOI211X1 U239 ( .A0(n107), .A1(n258), .B0(n259), .C0(n260), .Y(n257) );
  AOI31X1 U240 ( .A0(n261), .A1(n262), .A2(n263), .B0(n114), .Y(n260) );
  AOI221XL U241 ( .A0(str_input[197]), .A1(n115), .B0(str_input[133]), .B1(
        n116), .C0(n264), .Y(n263) );
  AO22X1 U242 ( .A0(str_input[69]), .A1(n118), .B0(str_input[5]), .B1(n119), 
        .Y(n264) );
  AOI22X1 U243 ( .A0(str_input[37]), .A1(n120), .B0(str_input[101]), .B1(n121), 
        .Y(n262) );
  AOI22X1 U244 ( .A0(str_input[229]), .A1(n122), .B0(str_input[165]), .B1(n123), .Y(n261) );
  OAI22XL U245 ( .A0(n265), .A1(n125), .B0(n266), .B1(n127), .Y(n259) );
  NOR4X1 U246 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(n266) );
  AO22X1 U247 ( .A0(str_input[181]), .A1(n123), .B0(str_input[245]), .B1(n122), 
        .Y(n270) );
  AO22X1 U248 ( .A0(str_input[117]), .A1(n121), .B0(str_input[53]), .B1(n120), 
        .Y(n269) );
  AO22X1 U249 ( .A0(str_input[149]), .A1(n116), .B0(str_input[213]), .B1(n115), 
        .Y(n268) );
  AO22X1 U250 ( .A0(str_input[85]), .A1(n118), .B0(str_input[21]), .B1(n119), 
        .Y(n267) );
  NOR4X1 U251 ( .A(n271), .B(n272), .C(n273), .D(n274), .Y(n265) );
  AO22X1 U252 ( .A0(str_input[189]), .A1(n123), .B0(str_input[253]), .B1(n122), 
        .Y(n274) );
  AO22X1 U253 ( .A0(str_input[125]), .A1(n121), .B0(str_input[61]), .B1(n120), 
        .Y(n273) );
  AO22X1 U254 ( .A0(str_input[157]), .A1(n116), .B0(str_input[221]), .B1(n115), 
        .Y(n272) );
  AO22X1 U255 ( .A0(str_input[93]), .A1(n118), .B0(str_input[29]), .B1(n119), 
        .Y(n271) );
  NAND4X1 U256 ( .A(n275), .B(n276), .C(n277), .D(n278), .Y(n258) );
  AOI22X1 U257 ( .A0(str_input[13]), .A1(n119), .B0(str_input[77]), .B1(n118), 
        .Y(n278) );
  AOI22X1 U258 ( .A0(str_input[205]), .A1(n115), .B0(str_input[141]), .B1(n116), .Y(n277) );
  AOI22X1 U259 ( .A0(str_input[45]), .A1(n120), .B0(str_input[109]), .B1(n121), 
        .Y(n276) );
  AOI22X1 U260 ( .A0(str_input[237]), .A1(n122), .B0(str_input[173]), .B1(n123), .Y(n275) );
  AOI211X1 U261 ( .A0(pat_input[29]), .A1(n20), .B0(n279), .C0(n280), .Y(n256)
         );
  OAI2BB2XL U262 ( .B0(pat_pro_idx[0]), .B1(n281), .A0N(pat_input[5]), .A1N(
        n65), .Y(n280) );
  AOI222XL U263 ( .A0(pat_input[37]), .A1(n22), .B0(pat_input[21]), .B1(n23), 
        .C0(pat_input[53]), .C1(n24), .Y(n281) );
  CLKINVX1 U264 ( .A(n282), .Y(n279) );
  AOI222XL U265 ( .A0(pat_input[61]), .A1(n25), .B0(pat_input[13]), .B1(n16), 
        .C0(pat_input[45]), .C1(n28), .Y(n282) );
  XOR2X1 U266 ( .A(n283), .B(n284), .Y(n226) );
  AOI211X1 U267 ( .A0(n107), .A1(n285), .B0(n286), .C0(n287), .Y(n284) );
  AOI31X1 U268 ( .A0(n288), .A1(n289), .A2(n290), .B0(n114), .Y(n287) );
  AOI221XL U269 ( .A0(str_input[196]), .A1(n115), .B0(str_input[132]), .B1(
        n116), .C0(n291), .Y(n290) );
  AO22X1 U270 ( .A0(str_input[68]), .A1(n118), .B0(str_input[4]), .B1(n119), 
        .Y(n291) );
  AOI22X1 U271 ( .A0(str_input[36]), .A1(n120), .B0(str_input[100]), .B1(n121), 
        .Y(n289) );
  AOI22X1 U272 ( .A0(str_input[228]), .A1(n122), .B0(str_input[164]), .B1(n123), .Y(n288) );
  OAI22XL U273 ( .A0(n292), .A1(n125), .B0(n293), .B1(n127), .Y(n286) );
  NOR4X1 U274 ( .A(n294), .B(n295), .C(n296), .D(n297), .Y(n293) );
  AO22X1 U275 ( .A0(str_input[180]), .A1(n123), .B0(str_input[244]), .B1(n122), 
        .Y(n297) );
  AO22X1 U276 ( .A0(str_input[116]), .A1(n121), .B0(str_input[52]), .B1(n120), 
        .Y(n296) );
  AO22X1 U277 ( .A0(str_input[148]), .A1(n116), .B0(str_input[212]), .B1(n115), 
        .Y(n295) );
  AO22X1 U278 ( .A0(str_input[84]), .A1(n118), .B0(str_input[20]), .B1(n119), 
        .Y(n294) );
  NOR4X1 U279 ( .A(n298), .B(n299), .C(n300), .D(n301), .Y(n292) );
  AO22X1 U280 ( .A0(str_input[188]), .A1(n123), .B0(str_input[252]), .B1(n122), 
        .Y(n301) );
  AO22X1 U281 ( .A0(str_input[124]), .A1(n121), .B0(str_input[60]), .B1(n120), 
        .Y(n300) );
  AO22X1 U282 ( .A0(str_input[156]), .A1(n116), .B0(str_input[220]), .B1(n115), 
        .Y(n299) );
  AO22X1 U283 ( .A0(str_input[92]), .A1(n118), .B0(str_input[28]), .B1(n119), 
        .Y(n298) );
  NAND4X1 U284 ( .A(n302), .B(n303), .C(n320), .D(n321), .Y(n285) );
  AOI22X1 U285 ( .A0(str_input[12]), .A1(n119), .B0(str_input[76]), .B1(n118), 
        .Y(n321) );
  AOI22X1 U286 ( .A0(str_input[204]), .A1(n115), .B0(str_input[140]), .B1(n116), .Y(n320) );
  AOI22X1 U287 ( .A0(str_input[44]), .A1(n120), .B0(str_input[108]), .B1(n121), 
        .Y(n303) );
  AOI22X1 U288 ( .A0(str_input[236]), .A1(n122), .B0(str_input[172]), .B1(n123), .Y(n302) );
  AOI211X1 U289 ( .A0(pat_input[28]), .A1(n20), .B0(n322), .C0(n323), .Y(n283)
         );
  OAI2BB2XL U290 ( .B0(pat_pro_idx[0]), .B1(n324), .A0N(pat_input[4]), .A1N(
        n65), .Y(n323) );
  AOI222XL U291 ( .A0(pat_input[36]), .A1(n22), .B0(pat_input[20]), .B1(n23), 
        .C0(pat_input[52]), .C1(n24), .Y(n324) );
  CLKINVX1 U292 ( .A(n325), .Y(n322) );
  AOI222XL U293 ( .A0(pat_input[60]), .A1(n25), .B0(pat_input[12]), .B1(n16), 
        .C0(pat_input[44]), .C1(n28), .Y(n325) );
  XOR2X1 U294 ( .A(n326), .B(n327), .Y(n225) );
  AOI211X1 U295 ( .A0(n107), .A1(n328), .B0(n329), .C0(n330), .Y(n327) );
  AOI31X1 U296 ( .A0(n331), .A1(n332), .A2(n333), .B0(n114), .Y(n330) );
  NAND2X1 U297 ( .A(n51), .B(n60), .Y(n114) );
  CLKINVX1 U298 ( .A(str_pro_idx[1]), .Y(n60) );
  AOI221XL U299 ( .A0(str_input[195]), .A1(n115), .B0(str_input[131]), .B1(
        n116), .C0(n334), .Y(n333) );
  AO22X1 U300 ( .A0(str_input[67]), .A1(n118), .B0(str_input[3]), .B1(n119), 
        .Y(n334) );
  AOI22X1 U301 ( .A0(str_input[35]), .A1(n120), .B0(str_input[99]), .B1(n121), 
        .Y(n332) );
  AOI22X1 U302 ( .A0(str_input[227]), .A1(n122), .B0(str_input[163]), .B1(n123), .Y(n331) );
  OAI22XL U303 ( .A0(n335), .A1(n125), .B0(n336), .B1(n127), .Y(n329) );
  NAND2X1 U304 ( .A(str_pro_idx[1]), .B(n51), .Y(n127) );
  NOR4X1 U305 ( .A(n337), .B(n338), .C(n339), .D(n340), .Y(n336) );
  AO22X1 U306 ( .A0(str_input[179]), .A1(n123), .B0(str_input[243]), .B1(n122), 
        .Y(n340) );
  AO22X1 U307 ( .A0(str_input[115]), .A1(n121), .B0(str_input[51]), .B1(n120), 
        .Y(n339) );
  AO22X1 U308 ( .A0(str_input[147]), .A1(n116), .B0(str_input[211]), .B1(n115), 
        .Y(n338) );
  AO22X1 U309 ( .A0(str_input[83]), .A1(n118), .B0(str_input[19]), .B1(n119), 
        .Y(n337) );
  NAND2X1 U310 ( .A(str_pro_idx[1]), .B(str_pro_idx[0]), .Y(n125) );
  NOR4X1 U311 ( .A(n341), .B(n342), .C(n343), .D(n344), .Y(n335) );
  AO22X1 U312 ( .A0(str_input[187]), .A1(n123), .B0(str_input[251]), .B1(n122), 
        .Y(n344) );
  AO22X1 U313 ( .A0(str_input[123]), .A1(n121), .B0(str_input[59]), .B1(n120), 
        .Y(n343) );
  AO22X1 U314 ( .A0(str_input[155]), .A1(n116), .B0(str_input[219]), .B1(n115), 
        .Y(n342) );
  AO22X1 U315 ( .A0(str_input[91]), .A1(n118), .B0(str_input[27]), .B1(n119), 
        .Y(n341) );
  NAND4X1 U316 ( .A(n345), .B(n346), .C(n347), .D(n348), .Y(n328) );
  AOI22X1 U317 ( .A0(str_input[11]), .A1(n119), .B0(str_input[75]), .B1(n118), 
        .Y(n348) );
  NOR3X1 U318 ( .A(str_pro_idx[3]), .B(str_pro_idx[4]), .C(str_pro_idx[2]), 
        .Y(n119) );
  AOI22X1 U319 ( .A0(str_input[203]), .A1(n115), .B0(str_input[139]), .B1(n116), .Y(n347) );
  AOI22X1 U320 ( .A0(str_input[43]), .A1(n120), .B0(str_input[107]), .B1(n121), 
        .Y(n346) );
  AOI22X1 U321 ( .A0(str_input[235]), .A1(n122), .B0(str_input[171]), .B1(n123), .Y(n345) );
  CLKINVX1 U322 ( .A(str_pro_idx[2]), .Y(n57) );
  CLKINVX1 U323 ( .A(str_pro_idx[3]), .Y(n54) );
  CLKINVX1 U324 ( .A(str_pro_idx[4]), .Y(n31) );
  NOR2X1 U325 ( .A(n51), .B(str_pro_idx[1]), .Y(n107) );
  CLKINVX1 U326 ( .A(str_pro_idx[0]), .Y(n51) );
  AOI211X1 U327 ( .A0(pat_input[27]), .A1(n20), .B0(n349), .C0(n350), .Y(n326)
         );
  OAI2BB2XL U328 ( .B0(pat_pro_idx[0]), .B1(n351), .A0N(pat_input[3]), .A1N(
        n65), .Y(n350) );
  NOR3X1 U329 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(pat_pro_idx[0]), 
        .Y(n65) );
  AOI222XL U330 ( .A0(pat_input[35]), .A1(n22), .B0(pat_input[19]), .B1(n23), 
        .C0(pat_input[51]), .C1(n24), .Y(n351) );
  CLKINVX1 U331 ( .A(n352), .Y(n349) );
  AOI222XL U332 ( .A0(pat_input[59]), .A1(n25), .B0(pat_input[11]), .B1(n16), 
        .C0(pat_input[43]), .C1(n28), .Y(n352) );
  AND2X1 U333 ( .A(n22), .B(pat_pro_idx[0]), .Y(n28) );
  NOR2X1 U334 ( .A(n41), .B(pat_pro_idx[1]), .Y(n22) );
  NOR3X1 U335 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n13), .Y(n16) );
  CLKINVX1 U336 ( .A(pat_pro_idx[0]), .Y(n13) );
  AND2X1 U337 ( .A(n24), .B(pat_pro_idx[0]), .Y(n25) );
  NOR2X1 U338 ( .A(n41), .B(n9), .Y(n24) );
  CLKINVX1 U339 ( .A(pat_pro_idx[2]), .Y(n41) );
  AND2X1 U340 ( .A(n23), .B(pat_pro_idx[0]), .Y(n20) );
  NOR2X1 U341 ( .A(n9), .B(pat_pro_idx[2]), .Y(n23) );
  CLKINVX1 U342 ( .A(pat_pro_idx[1]), .Y(n9) );
  XNOR2X1 U343 ( .A(pat_last_idx[0]), .B(pat_pro_idx[0]), .Y(n98) );
  XNOR2X1 U344 ( .A(pat_last_idx[1]), .B(pat_pro_idx[1]), .Y(n97) );
  XNOR2X1 U345 ( .A(pat_last_idx[2]), .B(pat_pro_idx[2]), .Y(n96) );
  OAI21XL U346 ( .A0(n70), .A1(n4), .B0(n68), .Y(N64) );
  NAND2X1 U347 ( .A(input_valid), .B(n353), .Y(n68) );
  CLKINVX1 U348 ( .A(done), .Y(n4) );
  OAI21XL U349 ( .A0(done), .A1(n70), .B0(n71), .Y(N63) );
  NOR2BX1 U350 ( .AN(input_valid), .B(n354), .Y(N62) );
  NOR2X1 U351 ( .A(input_valid), .B(n355), .Y(N61) );
  NAND3X1 U352 ( .A(n70), .B(n71), .C(n355), .Y(N60) );
  NOR2BX1 U353 ( .AN(n354), .B(n353), .Y(n355) );
  NOR4X1 U354 ( .A(n1), .B(n2), .C(\current_st[0] ), .D(n21), .Y(n353) );
  NAND4X1 U355 ( .A(\current_st[0] ), .B(n26), .C(n27), .D(n21), .Y(n354) );
  NAND4X1 U356 ( .A(n26), .B(n21), .C(n356), .D(n2), .Y(n71) );
  NAND4X1 U357 ( .A(n27), .B(n21), .C(n356), .D(n1), .Y(n70) );
  CLKINVX1 U358 ( .A(\current_st[0] ), .Y(n356) );
  NAND2X1 U359 ( .A(n358), .B(n357), .Y(N33) );
  CLKINVX1 U360 ( .A(reset), .Y(n358) );
endmodule


module KMP_pe_3 ( clk, reset, str_input, pat_input, input_valid, start_idx, 
        process_2idx, pat_last_idx, ff_result, output_valid, match, match_idx
 );
  input [255:0] str_input;
  input [63:0] pat_input;
  input [4:0] start_idx;
  input [4:0] process_2idx;
  input [2:0] pat_last_idx;
  input [23:0] ff_result;
  output [4:0] match_idx;
  input clk, reset, input_valid;
  output output_valid, match;
  wire   \current_st[0] , N33, done, N60, N61, N62, N63, N64, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n22, n23, n24, n25, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377;
  wire   [3:0] next_st;
  wire   [4:0] str_pro_idx;
  wire   [2:0] pat_pro_idx;

  DFFTRX1 \current_st_reg[2]  ( .D(next_st[2]), .RN(n358), .CK(clk), .Q(n1), 
        .QN(n376) );
  DFFTRX1 \current_st_reg[1]  ( .D(next_st[1]), .RN(n358), .CK(clk), .Q(n2), 
        .QN(n375) );
  DFFTRX1 \current_st_reg[3]  ( .D(next_st[3]), .RN(n358), .CK(clk), .QN(n377)
         );
  TLATX1 \next_st_reg[0]  ( .G(N60), .D(N61), .QN(n357) );
  DFFQX1 output_valid_reg ( .D(n368), .CK(clk), .Q(output_valid) );
  DFFQX1 \match_idx_reg[0]  ( .D(n374), .CK(clk), .Q(match_idx[0]) );
  DFFQX1 done_reg ( .D(n359), .CK(clk), .Q(done) );
  DFFQX1 \str_pro_idx_reg[0]  ( .D(n364), .CK(clk), .Q(str_pro_idx[0]) );
  DFFQX1 \match_idx_reg[3]  ( .D(n371), .CK(clk), .Q(match_idx[3]) );
  DFFQX1 \match_idx_reg[2]  ( .D(n372), .CK(clk), .Q(match_idx[2]) );
  DFFQX1 \match_idx_reg[4]  ( .D(n370), .CK(clk), .Q(match_idx[4]) );
  DFFQX1 \match_idx_reg[1]  ( .D(n373), .CK(clk), .Q(match_idx[1]) );
  DFFQX1 match_reg ( .D(n369), .CK(clk), .Q(match) );
  DFFQX1 \current_st_reg[0]  ( .D(N33), .CK(clk), .Q(\current_st[0] ) );
  DFFQX1 \pat_pro_idx_reg[2]  ( .D(n363), .CK(clk), .Q(pat_pro_idx[2]) );
  DFFQX1 \str_pro_idx_reg[1]  ( .D(n367), .CK(clk), .Q(str_pro_idx[1]) );
  DFFQX1 \pat_pro_idx_reg[1]  ( .D(n360), .CK(clk), .Q(pat_pro_idx[1]) );
  DFFQX1 \str_pro_idx_reg[2]  ( .D(n366), .CK(clk), .Q(str_pro_idx[2]) );
  DFFQX1 \str_pro_idx_reg[3]  ( .D(n365), .CK(clk), .Q(str_pro_idx[3]) );
  DFFQX1 \str_pro_idx_reg[4]  ( .D(n361), .CK(clk), .Q(str_pro_idx[4]) );
  DFFQX1 \pat_pro_idx_reg[0]  ( .D(n362), .CK(clk), .Q(pat_pro_idx[0]) );
  TLATX1 \next_st_reg[2]  ( .G(N60), .D(N63), .Q(next_st[2]) );
  TLATX1 \next_st_reg[1]  ( .G(N60), .D(N62), .Q(next_st[1]) );
  TLATX1 \next_st_reg[3]  ( .G(N60), .D(N64), .Q(next_st[3]) );
  NOR3X2 U3 ( .A(n54), .B(str_pro_idx[2]), .C(n31), .Y(n115) );
  NOR3X2 U4 ( .A(str_pro_idx[3]), .B(str_pro_idx[4]), .C(n57), .Y(n120) );
  NOR3X2 U5 ( .A(n31), .B(n54), .C(n57), .Y(n122) );
  NOR3X2 U6 ( .A(str_pro_idx[2]), .B(str_pro_idx[3]), .C(n31), .Y(n116) );
  NOR3X2 U7 ( .A(n54), .B(str_pro_idx[4]), .C(n57), .Y(n121) );
  NOR3X2 U8 ( .A(str_pro_idx[2]), .B(str_pro_idx[4]), .C(n54), .Y(n118) );
  NOR3X2 U9 ( .A(n31), .B(str_pro_idx[3]), .C(n57), .Y(n123) );
  OAI221XL U10 ( .A0(n3), .A1(n4), .B0(n5), .B1(n6), .C0(n7), .Y(n359) );
  OAI2BB2XL U11 ( .B0(n8), .B1(n9), .A0N(n10), .A1N(n11), .Y(n360) );
  OAI32X1 U12 ( .A0(n12), .A1(pat_pro_idx[1]), .A2(n13), .B0(n14), .B1(n15), 
        .Y(n11) );
  AOI211X1 U13 ( .A0(ff_result[1]), .A1(n16), .B0(n17), .C0(n18), .Y(n14) );
  OAI2BB2XL U14 ( .B0(pat_pro_idx[0]), .B1(n19), .A0N(ff_result[7]), .A1N(n20), 
        .Y(n18) );
  AOI222XL U15 ( .A0(ff_result[10]), .A1(n22), .B0(ff_result[4]), .B1(n23), 
        .C0(ff_result[16]), .C1(n24), .Y(n19) );
  AO22X1 U16 ( .A0(ff_result[19]), .A1(n25), .B0(ff_result[13]), .B1(n28), .Y(
        n17) );
  OAI221XL U17 ( .A0(n29), .A1(n30), .B0(n31), .B1(n32), .C0(n33), .Y(n361) );
  NAND2X1 U18 ( .A(start_idx[4]), .B(n34), .Y(n33) );
  AO22X1 U19 ( .A0(n35), .A1(pat_pro_idx[0]), .B0(n10), .B1(n36), .Y(n362) );
  OAI22XL U20 ( .A0(pat_pro_idx[0]), .A1(n12), .B0(n37), .B1(n15), .Y(n36) );
  AOI211X1 U21 ( .A0(ff_result[0]), .A1(n16), .B0(n38), .C0(n39), .Y(n37) );
  OAI2BB2XL U22 ( .B0(pat_pro_idx[0]), .B1(n40), .A0N(ff_result[6]), .A1N(n20), 
        .Y(n39) );
  AOI222XL U23 ( .A0(ff_result[9]), .A1(n22), .B0(ff_result[3]), .B1(n23), 
        .C0(ff_result[15]), .C1(n24), .Y(n40) );
  AO22X1 U24 ( .A0(ff_result[18]), .A1(n25), .B0(ff_result[12]), .B1(n28), .Y(
        n38) );
  OAI2BB2XL U25 ( .B0(n8), .B1(n41), .A0N(n10), .A1N(n42), .Y(n363) );
  OAI22XL U26 ( .A0(n43), .A1(n15), .B0(n44), .B1(n12), .Y(n42) );
  NOR2X1 U27 ( .A(n20), .B(n22), .Y(n44) );
  AOI211X1 U28 ( .A0(ff_result[2]), .A1(n16), .B0(n45), .C0(n46), .Y(n43) );
  OAI2BB2XL U29 ( .B0(pat_pro_idx[0]), .B1(n47), .A0N(ff_result[8]), .A1N(n20), 
        .Y(n46) );
  AOI222XL U30 ( .A0(ff_result[11]), .A1(n22), .B0(ff_result[5]), .B1(n23), 
        .C0(ff_result[17]), .C1(n24), .Y(n47) );
  AO22X1 U31 ( .A0(ff_result[20]), .A1(n25), .B0(ff_result[14]), .B1(n28), .Y(
        n45) );
  AOI31X1 U32 ( .A0(n10), .A1(n13), .A2(n48), .B0(n35), .Y(n8) );
  NOR2X1 U33 ( .A(n5), .B(n35), .Y(n10) );
  AOI2BB1X1 U34 ( .A0N(n5), .A1N(n15), .B0(n32), .Y(n35) );
  NAND2X1 U35 ( .A(n6), .B(n12), .Y(n15) );
  CLKINVX1 U36 ( .A(n49), .Y(n5) );
  OAI221XL U37 ( .A0(n30), .A1(n50), .B0(n51), .B1(n32), .C0(n52), .Y(n364) );
  NAND2X1 U38 ( .A(start_idx[0]), .B(n34), .Y(n52) );
  OAI221XL U39 ( .A0(n30), .A1(n53), .B0(n54), .B1(n32), .C0(n55), .Y(n365) );
  NAND2X1 U40 ( .A(start_idx[3]), .B(n34), .Y(n55) );
  OAI221XL U41 ( .A0(n30), .A1(n56), .B0(n57), .B1(n32), .C0(n58), .Y(n366) );
  NAND2X1 U42 ( .A(start_idx[2]), .B(n34), .Y(n58) );
  OAI221XL U43 ( .A0(n30), .A1(n59), .B0(n60), .B1(n32), .C0(n61), .Y(n367) );
  NAND2X1 U44 ( .A(start_idx[1]), .B(n34), .Y(n61) );
  NAND2X1 U45 ( .A(n49), .B(n32), .Y(n30) );
  OAI211X1 U46 ( .A0(n62), .A1(n63), .B0(n64), .C0(n358), .Y(n32) );
  OAI21XL U47 ( .A0(n65), .A1(n48), .B0(n49), .Y(n63) );
  NAND2X1 U48 ( .A(n6), .B(n66), .Y(n62) );
  OAI2BB2XL U49 ( .B0(n67), .B1(n68), .A0N(output_valid), .A1N(n69), .Y(n368)
         );
  OAI21XL U50 ( .A0(reset), .A1(n70), .B0(n64), .Y(n69) );
  CLKINVX1 U51 ( .A(n34), .Y(n64) );
  NOR2X1 U52 ( .A(n71), .B(reset), .Y(n34) );
  OAI2BB1X1 U53 ( .A0N(match), .A1N(n72), .B0(n7), .Y(n369) );
  OAI2BB2XL U54 ( .B0(n29), .B1(n7), .A0N(match_idx[4]), .A1N(n72), .Y(n370)
         );
  XNOR2X1 U55 ( .A(n73), .B(n74), .Y(n29) );
  XNOR2X1 U56 ( .A(str_pro_idx[4]), .B(n66), .Y(n74) );
  OAI21XL U57 ( .A0(n75), .A1(n66), .B0(n76), .Y(n73) );
  OAI2BB1X1 U58 ( .A0N(n66), .A1N(n75), .B0(str_pro_idx[3]), .Y(n76) );
  OAI2BB2XL U59 ( .B0(n53), .B1(n7), .A0N(match_idx[3]), .A1N(n72), .Y(n371)
         );
  XNOR2X1 U60 ( .A(n77), .B(n75), .Y(n53) );
  AOI2BB2X1 U61 ( .B0(n78), .B1(n79), .A0N(n80), .A1N(n57), .Y(n75) );
  NOR2X1 U62 ( .A(n79), .B(n78), .Y(n80) );
  XNOR2X1 U63 ( .A(n66), .B(n54), .Y(n77) );
  OAI2BB2XL U64 ( .B0(n56), .B1(n7), .A0N(match_idx[2]), .A1N(n72), .Y(n372)
         );
  XOR2X1 U65 ( .A(n81), .B(n78), .Y(n56) );
  OAI2BB1X1 U66 ( .A0N(n82), .A1N(n83), .B0(n84), .Y(n78) );
  OAI21XL U67 ( .A0(n83), .A1(n82), .B0(str_pro_idx[1]), .Y(n84) );
  XNOR2X1 U68 ( .A(str_pro_idx[2]), .B(n79), .Y(n81) );
  NOR2X1 U69 ( .A(n66), .B(pat_last_idx[2]), .Y(n79) );
  OAI2BB2XL U70 ( .B0(n59), .B1(n7), .A0N(match_idx[1]), .A1N(n72), .Y(n373)
         );
  XOR2X1 U71 ( .A(n85), .B(n82), .Y(n59) );
  OAI21XL U72 ( .A0(n86), .A1(n66), .B0(n51), .Y(n82) );
  XNOR2X1 U73 ( .A(str_pro_idx[1]), .B(n83), .Y(n85) );
  NOR2X1 U74 ( .A(n66), .B(pat_last_idx[1]), .Y(n83) );
  OAI2BB2XL U75 ( .B0(n50), .B1(n7), .A0N(match_idx[0]), .A1N(n72), .Y(n374)
         );
  NOR3BXL U76 ( .AN(n87), .B(n3), .C(reset), .Y(n72) );
  CLKINVX1 U77 ( .A(n88), .Y(n3) );
  NAND3BX1 U78 ( .AN(n67), .B(n68), .C(n70), .Y(n88) );
  OAI2BB1X1 U79 ( .A0N(n66), .A1N(n6), .B0(n49), .Y(n87) );
  NAND3X1 U80 ( .A(n89), .B(n90), .C(n91), .Y(n6) );
  NOR3X1 U81 ( .A(n92), .B(n93), .C(n94), .Y(n91) );
  XNOR2X1 U82 ( .A(n51), .B(process_2idx[0]), .Y(n94) );
  XNOR2X1 U83 ( .A(n57), .B(process_2idx[2]), .Y(n93) );
  XNOR2X1 U84 ( .A(n60), .B(process_2idx[1]), .Y(n92) );
  XNOR2X1 U85 ( .A(str_pro_idx[3]), .B(process_2idx[3]), .Y(n90) );
  XNOR2X1 U86 ( .A(str_pro_idx[4]), .B(process_2idx[4]), .Y(n89) );
  NAND2BX1 U87 ( .AN(n66), .B(n49), .Y(n7) );
  NOR2X1 U88 ( .A(n70), .B(n67), .Y(n49) );
  NAND2X1 U89 ( .A(n71), .B(n358), .Y(n67) );
  XNOR2X1 U90 ( .A(n95), .B(n86), .Y(n50) );
  NOR2BX1 U91 ( .AN(pat_last_idx[0]), .B(n66), .Y(n86) );
  XNOR2X1 U92 ( .A(n66), .B(n51), .Y(n95) );
  NAND4X1 U93 ( .A(n96), .B(n97), .C(n98), .D(n48), .Y(n66) );
  CLKINVX1 U94 ( .A(n12), .Y(n48) );
  NAND2X1 U95 ( .A(n99), .B(n100), .Y(n12) );
  NOR4X1 U96 ( .A(n101), .B(n102), .C(n103), .D(n104), .Y(n100) );
  XOR2X1 U97 ( .A(n105), .B(n106), .Y(n104) );
  AOI211X1 U98 ( .A0(n107), .A1(n108), .B0(n109), .C0(n110), .Y(n106) );
  AOI31X1 U99 ( .A0(n111), .A1(n112), .A2(n113), .B0(n114), .Y(n110) );
  AOI221XL U100 ( .A0(str_input[194]), .A1(n115), .B0(str_input[130]), .B1(
        n116), .C0(n117), .Y(n113) );
  AO22X1 U101 ( .A0(str_input[66]), .A1(n118), .B0(str_input[2]), .B1(n119), 
        .Y(n117) );
  AOI22X1 U102 ( .A0(str_input[34]), .A1(n120), .B0(str_input[98]), .B1(n121), 
        .Y(n112) );
  AOI22X1 U103 ( .A0(str_input[226]), .A1(n122), .B0(str_input[162]), .B1(n123), .Y(n111) );
  OAI22XL U104 ( .A0(n124), .A1(n125), .B0(n126), .B1(n127), .Y(n109) );
  NOR4X1 U105 ( .A(n128), .B(n129), .C(n130), .D(n131), .Y(n126) );
  AO22X1 U106 ( .A0(str_input[178]), .A1(n123), .B0(str_input[242]), .B1(n122), 
        .Y(n131) );
  AO22X1 U107 ( .A0(str_input[114]), .A1(n121), .B0(str_input[50]), .B1(n120), 
        .Y(n130) );
  AO22X1 U108 ( .A0(str_input[146]), .A1(n116), .B0(str_input[210]), .B1(n115), 
        .Y(n129) );
  AO22X1 U109 ( .A0(str_input[82]), .A1(n118), .B0(str_input[18]), .B1(n119), 
        .Y(n128) );
  NOR4X1 U110 ( .A(n132), .B(n133), .C(n134), .D(n135), .Y(n124) );
  AO22X1 U111 ( .A0(str_input[186]), .A1(n123), .B0(str_input[250]), .B1(n122), 
        .Y(n135) );
  AO22X1 U112 ( .A0(str_input[122]), .A1(n121), .B0(str_input[58]), .B1(n120), 
        .Y(n134) );
  AO22X1 U113 ( .A0(str_input[154]), .A1(n116), .B0(str_input[218]), .B1(n115), 
        .Y(n133) );
  AO22X1 U114 ( .A0(str_input[90]), .A1(n118), .B0(str_input[26]), .B1(n119), 
        .Y(n132) );
  NAND4X1 U115 ( .A(n136), .B(n137), .C(n138), .D(n139), .Y(n108) );
  AOI22X1 U116 ( .A0(str_input[10]), .A1(n119), .B0(str_input[74]), .B1(n118), 
        .Y(n139) );
  AOI22X1 U117 ( .A0(str_input[202]), .A1(n115), .B0(str_input[138]), .B1(n116), .Y(n138) );
  AOI22X1 U118 ( .A0(str_input[42]), .A1(n120), .B0(str_input[106]), .B1(n121), 
        .Y(n137) );
  AOI22X1 U119 ( .A0(str_input[234]), .A1(n122), .B0(str_input[170]), .B1(n123), .Y(n136) );
  AOI211X1 U120 ( .A0(pat_input[26]), .A1(n20), .B0(n140), .C0(n141), .Y(n105)
         );
  OAI2BB2XL U121 ( .B0(pat_pro_idx[0]), .B1(n142), .A0N(pat_input[2]), .A1N(
        n65), .Y(n141) );
  AOI222XL U122 ( .A0(pat_input[34]), .A1(n22), .B0(pat_input[18]), .B1(n23), 
        .C0(pat_input[50]), .C1(n24), .Y(n142) );
  CLKINVX1 U123 ( .A(n143), .Y(n140) );
  AOI222XL U124 ( .A0(pat_input[58]), .A1(n25), .B0(pat_input[10]), .B1(n16), 
        .C0(pat_input[42]), .C1(n28), .Y(n143) );
  XOR2X1 U125 ( .A(n144), .B(n145), .Y(n103) );
  AOI211X1 U126 ( .A0(n107), .A1(n146), .B0(n147), .C0(n148), .Y(n145) );
  AOI31X1 U127 ( .A0(n149), .A1(n150), .A2(n151), .B0(n114), .Y(n148) );
  AOI221XL U128 ( .A0(str_input[199]), .A1(n115), .B0(str_input[135]), .B1(
        n116), .C0(n152), .Y(n151) );
  AO22X1 U129 ( .A0(str_input[71]), .A1(n118), .B0(str_input[7]), .B1(n119), 
        .Y(n152) );
  AOI22X1 U130 ( .A0(str_input[39]), .A1(n120), .B0(str_input[103]), .B1(n121), 
        .Y(n150) );
  AOI22X1 U131 ( .A0(str_input[231]), .A1(n122), .B0(str_input[167]), .B1(n123), .Y(n149) );
  OAI22XL U132 ( .A0(n153), .A1(n125), .B0(n154), .B1(n127), .Y(n147) );
  NOR4X1 U133 ( .A(n155), .B(n156), .C(n157), .D(n158), .Y(n154) );
  AO22X1 U134 ( .A0(str_input[183]), .A1(n123), .B0(str_input[247]), .B1(n122), 
        .Y(n158) );
  AO22X1 U135 ( .A0(str_input[119]), .A1(n121), .B0(str_input[55]), .B1(n120), 
        .Y(n157) );
  AO22X1 U136 ( .A0(str_input[151]), .A1(n116), .B0(str_input[215]), .B1(n115), 
        .Y(n156) );
  AO22X1 U137 ( .A0(str_input[87]), .A1(n118), .B0(str_input[23]), .B1(n119), 
        .Y(n155) );
  NOR4X1 U138 ( .A(n159), .B(n160), .C(n161), .D(n162), .Y(n153) );
  AO22X1 U139 ( .A0(str_input[191]), .A1(n123), .B0(str_input[255]), .B1(n122), 
        .Y(n162) );
  AO22X1 U140 ( .A0(str_input[127]), .A1(n121), .B0(str_input[63]), .B1(n120), 
        .Y(n161) );
  AO22X1 U141 ( .A0(str_input[159]), .A1(n116), .B0(str_input[223]), .B1(n115), 
        .Y(n160) );
  AO22X1 U142 ( .A0(str_input[95]), .A1(n118), .B0(str_input[31]), .B1(n119), 
        .Y(n159) );
  NAND4X1 U143 ( .A(n163), .B(n164), .C(n165), .D(n166), .Y(n146) );
  AOI22X1 U144 ( .A0(str_input[15]), .A1(n119), .B0(str_input[79]), .B1(n118), 
        .Y(n166) );
  AOI22X1 U145 ( .A0(str_input[207]), .A1(n115), .B0(str_input[143]), .B1(n116), .Y(n165) );
  AOI22X1 U146 ( .A0(str_input[47]), .A1(n120), .B0(str_input[111]), .B1(n121), 
        .Y(n164) );
  AOI22X1 U147 ( .A0(str_input[239]), .A1(n122), .B0(str_input[175]), .B1(n123), .Y(n163) );
  AOI211X1 U148 ( .A0(pat_input[31]), .A1(n20), .B0(n167), .C0(n168), .Y(n144)
         );
  OAI2BB2XL U149 ( .B0(pat_pro_idx[0]), .B1(n169), .A0N(pat_input[7]), .A1N(
        n65), .Y(n168) );
  AOI222XL U150 ( .A0(pat_input[39]), .A1(n22), .B0(pat_input[23]), .B1(n23), 
        .C0(pat_input[55]), .C1(n24), .Y(n169) );
  CLKINVX1 U151 ( .A(n170), .Y(n167) );
  AOI222XL U152 ( .A0(pat_input[63]), .A1(n25), .B0(pat_input[15]), .B1(n16), 
        .C0(pat_input[47]), .C1(n28), .Y(n170) );
  XOR2X1 U153 ( .A(n171), .B(n172), .Y(n102) );
  AOI211X1 U154 ( .A0(pat_input[24]), .A1(n20), .B0(n173), .C0(n174), .Y(n172)
         );
  OAI2BB2XL U155 ( .B0(pat_pro_idx[0]), .B1(n175), .A0N(pat_input[0]), .A1N(
        n65), .Y(n174) );
  AOI222XL U156 ( .A0(pat_input[32]), .A1(n22), .B0(pat_input[16]), .B1(n23), 
        .C0(pat_input[48]), .C1(n24), .Y(n175) );
  CLKINVX1 U157 ( .A(n176), .Y(n173) );
  AOI222XL U158 ( .A0(pat_input[56]), .A1(n25), .B0(pat_input[8]), .B1(n16), 
        .C0(pat_input[40]), .C1(n28), .Y(n176) );
  AOI211X1 U159 ( .A0(n107), .A1(n177), .B0(n178), .C0(n179), .Y(n171) );
  AOI31X1 U160 ( .A0(n180), .A1(n181), .A2(n182), .B0(n114), .Y(n179) );
  AOI221XL U161 ( .A0(str_input[192]), .A1(n115), .B0(str_input[128]), .B1(
        n116), .C0(n183), .Y(n182) );
  AO22X1 U162 ( .A0(str_input[64]), .A1(n118), .B0(str_input[0]), .B1(n119), 
        .Y(n183) );
  AOI22X1 U163 ( .A0(str_input[32]), .A1(n120), .B0(str_input[96]), .B1(n121), 
        .Y(n181) );
  AOI22X1 U164 ( .A0(str_input[224]), .A1(n122), .B0(str_input[160]), .B1(n123), .Y(n180) );
  OAI22XL U165 ( .A0(n184), .A1(n125), .B0(n185), .B1(n127), .Y(n178) );
  NOR4X1 U166 ( .A(n186), .B(n187), .C(n188), .D(n189), .Y(n185) );
  AO22X1 U167 ( .A0(str_input[176]), .A1(n123), .B0(str_input[240]), .B1(n122), 
        .Y(n189) );
  AO22X1 U168 ( .A0(str_input[112]), .A1(n121), .B0(str_input[48]), .B1(n120), 
        .Y(n188) );
  AO22X1 U169 ( .A0(str_input[144]), .A1(n116), .B0(str_input[208]), .B1(n115), 
        .Y(n187) );
  AO22X1 U170 ( .A0(str_input[80]), .A1(n118), .B0(str_input[16]), .B1(n119), 
        .Y(n186) );
  NOR4X1 U171 ( .A(n190), .B(n191), .C(n192), .D(n193), .Y(n184) );
  AO22X1 U172 ( .A0(str_input[184]), .A1(n123), .B0(str_input[248]), .B1(n122), 
        .Y(n193) );
  AO22X1 U173 ( .A0(str_input[120]), .A1(n121), .B0(str_input[56]), .B1(n120), 
        .Y(n192) );
  AO22X1 U174 ( .A0(str_input[152]), .A1(n116), .B0(str_input[216]), .B1(n115), 
        .Y(n191) );
  AO22X1 U175 ( .A0(str_input[88]), .A1(n118), .B0(str_input[24]), .B1(n119), 
        .Y(n190) );
  NAND4X1 U176 ( .A(n194), .B(n195), .C(n196), .D(n197), .Y(n177) );
  AOI22X1 U177 ( .A0(str_input[8]), .A1(n119), .B0(str_input[72]), .B1(n118), 
        .Y(n197) );
  AOI22X1 U178 ( .A0(str_input[200]), .A1(n115), .B0(str_input[136]), .B1(n116), .Y(n196) );
  AOI22X1 U179 ( .A0(str_input[40]), .A1(n120), .B0(str_input[104]), .B1(n121), 
        .Y(n195) );
  AOI22X1 U180 ( .A0(str_input[232]), .A1(n122), .B0(str_input[168]), .B1(n123), .Y(n194) );
  XOR2X1 U181 ( .A(n198), .B(n199), .Y(n101) );
  AOI211X1 U182 ( .A0(pat_input[25]), .A1(n20), .B0(n200), .C0(n201), .Y(n199)
         );
  OAI2BB2XL U183 ( .B0(pat_pro_idx[0]), .B1(n202), .A0N(pat_input[1]), .A1N(
        n65), .Y(n201) );
  AOI222XL U184 ( .A0(pat_input[33]), .A1(n22), .B0(pat_input[17]), .B1(n23), 
        .C0(pat_input[49]), .C1(n24), .Y(n202) );
  CLKINVX1 U185 ( .A(n203), .Y(n200) );
  AOI222XL U186 ( .A0(pat_input[57]), .A1(n25), .B0(pat_input[9]), .B1(n16), 
        .C0(pat_input[41]), .C1(n28), .Y(n203) );
  AOI211X1 U187 ( .A0(n107), .A1(n204), .B0(n205), .C0(n206), .Y(n198) );
  AOI31X1 U188 ( .A0(n207), .A1(n208), .A2(n209), .B0(n114), .Y(n206) );
  AOI221XL U189 ( .A0(str_input[193]), .A1(n115), .B0(str_input[129]), .B1(
        n116), .C0(n210), .Y(n209) );
  AO22X1 U190 ( .A0(str_input[65]), .A1(n118), .B0(str_input[1]), .B1(n119), 
        .Y(n210) );
  AOI22X1 U191 ( .A0(str_input[33]), .A1(n120), .B0(str_input[97]), .B1(n121), 
        .Y(n208) );
  AOI22X1 U192 ( .A0(str_input[225]), .A1(n122), .B0(str_input[161]), .B1(n123), .Y(n207) );
  OAI22XL U193 ( .A0(n211), .A1(n125), .B0(n212), .B1(n127), .Y(n205) );
  NOR4X1 U194 ( .A(n213), .B(n214), .C(n215), .D(n216), .Y(n212) );
  AO22X1 U195 ( .A0(str_input[177]), .A1(n123), .B0(str_input[241]), .B1(n122), 
        .Y(n216) );
  AO22X1 U196 ( .A0(str_input[113]), .A1(n121), .B0(str_input[49]), .B1(n120), 
        .Y(n215) );
  AO22X1 U197 ( .A0(str_input[145]), .A1(n116), .B0(str_input[209]), .B1(n115), 
        .Y(n214) );
  AO22X1 U198 ( .A0(str_input[81]), .A1(n118), .B0(str_input[17]), .B1(n119), 
        .Y(n213) );
  NOR4X1 U199 ( .A(n217), .B(n218), .C(n219), .D(n220), .Y(n211) );
  AO22X1 U200 ( .A0(str_input[185]), .A1(n123), .B0(str_input[249]), .B1(n122), 
        .Y(n220) );
  AO22X1 U201 ( .A0(str_input[121]), .A1(n121), .B0(str_input[57]), .B1(n120), 
        .Y(n219) );
  AO22X1 U202 ( .A0(str_input[153]), .A1(n116), .B0(str_input[217]), .B1(n115), 
        .Y(n218) );
  AO22X1 U203 ( .A0(str_input[89]), .A1(n118), .B0(str_input[25]), .B1(n119), 
        .Y(n217) );
  NAND4X1 U204 ( .A(n221), .B(n222), .C(n223), .D(n224), .Y(n204) );
  AOI22X1 U205 ( .A0(str_input[9]), .A1(n119), .B0(str_input[73]), .B1(n118), 
        .Y(n224) );
  AOI22X1 U206 ( .A0(str_input[201]), .A1(n115), .B0(str_input[137]), .B1(n116), .Y(n223) );
  AOI22X1 U207 ( .A0(str_input[41]), .A1(n120), .B0(str_input[105]), .B1(n121), 
        .Y(n222) );
  AOI22X1 U208 ( .A0(str_input[233]), .A1(n122), .B0(str_input[169]), .B1(n123), .Y(n221) );
  NOR4X1 U209 ( .A(n225), .B(n226), .C(n227), .D(n228), .Y(n99) );
  XOR2X1 U210 ( .A(n229), .B(n230), .Y(n228) );
  AOI211X1 U211 ( .A0(n107), .A1(n231), .B0(n232), .C0(n233), .Y(n230) );
  AOI31X1 U212 ( .A0(n234), .A1(n235), .A2(n236), .B0(n114), .Y(n233) );
  AOI221XL U213 ( .A0(str_input[198]), .A1(n115), .B0(str_input[134]), .B1(
        n116), .C0(n237), .Y(n236) );
  AO22X1 U214 ( .A0(str_input[70]), .A1(n118), .B0(str_input[6]), .B1(n119), 
        .Y(n237) );
  AOI22X1 U215 ( .A0(str_input[38]), .A1(n120), .B0(str_input[102]), .B1(n121), 
        .Y(n235) );
  AOI22X1 U216 ( .A0(str_input[230]), .A1(n122), .B0(str_input[166]), .B1(n123), .Y(n234) );
  OAI22XL U217 ( .A0(n238), .A1(n125), .B0(n239), .B1(n127), .Y(n232) );
  NOR4X1 U218 ( .A(n240), .B(n241), .C(n242), .D(n243), .Y(n239) );
  AO22X1 U219 ( .A0(str_input[182]), .A1(n123), .B0(str_input[246]), .B1(n122), 
        .Y(n243) );
  AO22X1 U220 ( .A0(str_input[118]), .A1(n121), .B0(str_input[54]), .B1(n120), 
        .Y(n242) );
  AO22X1 U221 ( .A0(str_input[150]), .A1(n116), .B0(str_input[214]), .B1(n115), 
        .Y(n241) );
  AO22X1 U222 ( .A0(str_input[86]), .A1(n118), .B0(str_input[22]), .B1(n119), 
        .Y(n240) );
  NOR4X1 U223 ( .A(n244), .B(n245), .C(n246), .D(n247), .Y(n238) );
  AO22X1 U224 ( .A0(str_input[190]), .A1(n123), .B0(str_input[254]), .B1(n122), 
        .Y(n247) );
  AO22X1 U225 ( .A0(str_input[126]), .A1(n121), .B0(str_input[62]), .B1(n120), 
        .Y(n246) );
  AO22X1 U226 ( .A0(str_input[158]), .A1(n116), .B0(str_input[222]), .B1(n115), 
        .Y(n245) );
  AO22X1 U227 ( .A0(str_input[94]), .A1(n118), .B0(str_input[30]), .B1(n119), 
        .Y(n244) );
  NAND4X1 U228 ( .A(n248), .B(n249), .C(n250), .D(n251), .Y(n231) );
  AOI22X1 U229 ( .A0(str_input[14]), .A1(n119), .B0(str_input[78]), .B1(n118), 
        .Y(n251) );
  AOI22X1 U230 ( .A0(str_input[206]), .A1(n115), .B0(str_input[142]), .B1(n116), .Y(n250) );
  AOI22X1 U231 ( .A0(str_input[46]), .A1(n120), .B0(str_input[110]), .B1(n121), 
        .Y(n249) );
  AOI22X1 U232 ( .A0(str_input[238]), .A1(n122), .B0(str_input[174]), .B1(n123), .Y(n248) );
  AOI211X1 U233 ( .A0(pat_input[30]), .A1(n20), .B0(n252), .C0(n253), .Y(n229)
         );
  OAI2BB2XL U234 ( .B0(pat_pro_idx[0]), .B1(n254), .A0N(pat_input[6]), .A1N(
        n65), .Y(n253) );
  AOI222XL U235 ( .A0(pat_input[38]), .A1(n22), .B0(pat_input[22]), .B1(n23), 
        .C0(pat_input[54]), .C1(n24), .Y(n254) );
  CLKINVX1 U236 ( .A(n255), .Y(n252) );
  AOI222XL U237 ( .A0(pat_input[62]), .A1(n25), .B0(pat_input[14]), .B1(n16), 
        .C0(pat_input[46]), .C1(n28), .Y(n255) );
  XOR2X1 U238 ( .A(n256), .B(n257), .Y(n227) );
  AOI211X1 U239 ( .A0(n107), .A1(n258), .B0(n259), .C0(n260), .Y(n257) );
  AOI31X1 U240 ( .A0(n261), .A1(n262), .A2(n263), .B0(n114), .Y(n260) );
  AOI221XL U241 ( .A0(str_input[197]), .A1(n115), .B0(str_input[133]), .B1(
        n116), .C0(n264), .Y(n263) );
  AO22X1 U242 ( .A0(str_input[69]), .A1(n118), .B0(str_input[5]), .B1(n119), 
        .Y(n264) );
  AOI22X1 U243 ( .A0(str_input[37]), .A1(n120), .B0(str_input[101]), .B1(n121), 
        .Y(n262) );
  AOI22X1 U244 ( .A0(str_input[229]), .A1(n122), .B0(str_input[165]), .B1(n123), .Y(n261) );
  OAI22XL U245 ( .A0(n265), .A1(n125), .B0(n266), .B1(n127), .Y(n259) );
  NOR4X1 U246 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(n266) );
  AO22X1 U247 ( .A0(str_input[181]), .A1(n123), .B0(str_input[245]), .B1(n122), 
        .Y(n270) );
  AO22X1 U248 ( .A0(str_input[117]), .A1(n121), .B0(str_input[53]), .B1(n120), 
        .Y(n269) );
  AO22X1 U249 ( .A0(str_input[149]), .A1(n116), .B0(str_input[213]), .B1(n115), 
        .Y(n268) );
  AO22X1 U250 ( .A0(str_input[85]), .A1(n118), .B0(str_input[21]), .B1(n119), 
        .Y(n267) );
  NOR4X1 U251 ( .A(n271), .B(n272), .C(n273), .D(n274), .Y(n265) );
  AO22X1 U252 ( .A0(str_input[189]), .A1(n123), .B0(str_input[253]), .B1(n122), 
        .Y(n274) );
  AO22X1 U253 ( .A0(str_input[125]), .A1(n121), .B0(str_input[61]), .B1(n120), 
        .Y(n273) );
  AO22X1 U254 ( .A0(str_input[157]), .A1(n116), .B0(str_input[221]), .B1(n115), 
        .Y(n272) );
  AO22X1 U255 ( .A0(str_input[93]), .A1(n118), .B0(str_input[29]), .B1(n119), 
        .Y(n271) );
  NAND4X1 U256 ( .A(n275), .B(n276), .C(n277), .D(n278), .Y(n258) );
  AOI22X1 U257 ( .A0(str_input[13]), .A1(n119), .B0(str_input[77]), .B1(n118), 
        .Y(n278) );
  AOI22X1 U258 ( .A0(str_input[205]), .A1(n115), .B0(str_input[141]), .B1(n116), .Y(n277) );
  AOI22X1 U259 ( .A0(str_input[45]), .A1(n120), .B0(str_input[109]), .B1(n121), 
        .Y(n276) );
  AOI22X1 U260 ( .A0(str_input[237]), .A1(n122), .B0(str_input[173]), .B1(n123), .Y(n275) );
  AOI211X1 U261 ( .A0(pat_input[29]), .A1(n20), .B0(n279), .C0(n280), .Y(n256)
         );
  OAI2BB2XL U262 ( .B0(pat_pro_idx[0]), .B1(n281), .A0N(pat_input[5]), .A1N(
        n65), .Y(n280) );
  AOI222XL U263 ( .A0(pat_input[37]), .A1(n22), .B0(pat_input[21]), .B1(n23), 
        .C0(pat_input[53]), .C1(n24), .Y(n281) );
  CLKINVX1 U264 ( .A(n282), .Y(n279) );
  AOI222XL U265 ( .A0(pat_input[61]), .A1(n25), .B0(pat_input[13]), .B1(n16), 
        .C0(pat_input[45]), .C1(n28), .Y(n282) );
  XOR2X1 U266 ( .A(n283), .B(n284), .Y(n226) );
  AOI211X1 U267 ( .A0(n107), .A1(n285), .B0(n286), .C0(n287), .Y(n284) );
  AOI31X1 U268 ( .A0(n288), .A1(n289), .A2(n290), .B0(n114), .Y(n287) );
  AOI221XL U269 ( .A0(str_input[196]), .A1(n115), .B0(str_input[132]), .B1(
        n116), .C0(n291), .Y(n290) );
  AO22X1 U270 ( .A0(str_input[68]), .A1(n118), .B0(str_input[4]), .B1(n119), 
        .Y(n291) );
  AOI22X1 U271 ( .A0(str_input[36]), .A1(n120), .B0(str_input[100]), .B1(n121), 
        .Y(n289) );
  AOI22X1 U272 ( .A0(str_input[228]), .A1(n122), .B0(str_input[164]), .B1(n123), .Y(n288) );
  OAI22XL U273 ( .A0(n292), .A1(n125), .B0(n293), .B1(n127), .Y(n286) );
  NOR4X1 U274 ( .A(n294), .B(n295), .C(n296), .D(n297), .Y(n293) );
  AO22X1 U275 ( .A0(str_input[180]), .A1(n123), .B0(str_input[244]), .B1(n122), 
        .Y(n297) );
  AO22X1 U276 ( .A0(str_input[116]), .A1(n121), .B0(str_input[52]), .B1(n120), 
        .Y(n296) );
  AO22X1 U277 ( .A0(str_input[148]), .A1(n116), .B0(str_input[212]), .B1(n115), 
        .Y(n295) );
  AO22X1 U278 ( .A0(str_input[84]), .A1(n118), .B0(str_input[20]), .B1(n119), 
        .Y(n294) );
  NOR4X1 U279 ( .A(n298), .B(n299), .C(n300), .D(n301), .Y(n292) );
  AO22X1 U280 ( .A0(str_input[188]), .A1(n123), .B0(str_input[252]), .B1(n122), 
        .Y(n301) );
  AO22X1 U281 ( .A0(str_input[124]), .A1(n121), .B0(str_input[60]), .B1(n120), 
        .Y(n300) );
  AO22X1 U282 ( .A0(str_input[156]), .A1(n116), .B0(str_input[220]), .B1(n115), 
        .Y(n299) );
  AO22X1 U283 ( .A0(str_input[92]), .A1(n118), .B0(str_input[28]), .B1(n119), 
        .Y(n298) );
  NAND4X1 U284 ( .A(n302), .B(n303), .C(n320), .D(n321), .Y(n285) );
  AOI22X1 U285 ( .A0(str_input[12]), .A1(n119), .B0(str_input[76]), .B1(n118), 
        .Y(n321) );
  AOI22X1 U286 ( .A0(str_input[204]), .A1(n115), .B0(str_input[140]), .B1(n116), .Y(n320) );
  AOI22X1 U287 ( .A0(str_input[44]), .A1(n120), .B0(str_input[108]), .B1(n121), 
        .Y(n303) );
  AOI22X1 U288 ( .A0(str_input[236]), .A1(n122), .B0(str_input[172]), .B1(n123), .Y(n302) );
  AOI211X1 U289 ( .A0(pat_input[28]), .A1(n20), .B0(n322), .C0(n323), .Y(n283)
         );
  OAI2BB2XL U290 ( .B0(pat_pro_idx[0]), .B1(n324), .A0N(pat_input[4]), .A1N(
        n65), .Y(n323) );
  AOI222XL U291 ( .A0(pat_input[36]), .A1(n22), .B0(pat_input[20]), .B1(n23), 
        .C0(pat_input[52]), .C1(n24), .Y(n324) );
  CLKINVX1 U292 ( .A(n325), .Y(n322) );
  AOI222XL U293 ( .A0(pat_input[60]), .A1(n25), .B0(pat_input[12]), .B1(n16), 
        .C0(pat_input[44]), .C1(n28), .Y(n325) );
  XOR2X1 U294 ( .A(n326), .B(n327), .Y(n225) );
  AOI211X1 U295 ( .A0(n107), .A1(n328), .B0(n329), .C0(n330), .Y(n327) );
  AOI31X1 U296 ( .A0(n331), .A1(n332), .A2(n333), .B0(n114), .Y(n330) );
  NAND2X1 U297 ( .A(n51), .B(n60), .Y(n114) );
  CLKINVX1 U298 ( .A(str_pro_idx[1]), .Y(n60) );
  AOI221XL U299 ( .A0(str_input[195]), .A1(n115), .B0(str_input[131]), .B1(
        n116), .C0(n334), .Y(n333) );
  AO22X1 U300 ( .A0(str_input[67]), .A1(n118), .B0(str_input[3]), .B1(n119), 
        .Y(n334) );
  AOI22X1 U301 ( .A0(str_input[35]), .A1(n120), .B0(str_input[99]), .B1(n121), 
        .Y(n332) );
  AOI22X1 U302 ( .A0(str_input[227]), .A1(n122), .B0(str_input[163]), .B1(n123), .Y(n331) );
  OAI22XL U303 ( .A0(n335), .A1(n125), .B0(n336), .B1(n127), .Y(n329) );
  NAND2X1 U304 ( .A(str_pro_idx[1]), .B(n51), .Y(n127) );
  NOR4X1 U305 ( .A(n337), .B(n338), .C(n339), .D(n340), .Y(n336) );
  AO22X1 U306 ( .A0(str_input[179]), .A1(n123), .B0(str_input[243]), .B1(n122), 
        .Y(n340) );
  AO22X1 U307 ( .A0(str_input[115]), .A1(n121), .B0(str_input[51]), .B1(n120), 
        .Y(n339) );
  AO22X1 U308 ( .A0(str_input[147]), .A1(n116), .B0(str_input[211]), .B1(n115), 
        .Y(n338) );
  AO22X1 U309 ( .A0(str_input[83]), .A1(n118), .B0(str_input[19]), .B1(n119), 
        .Y(n337) );
  NAND2X1 U310 ( .A(str_pro_idx[1]), .B(str_pro_idx[0]), .Y(n125) );
  NOR4X1 U311 ( .A(n341), .B(n342), .C(n343), .D(n344), .Y(n335) );
  AO22X1 U312 ( .A0(str_input[187]), .A1(n123), .B0(str_input[251]), .B1(n122), 
        .Y(n344) );
  AO22X1 U313 ( .A0(str_input[123]), .A1(n121), .B0(str_input[59]), .B1(n120), 
        .Y(n343) );
  AO22X1 U314 ( .A0(str_input[155]), .A1(n116), .B0(str_input[219]), .B1(n115), 
        .Y(n342) );
  AO22X1 U315 ( .A0(str_input[91]), .A1(n118), .B0(str_input[27]), .B1(n119), 
        .Y(n341) );
  NAND4X1 U316 ( .A(n345), .B(n346), .C(n347), .D(n348), .Y(n328) );
  AOI22X1 U317 ( .A0(str_input[11]), .A1(n119), .B0(str_input[75]), .B1(n118), 
        .Y(n348) );
  NOR3X1 U318 ( .A(str_pro_idx[3]), .B(str_pro_idx[4]), .C(str_pro_idx[2]), 
        .Y(n119) );
  AOI22X1 U319 ( .A0(str_input[203]), .A1(n115), .B0(str_input[139]), .B1(n116), .Y(n347) );
  AOI22X1 U320 ( .A0(str_input[43]), .A1(n120), .B0(str_input[107]), .B1(n121), 
        .Y(n346) );
  AOI22X1 U321 ( .A0(str_input[235]), .A1(n122), .B0(str_input[171]), .B1(n123), .Y(n345) );
  CLKINVX1 U322 ( .A(str_pro_idx[2]), .Y(n57) );
  CLKINVX1 U323 ( .A(str_pro_idx[3]), .Y(n54) );
  CLKINVX1 U324 ( .A(str_pro_idx[4]), .Y(n31) );
  NOR2X1 U325 ( .A(n51), .B(str_pro_idx[1]), .Y(n107) );
  CLKINVX1 U326 ( .A(str_pro_idx[0]), .Y(n51) );
  AOI211X1 U327 ( .A0(pat_input[27]), .A1(n20), .B0(n349), .C0(n350), .Y(n326)
         );
  OAI2BB2XL U328 ( .B0(pat_pro_idx[0]), .B1(n351), .A0N(pat_input[3]), .A1N(
        n65), .Y(n350) );
  NOR3X1 U329 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(pat_pro_idx[0]), 
        .Y(n65) );
  AOI222XL U330 ( .A0(pat_input[35]), .A1(n22), .B0(pat_input[19]), .B1(n23), 
        .C0(pat_input[51]), .C1(n24), .Y(n351) );
  CLKINVX1 U331 ( .A(n352), .Y(n349) );
  AOI222XL U332 ( .A0(pat_input[59]), .A1(n25), .B0(pat_input[11]), .B1(n16), 
        .C0(pat_input[43]), .C1(n28), .Y(n352) );
  AND2X1 U333 ( .A(n22), .B(pat_pro_idx[0]), .Y(n28) );
  NOR2X1 U334 ( .A(n41), .B(pat_pro_idx[1]), .Y(n22) );
  NOR3X1 U335 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n13), .Y(n16) );
  CLKINVX1 U336 ( .A(pat_pro_idx[0]), .Y(n13) );
  AND2X1 U337 ( .A(n24), .B(pat_pro_idx[0]), .Y(n25) );
  NOR2X1 U338 ( .A(n41), .B(n9), .Y(n24) );
  CLKINVX1 U339 ( .A(pat_pro_idx[2]), .Y(n41) );
  AND2X1 U340 ( .A(n23), .B(pat_pro_idx[0]), .Y(n20) );
  NOR2X1 U341 ( .A(n9), .B(pat_pro_idx[2]), .Y(n23) );
  CLKINVX1 U342 ( .A(pat_pro_idx[1]), .Y(n9) );
  XNOR2X1 U343 ( .A(pat_last_idx[0]), .B(pat_pro_idx[0]), .Y(n98) );
  XNOR2X1 U344 ( .A(pat_last_idx[1]), .B(pat_pro_idx[1]), .Y(n97) );
  XNOR2X1 U345 ( .A(pat_last_idx[2]), .B(pat_pro_idx[2]), .Y(n96) );
  OAI21XL U346 ( .A0(n70), .A1(n4), .B0(n68), .Y(N64) );
  NAND2X1 U347 ( .A(input_valid), .B(n353), .Y(n68) );
  CLKINVX1 U348 ( .A(done), .Y(n4) );
  OAI21XL U349 ( .A0(done), .A1(n70), .B0(n71), .Y(N63) );
  NOR2BX1 U350 ( .AN(input_valid), .B(n354), .Y(N62) );
  NOR2X1 U351 ( .A(input_valid), .B(n355), .Y(N61) );
  NAND3X1 U352 ( .A(n70), .B(n71), .C(n355), .Y(N60) );
  NOR2BX1 U353 ( .AN(n354), .B(n353), .Y(n355) );
  NOR4X1 U354 ( .A(n1), .B(n2), .C(\current_st[0] ), .D(n377), .Y(n353) );
  NAND4X1 U355 ( .A(\current_st[0] ), .B(n376), .C(n375), .D(n377), .Y(n354)
         );
  NAND4X1 U356 ( .A(n376), .B(n377), .C(n356), .D(n2), .Y(n71) );
  NAND4X1 U357 ( .A(n375), .B(n377), .C(n356), .D(n1), .Y(n70) );
  CLKINVX1 U358 ( .A(\current_st[0] ), .Y(n356) );
  NAND2X1 U359 ( .A(n358), .B(n357), .Y(N33) );
  CLKINVX1 U360 ( .A(reset), .Y(n358) );
endmodule


module KMP_pe_2 ( clk, reset, str_input, pat_input, input_valid, start_idx, 
        process_2idx, pat_last_idx, ff_result, output_valid, match, match_idx
 );
  input [255:0] str_input;
  input [63:0] pat_input;
  input [4:0] start_idx;
  input [4:0] process_2idx;
  input [2:0] pat_last_idx;
  input [23:0] ff_result;
  output [4:0] match_idx;
  input clk, reset, input_valid;
  output output_valid, match;
  wire   \current_st[0] , N33, done, N60, N61, N62, N63, N64, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n22, n23, n24, n25, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377;
  wire   [3:0] next_st;
  wire   [4:0] str_pro_idx;
  wire   [2:0] pat_pro_idx;

  DFFTRX1 \current_st_reg[2]  ( .D(next_st[2]), .RN(n358), .CK(clk), .Q(n1), 
        .QN(n376) );
  DFFTRX1 \current_st_reg[1]  ( .D(next_st[1]), .RN(n358), .CK(clk), .Q(n2), 
        .QN(n375) );
  DFFTRX1 \current_st_reg[3]  ( .D(next_st[3]), .RN(n358), .CK(clk), .QN(n377)
         );
  TLATX1 \next_st_reg[0]  ( .G(N60), .D(N61), .QN(n357) );
  DFFQX1 output_valid_reg ( .D(n368), .CK(clk), .Q(output_valid) );
  DFFQX1 \match_idx_reg[0]  ( .D(n374), .CK(clk), .Q(match_idx[0]) );
  DFFQX1 done_reg ( .D(n359), .CK(clk), .Q(done) );
  DFFQX1 \match_idx_reg[2]  ( .D(n372), .CK(clk), .Q(match_idx[2]) );
  DFFQX1 \str_pro_idx_reg[0]  ( .D(n364), .CK(clk), .Q(str_pro_idx[0]) );
  DFFQX1 match_reg ( .D(n369), .CK(clk), .Q(match) );
  DFFQX1 \match_idx_reg[4]  ( .D(n370), .CK(clk), .Q(match_idx[4]) );
  DFFQX1 \match_idx_reg[1]  ( .D(n373), .CK(clk), .Q(match_idx[1]) );
  DFFQX1 \match_idx_reg[3]  ( .D(n371), .CK(clk), .Q(match_idx[3]) );
  DFFQX1 \current_st_reg[0]  ( .D(N33), .CK(clk), .Q(\current_st[0] ) );
  DFFQX1 \pat_pro_idx_reg[2]  ( .D(n363), .CK(clk), .Q(pat_pro_idx[2]) );
  DFFQX1 \str_pro_idx_reg[1]  ( .D(n367), .CK(clk), .Q(str_pro_idx[1]) );
  DFFQX1 \pat_pro_idx_reg[1]  ( .D(n360), .CK(clk), .Q(pat_pro_idx[1]) );
  DFFQX1 \str_pro_idx_reg[2]  ( .D(n366), .CK(clk), .Q(str_pro_idx[2]) );
  DFFQX1 \str_pro_idx_reg[3]  ( .D(n365), .CK(clk), .Q(str_pro_idx[3]) );
  DFFQX1 \str_pro_idx_reg[4]  ( .D(n361), .CK(clk), .Q(str_pro_idx[4]) );
  DFFQX1 \pat_pro_idx_reg[0]  ( .D(n362), .CK(clk), .Q(pat_pro_idx[0]) );
  TLATX1 \next_st_reg[2]  ( .G(N60), .D(N63), .Q(next_st[2]) );
  TLATX1 \next_st_reg[1]  ( .G(N60), .D(N62), .Q(next_st[1]) );
  TLATX1 \next_st_reg[3]  ( .G(N60), .D(N64), .Q(next_st[3]) );
  NOR3X2 U3 ( .A(n54), .B(str_pro_idx[2]), .C(n31), .Y(n115) );
  NOR3X2 U4 ( .A(str_pro_idx[3]), .B(str_pro_idx[4]), .C(n57), .Y(n120) );
  NOR3X2 U5 ( .A(n31), .B(n54), .C(n57), .Y(n122) );
  NOR3X2 U6 ( .A(str_pro_idx[2]), .B(str_pro_idx[3]), .C(n31), .Y(n116) );
  NOR3X2 U7 ( .A(n54), .B(str_pro_idx[4]), .C(n57), .Y(n121) );
  NOR3X2 U8 ( .A(str_pro_idx[2]), .B(str_pro_idx[4]), .C(n54), .Y(n118) );
  NOR3X2 U9 ( .A(n31), .B(str_pro_idx[3]), .C(n57), .Y(n123) );
  OAI221XL U10 ( .A0(n3), .A1(n4), .B0(n5), .B1(n6), .C0(n7), .Y(n359) );
  OAI2BB2XL U11 ( .B0(n8), .B1(n9), .A0N(n10), .A1N(n11), .Y(n360) );
  OAI32X1 U12 ( .A0(n12), .A1(pat_pro_idx[1]), .A2(n13), .B0(n14), .B1(n15), 
        .Y(n11) );
  AOI211X1 U13 ( .A0(ff_result[1]), .A1(n16), .B0(n17), .C0(n18), .Y(n14) );
  OAI2BB2XL U14 ( .B0(pat_pro_idx[0]), .B1(n19), .A0N(ff_result[7]), .A1N(n20), 
        .Y(n18) );
  AOI222XL U15 ( .A0(ff_result[10]), .A1(n22), .B0(ff_result[4]), .B1(n23), 
        .C0(ff_result[16]), .C1(n24), .Y(n19) );
  AO22X1 U16 ( .A0(ff_result[19]), .A1(n25), .B0(ff_result[13]), .B1(n28), .Y(
        n17) );
  OAI221XL U17 ( .A0(n29), .A1(n30), .B0(n31), .B1(n32), .C0(n33), .Y(n361) );
  NAND2X1 U18 ( .A(start_idx[4]), .B(n34), .Y(n33) );
  AO22X1 U19 ( .A0(n35), .A1(pat_pro_idx[0]), .B0(n10), .B1(n36), .Y(n362) );
  OAI22XL U20 ( .A0(pat_pro_idx[0]), .A1(n12), .B0(n37), .B1(n15), .Y(n36) );
  AOI211X1 U21 ( .A0(ff_result[0]), .A1(n16), .B0(n38), .C0(n39), .Y(n37) );
  OAI2BB2XL U22 ( .B0(pat_pro_idx[0]), .B1(n40), .A0N(ff_result[6]), .A1N(n20), 
        .Y(n39) );
  AOI222XL U23 ( .A0(ff_result[9]), .A1(n22), .B0(ff_result[3]), .B1(n23), 
        .C0(ff_result[15]), .C1(n24), .Y(n40) );
  AO22X1 U24 ( .A0(ff_result[18]), .A1(n25), .B0(ff_result[12]), .B1(n28), .Y(
        n38) );
  OAI2BB2XL U25 ( .B0(n8), .B1(n41), .A0N(n10), .A1N(n42), .Y(n363) );
  OAI22XL U26 ( .A0(n43), .A1(n15), .B0(n44), .B1(n12), .Y(n42) );
  NOR2X1 U27 ( .A(n20), .B(n22), .Y(n44) );
  AOI211X1 U28 ( .A0(ff_result[2]), .A1(n16), .B0(n45), .C0(n46), .Y(n43) );
  OAI2BB2XL U29 ( .B0(pat_pro_idx[0]), .B1(n47), .A0N(ff_result[8]), .A1N(n20), 
        .Y(n46) );
  AOI222XL U30 ( .A0(ff_result[11]), .A1(n22), .B0(ff_result[5]), .B1(n23), 
        .C0(ff_result[17]), .C1(n24), .Y(n47) );
  AO22X1 U31 ( .A0(ff_result[20]), .A1(n25), .B0(ff_result[14]), .B1(n28), .Y(
        n45) );
  AOI31X1 U32 ( .A0(n10), .A1(n13), .A2(n48), .B0(n35), .Y(n8) );
  NOR2X1 U33 ( .A(n5), .B(n35), .Y(n10) );
  AOI2BB1X1 U34 ( .A0N(n5), .A1N(n15), .B0(n32), .Y(n35) );
  NAND2X1 U35 ( .A(n6), .B(n12), .Y(n15) );
  CLKINVX1 U36 ( .A(n49), .Y(n5) );
  OAI221XL U37 ( .A0(n30), .A1(n50), .B0(n51), .B1(n32), .C0(n52), .Y(n364) );
  NAND2X1 U38 ( .A(start_idx[0]), .B(n34), .Y(n52) );
  OAI221XL U39 ( .A0(n30), .A1(n53), .B0(n54), .B1(n32), .C0(n55), .Y(n365) );
  NAND2X1 U40 ( .A(start_idx[3]), .B(n34), .Y(n55) );
  OAI221XL U41 ( .A0(n30), .A1(n56), .B0(n57), .B1(n32), .C0(n58), .Y(n366) );
  NAND2X1 U42 ( .A(start_idx[2]), .B(n34), .Y(n58) );
  OAI221XL U43 ( .A0(n30), .A1(n59), .B0(n60), .B1(n32), .C0(n61), .Y(n367) );
  NAND2X1 U44 ( .A(start_idx[1]), .B(n34), .Y(n61) );
  NAND2X1 U45 ( .A(n49), .B(n32), .Y(n30) );
  OAI211X1 U46 ( .A0(n62), .A1(n63), .B0(n64), .C0(n358), .Y(n32) );
  OAI21XL U47 ( .A0(n65), .A1(n48), .B0(n49), .Y(n63) );
  NAND2X1 U48 ( .A(n6), .B(n66), .Y(n62) );
  OAI2BB2XL U49 ( .B0(n67), .B1(n68), .A0N(output_valid), .A1N(n69), .Y(n368)
         );
  OAI21XL U50 ( .A0(reset), .A1(n70), .B0(n64), .Y(n69) );
  CLKINVX1 U51 ( .A(n34), .Y(n64) );
  NOR2X1 U52 ( .A(n71), .B(reset), .Y(n34) );
  OAI2BB1X1 U53 ( .A0N(match), .A1N(n72), .B0(n7), .Y(n369) );
  OAI2BB2XL U54 ( .B0(n29), .B1(n7), .A0N(match_idx[4]), .A1N(n72), .Y(n370)
         );
  XNOR2X1 U55 ( .A(n73), .B(n74), .Y(n29) );
  XNOR2X1 U56 ( .A(str_pro_idx[4]), .B(n66), .Y(n74) );
  OAI21XL U57 ( .A0(n75), .A1(n66), .B0(n76), .Y(n73) );
  OAI2BB1X1 U58 ( .A0N(n66), .A1N(n75), .B0(str_pro_idx[3]), .Y(n76) );
  OAI2BB2XL U59 ( .B0(n53), .B1(n7), .A0N(match_idx[3]), .A1N(n72), .Y(n371)
         );
  XNOR2X1 U60 ( .A(n77), .B(n75), .Y(n53) );
  AOI2BB2X1 U61 ( .B0(n78), .B1(n79), .A0N(n80), .A1N(n57), .Y(n75) );
  NOR2X1 U62 ( .A(n79), .B(n78), .Y(n80) );
  XNOR2X1 U63 ( .A(n66), .B(n54), .Y(n77) );
  OAI2BB2XL U64 ( .B0(n56), .B1(n7), .A0N(match_idx[2]), .A1N(n72), .Y(n372)
         );
  XOR2X1 U65 ( .A(n81), .B(n78), .Y(n56) );
  OAI2BB1X1 U66 ( .A0N(n82), .A1N(n83), .B0(n84), .Y(n78) );
  OAI21XL U67 ( .A0(n83), .A1(n82), .B0(str_pro_idx[1]), .Y(n84) );
  XNOR2X1 U68 ( .A(str_pro_idx[2]), .B(n79), .Y(n81) );
  NOR2X1 U69 ( .A(n66), .B(pat_last_idx[2]), .Y(n79) );
  OAI2BB2XL U70 ( .B0(n59), .B1(n7), .A0N(match_idx[1]), .A1N(n72), .Y(n373)
         );
  XOR2X1 U71 ( .A(n85), .B(n82), .Y(n59) );
  OAI21XL U72 ( .A0(n86), .A1(n66), .B0(n51), .Y(n82) );
  XNOR2X1 U73 ( .A(str_pro_idx[1]), .B(n83), .Y(n85) );
  NOR2X1 U74 ( .A(n66), .B(pat_last_idx[1]), .Y(n83) );
  OAI2BB2XL U75 ( .B0(n50), .B1(n7), .A0N(match_idx[0]), .A1N(n72), .Y(n374)
         );
  NOR3BXL U76 ( .AN(n87), .B(n3), .C(reset), .Y(n72) );
  CLKINVX1 U77 ( .A(n88), .Y(n3) );
  NAND3BX1 U78 ( .AN(n67), .B(n68), .C(n70), .Y(n88) );
  OAI2BB1X1 U79 ( .A0N(n66), .A1N(n6), .B0(n49), .Y(n87) );
  NAND3X1 U80 ( .A(n89), .B(n90), .C(n91), .Y(n6) );
  NOR3X1 U81 ( .A(n92), .B(n93), .C(n94), .Y(n91) );
  XNOR2X1 U82 ( .A(n51), .B(process_2idx[0]), .Y(n94) );
  XNOR2X1 U83 ( .A(n57), .B(process_2idx[2]), .Y(n93) );
  XNOR2X1 U84 ( .A(n60), .B(process_2idx[1]), .Y(n92) );
  XNOR2X1 U85 ( .A(str_pro_idx[3]), .B(process_2idx[3]), .Y(n90) );
  XNOR2X1 U86 ( .A(str_pro_idx[4]), .B(process_2idx[4]), .Y(n89) );
  NAND2BX1 U87 ( .AN(n66), .B(n49), .Y(n7) );
  NOR2X1 U88 ( .A(n70), .B(n67), .Y(n49) );
  NAND2X1 U89 ( .A(n71), .B(n358), .Y(n67) );
  XNOR2X1 U90 ( .A(n95), .B(n86), .Y(n50) );
  NOR2BX1 U91 ( .AN(pat_last_idx[0]), .B(n66), .Y(n86) );
  XNOR2X1 U92 ( .A(n66), .B(n51), .Y(n95) );
  NAND4X1 U93 ( .A(n96), .B(n97), .C(n98), .D(n48), .Y(n66) );
  CLKINVX1 U94 ( .A(n12), .Y(n48) );
  NAND2X1 U95 ( .A(n99), .B(n100), .Y(n12) );
  NOR4X1 U96 ( .A(n101), .B(n102), .C(n103), .D(n104), .Y(n100) );
  XOR2X1 U97 ( .A(n105), .B(n106), .Y(n104) );
  AOI211X1 U98 ( .A0(n107), .A1(n108), .B0(n109), .C0(n110), .Y(n106) );
  AOI31X1 U99 ( .A0(n111), .A1(n112), .A2(n113), .B0(n114), .Y(n110) );
  AOI221XL U100 ( .A0(str_input[194]), .A1(n115), .B0(str_input[130]), .B1(
        n116), .C0(n117), .Y(n113) );
  AO22X1 U101 ( .A0(str_input[66]), .A1(n118), .B0(str_input[2]), .B1(n119), 
        .Y(n117) );
  AOI22X1 U102 ( .A0(str_input[34]), .A1(n120), .B0(str_input[98]), .B1(n121), 
        .Y(n112) );
  AOI22X1 U103 ( .A0(str_input[226]), .A1(n122), .B0(str_input[162]), .B1(n123), .Y(n111) );
  OAI22XL U104 ( .A0(n124), .A1(n125), .B0(n126), .B1(n127), .Y(n109) );
  NOR4X1 U105 ( .A(n128), .B(n129), .C(n130), .D(n131), .Y(n126) );
  AO22X1 U106 ( .A0(str_input[178]), .A1(n123), .B0(str_input[242]), .B1(n122), 
        .Y(n131) );
  AO22X1 U107 ( .A0(str_input[114]), .A1(n121), .B0(str_input[50]), .B1(n120), 
        .Y(n130) );
  AO22X1 U108 ( .A0(str_input[146]), .A1(n116), .B0(str_input[210]), .B1(n115), 
        .Y(n129) );
  AO22X1 U109 ( .A0(str_input[82]), .A1(n118), .B0(str_input[18]), .B1(n119), 
        .Y(n128) );
  NOR4X1 U110 ( .A(n132), .B(n133), .C(n134), .D(n135), .Y(n124) );
  AO22X1 U111 ( .A0(str_input[186]), .A1(n123), .B0(str_input[250]), .B1(n122), 
        .Y(n135) );
  AO22X1 U112 ( .A0(str_input[122]), .A1(n121), .B0(str_input[58]), .B1(n120), 
        .Y(n134) );
  AO22X1 U113 ( .A0(str_input[154]), .A1(n116), .B0(str_input[218]), .B1(n115), 
        .Y(n133) );
  AO22X1 U114 ( .A0(str_input[90]), .A1(n118), .B0(str_input[26]), .B1(n119), 
        .Y(n132) );
  NAND4X1 U115 ( .A(n136), .B(n137), .C(n138), .D(n139), .Y(n108) );
  AOI22X1 U116 ( .A0(str_input[10]), .A1(n119), .B0(str_input[74]), .B1(n118), 
        .Y(n139) );
  AOI22X1 U117 ( .A0(str_input[202]), .A1(n115), .B0(str_input[138]), .B1(n116), .Y(n138) );
  AOI22X1 U118 ( .A0(str_input[42]), .A1(n120), .B0(str_input[106]), .B1(n121), 
        .Y(n137) );
  AOI22X1 U119 ( .A0(str_input[234]), .A1(n122), .B0(str_input[170]), .B1(n123), .Y(n136) );
  AOI211X1 U120 ( .A0(pat_input[26]), .A1(n20), .B0(n140), .C0(n141), .Y(n105)
         );
  OAI2BB2XL U121 ( .B0(pat_pro_idx[0]), .B1(n142), .A0N(pat_input[2]), .A1N(
        n65), .Y(n141) );
  AOI222XL U122 ( .A0(pat_input[34]), .A1(n22), .B0(pat_input[18]), .B1(n23), 
        .C0(pat_input[50]), .C1(n24), .Y(n142) );
  CLKINVX1 U123 ( .A(n143), .Y(n140) );
  AOI222XL U124 ( .A0(pat_input[58]), .A1(n25), .B0(pat_input[10]), .B1(n16), 
        .C0(pat_input[42]), .C1(n28), .Y(n143) );
  XOR2X1 U125 ( .A(n144), .B(n145), .Y(n103) );
  AOI211X1 U126 ( .A0(n107), .A1(n146), .B0(n147), .C0(n148), .Y(n145) );
  AOI31X1 U127 ( .A0(n149), .A1(n150), .A2(n151), .B0(n114), .Y(n148) );
  AOI221XL U128 ( .A0(str_input[199]), .A1(n115), .B0(str_input[135]), .B1(
        n116), .C0(n152), .Y(n151) );
  AO22X1 U129 ( .A0(str_input[71]), .A1(n118), .B0(str_input[7]), .B1(n119), 
        .Y(n152) );
  AOI22X1 U130 ( .A0(str_input[39]), .A1(n120), .B0(str_input[103]), .B1(n121), 
        .Y(n150) );
  AOI22X1 U131 ( .A0(str_input[231]), .A1(n122), .B0(str_input[167]), .B1(n123), .Y(n149) );
  OAI22XL U132 ( .A0(n153), .A1(n125), .B0(n154), .B1(n127), .Y(n147) );
  NOR4X1 U133 ( .A(n155), .B(n156), .C(n157), .D(n158), .Y(n154) );
  AO22X1 U134 ( .A0(str_input[183]), .A1(n123), .B0(str_input[247]), .B1(n122), 
        .Y(n158) );
  AO22X1 U135 ( .A0(str_input[119]), .A1(n121), .B0(str_input[55]), .B1(n120), 
        .Y(n157) );
  AO22X1 U136 ( .A0(str_input[151]), .A1(n116), .B0(str_input[215]), .B1(n115), 
        .Y(n156) );
  AO22X1 U137 ( .A0(str_input[87]), .A1(n118), .B0(str_input[23]), .B1(n119), 
        .Y(n155) );
  NOR4X1 U138 ( .A(n159), .B(n160), .C(n161), .D(n162), .Y(n153) );
  AO22X1 U139 ( .A0(str_input[191]), .A1(n123), .B0(str_input[255]), .B1(n122), 
        .Y(n162) );
  AO22X1 U140 ( .A0(str_input[127]), .A1(n121), .B0(str_input[63]), .B1(n120), 
        .Y(n161) );
  AO22X1 U141 ( .A0(str_input[159]), .A1(n116), .B0(str_input[223]), .B1(n115), 
        .Y(n160) );
  AO22X1 U142 ( .A0(str_input[95]), .A1(n118), .B0(str_input[31]), .B1(n119), 
        .Y(n159) );
  NAND4X1 U143 ( .A(n163), .B(n164), .C(n165), .D(n166), .Y(n146) );
  AOI22X1 U144 ( .A0(str_input[15]), .A1(n119), .B0(str_input[79]), .B1(n118), 
        .Y(n166) );
  AOI22X1 U145 ( .A0(str_input[207]), .A1(n115), .B0(str_input[143]), .B1(n116), .Y(n165) );
  AOI22X1 U146 ( .A0(str_input[47]), .A1(n120), .B0(str_input[111]), .B1(n121), 
        .Y(n164) );
  AOI22X1 U147 ( .A0(str_input[239]), .A1(n122), .B0(str_input[175]), .B1(n123), .Y(n163) );
  AOI211X1 U148 ( .A0(pat_input[31]), .A1(n20), .B0(n167), .C0(n168), .Y(n144)
         );
  OAI2BB2XL U149 ( .B0(pat_pro_idx[0]), .B1(n169), .A0N(pat_input[7]), .A1N(
        n65), .Y(n168) );
  AOI222XL U150 ( .A0(pat_input[39]), .A1(n22), .B0(pat_input[23]), .B1(n23), 
        .C0(pat_input[55]), .C1(n24), .Y(n169) );
  CLKINVX1 U151 ( .A(n170), .Y(n167) );
  AOI222XL U152 ( .A0(pat_input[63]), .A1(n25), .B0(pat_input[15]), .B1(n16), 
        .C0(pat_input[47]), .C1(n28), .Y(n170) );
  XOR2X1 U153 ( .A(n171), .B(n172), .Y(n102) );
  AOI211X1 U154 ( .A0(pat_input[24]), .A1(n20), .B0(n173), .C0(n174), .Y(n172)
         );
  OAI2BB2XL U155 ( .B0(pat_pro_idx[0]), .B1(n175), .A0N(pat_input[0]), .A1N(
        n65), .Y(n174) );
  AOI222XL U156 ( .A0(pat_input[32]), .A1(n22), .B0(pat_input[16]), .B1(n23), 
        .C0(pat_input[48]), .C1(n24), .Y(n175) );
  CLKINVX1 U157 ( .A(n176), .Y(n173) );
  AOI222XL U158 ( .A0(pat_input[56]), .A1(n25), .B0(pat_input[8]), .B1(n16), 
        .C0(pat_input[40]), .C1(n28), .Y(n176) );
  AOI211X1 U159 ( .A0(n107), .A1(n177), .B0(n178), .C0(n179), .Y(n171) );
  AOI31X1 U160 ( .A0(n180), .A1(n181), .A2(n182), .B0(n114), .Y(n179) );
  AOI221XL U161 ( .A0(str_input[192]), .A1(n115), .B0(str_input[128]), .B1(
        n116), .C0(n183), .Y(n182) );
  AO22X1 U162 ( .A0(str_input[64]), .A1(n118), .B0(str_input[0]), .B1(n119), 
        .Y(n183) );
  AOI22X1 U163 ( .A0(str_input[32]), .A1(n120), .B0(str_input[96]), .B1(n121), 
        .Y(n181) );
  AOI22X1 U164 ( .A0(str_input[224]), .A1(n122), .B0(str_input[160]), .B1(n123), .Y(n180) );
  OAI22XL U165 ( .A0(n184), .A1(n125), .B0(n185), .B1(n127), .Y(n178) );
  NOR4X1 U166 ( .A(n186), .B(n187), .C(n188), .D(n189), .Y(n185) );
  AO22X1 U167 ( .A0(str_input[176]), .A1(n123), .B0(str_input[240]), .B1(n122), 
        .Y(n189) );
  AO22X1 U168 ( .A0(str_input[112]), .A1(n121), .B0(str_input[48]), .B1(n120), 
        .Y(n188) );
  AO22X1 U169 ( .A0(str_input[144]), .A1(n116), .B0(str_input[208]), .B1(n115), 
        .Y(n187) );
  AO22X1 U170 ( .A0(str_input[80]), .A1(n118), .B0(str_input[16]), .B1(n119), 
        .Y(n186) );
  NOR4X1 U171 ( .A(n190), .B(n191), .C(n192), .D(n193), .Y(n184) );
  AO22X1 U172 ( .A0(str_input[184]), .A1(n123), .B0(str_input[248]), .B1(n122), 
        .Y(n193) );
  AO22X1 U173 ( .A0(str_input[120]), .A1(n121), .B0(str_input[56]), .B1(n120), 
        .Y(n192) );
  AO22X1 U174 ( .A0(str_input[152]), .A1(n116), .B0(str_input[216]), .B1(n115), 
        .Y(n191) );
  AO22X1 U175 ( .A0(str_input[88]), .A1(n118), .B0(str_input[24]), .B1(n119), 
        .Y(n190) );
  NAND4X1 U176 ( .A(n194), .B(n195), .C(n196), .D(n197), .Y(n177) );
  AOI22X1 U177 ( .A0(str_input[8]), .A1(n119), .B0(str_input[72]), .B1(n118), 
        .Y(n197) );
  AOI22X1 U178 ( .A0(str_input[200]), .A1(n115), .B0(str_input[136]), .B1(n116), .Y(n196) );
  AOI22X1 U179 ( .A0(str_input[40]), .A1(n120), .B0(str_input[104]), .B1(n121), 
        .Y(n195) );
  AOI22X1 U180 ( .A0(str_input[232]), .A1(n122), .B0(str_input[168]), .B1(n123), .Y(n194) );
  XOR2X1 U181 ( .A(n198), .B(n199), .Y(n101) );
  AOI211X1 U182 ( .A0(pat_input[25]), .A1(n20), .B0(n200), .C0(n201), .Y(n199)
         );
  OAI2BB2XL U183 ( .B0(pat_pro_idx[0]), .B1(n202), .A0N(pat_input[1]), .A1N(
        n65), .Y(n201) );
  AOI222XL U184 ( .A0(pat_input[33]), .A1(n22), .B0(pat_input[17]), .B1(n23), 
        .C0(pat_input[49]), .C1(n24), .Y(n202) );
  CLKINVX1 U185 ( .A(n203), .Y(n200) );
  AOI222XL U186 ( .A0(pat_input[57]), .A1(n25), .B0(pat_input[9]), .B1(n16), 
        .C0(pat_input[41]), .C1(n28), .Y(n203) );
  AOI211X1 U187 ( .A0(n107), .A1(n204), .B0(n205), .C0(n206), .Y(n198) );
  AOI31X1 U188 ( .A0(n207), .A1(n208), .A2(n209), .B0(n114), .Y(n206) );
  AOI221XL U189 ( .A0(str_input[193]), .A1(n115), .B0(str_input[129]), .B1(
        n116), .C0(n210), .Y(n209) );
  AO22X1 U190 ( .A0(str_input[65]), .A1(n118), .B0(str_input[1]), .B1(n119), 
        .Y(n210) );
  AOI22X1 U191 ( .A0(str_input[33]), .A1(n120), .B0(str_input[97]), .B1(n121), 
        .Y(n208) );
  AOI22X1 U192 ( .A0(str_input[225]), .A1(n122), .B0(str_input[161]), .B1(n123), .Y(n207) );
  OAI22XL U193 ( .A0(n211), .A1(n125), .B0(n212), .B1(n127), .Y(n205) );
  NOR4X1 U194 ( .A(n213), .B(n214), .C(n215), .D(n216), .Y(n212) );
  AO22X1 U195 ( .A0(str_input[177]), .A1(n123), .B0(str_input[241]), .B1(n122), 
        .Y(n216) );
  AO22X1 U196 ( .A0(str_input[113]), .A1(n121), .B0(str_input[49]), .B1(n120), 
        .Y(n215) );
  AO22X1 U197 ( .A0(str_input[145]), .A1(n116), .B0(str_input[209]), .B1(n115), 
        .Y(n214) );
  AO22X1 U198 ( .A0(str_input[81]), .A1(n118), .B0(str_input[17]), .B1(n119), 
        .Y(n213) );
  NOR4X1 U199 ( .A(n217), .B(n218), .C(n219), .D(n220), .Y(n211) );
  AO22X1 U200 ( .A0(str_input[185]), .A1(n123), .B0(str_input[249]), .B1(n122), 
        .Y(n220) );
  AO22X1 U201 ( .A0(str_input[121]), .A1(n121), .B0(str_input[57]), .B1(n120), 
        .Y(n219) );
  AO22X1 U202 ( .A0(str_input[153]), .A1(n116), .B0(str_input[217]), .B1(n115), 
        .Y(n218) );
  AO22X1 U203 ( .A0(str_input[89]), .A1(n118), .B0(str_input[25]), .B1(n119), 
        .Y(n217) );
  NAND4X1 U204 ( .A(n221), .B(n222), .C(n223), .D(n224), .Y(n204) );
  AOI22X1 U205 ( .A0(str_input[9]), .A1(n119), .B0(str_input[73]), .B1(n118), 
        .Y(n224) );
  AOI22X1 U206 ( .A0(str_input[201]), .A1(n115), .B0(str_input[137]), .B1(n116), .Y(n223) );
  AOI22X1 U207 ( .A0(str_input[41]), .A1(n120), .B0(str_input[105]), .B1(n121), 
        .Y(n222) );
  AOI22X1 U208 ( .A0(str_input[233]), .A1(n122), .B0(str_input[169]), .B1(n123), .Y(n221) );
  NOR4X1 U209 ( .A(n225), .B(n226), .C(n227), .D(n228), .Y(n99) );
  XOR2X1 U210 ( .A(n229), .B(n230), .Y(n228) );
  AOI211X1 U211 ( .A0(n107), .A1(n231), .B0(n232), .C0(n233), .Y(n230) );
  AOI31X1 U212 ( .A0(n234), .A1(n235), .A2(n236), .B0(n114), .Y(n233) );
  AOI221XL U213 ( .A0(str_input[198]), .A1(n115), .B0(str_input[134]), .B1(
        n116), .C0(n237), .Y(n236) );
  AO22X1 U214 ( .A0(str_input[70]), .A1(n118), .B0(str_input[6]), .B1(n119), 
        .Y(n237) );
  AOI22X1 U215 ( .A0(str_input[38]), .A1(n120), .B0(str_input[102]), .B1(n121), 
        .Y(n235) );
  AOI22X1 U216 ( .A0(str_input[230]), .A1(n122), .B0(str_input[166]), .B1(n123), .Y(n234) );
  OAI22XL U217 ( .A0(n238), .A1(n125), .B0(n239), .B1(n127), .Y(n232) );
  NOR4X1 U218 ( .A(n240), .B(n241), .C(n242), .D(n243), .Y(n239) );
  AO22X1 U219 ( .A0(str_input[182]), .A1(n123), .B0(str_input[246]), .B1(n122), 
        .Y(n243) );
  AO22X1 U220 ( .A0(str_input[118]), .A1(n121), .B0(str_input[54]), .B1(n120), 
        .Y(n242) );
  AO22X1 U221 ( .A0(str_input[150]), .A1(n116), .B0(str_input[214]), .B1(n115), 
        .Y(n241) );
  AO22X1 U222 ( .A0(str_input[86]), .A1(n118), .B0(str_input[22]), .B1(n119), 
        .Y(n240) );
  NOR4X1 U223 ( .A(n244), .B(n245), .C(n246), .D(n247), .Y(n238) );
  AO22X1 U224 ( .A0(str_input[190]), .A1(n123), .B0(str_input[254]), .B1(n122), 
        .Y(n247) );
  AO22X1 U225 ( .A0(str_input[126]), .A1(n121), .B0(str_input[62]), .B1(n120), 
        .Y(n246) );
  AO22X1 U226 ( .A0(str_input[158]), .A1(n116), .B0(str_input[222]), .B1(n115), 
        .Y(n245) );
  AO22X1 U227 ( .A0(str_input[94]), .A1(n118), .B0(str_input[30]), .B1(n119), 
        .Y(n244) );
  NAND4X1 U228 ( .A(n248), .B(n249), .C(n250), .D(n251), .Y(n231) );
  AOI22X1 U229 ( .A0(str_input[14]), .A1(n119), .B0(str_input[78]), .B1(n118), 
        .Y(n251) );
  AOI22X1 U230 ( .A0(str_input[206]), .A1(n115), .B0(str_input[142]), .B1(n116), .Y(n250) );
  AOI22X1 U231 ( .A0(str_input[46]), .A1(n120), .B0(str_input[110]), .B1(n121), 
        .Y(n249) );
  AOI22X1 U232 ( .A0(str_input[238]), .A1(n122), .B0(str_input[174]), .B1(n123), .Y(n248) );
  AOI211X1 U233 ( .A0(pat_input[30]), .A1(n20), .B0(n252), .C0(n253), .Y(n229)
         );
  OAI2BB2XL U234 ( .B0(pat_pro_idx[0]), .B1(n254), .A0N(pat_input[6]), .A1N(
        n65), .Y(n253) );
  AOI222XL U235 ( .A0(pat_input[38]), .A1(n22), .B0(pat_input[22]), .B1(n23), 
        .C0(pat_input[54]), .C1(n24), .Y(n254) );
  CLKINVX1 U236 ( .A(n255), .Y(n252) );
  AOI222XL U237 ( .A0(pat_input[62]), .A1(n25), .B0(pat_input[14]), .B1(n16), 
        .C0(pat_input[46]), .C1(n28), .Y(n255) );
  XOR2X1 U238 ( .A(n256), .B(n257), .Y(n227) );
  AOI211X1 U239 ( .A0(n107), .A1(n258), .B0(n259), .C0(n260), .Y(n257) );
  AOI31X1 U240 ( .A0(n261), .A1(n262), .A2(n263), .B0(n114), .Y(n260) );
  AOI221XL U241 ( .A0(str_input[197]), .A1(n115), .B0(str_input[133]), .B1(
        n116), .C0(n264), .Y(n263) );
  AO22X1 U242 ( .A0(str_input[69]), .A1(n118), .B0(str_input[5]), .B1(n119), 
        .Y(n264) );
  AOI22X1 U243 ( .A0(str_input[37]), .A1(n120), .B0(str_input[101]), .B1(n121), 
        .Y(n262) );
  AOI22X1 U244 ( .A0(str_input[229]), .A1(n122), .B0(str_input[165]), .B1(n123), .Y(n261) );
  OAI22XL U245 ( .A0(n265), .A1(n125), .B0(n266), .B1(n127), .Y(n259) );
  NOR4X1 U246 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(n266) );
  AO22X1 U247 ( .A0(str_input[181]), .A1(n123), .B0(str_input[245]), .B1(n122), 
        .Y(n270) );
  AO22X1 U248 ( .A0(str_input[117]), .A1(n121), .B0(str_input[53]), .B1(n120), 
        .Y(n269) );
  AO22X1 U249 ( .A0(str_input[149]), .A1(n116), .B0(str_input[213]), .B1(n115), 
        .Y(n268) );
  AO22X1 U250 ( .A0(str_input[85]), .A1(n118), .B0(str_input[21]), .B1(n119), 
        .Y(n267) );
  NOR4X1 U251 ( .A(n271), .B(n272), .C(n273), .D(n274), .Y(n265) );
  AO22X1 U252 ( .A0(str_input[189]), .A1(n123), .B0(str_input[253]), .B1(n122), 
        .Y(n274) );
  AO22X1 U253 ( .A0(str_input[125]), .A1(n121), .B0(str_input[61]), .B1(n120), 
        .Y(n273) );
  AO22X1 U254 ( .A0(str_input[157]), .A1(n116), .B0(str_input[221]), .B1(n115), 
        .Y(n272) );
  AO22X1 U255 ( .A0(str_input[93]), .A1(n118), .B0(str_input[29]), .B1(n119), 
        .Y(n271) );
  NAND4X1 U256 ( .A(n275), .B(n276), .C(n277), .D(n278), .Y(n258) );
  AOI22X1 U257 ( .A0(str_input[13]), .A1(n119), .B0(str_input[77]), .B1(n118), 
        .Y(n278) );
  AOI22X1 U258 ( .A0(str_input[205]), .A1(n115), .B0(str_input[141]), .B1(n116), .Y(n277) );
  AOI22X1 U259 ( .A0(str_input[45]), .A1(n120), .B0(str_input[109]), .B1(n121), 
        .Y(n276) );
  AOI22X1 U260 ( .A0(str_input[237]), .A1(n122), .B0(str_input[173]), .B1(n123), .Y(n275) );
  AOI211X1 U261 ( .A0(pat_input[29]), .A1(n20), .B0(n279), .C0(n280), .Y(n256)
         );
  OAI2BB2XL U262 ( .B0(pat_pro_idx[0]), .B1(n281), .A0N(pat_input[5]), .A1N(
        n65), .Y(n280) );
  AOI222XL U263 ( .A0(pat_input[37]), .A1(n22), .B0(pat_input[21]), .B1(n23), 
        .C0(pat_input[53]), .C1(n24), .Y(n281) );
  CLKINVX1 U264 ( .A(n282), .Y(n279) );
  AOI222XL U265 ( .A0(pat_input[61]), .A1(n25), .B0(pat_input[13]), .B1(n16), 
        .C0(pat_input[45]), .C1(n28), .Y(n282) );
  XOR2X1 U266 ( .A(n283), .B(n284), .Y(n226) );
  AOI211X1 U267 ( .A0(n107), .A1(n285), .B0(n286), .C0(n287), .Y(n284) );
  AOI31X1 U268 ( .A0(n288), .A1(n289), .A2(n290), .B0(n114), .Y(n287) );
  AOI221XL U269 ( .A0(str_input[196]), .A1(n115), .B0(str_input[132]), .B1(
        n116), .C0(n291), .Y(n290) );
  AO22X1 U270 ( .A0(str_input[68]), .A1(n118), .B0(str_input[4]), .B1(n119), 
        .Y(n291) );
  AOI22X1 U271 ( .A0(str_input[36]), .A1(n120), .B0(str_input[100]), .B1(n121), 
        .Y(n289) );
  AOI22X1 U272 ( .A0(str_input[228]), .A1(n122), .B0(str_input[164]), .B1(n123), .Y(n288) );
  OAI22XL U273 ( .A0(n292), .A1(n125), .B0(n293), .B1(n127), .Y(n286) );
  NOR4X1 U274 ( .A(n294), .B(n295), .C(n296), .D(n297), .Y(n293) );
  AO22X1 U275 ( .A0(str_input[180]), .A1(n123), .B0(str_input[244]), .B1(n122), 
        .Y(n297) );
  AO22X1 U276 ( .A0(str_input[116]), .A1(n121), .B0(str_input[52]), .B1(n120), 
        .Y(n296) );
  AO22X1 U277 ( .A0(str_input[148]), .A1(n116), .B0(str_input[212]), .B1(n115), 
        .Y(n295) );
  AO22X1 U278 ( .A0(str_input[84]), .A1(n118), .B0(str_input[20]), .B1(n119), 
        .Y(n294) );
  NOR4X1 U279 ( .A(n298), .B(n299), .C(n300), .D(n301), .Y(n292) );
  AO22X1 U280 ( .A0(str_input[188]), .A1(n123), .B0(str_input[252]), .B1(n122), 
        .Y(n301) );
  AO22X1 U281 ( .A0(str_input[124]), .A1(n121), .B0(str_input[60]), .B1(n120), 
        .Y(n300) );
  AO22X1 U282 ( .A0(str_input[156]), .A1(n116), .B0(str_input[220]), .B1(n115), 
        .Y(n299) );
  AO22X1 U283 ( .A0(str_input[92]), .A1(n118), .B0(str_input[28]), .B1(n119), 
        .Y(n298) );
  NAND4X1 U284 ( .A(n302), .B(n303), .C(n320), .D(n321), .Y(n285) );
  AOI22X1 U285 ( .A0(str_input[12]), .A1(n119), .B0(str_input[76]), .B1(n118), 
        .Y(n321) );
  AOI22X1 U286 ( .A0(str_input[204]), .A1(n115), .B0(str_input[140]), .B1(n116), .Y(n320) );
  AOI22X1 U287 ( .A0(str_input[44]), .A1(n120), .B0(str_input[108]), .B1(n121), 
        .Y(n303) );
  AOI22X1 U288 ( .A0(str_input[236]), .A1(n122), .B0(str_input[172]), .B1(n123), .Y(n302) );
  AOI211X1 U289 ( .A0(pat_input[28]), .A1(n20), .B0(n322), .C0(n323), .Y(n283)
         );
  OAI2BB2XL U290 ( .B0(pat_pro_idx[0]), .B1(n324), .A0N(pat_input[4]), .A1N(
        n65), .Y(n323) );
  AOI222XL U291 ( .A0(pat_input[36]), .A1(n22), .B0(pat_input[20]), .B1(n23), 
        .C0(pat_input[52]), .C1(n24), .Y(n324) );
  CLKINVX1 U292 ( .A(n325), .Y(n322) );
  AOI222XL U293 ( .A0(pat_input[60]), .A1(n25), .B0(pat_input[12]), .B1(n16), 
        .C0(pat_input[44]), .C1(n28), .Y(n325) );
  XOR2X1 U294 ( .A(n326), .B(n327), .Y(n225) );
  AOI211X1 U295 ( .A0(n107), .A1(n328), .B0(n329), .C0(n330), .Y(n327) );
  AOI31X1 U296 ( .A0(n331), .A1(n332), .A2(n333), .B0(n114), .Y(n330) );
  NAND2X1 U297 ( .A(n51), .B(n60), .Y(n114) );
  CLKINVX1 U298 ( .A(str_pro_idx[1]), .Y(n60) );
  AOI221XL U299 ( .A0(str_input[195]), .A1(n115), .B0(str_input[131]), .B1(
        n116), .C0(n334), .Y(n333) );
  AO22X1 U300 ( .A0(str_input[67]), .A1(n118), .B0(str_input[3]), .B1(n119), 
        .Y(n334) );
  AOI22X1 U301 ( .A0(str_input[35]), .A1(n120), .B0(str_input[99]), .B1(n121), 
        .Y(n332) );
  AOI22X1 U302 ( .A0(str_input[227]), .A1(n122), .B0(str_input[163]), .B1(n123), .Y(n331) );
  OAI22XL U303 ( .A0(n335), .A1(n125), .B0(n336), .B1(n127), .Y(n329) );
  NAND2X1 U304 ( .A(str_pro_idx[1]), .B(n51), .Y(n127) );
  NOR4X1 U305 ( .A(n337), .B(n338), .C(n339), .D(n340), .Y(n336) );
  AO22X1 U306 ( .A0(str_input[179]), .A1(n123), .B0(str_input[243]), .B1(n122), 
        .Y(n340) );
  AO22X1 U307 ( .A0(str_input[115]), .A1(n121), .B0(str_input[51]), .B1(n120), 
        .Y(n339) );
  AO22X1 U308 ( .A0(str_input[147]), .A1(n116), .B0(str_input[211]), .B1(n115), 
        .Y(n338) );
  AO22X1 U309 ( .A0(str_input[83]), .A1(n118), .B0(str_input[19]), .B1(n119), 
        .Y(n337) );
  NAND2X1 U310 ( .A(str_pro_idx[1]), .B(str_pro_idx[0]), .Y(n125) );
  NOR4X1 U311 ( .A(n341), .B(n342), .C(n343), .D(n344), .Y(n335) );
  AO22X1 U312 ( .A0(str_input[187]), .A1(n123), .B0(str_input[251]), .B1(n122), 
        .Y(n344) );
  AO22X1 U313 ( .A0(str_input[123]), .A1(n121), .B0(str_input[59]), .B1(n120), 
        .Y(n343) );
  AO22X1 U314 ( .A0(str_input[155]), .A1(n116), .B0(str_input[219]), .B1(n115), 
        .Y(n342) );
  AO22X1 U315 ( .A0(str_input[91]), .A1(n118), .B0(str_input[27]), .B1(n119), 
        .Y(n341) );
  NAND4X1 U316 ( .A(n345), .B(n346), .C(n347), .D(n348), .Y(n328) );
  AOI22X1 U317 ( .A0(str_input[11]), .A1(n119), .B0(str_input[75]), .B1(n118), 
        .Y(n348) );
  NOR3X1 U318 ( .A(str_pro_idx[3]), .B(str_pro_idx[4]), .C(str_pro_idx[2]), 
        .Y(n119) );
  AOI22X1 U319 ( .A0(str_input[203]), .A1(n115), .B0(str_input[139]), .B1(n116), .Y(n347) );
  AOI22X1 U320 ( .A0(str_input[43]), .A1(n120), .B0(str_input[107]), .B1(n121), 
        .Y(n346) );
  AOI22X1 U321 ( .A0(str_input[235]), .A1(n122), .B0(str_input[171]), .B1(n123), .Y(n345) );
  CLKINVX1 U322 ( .A(str_pro_idx[2]), .Y(n57) );
  CLKINVX1 U323 ( .A(str_pro_idx[3]), .Y(n54) );
  CLKINVX1 U324 ( .A(str_pro_idx[4]), .Y(n31) );
  NOR2X1 U325 ( .A(n51), .B(str_pro_idx[1]), .Y(n107) );
  CLKINVX1 U326 ( .A(str_pro_idx[0]), .Y(n51) );
  AOI211X1 U327 ( .A0(pat_input[27]), .A1(n20), .B0(n349), .C0(n350), .Y(n326)
         );
  OAI2BB2XL U328 ( .B0(pat_pro_idx[0]), .B1(n351), .A0N(pat_input[3]), .A1N(
        n65), .Y(n350) );
  NOR3X1 U329 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(pat_pro_idx[0]), 
        .Y(n65) );
  AOI222XL U330 ( .A0(pat_input[35]), .A1(n22), .B0(pat_input[19]), .B1(n23), 
        .C0(pat_input[51]), .C1(n24), .Y(n351) );
  CLKINVX1 U331 ( .A(n352), .Y(n349) );
  AOI222XL U332 ( .A0(pat_input[59]), .A1(n25), .B0(pat_input[11]), .B1(n16), 
        .C0(pat_input[43]), .C1(n28), .Y(n352) );
  AND2X1 U333 ( .A(n22), .B(pat_pro_idx[0]), .Y(n28) );
  NOR2X1 U334 ( .A(n41), .B(pat_pro_idx[1]), .Y(n22) );
  NOR3X1 U335 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n13), .Y(n16) );
  CLKINVX1 U336 ( .A(pat_pro_idx[0]), .Y(n13) );
  AND2X1 U337 ( .A(n24), .B(pat_pro_idx[0]), .Y(n25) );
  NOR2X1 U338 ( .A(n41), .B(n9), .Y(n24) );
  CLKINVX1 U339 ( .A(pat_pro_idx[2]), .Y(n41) );
  AND2X1 U340 ( .A(n23), .B(pat_pro_idx[0]), .Y(n20) );
  NOR2X1 U341 ( .A(n9), .B(pat_pro_idx[2]), .Y(n23) );
  CLKINVX1 U342 ( .A(pat_pro_idx[1]), .Y(n9) );
  XNOR2X1 U343 ( .A(pat_last_idx[0]), .B(pat_pro_idx[0]), .Y(n98) );
  XNOR2X1 U344 ( .A(pat_last_idx[1]), .B(pat_pro_idx[1]), .Y(n97) );
  XNOR2X1 U345 ( .A(pat_last_idx[2]), .B(pat_pro_idx[2]), .Y(n96) );
  OAI21XL U346 ( .A0(n70), .A1(n4), .B0(n68), .Y(N64) );
  NAND2X1 U347 ( .A(input_valid), .B(n353), .Y(n68) );
  CLKINVX1 U348 ( .A(done), .Y(n4) );
  OAI21XL U349 ( .A0(done), .A1(n70), .B0(n71), .Y(N63) );
  NOR2BX1 U350 ( .AN(input_valid), .B(n354), .Y(N62) );
  NOR2X1 U351 ( .A(input_valid), .B(n355), .Y(N61) );
  NAND3X1 U352 ( .A(n70), .B(n71), .C(n355), .Y(N60) );
  NOR2BX1 U353 ( .AN(n354), .B(n353), .Y(n355) );
  NOR4X1 U354 ( .A(n1), .B(n2), .C(\current_st[0] ), .D(n377), .Y(n353) );
  NAND4X1 U355 ( .A(\current_st[0] ), .B(n376), .C(n375), .D(n377), .Y(n354)
         );
  NAND4X1 U356 ( .A(n376), .B(n377), .C(n356), .D(n2), .Y(n71) );
  NAND4X1 U357 ( .A(n375), .B(n377), .C(n356), .D(n1), .Y(n70) );
  CLKINVX1 U358 ( .A(\current_st[0] ), .Y(n356) );
  NAND2X1 U359 ( .A(n358), .B(n357), .Y(N33) );
  CLKINVX1 U360 ( .A(reset), .Y(n358) );
endmodule


module KMP_pe_1 ( clk, reset, str_input, pat_input, input_valid, start_idx, 
        process_2idx, pat_last_idx, ff_result, output_valid, match, match_idx
 );
  input [255:0] str_input;
  input [63:0] pat_input;
  input [4:0] start_idx;
  input [4:0] process_2idx;
  input [2:0] pat_last_idx;
  input [23:0] ff_result;
  output [4:0] match_idx;
  input clk, reset, input_valid;
  output output_valid, match;
  wire   \current_st[0] , N33, done, N60, N61, N62, N63, N64, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n22, n23, n24, n25, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377;
  wire   [3:0] next_st;
  wire   [4:0] str_pro_idx;
  wire   [2:0] pat_pro_idx;

  DFFTRX1 \current_st_reg[2]  ( .D(next_st[2]), .RN(n358), .CK(clk), .Q(n1), 
        .QN(n376) );
  DFFTRX1 \current_st_reg[1]  ( .D(next_st[1]), .RN(n358), .CK(clk), .Q(n2), 
        .QN(n375) );
  DFFTRX1 \current_st_reg[3]  ( .D(next_st[3]), .RN(n358), .CK(clk), .QN(n377)
         );
  TLATX1 \next_st_reg[0]  ( .G(N60), .D(N61), .QN(n357) );
  DFFQX1 output_valid_reg ( .D(n368), .CK(clk), .Q(output_valid) );
  DFFQX1 done_reg ( .D(n359), .CK(clk), .Q(done) );
  DFFQX1 \str_pro_idx_reg[0]  ( .D(n364), .CK(clk), .Q(str_pro_idx[0]) );
  DFFQX1 match_reg ( .D(n369), .CK(clk), .Q(match) );
  DFFQX1 \match_idx_reg[3]  ( .D(n371), .CK(clk), .Q(match_idx[3]) );
  DFFQX1 \match_idx_reg[2]  ( .D(n372), .CK(clk), .Q(match_idx[2]) );
  DFFQX1 \match_idx_reg[0]  ( .D(n374), .CK(clk), .Q(match_idx[0]) );
  DFFQX1 \match_idx_reg[4]  ( .D(n370), .CK(clk), .Q(match_idx[4]) );
  DFFQX1 \match_idx_reg[1]  ( .D(n373), .CK(clk), .Q(match_idx[1]) );
  DFFQX1 \current_st_reg[0]  ( .D(N33), .CK(clk), .Q(\current_st[0] ) );
  DFFQX1 \pat_pro_idx_reg[2]  ( .D(n363), .CK(clk), .Q(pat_pro_idx[2]) );
  DFFQX1 \str_pro_idx_reg[1]  ( .D(n367), .CK(clk), .Q(str_pro_idx[1]) );
  DFFQX1 \pat_pro_idx_reg[1]  ( .D(n360), .CK(clk), .Q(pat_pro_idx[1]) );
  DFFQX1 \str_pro_idx_reg[2]  ( .D(n366), .CK(clk), .Q(str_pro_idx[2]) );
  DFFQX1 \str_pro_idx_reg[3]  ( .D(n365), .CK(clk), .Q(str_pro_idx[3]) );
  DFFQX1 \str_pro_idx_reg[4]  ( .D(n361), .CK(clk), .Q(str_pro_idx[4]) );
  DFFQX1 \pat_pro_idx_reg[0]  ( .D(n362), .CK(clk), .Q(pat_pro_idx[0]) );
  TLATX1 \next_st_reg[2]  ( .G(N60), .D(N63), .Q(next_st[2]) );
  TLATX1 \next_st_reg[1]  ( .G(N60), .D(N62), .Q(next_st[1]) );
  TLATX1 \next_st_reg[3]  ( .G(N60), .D(N64), .Q(next_st[3]) );
  NOR3X2 U3 ( .A(n54), .B(str_pro_idx[2]), .C(n31), .Y(n115) );
  NOR3X2 U4 ( .A(str_pro_idx[3]), .B(str_pro_idx[4]), .C(n57), .Y(n120) );
  NOR3X2 U5 ( .A(n31), .B(n54), .C(n57), .Y(n122) );
  NOR3X2 U6 ( .A(str_pro_idx[2]), .B(str_pro_idx[3]), .C(n31), .Y(n116) );
  NOR3X2 U7 ( .A(n54), .B(str_pro_idx[4]), .C(n57), .Y(n121) );
  NOR3X2 U8 ( .A(str_pro_idx[2]), .B(str_pro_idx[4]), .C(n54), .Y(n118) );
  NOR3X2 U9 ( .A(n31), .B(str_pro_idx[3]), .C(n57), .Y(n123) );
  OAI221XL U10 ( .A0(n3), .A1(n4), .B0(n5), .B1(n6), .C0(n7), .Y(n359) );
  OAI2BB2XL U11 ( .B0(n8), .B1(n9), .A0N(n10), .A1N(n11), .Y(n360) );
  OAI32X1 U12 ( .A0(n12), .A1(pat_pro_idx[1]), .A2(n13), .B0(n14), .B1(n15), 
        .Y(n11) );
  AOI211X1 U13 ( .A0(ff_result[1]), .A1(n16), .B0(n17), .C0(n18), .Y(n14) );
  OAI2BB2XL U14 ( .B0(pat_pro_idx[0]), .B1(n19), .A0N(ff_result[7]), .A1N(n20), 
        .Y(n18) );
  AOI222XL U15 ( .A0(ff_result[10]), .A1(n22), .B0(ff_result[4]), .B1(n23), 
        .C0(ff_result[16]), .C1(n24), .Y(n19) );
  AO22X1 U16 ( .A0(ff_result[19]), .A1(n25), .B0(ff_result[13]), .B1(n28), .Y(
        n17) );
  OAI221XL U17 ( .A0(n29), .A1(n30), .B0(n31), .B1(n32), .C0(n33), .Y(n361) );
  NAND2X1 U18 ( .A(start_idx[4]), .B(n34), .Y(n33) );
  AO22X1 U19 ( .A0(n35), .A1(pat_pro_idx[0]), .B0(n10), .B1(n36), .Y(n362) );
  OAI22XL U20 ( .A0(pat_pro_idx[0]), .A1(n12), .B0(n37), .B1(n15), .Y(n36) );
  AOI211X1 U21 ( .A0(ff_result[0]), .A1(n16), .B0(n38), .C0(n39), .Y(n37) );
  OAI2BB2XL U22 ( .B0(pat_pro_idx[0]), .B1(n40), .A0N(ff_result[6]), .A1N(n20), 
        .Y(n39) );
  AOI222XL U23 ( .A0(ff_result[9]), .A1(n22), .B0(ff_result[3]), .B1(n23), 
        .C0(ff_result[15]), .C1(n24), .Y(n40) );
  AO22X1 U24 ( .A0(ff_result[18]), .A1(n25), .B0(ff_result[12]), .B1(n28), .Y(
        n38) );
  OAI2BB2XL U25 ( .B0(n8), .B1(n41), .A0N(n10), .A1N(n42), .Y(n363) );
  OAI22XL U26 ( .A0(n43), .A1(n15), .B0(n44), .B1(n12), .Y(n42) );
  NOR2X1 U27 ( .A(n20), .B(n22), .Y(n44) );
  AOI211X1 U28 ( .A0(ff_result[2]), .A1(n16), .B0(n45), .C0(n46), .Y(n43) );
  OAI2BB2XL U29 ( .B0(pat_pro_idx[0]), .B1(n47), .A0N(ff_result[8]), .A1N(n20), 
        .Y(n46) );
  AOI222XL U30 ( .A0(ff_result[11]), .A1(n22), .B0(ff_result[5]), .B1(n23), 
        .C0(ff_result[17]), .C1(n24), .Y(n47) );
  AO22X1 U31 ( .A0(ff_result[20]), .A1(n25), .B0(ff_result[14]), .B1(n28), .Y(
        n45) );
  AOI31X1 U32 ( .A0(n10), .A1(n13), .A2(n48), .B0(n35), .Y(n8) );
  NOR2X1 U33 ( .A(n5), .B(n35), .Y(n10) );
  AOI2BB1X1 U34 ( .A0N(n5), .A1N(n15), .B0(n32), .Y(n35) );
  NAND2X1 U35 ( .A(n6), .B(n12), .Y(n15) );
  CLKINVX1 U36 ( .A(n49), .Y(n5) );
  OAI221XL U37 ( .A0(n30), .A1(n50), .B0(n51), .B1(n32), .C0(n52), .Y(n364) );
  NAND2X1 U38 ( .A(start_idx[0]), .B(n34), .Y(n52) );
  OAI221XL U39 ( .A0(n30), .A1(n53), .B0(n54), .B1(n32), .C0(n55), .Y(n365) );
  NAND2X1 U40 ( .A(start_idx[3]), .B(n34), .Y(n55) );
  OAI221XL U41 ( .A0(n30), .A1(n56), .B0(n57), .B1(n32), .C0(n58), .Y(n366) );
  NAND2X1 U42 ( .A(start_idx[2]), .B(n34), .Y(n58) );
  OAI221XL U43 ( .A0(n30), .A1(n59), .B0(n60), .B1(n32), .C0(n61), .Y(n367) );
  NAND2X1 U44 ( .A(start_idx[1]), .B(n34), .Y(n61) );
  NAND2X1 U45 ( .A(n49), .B(n32), .Y(n30) );
  OAI211X1 U46 ( .A0(n62), .A1(n63), .B0(n64), .C0(n358), .Y(n32) );
  OAI21XL U47 ( .A0(n65), .A1(n48), .B0(n49), .Y(n63) );
  NAND2X1 U48 ( .A(n6), .B(n66), .Y(n62) );
  OAI2BB2XL U49 ( .B0(n67), .B1(n68), .A0N(output_valid), .A1N(n69), .Y(n368)
         );
  OAI21XL U50 ( .A0(reset), .A1(n70), .B0(n64), .Y(n69) );
  CLKINVX1 U51 ( .A(n34), .Y(n64) );
  NOR2X1 U52 ( .A(n71), .B(reset), .Y(n34) );
  OAI2BB1X1 U53 ( .A0N(match), .A1N(n72), .B0(n7), .Y(n369) );
  OAI2BB2XL U54 ( .B0(n29), .B1(n7), .A0N(match_idx[4]), .A1N(n72), .Y(n370)
         );
  XNOR2X1 U55 ( .A(n73), .B(n74), .Y(n29) );
  XNOR2X1 U56 ( .A(str_pro_idx[4]), .B(n66), .Y(n74) );
  OAI21XL U57 ( .A0(n75), .A1(n66), .B0(n76), .Y(n73) );
  OAI2BB1X1 U58 ( .A0N(n66), .A1N(n75), .B0(str_pro_idx[3]), .Y(n76) );
  OAI2BB2XL U59 ( .B0(n53), .B1(n7), .A0N(match_idx[3]), .A1N(n72), .Y(n371)
         );
  XNOR2X1 U60 ( .A(n77), .B(n75), .Y(n53) );
  AOI2BB2X1 U61 ( .B0(n78), .B1(n79), .A0N(n80), .A1N(n57), .Y(n75) );
  NOR2X1 U62 ( .A(n79), .B(n78), .Y(n80) );
  XNOR2X1 U63 ( .A(n66), .B(n54), .Y(n77) );
  OAI2BB2XL U64 ( .B0(n56), .B1(n7), .A0N(match_idx[2]), .A1N(n72), .Y(n372)
         );
  XOR2X1 U65 ( .A(n81), .B(n78), .Y(n56) );
  OAI2BB1X1 U66 ( .A0N(n82), .A1N(n83), .B0(n84), .Y(n78) );
  OAI21XL U67 ( .A0(n83), .A1(n82), .B0(str_pro_idx[1]), .Y(n84) );
  XNOR2X1 U68 ( .A(str_pro_idx[2]), .B(n79), .Y(n81) );
  NOR2X1 U69 ( .A(n66), .B(pat_last_idx[2]), .Y(n79) );
  OAI2BB2XL U70 ( .B0(n59), .B1(n7), .A0N(match_idx[1]), .A1N(n72), .Y(n373)
         );
  XOR2X1 U71 ( .A(n85), .B(n82), .Y(n59) );
  OAI21XL U72 ( .A0(n86), .A1(n66), .B0(n51), .Y(n82) );
  XNOR2X1 U73 ( .A(str_pro_idx[1]), .B(n83), .Y(n85) );
  NOR2X1 U74 ( .A(n66), .B(pat_last_idx[1]), .Y(n83) );
  OAI2BB2XL U75 ( .B0(n50), .B1(n7), .A0N(match_idx[0]), .A1N(n72), .Y(n374)
         );
  NOR3BXL U76 ( .AN(n87), .B(n3), .C(reset), .Y(n72) );
  CLKINVX1 U77 ( .A(n88), .Y(n3) );
  NAND3BX1 U78 ( .AN(n67), .B(n68), .C(n70), .Y(n88) );
  OAI2BB1X1 U79 ( .A0N(n66), .A1N(n6), .B0(n49), .Y(n87) );
  NAND3X1 U80 ( .A(n89), .B(n90), .C(n91), .Y(n6) );
  NOR3X1 U81 ( .A(n92), .B(n93), .C(n94), .Y(n91) );
  XNOR2X1 U82 ( .A(n51), .B(process_2idx[0]), .Y(n94) );
  XNOR2X1 U83 ( .A(n57), .B(process_2idx[2]), .Y(n93) );
  XNOR2X1 U84 ( .A(n60), .B(process_2idx[1]), .Y(n92) );
  XNOR2X1 U85 ( .A(str_pro_idx[3]), .B(process_2idx[3]), .Y(n90) );
  XNOR2X1 U86 ( .A(str_pro_idx[4]), .B(process_2idx[4]), .Y(n89) );
  NAND2BX1 U87 ( .AN(n66), .B(n49), .Y(n7) );
  NOR2X1 U88 ( .A(n70), .B(n67), .Y(n49) );
  NAND2X1 U89 ( .A(n71), .B(n358), .Y(n67) );
  XNOR2X1 U90 ( .A(n95), .B(n86), .Y(n50) );
  NOR2BX1 U91 ( .AN(pat_last_idx[0]), .B(n66), .Y(n86) );
  XNOR2X1 U92 ( .A(n66), .B(n51), .Y(n95) );
  NAND4X1 U93 ( .A(n96), .B(n97), .C(n98), .D(n48), .Y(n66) );
  CLKINVX1 U94 ( .A(n12), .Y(n48) );
  NAND2X1 U95 ( .A(n99), .B(n100), .Y(n12) );
  NOR4X1 U96 ( .A(n101), .B(n102), .C(n103), .D(n104), .Y(n100) );
  XOR2X1 U97 ( .A(n105), .B(n106), .Y(n104) );
  AOI211X1 U98 ( .A0(n107), .A1(n108), .B0(n109), .C0(n110), .Y(n106) );
  AOI31X1 U99 ( .A0(n111), .A1(n112), .A2(n113), .B0(n114), .Y(n110) );
  AOI221XL U100 ( .A0(str_input[194]), .A1(n115), .B0(str_input[130]), .B1(
        n116), .C0(n117), .Y(n113) );
  AO22X1 U101 ( .A0(str_input[66]), .A1(n118), .B0(str_input[2]), .B1(n119), 
        .Y(n117) );
  AOI22X1 U102 ( .A0(str_input[34]), .A1(n120), .B0(str_input[98]), .B1(n121), 
        .Y(n112) );
  AOI22X1 U103 ( .A0(str_input[226]), .A1(n122), .B0(str_input[162]), .B1(n123), .Y(n111) );
  OAI22XL U104 ( .A0(n124), .A1(n125), .B0(n126), .B1(n127), .Y(n109) );
  NOR4X1 U105 ( .A(n128), .B(n129), .C(n130), .D(n131), .Y(n126) );
  AO22X1 U106 ( .A0(str_input[178]), .A1(n123), .B0(str_input[242]), .B1(n122), 
        .Y(n131) );
  AO22X1 U107 ( .A0(str_input[114]), .A1(n121), .B0(str_input[50]), .B1(n120), 
        .Y(n130) );
  AO22X1 U108 ( .A0(str_input[146]), .A1(n116), .B0(str_input[210]), .B1(n115), 
        .Y(n129) );
  AO22X1 U109 ( .A0(str_input[82]), .A1(n118), .B0(str_input[18]), .B1(n119), 
        .Y(n128) );
  NOR4X1 U110 ( .A(n132), .B(n133), .C(n134), .D(n135), .Y(n124) );
  AO22X1 U111 ( .A0(str_input[186]), .A1(n123), .B0(str_input[250]), .B1(n122), 
        .Y(n135) );
  AO22X1 U112 ( .A0(str_input[122]), .A1(n121), .B0(str_input[58]), .B1(n120), 
        .Y(n134) );
  AO22X1 U113 ( .A0(str_input[154]), .A1(n116), .B0(str_input[218]), .B1(n115), 
        .Y(n133) );
  AO22X1 U114 ( .A0(str_input[90]), .A1(n118), .B0(str_input[26]), .B1(n119), 
        .Y(n132) );
  NAND4X1 U115 ( .A(n136), .B(n137), .C(n138), .D(n139), .Y(n108) );
  AOI22X1 U116 ( .A0(str_input[10]), .A1(n119), .B0(str_input[74]), .B1(n118), 
        .Y(n139) );
  AOI22X1 U117 ( .A0(str_input[202]), .A1(n115), .B0(str_input[138]), .B1(n116), .Y(n138) );
  AOI22X1 U118 ( .A0(str_input[42]), .A1(n120), .B0(str_input[106]), .B1(n121), 
        .Y(n137) );
  AOI22X1 U119 ( .A0(str_input[234]), .A1(n122), .B0(str_input[170]), .B1(n123), .Y(n136) );
  AOI211X1 U120 ( .A0(pat_input[26]), .A1(n20), .B0(n140), .C0(n141), .Y(n105)
         );
  OAI2BB2XL U121 ( .B0(pat_pro_idx[0]), .B1(n142), .A0N(pat_input[2]), .A1N(
        n65), .Y(n141) );
  AOI222XL U122 ( .A0(pat_input[34]), .A1(n22), .B0(pat_input[18]), .B1(n23), 
        .C0(pat_input[50]), .C1(n24), .Y(n142) );
  CLKINVX1 U123 ( .A(n143), .Y(n140) );
  AOI222XL U124 ( .A0(pat_input[58]), .A1(n25), .B0(pat_input[10]), .B1(n16), 
        .C0(pat_input[42]), .C1(n28), .Y(n143) );
  XOR2X1 U125 ( .A(n144), .B(n145), .Y(n103) );
  AOI211X1 U126 ( .A0(n107), .A1(n146), .B0(n147), .C0(n148), .Y(n145) );
  AOI31X1 U127 ( .A0(n149), .A1(n150), .A2(n151), .B0(n114), .Y(n148) );
  AOI221XL U128 ( .A0(str_input[199]), .A1(n115), .B0(str_input[135]), .B1(
        n116), .C0(n152), .Y(n151) );
  AO22X1 U129 ( .A0(str_input[71]), .A1(n118), .B0(str_input[7]), .B1(n119), 
        .Y(n152) );
  AOI22X1 U130 ( .A0(str_input[39]), .A1(n120), .B0(str_input[103]), .B1(n121), 
        .Y(n150) );
  AOI22X1 U131 ( .A0(str_input[231]), .A1(n122), .B0(str_input[167]), .B1(n123), .Y(n149) );
  OAI22XL U132 ( .A0(n153), .A1(n125), .B0(n154), .B1(n127), .Y(n147) );
  NOR4X1 U133 ( .A(n155), .B(n156), .C(n157), .D(n158), .Y(n154) );
  AO22X1 U134 ( .A0(str_input[183]), .A1(n123), .B0(str_input[247]), .B1(n122), 
        .Y(n158) );
  AO22X1 U135 ( .A0(str_input[119]), .A1(n121), .B0(str_input[55]), .B1(n120), 
        .Y(n157) );
  AO22X1 U136 ( .A0(str_input[151]), .A1(n116), .B0(str_input[215]), .B1(n115), 
        .Y(n156) );
  AO22X1 U137 ( .A0(str_input[87]), .A1(n118), .B0(str_input[23]), .B1(n119), 
        .Y(n155) );
  NOR4X1 U138 ( .A(n159), .B(n160), .C(n161), .D(n162), .Y(n153) );
  AO22X1 U139 ( .A0(str_input[191]), .A1(n123), .B0(str_input[255]), .B1(n122), 
        .Y(n162) );
  AO22X1 U140 ( .A0(str_input[127]), .A1(n121), .B0(str_input[63]), .B1(n120), 
        .Y(n161) );
  AO22X1 U141 ( .A0(str_input[159]), .A1(n116), .B0(str_input[223]), .B1(n115), 
        .Y(n160) );
  AO22X1 U142 ( .A0(str_input[95]), .A1(n118), .B0(str_input[31]), .B1(n119), 
        .Y(n159) );
  NAND4X1 U143 ( .A(n163), .B(n164), .C(n165), .D(n166), .Y(n146) );
  AOI22X1 U144 ( .A0(str_input[15]), .A1(n119), .B0(str_input[79]), .B1(n118), 
        .Y(n166) );
  AOI22X1 U145 ( .A0(str_input[207]), .A1(n115), .B0(str_input[143]), .B1(n116), .Y(n165) );
  AOI22X1 U146 ( .A0(str_input[47]), .A1(n120), .B0(str_input[111]), .B1(n121), 
        .Y(n164) );
  AOI22X1 U147 ( .A0(str_input[239]), .A1(n122), .B0(str_input[175]), .B1(n123), .Y(n163) );
  AOI211X1 U148 ( .A0(pat_input[31]), .A1(n20), .B0(n167), .C0(n168), .Y(n144)
         );
  OAI2BB2XL U149 ( .B0(pat_pro_idx[0]), .B1(n169), .A0N(pat_input[7]), .A1N(
        n65), .Y(n168) );
  AOI222XL U150 ( .A0(pat_input[39]), .A1(n22), .B0(pat_input[23]), .B1(n23), 
        .C0(pat_input[55]), .C1(n24), .Y(n169) );
  CLKINVX1 U151 ( .A(n170), .Y(n167) );
  AOI222XL U152 ( .A0(pat_input[63]), .A1(n25), .B0(pat_input[15]), .B1(n16), 
        .C0(pat_input[47]), .C1(n28), .Y(n170) );
  XOR2X1 U153 ( .A(n171), .B(n172), .Y(n102) );
  AOI211X1 U154 ( .A0(pat_input[24]), .A1(n20), .B0(n173), .C0(n174), .Y(n172)
         );
  OAI2BB2XL U155 ( .B0(pat_pro_idx[0]), .B1(n175), .A0N(pat_input[0]), .A1N(
        n65), .Y(n174) );
  AOI222XL U156 ( .A0(pat_input[32]), .A1(n22), .B0(pat_input[16]), .B1(n23), 
        .C0(pat_input[48]), .C1(n24), .Y(n175) );
  CLKINVX1 U157 ( .A(n176), .Y(n173) );
  AOI222XL U158 ( .A0(pat_input[56]), .A1(n25), .B0(pat_input[8]), .B1(n16), 
        .C0(pat_input[40]), .C1(n28), .Y(n176) );
  AOI211X1 U159 ( .A0(n107), .A1(n177), .B0(n178), .C0(n179), .Y(n171) );
  AOI31X1 U160 ( .A0(n180), .A1(n181), .A2(n182), .B0(n114), .Y(n179) );
  AOI221XL U161 ( .A0(str_input[192]), .A1(n115), .B0(str_input[128]), .B1(
        n116), .C0(n183), .Y(n182) );
  AO22X1 U162 ( .A0(str_input[64]), .A1(n118), .B0(str_input[0]), .B1(n119), 
        .Y(n183) );
  AOI22X1 U163 ( .A0(str_input[32]), .A1(n120), .B0(str_input[96]), .B1(n121), 
        .Y(n181) );
  AOI22X1 U164 ( .A0(str_input[224]), .A1(n122), .B0(str_input[160]), .B1(n123), .Y(n180) );
  OAI22XL U165 ( .A0(n184), .A1(n125), .B0(n185), .B1(n127), .Y(n178) );
  NOR4X1 U166 ( .A(n186), .B(n187), .C(n188), .D(n189), .Y(n185) );
  AO22X1 U167 ( .A0(str_input[176]), .A1(n123), .B0(str_input[240]), .B1(n122), 
        .Y(n189) );
  AO22X1 U168 ( .A0(str_input[112]), .A1(n121), .B0(str_input[48]), .B1(n120), 
        .Y(n188) );
  AO22X1 U169 ( .A0(str_input[144]), .A1(n116), .B0(str_input[208]), .B1(n115), 
        .Y(n187) );
  AO22X1 U170 ( .A0(str_input[80]), .A1(n118), .B0(str_input[16]), .B1(n119), 
        .Y(n186) );
  NOR4X1 U171 ( .A(n190), .B(n191), .C(n192), .D(n193), .Y(n184) );
  AO22X1 U172 ( .A0(str_input[184]), .A1(n123), .B0(str_input[248]), .B1(n122), 
        .Y(n193) );
  AO22X1 U173 ( .A0(str_input[120]), .A1(n121), .B0(str_input[56]), .B1(n120), 
        .Y(n192) );
  AO22X1 U174 ( .A0(str_input[152]), .A1(n116), .B0(str_input[216]), .B1(n115), 
        .Y(n191) );
  AO22X1 U175 ( .A0(str_input[88]), .A1(n118), .B0(str_input[24]), .B1(n119), 
        .Y(n190) );
  NAND4X1 U176 ( .A(n194), .B(n195), .C(n196), .D(n197), .Y(n177) );
  AOI22X1 U177 ( .A0(str_input[8]), .A1(n119), .B0(str_input[72]), .B1(n118), 
        .Y(n197) );
  AOI22X1 U178 ( .A0(str_input[200]), .A1(n115), .B0(str_input[136]), .B1(n116), .Y(n196) );
  AOI22X1 U179 ( .A0(str_input[40]), .A1(n120), .B0(str_input[104]), .B1(n121), 
        .Y(n195) );
  AOI22X1 U180 ( .A0(str_input[232]), .A1(n122), .B0(str_input[168]), .B1(n123), .Y(n194) );
  XOR2X1 U181 ( .A(n198), .B(n199), .Y(n101) );
  AOI211X1 U182 ( .A0(pat_input[25]), .A1(n20), .B0(n200), .C0(n201), .Y(n199)
         );
  OAI2BB2XL U183 ( .B0(pat_pro_idx[0]), .B1(n202), .A0N(pat_input[1]), .A1N(
        n65), .Y(n201) );
  AOI222XL U184 ( .A0(pat_input[33]), .A1(n22), .B0(pat_input[17]), .B1(n23), 
        .C0(pat_input[49]), .C1(n24), .Y(n202) );
  CLKINVX1 U185 ( .A(n203), .Y(n200) );
  AOI222XL U186 ( .A0(pat_input[57]), .A1(n25), .B0(pat_input[9]), .B1(n16), 
        .C0(pat_input[41]), .C1(n28), .Y(n203) );
  AOI211X1 U187 ( .A0(n107), .A1(n204), .B0(n205), .C0(n206), .Y(n198) );
  AOI31X1 U188 ( .A0(n207), .A1(n208), .A2(n209), .B0(n114), .Y(n206) );
  AOI221XL U189 ( .A0(str_input[193]), .A1(n115), .B0(str_input[129]), .B1(
        n116), .C0(n210), .Y(n209) );
  AO22X1 U190 ( .A0(str_input[65]), .A1(n118), .B0(str_input[1]), .B1(n119), 
        .Y(n210) );
  AOI22X1 U191 ( .A0(str_input[33]), .A1(n120), .B0(str_input[97]), .B1(n121), 
        .Y(n208) );
  AOI22X1 U192 ( .A0(str_input[225]), .A1(n122), .B0(str_input[161]), .B1(n123), .Y(n207) );
  OAI22XL U193 ( .A0(n211), .A1(n125), .B0(n212), .B1(n127), .Y(n205) );
  NOR4X1 U194 ( .A(n213), .B(n214), .C(n215), .D(n216), .Y(n212) );
  AO22X1 U195 ( .A0(str_input[177]), .A1(n123), .B0(str_input[241]), .B1(n122), 
        .Y(n216) );
  AO22X1 U196 ( .A0(str_input[113]), .A1(n121), .B0(str_input[49]), .B1(n120), 
        .Y(n215) );
  AO22X1 U197 ( .A0(str_input[145]), .A1(n116), .B0(str_input[209]), .B1(n115), 
        .Y(n214) );
  AO22X1 U198 ( .A0(str_input[81]), .A1(n118), .B0(str_input[17]), .B1(n119), 
        .Y(n213) );
  NOR4X1 U199 ( .A(n217), .B(n218), .C(n219), .D(n220), .Y(n211) );
  AO22X1 U200 ( .A0(str_input[185]), .A1(n123), .B0(str_input[249]), .B1(n122), 
        .Y(n220) );
  AO22X1 U201 ( .A0(str_input[121]), .A1(n121), .B0(str_input[57]), .B1(n120), 
        .Y(n219) );
  AO22X1 U202 ( .A0(str_input[153]), .A1(n116), .B0(str_input[217]), .B1(n115), 
        .Y(n218) );
  AO22X1 U203 ( .A0(str_input[89]), .A1(n118), .B0(str_input[25]), .B1(n119), 
        .Y(n217) );
  NAND4X1 U204 ( .A(n221), .B(n222), .C(n223), .D(n224), .Y(n204) );
  AOI22X1 U205 ( .A0(str_input[9]), .A1(n119), .B0(str_input[73]), .B1(n118), 
        .Y(n224) );
  AOI22X1 U206 ( .A0(str_input[201]), .A1(n115), .B0(str_input[137]), .B1(n116), .Y(n223) );
  AOI22X1 U207 ( .A0(str_input[41]), .A1(n120), .B0(str_input[105]), .B1(n121), 
        .Y(n222) );
  AOI22X1 U208 ( .A0(str_input[233]), .A1(n122), .B0(str_input[169]), .B1(n123), .Y(n221) );
  NOR4X1 U209 ( .A(n225), .B(n226), .C(n227), .D(n228), .Y(n99) );
  XOR2X1 U210 ( .A(n229), .B(n230), .Y(n228) );
  AOI211X1 U211 ( .A0(n107), .A1(n231), .B0(n232), .C0(n233), .Y(n230) );
  AOI31X1 U212 ( .A0(n234), .A1(n235), .A2(n236), .B0(n114), .Y(n233) );
  AOI221XL U213 ( .A0(str_input[198]), .A1(n115), .B0(str_input[134]), .B1(
        n116), .C0(n237), .Y(n236) );
  AO22X1 U214 ( .A0(str_input[70]), .A1(n118), .B0(str_input[6]), .B1(n119), 
        .Y(n237) );
  AOI22X1 U215 ( .A0(str_input[38]), .A1(n120), .B0(str_input[102]), .B1(n121), 
        .Y(n235) );
  AOI22X1 U216 ( .A0(str_input[230]), .A1(n122), .B0(str_input[166]), .B1(n123), .Y(n234) );
  OAI22XL U217 ( .A0(n238), .A1(n125), .B0(n239), .B1(n127), .Y(n232) );
  NOR4X1 U218 ( .A(n240), .B(n241), .C(n242), .D(n243), .Y(n239) );
  AO22X1 U219 ( .A0(str_input[182]), .A1(n123), .B0(str_input[246]), .B1(n122), 
        .Y(n243) );
  AO22X1 U220 ( .A0(str_input[118]), .A1(n121), .B0(str_input[54]), .B1(n120), 
        .Y(n242) );
  AO22X1 U221 ( .A0(str_input[150]), .A1(n116), .B0(str_input[214]), .B1(n115), 
        .Y(n241) );
  AO22X1 U222 ( .A0(str_input[86]), .A1(n118), .B0(str_input[22]), .B1(n119), 
        .Y(n240) );
  NOR4X1 U223 ( .A(n244), .B(n245), .C(n246), .D(n247), .Y(n238) );
  AO22X1 U224 ( .A0(str_input[190]), .A1(n123), .B0(str_input[254]), .B1(n122), 
        .Y(n247) );
  AO22X1 U225 ( .A0(str_input[126]), .A1(n121), .B0(str_input[62]), .B1(n120), 
        .Y(n246) );
  AO22X1 U226 ( .A0(str_input[158]), .A1(n116), .B0(str_input[222]), .B1(n115), 
        .Y(n245) );
  AO22X1 U227 ( .A0(str_input[94]), .A1(n118), .B0(str_input[30]), .B1(n119), 
        .Y(n244) );
  NAND4X1 U228 ( .A(n248), .B(n249), .C(n250), .D(n251), .Y(n231) );
  AOI22X1 U229 ( .A0(str_input[14]), .A1(n119), .B0(str_input[78]), .B1(n118), 
        .Y(n251) );
  AOI22X1 U230 ( .A0(str_input[206]), .A1(n115), .B0(str_input[142]), .B1(n116), .Y(n250) );
  AOI22X1 U231 ( .A0(str_input[46]), .A1(n120), .B0(str_input[110]), .B1(n121), 
        .Y(n249) );
  AOI22X1 U232 ( .A0(str_input[238]), .A1(n122), .B0(str_input[174]), .B1(n123), .Y(n248) );
  AOI211X1 U233 ( .A0(pat_input[30]), .A1(n20), .B0(n252), .C0(n253), .Y(n229)
         );
  OAI2BB2XL U234 ( .B0(pat_pro_idx[0]), .B1(n254), .A0N(pat_input[6]), .A1N(
        n65), .Y(n253) );
  AOI222XL U235 ( .A0(pat_input[38]), .A1(n22), .B0(pat_input[22]), .B1(n23), 
        .C0(pat_input[54]), .C1(n24), .Y(n254) );
  CLKINVX1 U236 ( .A(n255), .Y(n252) );
  AOI222XL U237 ( .A0(pat_input[62]), .A1(n25), .B0(pat_input[14]), .B1(n16), 
        .C0(pat_input[46]), .C1(n28), .Y(n255) );
  XOR2X1 U238 ( .A(n256), .B(n257), .Y(n227) );
  AOI211X1 U239 ( .A0(n107), .A1(n258), .B0(n259), .C0(n260), .Y(n257) );
  AOI31X1 U240 ( .A0(n261), .A1(n262), .A2(n263), .B0(n114), .Y(n260) );
  AOI221XL U241 ( .A0(str_input[197]), .A1(n115), .B0(str_input[133]), .B1(
        n116), .C0(n264), .Y(n263) );
  AO22X1 U242 ( .A0(str_input[69]), .A1(n118), .B0(str_input[5]), .B1(n119), 
        .Y(n264) );
  AOI22X1 U243 ( .A0(str_input[37]), .A1(n120), .B0(str_input[101]), .B1(n121), 
        .Y(n262) );
  AOI22X1 U244 ( .A0(str_input[229]), .A1(n122), .B0(str_input[165]), .B1(n123), .Y(n261) );
  OAI22XL U245 ( .A0(n265), .A1(n125), .B0(n266), .B1(n127), .Y(n259) );
  NOR4X1 U246 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(n266) );
  AO22X1 U247 ( .A0(str_input[181]), .A1(n123), .B0(str_input[245]), .B1(n122), 
        .Y(n270) );
  AO22X1 U248 ( .A0(str_input[117]), .A1(n121), .B0(str_input[53]), .B1(n120), 
        .Y(n269) );
  AO22X1 U249 ( .A0(str_input[149]), .A1(n116), .B0(str_input[213]), .B1(n115), 
        .Y(n268) );
  AO22X1 U250 ( .A0(str_input[85]), .A1(n118), .B0(str_input[21]), .B1(n119), 
        .Y(n267) );
  NOR4X1 U251 ( .A(n271), .B(n272), .C(n273), .D(n274), .Y(n265) );
  AO22X1 U252 ( .A0(str_input[189]), .A1(n123), .B0(str_input[253]), .B1(n122), 
        .Y(n274) );
  AO22X1 U253 ( .A0(str_input[125]), .A1(n121), .B0(str_input[61]), .B1(n120), 
        .Y(n273) );
  AO22X1 U254 ( .A0(str_input[157]), .A1(n116), .B0(str_input[221]), .B1(n115), 
        .Y(n272) );
  AO22X1 U255 ( .A0(str_input[93]), .A1(n118), .B0(str_input[29]), .B1(n119), 
        .Y(n271) );
  NAND4X1 U256 ( .A(n275), .B(n276), .C(n277), .D(n278), .Y(n258) );
  AOI22X1 U257 ( .A0(str_input[13]), .A1(n119), .B0(str_input[77]), .B1(n118), 
        .Y(n278) );
  AOI22X1 U258 ( .A0(str_input[205]), .A1(n115), .B0(str_input[141]), .B1(n116), .Y(n277) );
  AOI22X1 U259 ( .A0(str_input[45]), .A1(n120), .B0(str_input[109]), .B1(n121), 
        .Y(n276) );
  AOI22X1 U260 ( .A0(str_input[237]), .A1(n122), .B0(str_input[173]), .B1(n123), .Y(n275) );
  AOI211X1 U261 ( .A0(pat_input[29]), .A1(n20), .B0(n279), .C0(n280), .Y(n256)
         );
  OAI2BB2XL U262 ( .B0(pat_pro_idx[0]), .B1(n281), .A0N(pat_input[5]), .A1N(
        n65), .Y(n280) );
  AOI222XL U263 ( .A0(pat_input[37]), .A1(n22), .B0(pat_input[21]), .B1(n23), 
        .C0(pat_input[53]), .C1(n24), .Y(n281) );
  CLKINVX1 U264 ( .A(n282), .Y(n279) );
  AOI222XL U265 ( .A0(pat_input[61]), .A1(n25), .B0(pat_input[13]), .B1(n16), 
        .C0(pat_input[45]), .C1(n28), .Y(n282) );
  XOR2X1 U266 ( .A(n283), .B(n284), .Y(n226) );
  AOI211X1 U267 ( .A0(n107), .A1(n285), .B0(n286), .C0(n287), .Y(n284) );
  AOI31X1 U268 ( .A0(n288), .A1(n289), .A2(n290), .B0(n114), .Y(n287) );
  AOI221XL U269 ( .A0(str_input[196]), .A1(n115), .B0(str_input[132]), .B1(
        n116), .C0(n291), .Y(n290) );
  AO22X1 U270 ( .A0(str_input[68]), .A1(n118), .B0(str_input[4]), .B1(n119), 
        .Y(n291) );
  AOI22X1 U271 ( .A0(str_input[36]), .A1(n120), .B0(str_input[100]), .B1(n121), 
        .Y(n289) );
  AOI22X1 U272 ( .A0(str_input[228]), .A1(n122), .B0(str_input[164]), .B1(n123), .Y(n288) );
  OAI22XL U273 ( .A0(n292), .A1(n125), .B0(n293), .B1(n127), .Y(n286) );
  NOR4X1 U274 ( .A(n294), .B(n295), .C(n296), .D(n297), .Y(n293) );
  AO22X1 U275 ( .A0(str_input[180]), .A1(n123), .B0(str_input[244]), .B1(n122), 
        .Y(n297) );
  AO22X1 U276 ( .A0(str_input[116]), .A1(n121), .B0(str_input[52]), .B1(n120), 
        .Y(n296) );
  AO22X1 U277 ( .A0(str_input[148]), .A1(n116), .B0(str_input[212]), .B1(n115), 
        .Y(n295) );
  AO22X1 U278 ( .A0(str_input[84]), .A1(n118), .B0(str_input[20]), .B1(n119), 
        .Y(n294) );
  NOR4X1 U279 ( .A(n298), .B(n299), .C(n300), .D(n301), .Y(n292) );
  AO22X1 U280 ( .A0(str_input[188]), .A1(n123), .B0(str_input[252]), .B1(n122), 
        .Y(n301) );
  AO22X1 U281 ( .A0(str_input[124]), .A1(n121), .B0(str_input[60]), .B1(n120), 
        .Y(n300) );
  AO22X1 U282 ( .A0(str_input[156]), .A1(n116), .B0(str_input[220]), .B1(n115), 
        .Y(n299) );
  AO22X1 U283 ( .A0(str_input[92]), .A1(n118), .B0(str_input[28]), .B1(n119), 
        .Y(n298) );
  NAND4X1 U284 ( .A(n302), .B(n303), .C(n320), .D(n321), .Y(n285) );
  AOI22X1 U285 ( .A0(str_input[12]), .A1(n119), .B0(str_input[76]), .B1(n118), 
        .Y(n321) );
  AOI22X1 U286 ( .A0(str_input[204]), .A1(n115), .B0(str_input[140]), .B1(n116), .Y(n320) );
  AOI22X1 U287 ( .A0(str_input[44]), .A1(n120), .B0(str_input[108]), .B1(n121), 
        .Y(n303) );
  AOI22X1 U288 ( .A0(str_input[236]), .A1(n122), .B0(str_input[172]), .B1(n123), .Y(n302) );
  AOI211X1 U289 ( .A0(pat_input[28]), .A1(n20), .B0(n322), .C0(n323), .Y(n283)
         );
  OAI2BB2XL U290 ( .B0(pat_pro_idx[0]), .B1(n324), .A0N(pat_input[4]), .A1N(
        n65), .Y(n323) );
  AOI222XL U291 ( .A0(pat_input[36]), .A1(n22), .B0(pat_input[20]), .B1(n23), 
        .C0(pat_input[52]), .C1(n24), .Y(n324) );
  CLKINVX1 U292 ( .A(n325), .Y(n322) );
  AOI222XL U293 ( .A0(pat_input[60]), .A1(n25), .B0(pat_input[12]), .B1(n16), 
        .C0(pat_input[44]), .C1(n28), .Y(n325) );
  XOR2X1 U294 ( .A(n326), .B(n327), .Y(n225) );
  AOI211X1 U295 ( .A0(n107), .A1(n328), .B0(n329), .C0(n330), .Y(n327) );
  AOI31X1 U296 ( .A0(n331), .A1(n332), .A2(n333), .B0(n114), .Y(n330) );
  NAND2X1 U297 ( .A(n51), .B(n60), .Y(n114) );
  CLKINVX1 U298 ( .A(str_pro_idx[1]), .Y(n60) );
  AOI221XL U299 ( .A0(str_input[195]), .A1(n115), .B0(str_input[131]), .B1(
        n116), .C0(n334), .Y(n333) );
  AO22X1 U300 ( .A0(str_input[67]), .A1(n118), .B0(str_input[3]), .B1(n119), 
        .Y(n334) );
  AOI22X1 U301 ( .A0(str_input[35]), .A1(n120), .B0(str_input[99]), .B1(n121), 
        .Y(n332) );
  AOI22X1 U302 ( .A0(str_input[227]), .A1(n122), .B0(str_input[163]), .B1(n123), .Y(n331) );
  OAI22XL U303 ( .A0(n335), .A1(n125), .B0(n336), .B1(n127), .Y(n329) );
  NAND2X1 U304 ( .A(str_pro_idx[1]), .B(n51), .Y(n127) );
  NOR4X1 U305 ( .A(n337), .B(n338), .C(n339), .D(n340), .Y(n336) );
  AO22X1 U306 ( .A0(str_input[179]), .A1(n123), .B0(str_input[243]), .B1(n122), 
        .Y(n340) );
  AO22X1 U307 ( .A0(str_input[115]), .A1(n121), .B0(str_input[51]), .B1(n120), 
        .Y(n339) );
  AO22X1 U308 ( .A0(str_input[147]), .A1(n116), .B0(str_input[211]), .B1(n115), 
        .Y(n338) );
  AO22X1 U309 ( .A0(str_input[83]), .A1(n118), .B0(str_input[19]), .B1(n119), 
        .Y(n337) );
  NAND2X1 U310 ( .A(str_pro_idx[1]), .B(str_pro_idx[0]), .Y(n125) );
  NOR4X1 U311 ( .A(n341), .B(n342), .C(n343), .D(n344), .Y(n335) );
  AO22X1 U312 ( .A0(str_input[187]), .A1(n123), .B0(str_input[251]), .B1(n122), 
        .Y(n344) );
  AO22X1 U313 ( .A0(str_input[123]), .A1(n121), .B0(str_input[59]), .B1(n120), 
        .Y(n343) );
  AO22X1 U314 ( .A0(str_input[155]), .A1(n116), .B0(str_input[219]), .B1(n115), 
        .Y(n342) );
  AO22X1 U315 ( .A0(str_input[91]), .A1(n118), .B0(str_input[27]), .B1(n119), 
        .Y(n341) );
  NAND4X1 U316 ( .A(n345), .B(n346), .C(n347), .D(n348), .Y(n328) );
  AOI22X1 U317 ( .A0(str_input[11]), .A1(n119), .B0(str_input[75]), .B1(n118), 
        .Y(n348) );
  NOR3X1 U318 ( .A(str_pro_idx[3]), .B(str_pro_idx[4]), .C(str_pro_idx[2]), 
        .Y(n119) );
  AOI22X1 U319 ( .A0(str_input[203]), .A1(n115), .B0(str_input[139]), .B1(n116), .Y(n347) );
  AOI22X1 U320 ( .A0(str_input[43]), .A1(n120), .B0(str_input[107]), .B1(n121), 
        .Y(n346) );
  AOI22X1 U321 ( .A0(str_input[235]), .A1(n122), .B0(str_input[171]), .B1(n123), .Y(n345) );
  CLKINVX1 U322 ( .A(str_pro_idx[2]), .Y(n57) );
  CLKINVX1 U323 ( .A(str_pro_idx[3]), .Y(n54) );
  CLKINVX1 U324 ( .A(str_pro_idx[4]), .Y(n31) );
  NOR2X1 U325 ( .A(n51), .B(str_pro_idx[1]), .Y(n107) );
  CLKINVX1 U326 ( .A(str_pro_idx[0]), .Y(n51) );
  AOI211X1 U327 ( .A0(pat_input[27]), .A1(n20), .B0(n349), .C0(n350), .Y(n326)
         );
  OAI2BB2XL U328 ( .B0(pat_pro_idx[0]), .B1(n351), .A0N(pat_input[3]), .A1N(
        n65), .Y(n350) );
  NOR3X1 U329 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(pat_pro_idx[0]), 
        .Y(n65) );
  AOI222XL U330 ( .A0(pat_input[35]), .A1(n22), .B0(pat_input[19]), .B1(n23), 
        .C0(pat_input[51]), .C1(n24), .Y(n351) );
  CLKINVX1 U331 ( .A(n352), .Y(n349) );
  AOI222XL U332 ( .A0(pat_input[59]), .A1(n25), .B0(pat_input[11]), .B1(n16), 
        .C0(pat_input[43]), .C1(n28), .Y(n352) );
  AND2X1 U333 ( .A(n22), .B(pat_pro_idx[0]), .Y(n28) );
  NOR2X1 U334 ( .A(n41), .B(pat_pro_idx[1]), .Y(n22) );
  NOR3X1 U335 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n13), .Y(n16) );
  CLKINVX1 U336 ( .A(pat_pro_idx[0]), .Y(n13) );
  AND2X1 U337 ( .A(n24), .B(pat_pro_idx[0]), .Y(n25) );
  NOR2X1 U338 ( .A(n41), .B(n9), .Y(n24) );
  CLKINVX1 U339 ( .A(pat_pro_idx[2]), .Y(n41) );
  AND2X1 U340 ( .A(n23), .B(pat_pro_idx[0]), .Y(n20) );
  NOR2X1 U341 ( .A(n9), .B(pat_pro_idx[2]), .Y(n23) );
  CLKINVX1 U342 ( .A(pat_pro_idx[1]), .Y(n9) );
  XNOR2X1 U343 ( .A(pat_last_idx[0]), .B(pat_pro_idx[0]), .Y(n98) );
  XNOR2X1 U344 ( .A(pat_last_idx[1]), .B(pat_pro_idx[1]), .Y(n97) );
  XNOR2X1 U345 ( .A(pat_last_idx[2]), .B(pat_pro_idx[2]), .Y(n96) );
  OAI21XL U346 ( .A0(n70), .A1(n4), .B0(n68), .Y(N64) );
  NAND2X1 U347 ( .A(input_valid), .B(n353), .Y(n68) );
  CLKINVX1 U348 ( .A(done), .Y(n4) );
  OAI21XL U349 ( .A0(done), .A1(n70), .B0(n71), .Y(N63) );
  NOR2BX1 U350 ( .AN(input_valid), .B(n354), .Y(N62) );
  NOR2X1 U351 ( .A(input_valid), .B(n355), .Y(N61) );
  NAND3X1 U352 ( .A(n70), .B(n71), .C(n355), .Y(N60) );
  NOR2BX1 U353 ( .AN(n354), .B(n353), .Y(n355) );
  NOR4X1 U354 ( .A(n1), .B(n2), .C(\current_st[0] ), .D(n377), .Y(n353) );
  NAND4X1 U355 ( .A(\current_st[0] ), .B(n376), .C(n375), .D(n377), .Y(n354)
         );
  NAND4X1 U356 ( .A(n376), .B(n377), .C(n356), .D(n2), .Y(n71) );
  NAND4X1 U357 ( .A(n375), .B(n377), .C(n356), .D(n1), .Y(n70) );
  CLKINVX1 U358 ( .A(\current_st[0] ), .Y(n356) );
  NAND2X1 U359 ( .A(n358), .B(n357), .Y(N33) );
  CLKINVX1 U360 ( .A(reset), .Y(n358) );
endmodule


module SME ( clk, reset, chardata, isstring, ispattern, valid, match, 
        match_index );
  input [7:0] chardata;
  output [4:0] match_index;
  input clk, reset, isstring, ispattern;
  output valid, match;
  wire   N0, input_valid, pe1_match, pe2_match, pe3_match, pe4_match,
         pe1_valid, pe2_valid, pe3_valid, pe4_valid;
  wire   [4:0] str_last_index;
  wire   [2:0] pat_last_index;
  wire   [4:0] pe1_pro_2idx;
  wire   [4:0] pe2_pro_2idx;
  wire   [4:0] pe3_pro_2idx;
  wire   [4:0] pe4_pro_2idx;
  wire   [4:0] pe1_start_idx;
  wire   [4:0] pe2_start_idx;
  wire   [4:0] pe3_start_idx;
  wire   [4:0] pe4_start_idx;
  wire   [4:0] pe1_m_idx;
  wire   [4:0] pe2_m_idx;
  wire   [4:0] pe3_m_idx;
  wire   [4:0] pe4_m_idx;
  wire   [255:0] str;
  wire   [63:0] pat;
  wire   [23:0] ff_result;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  KMP_Control control ( .clk(clk), .reset(reset), .input_valid(input_valid), 
        .str_last_idx(str_last_index), .pat_last_idx(pat_last_index), 
        .i_match_valid({pe1_valid, pe2_valid, pe3_valid, pe4_valid}), 
        .i_match({pe1_match, pe2_match, pe3_match, pe4_match}), .i_match_idx({
        pe1_m_idx, pe2_m_idx, pe3_m_idx, pe4_m_idx}), .start_idx({
        pe1_start_idx, pe2_start_idx, pe3_start_idx, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4}), .process_2idx({
        pe1_pro_2idx, pe2_pro_2idx, pe3_pro_2idx, pe4_pro_2idx}), .o_match(
        match), .o_valid(valid), .o_match_idx(match_index) );
  shared_memory s1 ( .clk(clk), .reset(reset), .w_data(chardata), .write(N0), 
        .w_sel(ispattern), .str_reg(str), .pat_reg(pat), .str_last_idx(
        str_last_index), .pat_last_idx(pat_last_index), .ff_result(ff_result), 
        .valid(input_valid) );
  KMP_pe_0 pe1 ( .clk(clk), .reset(reset), .str_input(str), .pat_input(pat), 
        .input_valid(input_valid), .start_idx(pe1_start_idx), .process_2idx(
        pe1_pro_2idx), .pat_last_idx(pat_last_index), .ff_result(ff_result), 
        .output_valid(pe1_valid), .match(pe1_match), .match_idx(pe1_m_idx) );
  KMP_pe_3 pe2 ( .clk(clk), .reset(reset), .str_input(str), .pat_input(pat), 
        .input_valid(input_valid), .start_idx(pe2_start_idx), .process_2idx(
        pe2_pro_2idx), .pat_last_idx(pat_last_index), .ff_result(ff_result), 
        .output_valid(pe2_valid), .match(pe2_match), .match_idx(pe2_m_idx) );
  KMP_pe_2 pe3 ( .clk(clk), .reset(reset), .str_input(str), .pat_input(pat), 
        .input_valid(input_valid), .start_idx(pe3_start_idx), .process_2idx(
        pe3_pro_2idx), .pat_last_idx(pat_last_index), .ff_result(ff_result), 
        .output_valid(pe3_valid), .match(pe3_match), .match_idx(pe3_m_idx) );
  KMP_pe_1 pe4 ( .clk(clk), .reset(reset), .str_input(str), .pat_input(pat), 
        .input_valid(input_valid), .start_idx({1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .process_2idx({1'b0, pe4_pro_2idx[3:0]}), .pat_last_idx(pat_last_index), .ff_result(ff_result), .output_valid(pe4_valid), .match(pe4_match), 
        .match_idx(pe4_m_idx) );
  OR2X1 U3 ( .A(ispattern), .B(isstring), .Y(N0) );
endmodule

