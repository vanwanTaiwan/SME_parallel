/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Tue Dec 29 05:24:10 2020
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
  wire   n184, n185, n186, n187, n188, \remaining[1] , N16, \compare_1a[5] ,
         N18, N20, pe_done_distri, o_done, N26, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N48,
         N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62,
         N68, N69, N70, N71, N79, N81, N94, N95, N96, N97, N118, N119, N120,
         N121, N122, N128, N129, N130, N131, N132, N143, N144, N145, N146,
         N147, N189, N190, N191, N192, N247, N248, N249, N250, N253, N254,
         N255, N256, N257, N258, N259, N260, N261, N262, N263, N264, N265,
         N266, N267, N268, N269, N270, N271, N272, N273, N274, N275, N276,
         N283, N284, N285, N286, N287, N288, n75, n76, n78, n79, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, N142, N140, N138, N101, N117, N115,
         N114, \lte_49/A[2] , \lte_49/A[1] , \lte_49/B[4] , \lte_49/B[1] ,
         \lte_47/A[5] , \lte_45/A[5] , \lte_45/B[5] ,
         \sub_0_root_sub_77/carry[4] , \sub_0_root_sub_77/carry[3] ,
         \sub_0_root_sub_77/carry[2] , \sub_0_root_sub_77/carry[1] ,
         \sub_0_root_sub_76/carry[4] , \sub_0_root_sub_76/carry[3] ,
         \sub_0_root_sub_76/carry[2] , \sub_0_root_sub_76/carry[1] ,
         \sub_0_root_sub_75/carry[4] , \sub_0_root_sub_75/carry[3] ,
         \sub_0_root_sub_75/carry[2] , \sub_0_root_sub_75/carry[1] ,
         \r428/carry[4] , \r428/carry[3] , \r428/carry[2] , \r428/carry[1] ,
         \r425/carry[4] , \r425/carry[3] , \r425/carry[2] , \r423/carry[1] ,
         \r423/carry[2] , \r423/carry[3] , \r427/n3 , \r427/n2 , \r427/n1 ,
         \add_0_root_sub_0_root_sub_94/carry[4] ,
         \add_0_root_sub_0_root_sub_94/carry[3] ,
         \add_0_root_sub_0_root_sub_94/carry[2] ,
         \add_0_root_sub_0_root_sub_93/carry[4] ,
         \add_0_root_sub_0_root_sub_93/carry[3] ,
         \add_0_root_sub_0_root_sub_93/carry[2] ,
         \add_0_root_sub_0_root_sub_93/carry[1] , \r417/carry[4] ,
         \r417/carry[3] , \r417/carry[2] ,
         \add_0_root_sub_0_root_sub_95/carry[4] ,
         \add_0_root_sub_0_root_sub_95/carry[3] ,
         \add_0_root_sub_0_root_sub_95/carry[2] ,
         \add_0_root_sub_0_root_sub_95/carry[1] , \add_0_root_r434/carry[4] ,
         \add_0_root_r434/carry[3] , \add_0_root_r434/carry[2] , n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n77, n80,
         n81, n82, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178;
  wire   [3:0] num_part;

  AOI22X4 U26 ( .A0(i_match_idx[9]), .A1(n95), .B0(i_match_idx[4]), .B1(n177), 
        .Y(n76) );
  AOI22X4 U33 ( .A0(i_match_idx[17]), .A1(n98), .B0(i_match_idx[12]), .B1(n176), .Y(n83) );
  ADDHX4 \r417/U1_1_1  ( .A(str_last_idx[1]), .B(str_last_idx[0]), .CO(
        \r417/carry[2] ), .S(\remaining[1] ) );
  DFFQX2 \start_idx_reg[15]  ( .D(N257), .CK(clk), .Q(start_idx[15]) );
  DFFQX2 \start_idx_reg[14]  ( .D(N256), .CK(clk), .Q(start_idx[14]) );
  DFFQX2 \start_idx_reg[12]  ( .D(N254), .CK(clk), .Q(start_idx[12]) );
  DFFQX2 \start_idx_reg[11]  ( .D(N253), .CK(clk), .Q(start_idx[11]) );
  DFFQX2 \start_idx_reg[8]  ( .D(N250), .CK(clk), .Q(start_idx[8]) );
  DFFQX2 \start_idx_reg[7]  ( .D(N249), .CK(clk), .Q(start_idx[7]) );
  DFFQX2 \start_idx_reg[6]  ( .D(N248), .CK(clk), .Q(start_idx[6]) );
  DFFQX2 \start_idx_reg[5]  ( .D(N247), .CK(clk), .Q(start_idx[5]) );
  DFFTRX1 pe_done_distri_reg ( .D(input_valid), .RN(n12), .CK(clk), .Q(
        pe_done_distri) );
  DFFQX2 \start_idx_reg[19]  ( .D(N261), .CK(clk), .Q(start_idx[19]) );
  DFFQX2 \start_idx_reg[18]  ( .D(N260), .CK(clk), .Q(start_idx[18]) );
  DFFQX2 \start_idx_reg[17]  ( .D(N259), .CK(clk), .Q(start_idx[17]) );
  DFFQX2 \start_idx_reg[16]  ( .D(N258), .CK(clk), .Q(start_idx[16]) );
  DFFQX2 \start_idx_reg[13]  ( .D(N255), .CK(clk), .Q(start_idx[13]) );
  DFFTRX1 \start_idx_reg[10]  ( .D(N43), .RN(n120), .CK(clk), .Q(start_idx[10]) );
  DFFTRX2 \start_idx_reg[9]  ( .D(N37), .RN(n120), .CK(clk), .Q(start_idx[9])
         );
  DFFQX2 \process_2idx_reg[2]  ( .D(N264), .CK(clk), .Q(process_2idx[2]) );
  DFFQX2 \process_2idx_reg[3]  ( .D(N265), .CK(clk), .Q(process_2idx[3]) );
  DFFQX2 \process_2idx_reg[12]  ( .D(N274), .CK(clk), .Q(process_2idx[12]) );
  DFFQX2 \process_2idx_reg[10]  ( .D(N272), .CK(clk), .Q(process_2idx[10]) );
  DFFQX2 \process_2idx_reg[9]  ( .D(N271), .CK(clk), .Q(process_2idx[9]) );
  DFFQX2 \process_2idx_reg[7]  ( .D(N269), .CK(clk), .Q(process_2idx[7]) );
  DFFQX2 \process_2idx_reg[6]  ( .D(N268), .CK(clk), .Q(process_2idx[6]) );
  DFFQX2 \process_2idx_reg[5]  ( .D(N267), .CK(clk), .Q(process_2idx[5]) );
  DFFQX2 \process_2idx_reg[4]  ( .D(N266), .CK(clk), .Q(process_2idx[4]) );
  DFFQX2 \process_2idx_reg[1]  ( .D(N263), .CK(clk), .Q(process_2idx[1]) );
  DFFQX2 \process_2idx_reg[0]  ( .D(N262), .CK(clk), .Q(process_2idx[0]) );
  DFFTRX2 \process_2idx_reg[17]  ( .D(N190), .RN(n178), .CK(clk), .Q(
        process_2idx[17]) );
  DFFTRX2 \process_2idx_reg[15]  ( .D(str_last_idx[0]), .RN(n178), .CK(clk), 
        .Q(process_2idx[15]) );
  DFFQX2 \process_2idx_reg[8]  ( .D(N270), .CK(clk), .Q(process_2idx[8]) );
  DFFQX2 \process_2idx_reg[14]  ( .D(N276), .CK(clk), .Q(process_2idx[14]) );
  DFFQX2 \process_2idx_reg[11]  ( .D(N273), .CK(clk), .Q(process_2idx[11]) );
  DFFTRX2 \process_2idx_reg[18]  ( .D(N191), .RN(n178), .CK(clk), .Q(
        process_2idx[18]) );
  DFFTRX2 \process_2idx_reg[19]  ( .D(N192), .RN(n178), .CK(clk), .Q(
        process_2idx[19]) );
  DFFTRX2 \process_2idx_reg[16]  ( .D(N189), .RN(n178), .CK(clk), .Q(
        process_2idx[16]) );
  DFFQX2 o_done_reg ( .D(N288), .CK(clk), .Q(o_done) );
  DFFYQX2 \o_match_idx_reg[0]  ( .D(N283), .CK(clk), .Q(n188) );
  DFFYQX2 \o_match_idx_reg[1]  ( .D(N284), .CK(clk), .Q(n187) );
  DFFYQX2 \o_match_idx_reg[3]  ( .D(N286), .CK(clk), .Q(n185) );
  DFFYQX2 \o_match_idx_reg[4]  ( .D(N287), .CK(clk), .Q(n184) );
  EDFFTRXL pe_valid_reg ( .RN(n178), .D(1'b1), .E(pe_done_distri), .CK(clk), 
        .Q(pe_valid) );
  DFFTRX2 o_valid_reg ( .D(o_done), .RN(n175), .CK(clk), .QN(n22) );
  DFFQX2 \process_2idx_reg[13]  ( .D(N275), .CK(clk), .Q(process_2idx[13]) );
  DFFQX2 \o_match_idx_reg[2]  ( .D(N285), .CK(clk), .Q(n186) );
  INVX2 U7 ( .A(1'b1), .Y(start_idx[0]) );
  INVX2 U9 ( .A(1'b1), .Y(start_idx[1]) );
  INVX2 U11 ( .A(1'b1), .Y(start_idx[2]) );
  INVX2 U13 ( .A(1'b1), .Y(start_idx[3]) );
  INVX2 U15 ( .A(1'b1), .Y(start_idx[4]) );
  AO2B2BX4 U17 ( .A0(\lte_49/A[2] ), .A1N(n87), .B0(n35), .B1N(n88), .Y(N285)
         );
  INVX20 U18 ( .A(n67), .Y(n88) );
  CLKINVX32 U20 ( .A(n98), .Y(n40) );
  ADDFX2 U21 ( .A(n54), .B(n113), .CI(\add_0_root_sub_0_root_sub_93/carry[3] ), 
        .CO(\add_0_root_sub_0_root_sub_93/carry[4] ), .S(N121) );
  ADDFX2 U22 ( .A(N115), .B(n92), .CI(\add_0_root_sub_0_root_sub_94/carry[2] ), 
        .CO(\add_0_root_sub_0_root_sub_94/carry[3] ), .S(N130) );
  ADDFX2 U23 ( .A(N115), .B(n82), .CI(\add_0_root_sub_0_root_sub_93/carry[2] ), 
        .CO(\add_0_root_sub_0_root_sub_93/carry[3] ), .S(N120) );
  INVX12 U24 ( .A(i_match_idx[8]), .Y(n105) );
  NOR2BX8 U25 ( .AN(o_match), .B(n86), .Y(n89) );
  INVX8 U27 ( .A(i_match_idx[11]), .Y(n155) );
  BUFX20 U28 ( .A(n66), .Y(n11) );
  BUFX10 U29 ( .A(n121), .Y(n12) );
  CLKINVX2 U30 ( .A(reset), .Y(n121) );
  INVX16 U31 ( .A(n69), .Y(n78) );
  CLKINVX20 U32 ( .A(n173), .Y(n70) );
  BUFX12 U34 ( .A(pat_last_idx[0]), .Y(n116) );
  INVX6 U35 ( .A(n76), .Y(\lte_49/B[4] ) );
  CLKINVX40 U36 ( .A(n78), .Y(n35) );
  CLKINVX16 U37 ( .A(n80), .Y(n79) );
  CLKINVX40 U38 ( .A(n95), .Y(n177) );
  INVX18 U39 ( .A(n47), .Y(n84) );
  CLKINVX24 U40 ( .A(n103), .Y(n160) );
  CLKBUFX40 U41 ( .A(N18), .Y(n95) );
  INVX16 U42 ( .A(N49), .Y(n24) );
  ADDHX4 U43 ( .A(n96), .B(n92), .CO(\r427/n3 ), .S(N49) );
  INVX8 U44 ( .A(n147), .Y(N26) );
  CLKINVX40 U45 ( .A(n40), .Y(n41) );
  CLKINVX24 U46 ( .A(N16), .Y(n97) );
  CLKINVX24 U47 ( .A(n106), .Y(n153) );
  INVX12 U48 ( .A(n84), .Y(\lte_49/A[1] ) );
  NAND2BX4 U49 ( .AN(i_match_idx[17]), .B(i_match_idx[12]), .Y(n150) );
  OR2X2 U50 ( .A(i_match_idx[18]), .B(n150), .Y(n30) );
  INVX14 U51 ( .A(n168), .Y(n104) );
  CLKINVX16 U52 ( .A(i_match_idx[0]), .Y(n74) );
  INVX4 U53 ( .A(i_match[3]), .Y(\lte_45/A[5] ) );
  NOR2X6 U54 ( .A(N39), .B(n114), .Y(n139) );
  NAND2X5 U55 ( .A(n139), .B(n141), .Y(n140) );
  ADDFX2 U56 ( .A(N30), .B(n132), .CI(\sub_0_root_sub_75/carry[2] ), .CO(
        \sub_0_root_sub_75/carry[3] ), .S(N35) );
  OA22X2 U57 ( .A0(n151), .A1(i_match[2]), .B0(\lte_45/A[5] ), .B1(n151), .Y(
        n107) );
  INVX4 U58 ( .A(i_match[1]), .Y(\lte_47/A[5] ) );
  INVX4 U59 ( .A(n102), .Y(n51) );
  AND2X2 U60 ( .A(n96), .B(n28), .Y(\r425/carry[2] ) );
  BUFX10 U61 ( .A(n83), .Y(n94) );
  INVX2 U62 ( .A(n41), .Y(n39) );
  NAND2X8 U63 ( .A(input_valid), .B(n12), .Y(n75) );
  ADDFX1 U64 ( .A(n54), .B(n82), .CI(\add_0_root_sub_0_root_sub_94/carry[3] ), 
        .CO(\add_0_root_sub_0_root_sub_94/carry[4] ), .S(N131) );
  INVX10 U65 ( .A(n24), .Y(n25) );
  ADDFX2 U66 ( .A(N55), .B(n132), .CI(\sub_0_root_sub_77/carry[2] ), .CO(
        \sub_0_root_sub_77/carry[3] ), .S(N60) );
  CLKINVX24 U67 ( .A(n60), .Y(o_match) );
  NOR2X4 U68 ( .A(n16), .B(n21), .Y(n60) );
  INVX12 U69 ( .A(n46), .Y(N286) );
  XOR3X2 U70 ( .A(N142), .B(N52), .C(\add_0_root_sub_0_root_sub_95/carry[4] ), 
        .Y(N147) );
  AO22X2 U71 ( .A0(N81), .A1(n120), .B0(N131), .B1(n119), .Y(N270) );
  INVX10 U72 ( .A(n75), .Y(n178) );
  AO22X2 U73 ( .A0(N68), .A1(n120), .B0(N118), .B1(n119), .Y(N262) );
  CLKXOR2X2 U74 ( .A(n96), .B(N128), .Y(N118) );
  AO22X2 U75 ( .A0(N69), .A1(n120), .B0(N119), .B1(n119), .Y(N263) );
  AO2B2X2 U76 ( .B0(N122), .B1(n119), .A0(n120), .A1N(n64), .Y(N266) );
  CLKXOR2X2 U77 ( .A(n54), .B(\add_0_root_sub_0_root_sub_93/carry[4] ), .Y(
        N122) );
  XNOR2X2 U78 ( .A(N32), .B(n137), .Y(n64) );
  AO2B2X2 U79 ( .B0(N143), .B1(n119), .A0(n120), .A1N(N53), .Y(N272) );
  CLKXOR2X2 U80 ( .A(n96), .B(N138), .Y(N143) );
  AO22X2 U81 ( .A0(N70), .A1(n120), .B0(N120), .B1(n119), .Y(N264) );
  XNOR2X2 U82 ( .A(N32), .B(\sub_0_root_sub_75/carry[4] ), .Y(N37) );
  BUFX10 U83 ( .A(pat_last_idx[1]), .Y(n117) );
  INVX2 U84 ( .A(n117), .Y(n130) );
  INVX2 U85 ( .A(n117), .Y(n133) );
  INVX2 U86 ( .A(i_match[2]), .Y(\lte_45/B[5] ) );
  NOR2X4 U87 ( .A(n75), .B(N26), .Y(n13) );
  AO22X4 U88 ( .A0(i_match_idx[19]), .A1(n41), .B0(i_match_idx[14]), .B1(n39), 
        .Y(n14) );
  AO22X4 U89 ( .A0(n98), .A1(i_match_idx[18]), .B0(i_match_idx[13]), .B1(n176), 
        .Y(n15) );
  OR2X2 U90 ( .A(i_match[3]), .B(i_match[2]), .Y(n16) );
  CLKBUFX16 U91 ( .A(n13), .Y(n118) );
  INVX18 U92 ( .A(i_match_idx[3]), .Y(n168) );
  OA22X4 U93 ( .A0(i_match[1]), .A1(n177), .B0(i_match[0]), .B1(n95), .Y(n17)
         );
  MXI2X2 U94 ( .A(n123), .B(n122), .S0(n82), .Y(n18) );
  XNOR2X2 U95 ( .A(N42), .B(\sub_0_root_sub_76/carry[4] ), .Y(n19) );
  XNOR2X2 U96 ( .A(N42), .B(n111), .Y(n20) );
  OR2X2 U97 ( .A(i_match[1]), .B(i_match[0]), .Y(n21) );
  NOR2X6 U98 ( .A(N54), .B(N53), .Y(n142) );
  NAND2BX2 U99 ( .AN(i_match_idx[9]), .B(i_match_idx[4]), .Y(n166) );
  INVX2 U100 ( .A(n15), .Y(n23) );
  INVX4 U101 ( .A(n79), .Y(\lte_49/B[1] ) );
  INVX12 U102 ( .A(n49), .Y(n65) );
  INVX6 U103 ( .A(n87), .Y(n42) );
  NAND2X8 U104 ( .A(n36), .B(n37), .Y(n158) );
  CLKAND2X12 U105 ( .A(n68), .B(n89), .Y(n67) );
  CLKBUFX40 U106 ( .A(N20), .Y(n93) );
  AO22X2 U107 ( .A0(i_match_idx[8]), .A1(n95), .B0(i_match_idx[3]), .B1(n177), 
        .Y(n49) );
  INVX2 U108 ( .A(N40), .Y(n141) );
  ADDFX2 U109 ( .A(N40), .B(n129), .CI(\sub_0_root_sub_76/carry[2] ), .CO(
        \sub_0_root_sub_76/carry[3] ), .S(N45) );
  CLKXOR2X2 U110 ( .A(n92), .B(\r425/carry[2] ), .Y(N40) );
  XNOR2X2 U111 ( .A(n114), .B(n28), .Y(N189) );
  ADDHX2 U112 ( .A(str_last_idx[4]), .B(\r417/carry[4] ), .CO(num_part[3]), 
        .S(num_part[2]) );
  INVX4 U113 ( .A(n94), .Y(\lte_49/A[2] ) );
  NAND2BX2 U114 ( .AN(pat_last_idx[2]), .B(n81), .Y(n147) );
  AO22X2 U115 ( .A0(n28), .A1(n133), .B0(n146), .B1(n115), .Y(n81) );
  CLKXOR2X2 U116 ( .A(n124), .B(\add_0_root_r434/carry[2] ), .Y(N190) );
  OR2X2 U117 ( .A(n28), .B(n115), .Y(\add_0_root_r434/carry[2] ) );
  INVX20 U118 ( .A(n22), .Y(o_valid) );
  INVX2 U119 ( .A(\remaining[1] ), .Y(n27) );
  INVX8 U120 ( .A(n27), .Y(n28) );
  CLKBUFX40 U122 ( .A(n91), .Y(n120) );
  INVX2 U123 ( .A(n116), .Y(n131) );
  OR2X2 U124 ( .A(i_match_idx[18]), .B(n156), .Y(n31) );
  NAND3X8 U125 ( .A(n30), .B(n31), .C(n149), .Y(n152) );
  OR2X2 U126 ( .A(n53), .B(n63), .Y(n32) );
  OR2X2 U127 ( .A(n53), .B(n17), .Y(n33) );
  NAND3X8 U128 ( .A(n32), .B(n33), .C(n174), .Y(N20) );
  INVX4 U129 ( .A(i_match_idx[13]), .Y(n156) );
  INVX4 U130 ( .A(\compare_1a[5] ), .Y(n53) );
  CLKINVX32 U131 ( .A(n98), .Y(n176) );
  OR2X8 U132 ( .A(n94), .B(n35), .Y(n34) );
  CLKINVX40 U133 ( .A(n34), .Y(n50) );
  CLKNAND2X12 U134 ( .A(n52), .B(n104), .Y(n36) );
  CLKNAND2X12 U135 ( .A(n105), .B(n52), .Y(n37) );
  ADDFX1 U136 ( .A(N39), .B(n130), .CI(\sub_0_root_sub_76/carry[1] ), .CO(
        \sub_0_root_sub_76/carry[2] ), .S(N44) );
  AO21X2 U137 ( .A0(n115), .A1(N39), .B0(n139), .Y(N79) );
  CLKXOR2X4 U138 ( .A(n28), .B(n96), .Y(N39) );
  NAND2BX8 U139 ( .AN(i_match_idx[7]), .B(n48), .Y(n161) );
  INVX20 U140 ( .A(n97), .Y(n98) );
  OAI2B2X4 U141 ( .A1N(n77), .A0(n88), .B0(n85), .B1(n87), .Y(N283) );
  BUFX3 U142 ( .A(n15), .Y(n38) );
  AO2B2X4 U143 ( .B0(i_match_idx[16]), .B1(n41), .A0(n176), .A1N(n155), .Y(n47) );
  BUFX14 U144 ( .A(n13), .Y(n119) );
  INVX2 U145 ( .A(n43), .Y(n85) );
  NOR2X4 U146 ( .A(N31), .B(n136), .Y(n137) );
  CLKXOR2X4 U147 ( .A(n82), .B(\r423/carry[2] ), .Y(N30) );
  INVX2 U148 ( .A(str_last_idx[0]), .Y(N38) );
  OA22X4 U149 ( .A0(n172), .A1(n17), .B0(n53), .B1(n172), .Y(n71) );
  OAI2B2X4 U150 ( .A1N(\lte_49/B[1] ), .A0(n88), .B0(n84), .B1(n87), .Y(N284)
         );
  OAI2BB2X4 U151 ( .B0(n88), .B1(n76), .A0N(n14), .A1N(n42), .Y(N287) );
  CLKAND2X12 U152 ( .A(n93), .B(n89), .Y(n110) );
  OA22X1 U153 ( .A0(i_match[3]), .A1(n40), .B0(i_match[2]), .B1(n41), .Y(
        \compare_1a[5] ) );
  CLKINVX40 U154 ( .A(n110), .Y(n87) );
  NOR2X4 U155 ( .A(N56), .B(n143), .Y(n144) );
  NAND2X6 U156 ( .A(n142), .B(n145), .Y(n143) );
  CLKBUFX32 U157 ( .A(num_part[1]), .Y(n92) );
  AO22X4 U158 ( .A0(i_match_idx[15]), .A1(n41), .B0(i_match_idx[10]), .B1(n176), .Y(n43) );
  AO2B2X4 U159 ( .B0(\lte_49/A[1] ), .B1(n79), .A0(n43), .A1N(n77), .Y(n169)
         );
  AOI21BX4 U160 ( .A0(\lte_49/B[1] ), .A1(n84), .B0N(n169), .Y(n44) );
  AND2X2 U161 ( .A(\r425/carry[2] ), .B(n92), .Y(\r425/carry[3] ) );
  OA22X4 U162 ( .A0(n44), .A1(n45), .B0(n65), .B1(n171), .Y(n170) );
  OA22X4 U163 ( .A0(n50), .A1(n65), .B0(n50), .B1(n15), .Y(n45) );
  OA22X4 U164 ( .A0(n65), .A1(n88), .B0(n23), .B1(n87), .Y(n46) );
  AO22X4 U165 ( .A0(i_match_idx[7]), .A1(n95), .B0(n48), .B1(n177), .Y(n69) );
  INVX20 U166 ( .A(n101), .Y(n48) );
  NAND2BX8 U167 ( .AN(\lte_49/A[2] ), .B(n35), .Y(n171) );
  AO22X4 U168 ( .A0(n158), .A1(n159), .B0(n51), .B1(n104), .Y(n103) );
  OAI22X4 U169 ( .A0(n162), .A1(i_match[0]), .B0(\lte_47/A[5] ), .B1(n162), 
        .Y(n163) );
  NAND2X8 U170 ( .A(i_match_idx[7]), .B(n101), .Y(n52) );
  ADDHX4 U171 ( .A(str_last_idx[3]), .B(\r417/carry[3] ), .CO(\r417/carry[4] ), 
        .S(num_part[1]) );
  ADDFHX4 U172 ( .A(n82), .B(n92), .CI(\r427/n3 ), .CO(\r427/n2 ), .S(N50) );
  CLKBUFX32 U173 ( .A(num_part[2]), .Y(n82) );
  AO22X4 U174 ( .A0(n95), .A1(i_match_idx[6]), .B0(i_match_idx[1]), .B1(n177), 
        .Y(n80) );
  AO22X4 U175 ( .A0(i_match_idx[5]), .A1(n95), .B0(i_match_idx[0]), .B1(n177), 
        .Y(n77) );
  INVX2 U176 ( .A(pat_last_idx[2]), .Y(n132) );
  INVX2 U177 ( .A(pat_last_idx[2]), .Y(n129) );
  XOR3X2 U178 ( .A(n54), .B(n113), .C(\add_0_root_sub_0_root_sub_94/carry[4] ), 
        .Y(N132) );
  OAI21X2 U179 ( .A0(n116), .A1(n117), .B0(pat_last_idx[2]), .Y(n125) );
  AND2X1 U180 ( .A(n61), .B(n96), .Y(\add_0_root_sub_0_root_sub_94/carry[2] )
         );
  AOI2BB1X2 U181 ( .A0N(n130), .A1N(n28), .B0(n116), .Y(n146) );
  OAI21X2 U182 ( .A0(n116), .A1(n117), .B0(pat_last_idx[2]), .Y(n126) );
  CLKINVX2 U183 ( .A(n116), .Y(N138) );
  XNOR2X2 U184 ( .A(N53), .B(n134), .Y(N58) );
  XNOR2X2 U185 ( .A(n114), .B(n131), .Y(N43) );
  ADDFX4 U186 ( .A(N142), .B(N51), .CI(\add_0_root_sub_0_root_sub_95/carry[3] ), .CO(\add_0_root_sub_0_root_sub_95/carry[4] ), .S(N146) );
  NOR3X8 U187 ( .A(n117), .B(pat_last_idx[2]), .C(n116), .Y(N142) );
  NOR2BX2 U188 ( .AN(n112), .B(n96), .Y(n122) );
  CLKXOR2X4 U189 ( .A(n114), .B(n96), .Y(N28) );
  CLKBUFX40 U190 ( .A(N48), .Y(n96) );
  OR3X2 U191 ( .A(n117), .B(pat_last_idx[2]), .C(n116), .Y(N117) );
  INVX5 U192 ( .A(N117), .Y(n54) );
  CLKAND2X2 U193 ( .A(\r423/carry[3] ), .B(n113), .Y(N32) );
  CLKBUFX20 U194 ( .A(n184), .Y(o_match_idx[4]) );
  CLKBUFX20 U195 ( .A(n185), .Y(o_match_idx[3]) );
  CLKBUFX20 U196 ( .A(n186), .Y(o_match_idx[2]) );
  CLKBUFX20 U197 ( .A(n187), .Y(o_match_idx[1]) );
  CLKBUFX20 U198 ( .A(n188), .Y(o_match_idx[0]) );
  AO2B2X2 U199 ( .B0(N128), .B1(n119), .A0(n120), .A1N(n115), .Y(N267) );
  CLKINVX3 U200 ( .A(n116), .Y(N128) );
  CLKXOR2X8 U201 ( .A(n114), .B(n96), .Y(N53) );
  CLKBUFX6 U202 ( .A(N38), .Y(n114) );
  XNOR2X4 U203 ( .A(n117), .B(n116), .Y(n61) );
  XNOR2X4 U204 ( .A(n117), .B(n116), .Y(N114) );
  CLKXOR2X2 U205 ( .A(n96), .B(n61), .Y(N129) );
  ADDFX4 U206 ( .A(N114), .B(n92), .CI(\add_0_root_sub_0_root_sub_93/carry[1] ), .CO(\add_0_root_sub_0_root_sub_93/carry[2] ), .S(N119) );
  NAND2X8 U207 ( .A(n100), .B(N68), .Y(n136) );
  CLKAND2X2 U208 ( .A(n99), .B(N68), .Y(n135) );
  OR2X1 U209 ( .A(N31), .B(\sub_0_root_sub_75/carry[3] ), .Y(
        \sub_0_root_sub_75/carry[4] ) );
  CLKXOR2X2 U210 ( .A(N52), .B(\r428/carry[4] ), .Y(N57) );
  AND2X4 U211 ( .A(n99), .B(n138), .Y(n100) );
  CLKAND2X12 U212 ( .A(N26), .B(n178), .Y(n91) );
  BUFX20 U213 ( .A(n161), .Y(n102) );
  CLKXOR2X8 U214 ( .A(N51), .B(\r428/carry[3] ), .Y(N56) );
  CLKINVX4 U215 ( .A(N55), .Y(n145) );
  AND2X2 U216 ( .A(\r423/carry[2] ), .B(n82), .Y(\r423/carry[3] ) );
  OAI21X2 U217 ( .A0(n139), .A1(n141), .B0(n140), .Y(n62) );
  AO22X1 U218 ( .A0(N94), .A1(n120), .B0(N144), .B1(n119), .Y(N273) );
  AO22X1 U219 ( .A0(n118), .A1(n96), .B0(N44), .B1(n120), .Y(N253) );
  AO22X1 U220 ( .A0(N96), .A1(n120), .B0(N146), .B1(n118), .Y(N275) );
  AND2X1 U221 ( .A(\r425/carry[3] ), .B(n82), .Y(\r425/carry[4] ) );
  CLKBUFX4 U222 ( .A(N101), .Y(n112) );
  NOR2BX8 U223 ( .AN(n14), .B(\lte_49/B[4] ), .Y(n172) );
  CLKAND2X2 U224 ( .A(\add_0_root_r434/carry[2] ), .B(n124), .Y(
        \add_0_root_r434/carry[3] ) );
  NAND2BX4 U225 ( .AN(n14), .B(\lte_49/B[4] ), .Y(n63) );
  AO22X1 U226 ( .A0(n118), .A1(n113), .B0(N36), .B1(n120), .Y(N250) );
  AO22X1 U227 ( .A0(n118), .A1(n82), .B0(N46), .B1(n120), .Y(N255) );
  AO22X1 U228 ( .A0(N60), .A1(n120), .B0(N50), .B1(n118), .Y(N259) );
  AO22X1 U229 ( .A0(N95), .A1(n120), .B0(N145), .B1(n119), .Y(N274) );
  AO22X1 U230 ( .A0(n118), .A1(n92), .B0(N45), .B1(n120), .Y(N254) );
  CLKINVX2 U231 ( .A(n116), .Y(n134) );
  CLKINVX1 U232 ( .A(n117), .Y(n127) );
  CLKINVX1 U233 ( .A(n86), .Y(n175) );
  CLKINVX2 U234 ( .A(n116), .Y(n128) );
  ADDHX4 U235 ( .A(str_last_idx[2]), .B(\r417/carry[2] ), .CO(\r417/carry[3] ), 
        .S(N48) );
  INVX4 U236 ( .A(i_match_idx[1]), .Y(n167) );
  NOR2BX8 U237 ( .AN(i_match_idx[17]), .B(i_match_idx[12]), .Y(n66) );
  ADDFX1 U238 ( .A(N140), .B(N50), .CI(\add_0_root_sub_0_root_sub_95/carry[2] ), .CO(\add_0_root_sub_0_root_sub_95/carry[3] ), .S(N145) );
  CLKINVX3 U239 ( .A(N28), .Y(N68) );
  OR2X2 U240 ( .A(N41), .B(n140), .Y(n111) );
  CLKXOR2X2 U241 ( .A(n108), .B(n109), .Y(N191) );
  INVX2 U242 ( .A(n112), .Y(n108) );
  INVX2 U243 ( .A(\add_0_root_r434/carry[3] ), .Y(n109) );
  INVX2 U244 ( .A(N30), .Y(n138) );
  CLKXOR2X4 U245 ( .A(N50), .B(\r428/carry[2] ), .Y(N55) );
  CLKXOR2X4 U246 ( .A(n82), .B(\r425/carry[3] ), .Y(N41) );
  CLKAND2X3 U247 ( .A(\r428/carry[2] ), .B(N50), .Y(\r428/carry[3] ) );
  AO22X1 U248 ( .A0(N58), .A1(n120), .B0(n96), .B1(n118), .Y(N257) );
  AO22X1 U249 ( .A0(N79), .A1(n120), .B0(N129), .B1(n119), .Y(N268) );
  AO22X1 U250 ( .A0(N59), .A1(n120), .B0(n25), .B1(n118), .Y(N258) );
  AO22X2 U251 ( .A0(n118), .A1(n96), .B0(N33), .B1(n120), .Y(N247) );
  XNOR2X2 U252 ( .A(N28), .B(n128), .Y(N33) );
  AO22X2 U253 ( .A0(N71), .A1(n120), .B0(N121), .B1(n119), .Y(N265) );
  XNOR2X2 U254 ( .A(N31), .B(n136), .Y(N71) );
  XNOR2X2 U255 ( .A(N41), .B(n140), .Y(N81) );
  AO21X1 U256 ( .A0(N28), .A1(N29), .B0(n135), .Y(N69) );
  OAI21X2 U257 ( .A0(n135), .A1(n138), .B0(n136), .Y(N70) );
  AO22X2 U258 ( .A0(n62), .A1(n120), .B0(N130), .B1(n119), .Y(N269) );
  AO22X2 U259 ( .A0(n118), .A1(n92), .B0(N34), .B1(n120), .Y(N248) );
  CLKINVX40 U260 ( .A(n93), .Y(n68) );
  CLKXOR2X2 U261 ( .A(n113), .B(\r425/carry[4] ), .Y(N42) );
  INVX2 U262 ( .A(N29), .Y(n99) );
  CLKXOR2X2 U263 ( .A(n18), .B(\add_0_root_r434/carry[4] ), .Y(N192) );
  ADDFX4 U264 ( .A(n25), .B(n28), .CI(\r428/carry[1] ), .CO(\r428/carry[2] ), 
        .S(N54) );
  ADDFX4 U265 ( .A(n92), .B(n28), .CI(\r423/carry[1] ), .CO(\r423/carry[2] ), 
        .S(N29) );
  ADDFX1 U266 ( .A(N29), .B(n127), .CI(\sub_0_root_sub_75/carry[1] ), .CO(
        \sub_0_root_sub_75/carry[2] ), .S(N34) );
  ADDFX1 U267 ( .A(N54), .B(n133), .CI(\sub_0_root_sub_77/carry[1] ), .CO(
        \sub_0_root_sub_77/carry[2] ), .S(N59) );
  OR2X1 U268 ( .A(n134), .B(N53), .Y(\sub_0_root_sub_77/carry[1] ) );
  AO22X1 U269 ( .A0(n120), .A1(N61), .B0(N51), .B1(n118), .Y(N260) );
  AO22X2 U270 ( .A0(n118), .A1(n82), .B0(N35), .B1(n120), .Y(N249) );
  XNOR2X2 U271 ( .A(\sub_0_root_sub_76/carry[3] ), .B(N41), .Y(N46) );
  AO22X2 U272 ( .A0(N62), .A1(n120), .B0(N52), .B1(n118), .Y(N261) );
  XNOR2X2 U273 ( .A(\sub_0_root_sub_77/carry[4] ), .B(N57), .Y(N62) );
  OR2X2 U274 ( .A(N56), .B(\sub_0_root_sub_77/carry[3] ), .Y(
        \sub_0_root_sub_77/carry[4] ) );
  XNOR2X2 U275 ( .A(\sub_0_root_sub_75/carry[3] ), .B(N31), .Y(N36) );
  AO22X2 U276 ( .A0(N97), .A1(n120), .B0(N147), .B1(n119), .Y(N276) );
  CLKXOR2X2 U277 ( .A(N57), .B(n144), .Y(N97) );
  AO22X2 U278 ( .A0(n118), .A1(n113), .B0(n19), .B1(n120), .Y(N256) );
  OR2X2 U279 ( .A(N41), .B(\sub_0_root_sub_76/carry[3] ), .Y(
        \sub_0_root_sub_76/carry[4] ) );
  AO22X2 U280 ( .A0(n20), .A1(n120), .B0(N132), .B1(n119), .Y(N271) );
  OAI21X2 U281 ( .A0(n142), .A1(n145), .B0(n143), .Y(N95) );
  CLKBUFX8 U282 ( .A(N38), .Y(n115) );
  OA22X4 U283 ( .A0(n70), .A1(n71), .B0(n17), .B1(n63), .Y(n174) );
  ADDFX1 U284 ( .A(N114), .B(n25), .CI(\add_0_root_sub_0_root_sub_95/carry[1] ), .CO(\add_0_root_sub_0_root_sub_95/carry[2] ), .S(N144) );
  BUFX10 U285 ( .A(num_part[3]), .Y(n113) );
  NAND4X6 U286 ( .A(input_valid), .B(n12), .C(i_match_valid[0]), .D(n90), .Y(
        n86) );
  AND3X2 U287 ( .A(i_match_valid[2]), .B(i_match_valid[1]), .C(
        i_match_valid[3]), .Y(n90) );
  OA22X4 U288 ( .A0(n73), .A1(n72), .B0(n156), .B1(n150), .Y(n149) );
  OA21X4 U289 ( .A0(i_match_idx[16]), .A1(n155), .B0(n148), .Y(n72) );
  OA22X4 U290 ( .A0(n11), .A1(n156), .B0(i_match_idx[18]), .B1(n11), .Y(n73)
         );
  AO2B2X4 U291 ( .B0(i_match_idx[5]), .B1(n74), .A0(i_match_idx[6]), .A1N(
        i_match_idx[1]), .Y(n157) );
  NOR2X2 U292 ( .A(o_done), .B(n86), .Y(N288) );
  XNOR2X2 U293 ( .A(n96), .B(n92), .Y(N101) );
  CLKINVX40 U294 ( .A(i_match_idx[2]), .Y(n101) );
  XNOR2X2 U295 ( .A(\sub_0_root_sub_77/carry[3] ), .B(N56), .Y(N61) );
  XNOR2X2 U296 ( .A(N56), .B(n143), .Y(N96) );
  AO2B2BX4 U297 ( .A0(n152), .A1N(n107), .B0(\lte_45/B[5] ), .B1N(n154), .Y(
        n106) );
  OAI21X8 U298 ( .A0(i_match_idx[6]), .A1(n167), .B0(n157), .Y(n159) );
  CLKINVX3 U299 ( .A(n96), .Y(n124) );
  CLKXOR2X4 U300 ( .A(\r427/n1 ), .B(n113), .Y(N52) );
  OR2X2 U301 ( .A(n128), .B(N28), .Y(\sub_0_root_sub_75/carry[1] ) );
  NAND2BX2 U302 ( .AN(n54), .B(n126), .Y(N115) );
  OAI221X4 U303 ( .A0(i_match_idx[8]), .A1(n102), .B0(i_match_idx[8]), .B1(
        n168), .C0(n160), .Y(n164) );
  NAND2BX2 U304 ( .AN(i_match_idx[19]), .B(i_match_idx[14]), .Y(n154) );
  AO2B2X4 U305 ( .B0(n155), .B1(i_match_idx[16]), .A0(i_match_idx[15]), .A1N(
        i_match_idx[10]), .Y(n148) );
  NOR2BX4 U306 ( .AN(i_match_idx[19]), .B(i_match_idx[14]), .Y(n151) );
  NOR2BX4 U307 ( .AN(i_match_idx[9]), .B(i_match_idx[4]), .Y(n162) );
  CLKXOR2X4 U308 ( .A(n113), .B(\r423/carry[3] ), .Y(N31) );
  ADDFX4 U309 ( .A(n113), .B(n82), .CI(\r427/n2 ), .CO(\r427/n1 ), .S(N51) );
  OAI221X4 U310 ( .A0(n38), .A1(n171), .B0(n38), .B1(n65), .C0(n170), .Y(n173)
         );
  OAI221X4 U311 ( .A0(\lte_45/A[5] ), .A1(n154), .B0(\lte_45/A[5] ), .B1(
        i_match[2]), .C0(n153), .Y(N16) );
  OAI221X4 U312 ( .A0(\lte_47/A[5] ), .A1(n166), .B0(\lte_47/A[5] ), .B1(
        i_match[0]), .C0(n165), .Y(N18) );
  AOI2BB2X4 U313 ( .B0(n164), .B1(n163), .A0N(i_match[0]), .A1N(n166), .Y(n165) );
  AND2X1 U314 ( .A(N128), .B(n96), .Y(\add_0_root_sub_0_root_sub_93/carry[1] )
         );
  AND2X1 U315 ( .A(N138), .B(n96), .Y(\add_0_root_sub_0_root_sub_95/carry[1] )
         );
  AND2X1 U316 ( .A(\r428/carry[3] ), .B(N51), .Y(\r428/carry[4] ) );
  AND2X1 U317 ( .A(n96), .B(n115), .Y(\r428/carry[1] ) );
  AND2X1 U318 ( .A(n96), .B(n115), .Y(\r423/carry[1] ) );
  OR2X1 U319 ( .A(n131), .B(n115), .Y(\sub_0_root_sub_76/carry[1] ) );
  AND2X1 U320 ( .A(\add_0_root_r434/carry[3] ), .B(n112), .Y(
        \add_0_root_r434/carry[4] ) );
  CLKNAND2X2 U321 ( .A(n112), .B(n124), .Y(n123) );
  NAND2BX1 U322 ( .AN(N142), .B(n125), .Y(N140) );
  AO21X1 U323 ( .A0(N53), .A1(N54), .B0(n142), .Y(N94) );
endmodule


module DP_FailFunc ( clk, reset, i_valid, pattern, last_pat_idx, o_fail_func, 
        o_valid );
  input [63:0] pattern;
  input [2:0] last_pat_idx;
  output [23:0] o_fail_func;
  input clk, reset, i_valid;
  output o_valid;
  wire   done_flag, N59, N60, n12, n31, n32, n35, n36, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n67, n68, n69, n70, n71,
         n72, n73, n74, n76, n77, n78, n79, n80, n81, n83, n84, n85, n86, n87,
         n88, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n33, n34, n37, n66,
         n75, n82, n89, n129, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203;
  wire   [1:0] current_st;
  wire   [1:0] next_st;
  wire   [2:0] process_idx;
  wire   [2:0] last_ff_map;

  DFFTRX4 \current_st_reg[0]  ( .D(next_st[0]), .RN(n179), .CK(clk), .Q(
        current_st[0]) );
  OAI2BB2X4 U7 ( .B0(n167), .B1(n21), .A0N(o_fail_func[20]), .A1N(n167), .Y(
        n139) );
  OAI2BB2X4 U8 ( .B0(n167), .B1(n23), .A0N(o_fail_func[19]), .A1N(n167), .Y(
        n140) );
  OAI2BB2X4 U9 ( .B0(n167), .B1(n17), .A0N(o_fail_func[18]), .A1N(n167), .Y(
        n141) );
  OAI2BB2X4 U11 ( .B0(n2), .B1(n20), .A0N(o_fail_func[17]), .A1N(n2), .Y(n142)
         );
  OAI2BB2X4 U12 ( .B0(n2), .B1(n23), .A0N(o_fail_func[16]), .A1N(n2), .Y(n143)
         );
  OAI2BB2X4 U13 ( .B0(n2), .B1(n17), .A0N(o_fail_func[15]), .A1N(n2), .Y(n144)
         );
  OAI2BB2X4 U15 ( .B0(n129), .B1(n21), .A0N(o_fail_func[14]), .A1N(n129), .Y(
        n145) );
  OAI2BB2X4 U16 ( .B0(n129), .B1(n23), .A0N(o_fail_func[13]), .A1N(n129), .Y(
        n146) );
  OAI2BB2X4 U17 ( .B0(n129), .B1(n17), .A0N(o_fail_func[12]), .A1N(n129), .Y(
        n147) );
  OAI2BB2X4 U19 ( .B0(n1), .B1(n20), .A0N(o_fail_func[11]), .A1N(n1), .Y(n148)
         );
  OAI2BB2X4 U20 ( .B0(n1), .B1(n23), .A0N(o_fail_func[10]), .A1N(n1), .Y(n149)
         );
  OAI2BB2X4 U21 ( .B0(n1), .B1(n17), .A0N(o_fail_func[9]), .A1N(n1), .Y(n150)
         );
  OAI2BB2X4 U24 ( .B0(n89), .B1(n21), .A0N(o_fail_func[8]), .A1N(n89), .Y(n151) );
  OAI2BB2X4 U29 ( .B0(n75), .B1(n19), .A0N(o_fail_func[5]), .A1N(n75), .Y(n154) );
  OAI2BB2X4 U30 ( .B0(n75), .B1(n23), .A0N(o_fail_func[4]), .A1N(n75), .Y(n155) );
  OAI2BB2X4 U31 ( .B0(n75), .B1(n17), .A0N(o_fail_func[3]), .A1N(n75), .Y(n156) );
  OAI22X4 U37 ( .A0(n195), .A1(n11), .B0(n19), .B1(n50), .Y(n160) );
  AOI221X4 U39 ( .A0(n53), .A1(n169), .B0(n175), .B1(last_ff_map[2]), .C0(n54), 
        .Y(n51) );
  NAND3X8 U44 ( .A(n187), .B(n49), .C(n56), .Y(n50) );
  AND4X8 U47 ( .A(n57), .B(n58), .C(n59), .D(n60), .Y(n52) );
  AOI221X4 U51 ( .A0(pattern[3]), .A1(n178), .B0(pattern[51]), .B1(n24), .C0(
        n71), .Y(n68) );
  AOI222X4 U53 ( .A0(pattern[43]), .A1(n54), .B0(pattern[11]), .B1(n178), .C0(
        pattern[27]), .C1(n53), .Y(n67) );
  OAI222X4 U54 ( .A0(n72), .A1(n174), .B0(n173), .B1(n73), .C0(n47), .C1(n200), 
        .Y(n65) );
  AOI222X4 U55 ( .A0(pattern[35]), .A1(n177), .B0(pattern[51]), .B1(n38), .C0(
        pattern[19]), .C1(n176), .Y(n73) );
  AOI222X4 U56 ( .A0(pattern[43]), .A1(n177), .B0(pattern[59]), .B1(n38), .C0(
        pattern[27]), .C1(n176), .Y(n72) );
  AOI221X4 U59 ( .A0(pattern[2]), .A1(n178), .B0(pattern[50]), .B1(n24), .C0(
        n78), .Y(n77) );
  AOI222X4 U61 ( .A0(pattern[42]), .A1(n54), .B0(pattern[10]), .B1(n178), .C0(
        pattern[26]), .C1(n53), .Y(n76) );
  OAI222X4 U62 ( .A0(n79), .A1(n174), .B0(n173), .B1(n80), .C0(n47), .C1(n201), 
        .Y(n74) );
  AOI222X4 U63 ( .A0(pattern[34]), .A1(n177), .B0(pattern[50]), .B1(n38), .C0(
        pattern[18]), .C1(n176), .Y(n80) );
  AOI222X4 U64 ( .A0(pattern[42]), .A1(n177), .B0(pattern[58]), .B1(n38), .C0(
        pattern[26]), .C1(n176), .Y(n79) );
  AOI221X4 U67 ( .A0(pattern[1]), .A1(n178), .B0(pattern[49]), .B1(n24), .C0(
        n85), .Y(n84) );
  AOI222X4 U69 ( .A0(pattern[41]), .A1(n54), .B0(pattern[9]), .B1(n178), .C0(
        pattern[25]), .C1(n53), .Y(n83) );
  OAI222X4 U70 ( .A0(n86), .A1(n174), .B0(n173), .B1(n87), .C0(n47), .C1(n202), 
        .Y(n81) );
  AOI222X4 U71 ( .A0(pattern[33]), .A1(n177), .B0(pattern[49]), .B1(n38), .C0(
        pattern[17]), .C1(n176), .Y(n87) );
  AOI222X4 U72 ( .A0(pattern[41]), .A1(n177), .B0(pattern[57]), .B1(n38), .C0(
        pattern[25]), .C1(n176), .Y(n86) );
  AOI221X4 U75 ( .A0(pattern[0]), .A1(n178), .B0(pattern[48]), .B1(n24), .C0(
        n92), .Y(n91) );
  AOI222X4 U77 ( .A0(pattern[40]), .A1(n54), .B0(pattern[8]), .B1(n178), .C0(
        pattern[24]), .C1(n53), .Y(n90) );
  OAI222X4 U78 ( .A0(n93), .A1(n174), .B0(n173), .B1(n94), .C0(n47), .C1(n203), 
        .Y(n88) );
  AOI222X4 U79 ( .A0(pattern[32]), .A1(n177), .B0(pattern[48]), .B1(n38), .C0(
        pattern[16]), .C1(n176), .Y(n94) );
  AOI222X4 U80 ( .A0(pattern[40]), .A1(n177), .B0(pattern[56]), .B1(n38), .C0(
        pattern[24]), .C1(n176), .Y(n93) );
  AOI221X4 U84 ( .A0(pattern[5]), .A1(n178), .B0(n24), .B1(pattern[53]), .C0(
        n102), .Y(n101) );
  AOI222X4 U86 ( .A0(n54), .A1(pattern[45]), .B0(n178), .B1(pattern[13]), .C0(
        n53), .C1(pattern[29]), .Y(n100) );
  OAI222X4 U87 ( .A0(n103), .A1(n174), .B0(n173), .B1(n104), .C0(n47), .C1(
        n198), .Y(n98) );
  AOI222X4 U88 ( .A0(pattern[37]), .A1(n177), .B0(pattern[53]), .B1(n38), .C0(
        pattern[21]), .C1(n176), .Y(n104) );
  AOI222X4 U89 ( .A0(pattern[45]), .A1(n177), .B0(pattern[61]), .B1(n38), .C0(
        pattern[29]), .C1(n176), .Y(n103) );
  AOI221X4 U92 ( .A0(pattern[4]), .A1(n178), .B0(pattern[52]), .B1(n24), .C0(
        n109), .Y(n108) );
  AOI222X4 U94 ( .A0(pattern[44]), .A1(n54), .B0(pattern[12]), .B1(n178), .C0(
        pattern[28]), .C1(n53), .Y(n107) );
  OAI222X4 U95 ( .A0(n110), .A1(n174), .B0(n173), .B1(n111), .C0(n47), .C1(
        n199), .Y(n105) );
  AOI222X4 U96 ( .A0(pattern[36]), .A1(n177), .B0(pattern[52]), .B1(n38), .C0(
        pattern[20]), .C1(n176), .Y(n111) );
  AOI222X4 U97 ( .A0(pattern[44]), .A1(n177), .B0(pattern[60]), .B1(n38), .C0(
        pattern[28]), .C1(n176), .Y(n110) );
  OAI222X4 U99 ( .A0(n114), .A1(n174), .B0(n173), .B1(n115), .C0(n47), .C1(
        n197), .Y(n113) );
  AOI222X4 U100 ( .A0(pattern[38]), .A1(n177), .B0(pattern[54]), .B1(n38), 
        .C0(pattern[22]), .C1(n176), .Y(n115) );
  AOI222X4 U101 ( .A0(pattern[46]), .A1(n177), .B0(pattern[62]), .B1(n38), 
        .C0(pattern[30]), .C1(n176), .Y(n114) );
  AOI221X4 U103 ( .A0(pattern[6]), .A1(n178), .B0(pattern[54]), .B1(n24), .C0(
        n118), .Y(n117) );
  AOI222X4 U105 ( .A0(pattern[46]), .A1(n54), .B0(pattern[14]), .B1(n178), 
        .C0(pattern[30]), .C1(n53), .Y(n116) );
  OAI222X4 U107 ( .A0(n121), .A1(n174), .B0(n173), .B1(n122), .C0(n47), .C1(
        n196), .Y(n120) );
  AOI222X4 U109 ( .A0(pattern[39]), .A1(n177), .B0(pattern[55]), .B1(n38), 
        .C0(pattern[23]), .C1(n176), .Y(n122) );
  AOI222X4 U110 ( .A0(pattern[47]), .A1(n177), .B0(pattern[63]), .B1(n38), 
        .C0(pattern[31]), .C1(n176), .Y(n121) );
  AOI221X4 U113 ( .A0(pattern[7]), .A1(n178), .B0(pattern[55]), .B1(n24), .C0(
        n125), .Y(n124) );
  AOI222X4 U116 ( .A0(pattern[47]), .A1(n54), .B0(pattern[15]), .B1(n178), 
        .C0(pattern[31]), .C1(n53), .Y(n123) );
  OAI32X4 U124 ( .A0(n128), .A1(n172), .A2(n13), .B0(n174), .B1(n11), .Y(n164)
         );
  OAI32X4 U125 ( .A0(n130), .A1(n174), .A2(n128), .B0(n14), .B1(n191), .Y(n165) );
  AOI2BB1X4 U126 ( .A0N(n173), .A1N(n128), .B0(n13), .Y(n126) );
  DFFHQX8 \o_fail_func_reg[2]  ( .D(n157), .CK(clk), .Q(o_fail_func[2]) );
  DFFHQX8 \o_fail_func_reg[1]  ( .D(n158), .CK(clk), .Q(o_fail_func[1]) );
  DFFHQX8 \o_fail_func_reg[0]  ( .D(n159), .CK(clk), .Q(o_fail_func[0]) );
  DFFHQX8 \o_fail_func_reg[18]  ( .D(n141), .CK(clk), .Q(o_fail_func[18]) );
  DFFHQX8 \o_fail_func_reg[15]  ( .D(n144), .CK(clk), .Q(o_fail_func[15]) );
  DFFHQX8 \o_fail_func_reg[12]  ( .D(n147), .CK(clk), .Q(o_fail_func[12]) );
  DFFHQX8 \o_fail_func_reg[9]  ( .D(n150), .CK(clk), .Q(o_fail_func[9]) );
  DFFHQX8 \o_fail_func_reg[6]  ( .D(n153), .CK(clk), .Q(o_fail_func[6]) );
  DFFHQX8 \o_fail_func_reg[3]  ( .D(n156), .CK(clk), .Q(o_fail_func[3]) );
  DFFHQX8 \o_fail_func_reg[19]  ( .D(n140), .CK(clk), .Q(o_fail_func[19]) );
  DFFHQX8 \o_fail_func_reg[16]  ( .D(n143), .CK(clk), .Q(o_fail_func[16]) );
  DFFHQX8 \o_fail_func_reg[13]  ( .D(n146), .CK(clk), .Q(o_fail_func[13]) );
  DFFHQX8 \o_fail_func_reg[10]  ( .D(n149), .CK(clk), .Q(o_fail_func[10]) );
  DFFHQX8 \o_fail_func_reg[7]  ( .D(n152), .CK(clk), .Q(o_fail_func[7]) );
  DFFHQX8 \o_fail_func_reg[4]  ( .D(n155), .CK(clk), .Q(o_fail_func[4]) );
  DFFHQX8 \o_fail_func_reg[20]  ( .D(n139), .CK(clk), .Q(o_fail_func[20]) );
  DFFHQX8 \o_fail_func_reg[17]  ( .D(n142), .CK(clk), .Q(o_fail_func[17]) );
  DFFHQX8 \o_fail_func_reg[14]  ( .D(n145), .CK(clk), .Q(o_fail_func[14]) );
  DFFHQX8 \o_fail_func_reg[11]  ( .D(n148), .CK(clk), .Q(o_fail_func[11]) );
  DFFHQX8 \o_fail_func_reg[8]  ( .D(n151), .CK(clk), .Q(o_fail_func[8]) );
  DFFHQX8 \o_fail_func_reg[5]  ( .D(n154), .CK(clk), .Q(o_fail_func[5]) );
  DFFHQX8 \last_ff_map_reg[2]  ( .D(n160), .CK(clk), .Q(last_ff_map[2]) );
  DFFQX2 \o_fail_func_reg[21]  ( .D(n138), .CK(clk), .Q(o_fail_func[21]) );
  DFFQX2 \o_fail_func_reg[22]  ( .D(n137), .CK(clk), .Q(o_fail_func[22]) );
  DFFQX2 \o_fail_func_reg[23]  ( .D(n136), .CK(clk), .Q(o_fail_func[23]) );
  DFFQX2 o_valid_reg ( .D(n166), .CK(clk), .Q(o_valid) );
  DFFQX2 \process_idx_reg[0]  ( .D(n164), .CK(clk), .Q(process_idx[0]) );
  DFFQX2 \last_ff_map_reg[0]  ( .D(n162), .CK(clk), .Q(last_ff_map[0]) );
  TLATX1 \next_st_reg[1]  ( .G(n7), .D(N60), .Q(next_st[1]) );
  TLATX1 \next_st_reg[0]  ( .G(n7), .D(N59), .Q(next_st[0]) );
  DFFTRX2 \current_st_reg[1]  ( .D(next_st[1]), .RN(n179), .CK(clk), .Q(
        current_st[1]), .QN(n12) );
  EDFFX2 done_flag_reg ( .D(n188), .E(n10), .CK(clk), .Q(done_flag), .QN(n9)
         );
  DFFHQX8 \last_ff_map_reg[1]  ( .D(n161), .CK(clk), .Q(last_ff_map[1]) );
  DFFHQX4 \process_idx_reg[1]  ( .D(n165), .CK(clk), .Q(process_idx[1]) );
  DFFHQX4 \process_idx_reg[2]  ( .D(n163), .CK(clk), .Q(process_idx[2]) );
  BUFX6 U3 ( .A(n48), .Y(n22) );
  BUFX12 U4 ( .A(n42), .Y(n1) );
  INVX18 U5 ( .A(n5), .Y(n17) );
  BUFX20 U6 ( .A(n39), .Y(n2) );
  BUFX12 U10 ( .A(n31), .Y(n82) );
  CLKINVX16 U14 ( .A(n127), .Y(n16) );
  CLKAND2X12 U18 ( .A(n52), .B(n55), .Y(n4) );
  NAND2X8 U22 ( .A(n43), .B(n174), .Y(n3) );
  BUFX14 U23 ( .A(n36), .Y(n167) );
  INVX20 U25 ( .A(n4), .Y(n23) );
  INVX10 U26 ( .A(n18), .Y(n20) );
  BUFX20 U27 ( .A(n126), .Y(n14) );
  CLKINVX32 U28 ( .A(n32), .Y(n18) );
  NAND2BX8 U32 ( .AN(n51), .B(n52), .Y(n32) );
  XNOR2X2 U33 ( .A(n119), .B(n120), .Y(n57) );
  XNOR2X2 U34 ( .A(n112), .B(n113), .Y(n58) );
  NAND2X8 U35 ( .A(n173), .B(n43), .Y(n35) );
  INVX18 U36 ( .A(n43), .Y(n186) );
  INVX18 U38 ( .A(n15), .Y(n25) );
  INVX16 U40 ( .A(n187), .Y(n13) );
  INVX4 U41 ( .A(last_ff_map[2]), .Y(n195) );
  INVX6 U42 ( .A(n18), .Y(n19) );
  INVX10 U43 ( .A(n18), .Y(n21) );
  BUFX8 U45 ( .A(n46), .Y(n75) );
  BUFX18 U46 ( .A(n44), .Y(n89) );
  BUFX18 U48 ( .A(n40), .Y(n129) );
  INVX6 U49 ( .A(n25), .Y(n11) );
  NOR2X6 U50 ( .A(n132), .B(done_flag), .Y(n131) );
  INVX4 U52 ( .A(process_idx[0]), .Y(n171) );
  INVX4 U57 ( .A(n168), .Y(n169) );
  CLKAND2X12 U58 ( .A(n52), .B(n175), .Y(n5) );
  NAND2X4 U60 ( .A(n187), .B(n191), .Y(n130) );
  AND3X2 U65 ( .A(current_st[0]), .B(n179), .C(current_st[1]), .Y(n6) );
  OAI31X4 U66 ( .A0(n12), .A1(current_st[0]), .A2(n132), .B0(n11), .Y(N60) );
  CLKINVX4 U68 ( .A(n6), .Y(n7) );
  OAI31X4 U73 ( .A0(n132), .A1(current_st[1]), .A2(current_st[0]), .B0(n186), 
        .Y(N59) );
  NAND2X6 U74 ( .A(n66), .B(n9), .Y(n8) );
  INVX20 U76 ( .A(n8), .Y(n43) );
  INVX20 U81 ( .A(n66), .Y(n96) );
  INVX4 U82 ( .A(n96), .Y(n188) );
  AO2B2X4 U83 ( .B0(o_fail_func[7]), .B1(n89), .A0(n4), .A1N(n89), .Y(n152) );
  AO2B2X4 U85 ( .B0(o_fail_func[6]), .B1(n89), .A0(n5), .A1N(n89), .Y(n153) );
  AOI2BB1X4 U90 ( .A0N(n35), .A1N(n192), .B0(n183), .Y(n39) );
  AOI2BB1X4 U91 ( .A0N(n35), .A1N(n190), .B0(n182), .Y(n42) );
  AOI2BB1X4 U93 ( .A0N(n35), .A1N(n189), .B0(n184), .Y(n31) );
  BUFX3 U98 ( .A(n128), .Y(n10) );
  NOR3X8 U102 ( .A(n95), .B(n96), .C(n97), .Y(n59) );
  OR2X8 U104 ( .A(n96), .B(n43), .Y(n15) );
  OAI21X3 U106 ( .A0(n186), .A1(n49), .B0(n179), .Y(n48) );
  CLKINVX40 U108 ( .A(n180), .Y(n179) );
  AOI2BB1X4 U111 ( .A0N(n190), .A1N(n3), .B0(n181), .Y(n44) );
  OAI2B2X4 U112 ( .A1N(n16), .A0(n10), .B0(n14), .B1(n193), .Y(n163) );
  AND3X8 U114 ( .A(n179), .B(n12), .C(current_st[0]), .Y(n66) );
  OAI2BB2X4 U115 ( .B0(n82), .B1(n23), .A0N(o_fail_func[22]), .A1N(n82), .Y(
        n137) );
  NAND2X8 U117 ( .A(n188), .B(n56), .Y(n128) );
  AOI31X4 U118 ( .A0(n173), .A1(n187), .A2(n176), .B0(n177), .Y(n127) );
  CLKINVX40 U119 ( .A(n25), .Y(n187) );
  AOI2BB1X4 U120 ( .A0N(n186), .A1N(n47), .B0(n181), .Y(n46) );
  OAI22X4 U121 ( .A0(n175), .A1(n11), .B0(n17), .B1(n50), .Y(n162) );
  OAI22X4 U122 ( .A0(n194), .A1(n11), .B0(n23), .B1(n50), .Y(n161) );
  OAI2BB2X4 U123 ( .B0(n82), .B1(n17), .A0N(o_fail_func[21]), .A1N(n82), .Y(
        n138) );
  OAI2BB2X4 U127 ( .B0(n82), .B1(n20), .A0N(o_fail_func[23]), .A1N(n82), .Y(
        n136) );
  AOI2BB1X4 U128 ( .A0N(n189), .A1N(n3), .B0(n183), .Y(n36) );
  AOI2BB1X4 U129 ( .A0N(n192), .A1N(n3), .B0(n182), .Y(n40) );
  OR2X2 U130 ( .A(n195), .B(n194), .Y(n70) );
  INVX8 U131 ( .A(n70), .Y(n24) );
  CLKINVX40 U132 ( .A(last_ff_map[1]), .Y(n194) );
  OR2X2 U133 ( .A(n195), .B(last_ff_map[1]), .Y(n37) );
  INVX18 U134 ( .A(n26), .Y(n38) );
  INVX10 U135 ( .A(n27), .Y(n47) );
  OA22X2 U136 ( .A0(n67), .A1(n175), .B0(n170), .B1(n68), .Y(n29) );
  OA22X2 U137 ( .A0(n83), .A1(n175), .B0(n170), .B1(n84), .Y(n33) );
  OA22X2 U138 ( .A0(n76), .A1(n175), .B0(n170), .B1(n77), .Y(n34) );
  OA22X2 U139 ( .A0(n90), .A1(n175), .B0(n170), .B1(n91), .Y(n30) );
  INVX18 U140 ( .A(n37), .Y(n54) );
  INVX18 U141 ( .A(n28), .Y(n53) );
  NOR2BX2 U142 ( .AN(o_fail_func[0]), .B(n22), .Y(n159) );
  BUFX20 U143 ( .A(n185), .Y(n180) );
  XOR2X8 U144 ( .A(n98), .B(n99), .Y(n97) );
  XOR2X8 U145 ( .A(n105), .B(n106), .Y(n95) );
  OR2X2 U146 ( .A(n193), .B(n191), .Y(n26) );
  INVX14 U147 ( .A(n171), .Y(n173) );
  AND3X2 U148 ( .A(n191), .B(n193), .C(n173), .Y(n27) );
  NAND3X3 U149 ( .A(n191), .B(n193), .C(n174), .Y(n49) );
  OR2X2 U150 ( .A(n194), .B(last_ff_map[2]), .Y(n28) );
  XNOR2X2 U151 ( .A(n65), .B(n29), .Y(n64) );
  XNOR2X2 U152 ( .A(n88), .B(n30), .Y(n61) );
  XNOR2X2 U153 ( .A(n81), .B(n33), .Y(n62) );
  XNOR2X2 U154 ( .A(n74), .B(n34), .Y(n63) );
  NOR2BX2 U155 ( .AN(o_fail_func[1]), .B(n22), .Y(n158) );
  NOR2BX2 U156 ( .AN(o_fail_func[2]), .B(n22), .Y(n157) );
  BUFX20 U157 ( .A(n45), .Y(n176) );
  NOR2X4 U158 ( .A(n191), .B(process_idx[2]), .Y(n45) );
  BUFX20 U159 ( .A(n41), .Y(n177) );
  NOR2X4 U160 ( .A(n193), .B(process_idx[1]), .Y(n41) );
  NAND2X4 U161 ( .A(i_valid), .B(n179), .Y(n132) );
  INVX18 U162 ( .A(process_idx[2]), .Y(n193) );
  INVX18 U163 ( .A(process_idx[1]), .Y(n191) );
  CLKINVX1 U164 ( .A(pattern[13]), .Y(n198) );
  CLKINVX1 U165 ( .A(pattern[14]), .Y(n197) );
  CLKINVX1 U166 ( .A(pattern[15]), .Y(n196) );
  CLKINVX1 U167 ( .A(pattern[12]), .Y(n199) );
  BUFX2 U168 ( .A(n185), .Y(n181) );
  BUFX2 U169 ( .A(n185), .Y(n182) );
  BUFX2 U170 ( .A(n185), .Y(n183) );
  BUFX2 U171 ( .A(n185), .Y(n184) );
  BUFX12 U172 ( .A(n171), .Y(n174) );
  BUFX12 U173 ( .A(n168), .Y(n175) );
  INVX2 U174 ( .A(n38), .Y(n189) );
  XNOR2X2 U175 ( .A(n194), .B(n169), .Y(n55) );
  INVX2 U176 ( .A(n171), .Y(n172) );
  NOR4X4 U177 ( .A(n61), .B(n62), .C(n63), .D(n64), .Y(n60) );
  INVX2 U178 ( .A(n176), .Y(n190) );
  INVX2 U179 ( .A(n177), .Y(n192) );
  INVX6 U180 ( .A(n168), .Y(n170) );
  AO22X2 U181 ( .A0(n54), .A1(pattern[35]), .B0(n53), .B1(pattern[19]), .Y(n71) );
  AO22X2 U182 ( .A0(n54), .A1(pattern[34]), .B0(n53), .B1(pattern[18]), .Y(n78) );
  AO22X2 U183 ( .A0(n54), .A1(pattern[33]), .B0(n53), .B1(pattern[17]), .Y(n85) );
  AO22X2 U184 ( .A0(n54), .A1(pattern[32]), .B0(n53), .B1(pattern[16]), .Y(n92) );
  OAI22X2 U185 ( .A0(n100), .A1(n175), .B0(n170), .B1(n101), .Y(n99) );
  AO22X2 U186 ( .A0(pattern[37]), .A1(n54), .B0(pattern[21]), .B1(n53), .Y(
        n102) );
  OAI22X2 U187 ( .A0(n107), .A1(n175), .B0(n170), .B1(n108), .Y(n106) );
  AO22X2 U188 ( .A0(n54), .A1(pattern[36]), .B0(n53), .B1(pattern[20]), .Y(
        n109) );
  OAI22X2 U189 ( .A0(n116), .A1(n175), .B0(n169), .B1(n117), .Y(n112) );
  AO22X2 U190 ( .A0(n54), .A1(pattern[38]), .B0(n53), .B1(pattern[22]), .Y(
        n118) );
  OAI22X2 U191 ( .A0(n123), .A1(n175), .B0(n169), .B1(n124), .Y(n119) );
  AO22X2 U192 ( .A0(n54), .A1(pattern[39]), .B0(n53), .B1(pattern[23]), .Y(
        n125) );
  OAI2BB2X2 U193 ( .B0(n131), .B1(n132), .A0N(o_valid), .A1N(n131), .Y(n166)
         );
  INVX2 U194 ( .A(pattern[10]), .Y(n201) );
  INVX2 U195 ( .A(pattern[9]), .Y(n202) );
  INVX2 U196 ( .A(pattern[8]), .Y(n203) );
  INVX2 U197 ( .A(pattern[11]), .Y(n200) );
  NAND3X4 U198 ( .A(n133), .B(n134), .C(n135), .Y(n56) );
  XNOR2X2 U199 ( .A(process_idx[1]), .B(last_pat_idx[1]), .Y(n133) );
  XNOR2X2 U200 ( .A(n173), .B(last_pat_idx[0]), .Y(n134) );
  XNOR2X2 U201 ( .A(process_idx[2]), .B(last_pat_idx[2]), .Y(n135) );
  CLKBUFX16 U202 ( .A(n69), .Y(n178) );
  NOR2X2 U203 ( .A(last_ff_map[1]), .B(last_ff_map[2]), .Y(n69) );
  INVX4 U204 ( .A(last_ff_map[0]), .Y(n168) );
  CLKBUFX40 U205 ( .A(reset), .Y(n185) );
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
  wire   n626, n627, n628, n629, read_done, ff_valid, N65, N66, N67, N68, n7,
         n8, n9, n10, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         \add_69_S2/carry[4] , \add_69_S2/carry[3] , \add_69_S2/carry[2] , n1,
         n2, n3, n4, n5, n6, n11, n12, n13, n14, n15, n26, n40, n92, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n542, n543, n544, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625;
  wire   [4:0] s_index;
  wire   [2:0] p_index;
  wire   [1:0] active;

  OAI2BB2X4 U4 ( .B0(n598), .B1(n608), .A0N(str_reg[255]), .A1N(n598), .Y(n95)
         );
  OAI2BB2X4 U5 ( .B0(n598), .B1(n520), .A0N(str_reg[254]), .A1N(n598), .Y(n96)
         );
  OAI2BB2X4 U6 ( .B0(n598), .B1(n603), .A0N(str_reg[253]), .A1N(n598), .Y(n97)
         );
  OAI2BB2X4 U7 ( .B0(n598), .B1(n527), .A0N(str_reg[252]), .A1N(n598), .Y(n98)
         );
  OAI2BB2X4 U8 ( .B0(n598), .B1(n15), .A0N(str_reg[251]), .A1N(n598), .Y(n99)
         );
  OAI2BB2X4 U9 ( .B0(n598), .B1(n503), .A0N(str_reg[250]), .A1N(n598), .Y(n100) );
  OAI2BB2X4 U10 ( .B0(n598), .B1(n507), .A0N(str_reg[249]), .A1N(n598), .Y(
        n101) );
  OAI2BB2X4 U11 ( .B0(n598), .B1(n599), .A0N(str_reg[248]), .A1N(n598), .Y(
        n102) );
  OAI2BB2X4 U13 ( .B0(n597), .B1(n608), .A0N(str_reg[247]), .A1N(n597), .Y(
        n103) );
  OAI2BB2X4 U14 ( .B0(n597), .B1(n520), .A0N(str_reg[246]), .A1N(n597), .Y(
        n104) );
  OAI2BB2X4 U15 ( .B0(n597), .B1(n603), .A0N(str_reg[245]), .A1N(n597), .Y(
        n105) );
  OAI2BB2X4 U16 ( .B0(n597), .B1(n528), .A0N(str_reg[244]), .A1N(n597), .Y(
        n106) );
  OAI2BB2X4 U17 ( .B0(n597), .B1(n20), .A0N(str_reg[243]), .A1N(n597), .Y(n107) );
  OAI2BB2X4 U18 ( .B0(n597), .B1(n502), .A0N(str_reg[242]), .A1N(n597), .Y(
        n108) );
  OAI2BB2X4 U19 ( .B0(n597), .B1(n506), .A0N(str_reg[241]), .A1N(n597), .Y(
        n109) );
  OAI2BB2X4 U20 ( .B0(n597), .B1(n600), .A0N(str_reg[240]), .A1N(n597), .Y(
        n110) );
  OAI2BB2X4 U22 ( .B0(n596), .B1(n608), .A0N(str_reg[239]), .A1N(n596), .Y(
        n111) );
  OAI2BB2X4 U23 ( .B0(n596), .B1(n520), .A0N(str_reg[238]), .A1N(n596), .Y(
        n112) );
  OAI2BB2X4 U24 ( .B0(n596), .B1(n603), .A0N(str_reg[237]), .A1N(n596), .Y(
        n113) );
  OAI2BB2X4 U25 ( .B0(n596), .B1(n529), .A0N(str_reg[236]), .A1N(n596), .Y(
        n114) );
  OAI2BB2X4 U26 ( .B0(n596), .B1(n512), .A0N(str_reg[235]), .A1N(n596), .Y(
        n115) );
  OAI2BB2X4 U27 ( .B0(n596), .B1(n505), .A0N(str_reg[234]), .A1N(n596), .Y(
        n116) );
  OAI2BB2X4 U28 ( .B0(n596), .B1(n509), .A0N(str_reg[233]), .A1N(n596), .Y(
        n117) );
  OAI2BB2X4 U29 ( .B0(n596), .B1(n599), .A0N(str_reg[232]), .A1N(n596), .Y(
        n118) );
  AOI2BB1X4 U30 ( .A0N(n24), .A1N(n29), .B0(n609), .Y(n28) );
  OAI2BB2X4 U31 ( .B0(n594), .B1(n608), .A0N(str_reg[231]), .A1N(n594), .Y(
        n119) );
  OAI2BB2X4 U32 ( .B0(n594), .B1(n521), .A0N(str_reg[230]), .A1N(n594), .Y(
        n120) );
  OAI2BB2X4 U33 ( .B0(n594), .B1(n603), .A0N(str_reg[229]), .A1N(n594), .Y(
        n121) );
  OAI2BB2X4 U34 ( .B0(n594), .B1(n527), .A0N(str_reg[228]), .A1N(n594), .Y(
        n122) );
  OAI2BB2X4 U35 ( .B0(n594), .B1(n512), .A0N(str_reg[227]), .A1N(n594), .Y(
        n123) );
  OAI2BB2X4 U36 ( .B0(n594), .B1(n503), .A0N(str_reg[226]), .A1N(n594), .Y(
        n124) );
  OAI2BB2X4 U37 ( .B0(n594), .B1(n22), .A0N(str_reg[225]), .A1N(n594), .Y(n125) );
  OAI2BB2X4 U38 ( .B0(n594), .B1(n11), .A0N(str_reg[224]), .A1N(n594), .Y(n126) );
  AOI2BB1X4 U39 ( .A0N(n24), .A1N(n31), .B0(n610), .Y(n30) );
  OAI2BB2X4 U40 ( .B0(n535), .B1(n607), .A0N(str_reg[223]), .A1N(n536), .Y(
        n127) );
  OAI2BB2X4 U41 ( .B0(n592), .B1(n17), .A0N(str_reg[222]), .A1N(n592), .Y(n128) );
  OAI2BB2X4 U42 ( .B0(n535), .B1(n602), .A0N(str_reg[221]), .A1N(n536), .Y(
        n129) );
  OAI2BB2X4 U43 ( .B0(n592), .B1(n528), .A0N(str_reg[220]), .A1N(n592), .Y(
        n130) );
  OAI2BB2X4 U44 ( .B0(n535), .B1(n511), .A0N(str_reg[219]), .A1N(n536), .Y(
        n131) );
  OAI2BB2X4 U45 ( .B0(n592), .B1(n505), .A0N(str_reg[218]), .A1N(n592), .Y(
        n132) );
  OAI2BB2X4 U46 ( .B0(n535), .B1(n509), .A0N(str_reg[217]), .A1N(n536), .Y(
        n133) );
  OAI2BB2X4 U47 ( .B0(n592), .B1(n11), .A0N(str_reg[216]), .A1N(n592), .Y(n134) );
  OAI2BB2X4 U49 ( .B0(n530), .B1(n607), .A0N(str_reg[215]), .A1N(n531), .Y(
        n135) );
  OAI2BB2X4 U50 ( .B0(n590), .B1(n525), .A0N(str_reg[214]), .A1N(n590), .Y(
        n136) );
  OAI2BB2X4 U51 ( .B0(n530), .B1(n602), .A0N(str_reg[213]), .A1N(n531), .Y(
        n137) );
  OAI2BB2X4 U52 ( .B0(n590), .B1(n527), .A0N(str_reg[212]), .A1N(n590), .Y(
        n138) );
  OAI2BB2X4 U53 ( .B0(n530), .B1(n15), .A0N(str_reg[211]), .A1N(n531), .Y(n139) );
  OAI2BB2X4 U54 ( .B0(n590), .B1(n505), .A0N(str_reg[210]), .A1N(n590), .Y(
        n140) );
  OAI2BB2X4 U55 ( .B0(n530), .B1(n509), .A0N(str_reg[209]), .A1N(n531), .Y(
        n141) );
  OAI2BB2X4 U56 ( .B0(n590), .B1(n11), .A0N(str_reg[208]), .A1N(n590), .Y(n142) );
  OAI2BB2X4 U58 ( .B0(n538), .B1(n607), .A0N(str_reg[207]), .A1N(n588), .Y(
        n143) );
  OAI2BB2X4 U60 ( .B0(n538), .B1(n602), .A0N(str_reg[205]), .A1N(n588), .Y(
        n145) );
  OAI2BB2X4 U62 ( .B0(n588), .B1(n20), .A0N(str_reg[203]), .A1N(n588), .Y(n147) );
  OAI2BB2X4 U64 ( .B0(n588), .B1(n509), .A0N(str_reg[201]), .A1N(n588), .Y(
        n149) );
  OAI2BB2X4 U67 ( .B0(n533), .B1(n607), .A0N(str_reg[199]), .A1N(n534), .Y(
        n151) );
  OAI2BB2X4 U68 ( .B0(n585), .B1(n523), .A0N(str_reg[198]), .A1N(n585), .Y(
        n152) );
  OAI2BB2X4 U69 ( .B0(n533), .B1(n602), .A0N(str_reg[197]), .A1N(n534), .Y(
        n153) );
  OAI2BB2X4 U70 ( .B0(n585), .B1(n528), .A0N(str_reg[196]), .A1N(n585), .Y(
        n154) );
  OAI2BB2X4 U71 ( .B0(n533), .B1(n510), .A0N(str_reg[195]), .A1N(n534), .Y(
        n155) );
  OAI2BB2X4 U72 ( .B0(n585), .B1(n504), .A0N(str_reg[194]), .A1N(n585), .Y(
        n156) );
  OAI2BB2X4 U73 ( .B0(n533), .B1(n508), .A0N(str_reg[193]), .A1N(n534), .Y(
        n157) );
  OAI2BB2X4 U74 ( .B0(n585), .B1(n11), .A0N(str_reg[192]), .A1N(n585), .Y(n158) );
  OAI2BB2X4 U77 ( .B0(n583), .B1(n607), .A0N(str_reg[191]), .A1N(n583), .Y(
        n159) );
  OAI2BB2X4 U78 ( .B0(n583), .B1(n525), .A0N(str_reg[190]), .A1N(n583), .Y(
        n160) );
  OAI2BB2X4 U79 ( .B0(n583), .B1(n602), .A0N(str_reg[189]), .A1N(n583), .Y(
        n161) );
  OAI2BB2X4 U80 ( .B0(n583), .B1(n527), .A0N(str_reg[188]), .A1N(n583), .Y(
        n162) );
  OAI2BB2X4 U81 ( .B0(n583), .B1(n20), .A0N(str_reg[187]), .A1N(n583), .Y(n163) );
  OAI2BB2X4 U82 ( .B0(n583), .B1(n505), .A0N(str_reg[186]), .A1N(n583), .Y(
        n164) );
  OAI2BB2X4 U83 ( .B0(n583), .B1(n509), .A0N(str_reg[185]), .A1N(n583), .Y(
        n165) );
  OAI2BB2X4 U84 ( .B0(n583), .B1(n11), .A0N(str_reg[184]), .A1N(n583), .Y(n166) );
  OAI2BB2X4 U86 ( .B0(n582), .B1(n607), .A0N(str_reg[183]), .A1N(n582), .Y(
        n167) );
  OAI2BB2X4 U88 ( .B0(n582), .B1(n602), .A0N(str_reg[181]), .A1N(n582), .Y(
        n169) );
  OAI2BB2X4 U95 ( .B0(n581), .B1(n607), .A0N(str_reg[175]), .A1N(n581), .Y(
        n175) );
  OAI2BB2X4 U96 ( .B0(n581), .B1(n523), .A0N(str_reg[174]), .A1N(n581), .Y(
        n176) );
  OAI2BB2X4 U97 ( .B0(n581), .B1(n602), .A0N(str_reg[173]), .A1N(n581), .Y(
        n177) );
  OAI2BB2X4 U98 ( .B0(n581), .B1(n529), .A0N(str_reg[172]), .A1N(n581), .Y(
        n178) );
  OAI2BB2X4 U99 ( .B0(n581), .B1(n14), .A0N(str_reg[171]), .A1N(n581), .Y(n179) );
  OAI2BB2X4 U100 ( .B0(n581), .B1(n504), .A0N(str_reg[170]), .A1N(n581), .Y(
        n180) );
  OAI2BB2X4 U101 ( .B0(n581), .B1(n508), .A0N(str_reg[169]), .A1N(n581), .Y(
        n181) );
  OAI2BB2X4 U102 ( .B0(n581), .B1(n11), .A0N(str_reg[168]), .A1N(n581), .Y(
        n182) );
  AOI2BB1X4 U103 ( .A0N(n29), .A1N(n42), .B0(n611), .Y(n44) );
  OAI2BB2X4 U104 ( .B0(n580), .B1(n607), .A0N(str_reg[167]), .A1N(n580), .Y(
        n183) );
  OAI2BB2X4 U105 ( .B0(n580), .B1(n523), .A0N(str_reg[166]), .A1N(n580), .Y(
        n184) );
  OAI2BB2X4 U106 ( .B0(n580), .B1(n602), .A0N(str_reg[165]), .A1N(n580), .Y(
        n185) );
  OAI2BB2X4 U107 ( .B0(n580), .B1(n527), .A0N(str_reg[164]), .A1N(n580), .Y(
        n186) );
  OAI2BB2X4 U108 ( .B0(n580), .B1(n511), .A0N(str_reg[163]), .A1N(n580), .Y(
        n187) );
  OAI2BB2X4 U109 ( .B0(n580), .B1(n505), .A0N(str_reg[162]), .A1N(n580), .Y(
        n188) );
  OAI2BB2X4 U110 ( .B0(n580), .B1(n509), .A0N(str_reg[161]), .A1N(n580), .Y(
        n189) );
  OAI2BB2X4 U111 ( .B0(n580), .B1(n11), .A0N(str_reg[160]), .A1N(n580), .Y(
        n190) );
  AOI2BB1X4 U112 ( .A0N(n31), .A1N(n42), .B0(n612), .Y(n45) );
  OAI2BB2X4 U113 ( .B0(n579), .B1(n607), .A0N(str_reg[159]), .A1N(n579), .Y(
        n191) );
  OAI2BB2X4 U114 ( .B0(n579), .B1(n521), .A0N(str_reg[158]), .A1N(n579), .Y(
        n192) );
  OAI2BB2X4 U115 ( .B0(n579), .B1(n602), .A0N(str_reg[157]), .A1N(n579), .Y(
        n193) );
  OAI2BB2X4 U116 ( .B0(n579), .B1(n527), .A0N(str_reg[156]), .A1N(n579), .Y(
        n194) );
  OAI2BB2X4 U117 ( .B0(n579), .B1(n14), .A0N(str_reg[155]), .A1N(n579), .Y(
        n195) );
  OAI2BB2X4 U118 ( .B0(n579), .B1(n502), .A0N(str_reg[154]), .A1N(n579), .Y(
        n196) );
  OAI2BB2X4 U119 ( .B0(n579), .B1(n506), .A0N(str_reg[153]), .A1N(n579), .Y(
        n197) );
  OAI2BB2X4 U120 ( .B0(n579), .B1(n11), .A0N(str_reg[152]), .A1N(n579), .Y(
        n198) );
  AOI2BB1X4 U121 ( .A0N(n33), .A1N(n42), .B0(n611), .Y(n46) );
  OAI2BB2X4 U122 ( .B0(n578), .B1(n607), .A0N(str_reg[151]), .A1N(n578), .Y(
        n199) );
  OAI2BB2X4 U123 ( .B0(n578), .B1(n523), .A0N(str_reg[150]), .A1N(n578), .Y(
        n200) );
  OAI2BB2X4 U124 ( .B0(n578), .B1(n602), .A0N(str_reg[149]), .A1N(n578), .Y(
        n201) );
  OAI2BB2X4 U125 ( .B0(n578), .B1(n529), .A0N(str_reg[148]), .A1N(n578), .Y(
        n202) );
  OAI2BB2X4 U126 ( .B0(n578), .B1(n510), .A0N(str_reg[147]), .A1N(n578), .Y(
        n203) );
  OAI2BB2X4 U127 ( .B0(n578), .B1(n504), .A0N(str_reg[146]), .A1N(n578), .Y(
        n204) );
  OAI2BB2X4 U128 ( .B0(n578), .B1(n508), .A0N(str_reg[145]), .A1N(n578), .Y(
        n205) );
  OAI2BB2X4 U129 ( .B0(n578), .B1(n11), .A0N(str_reg[144]), .A1N(n578), .Y(
        n206) );
  AOI2BB1X4 U130 ( .A0N(n35), .A1N(n42), .B0(n612), .Y(n47) );
  OAI2BB2X4 U131 ( .B0(n577), .B1(n607), .A0N(str_reg[143]), .A1N(n577), .Y(
        n207) );
  OAI2BB2X4 U132 ( .B0(n577), .B1(n525), .A0N(str_reg[142]), .A1N(n577), .Y(
        n208) );
  OAI2BB2X4 U133 ( .B0(n577), .B1(n602), .A0N(str_reg[141]), .A1N(n577), .Y(
        n209) );
  OAI2BB2X4 U134 ( .B0(n577), .B1(n527), .A0N(str_reg[140]), .A1N(n577), .Y(
        n210) );
  OAI2BB2X4 U135 ( .B0(n577), .B1(n512), .A0N(str_reg[139]), .A1N(n577), .Y(
        n211) );
  OAI2BB2X4 U136 ( .B0(n577), .B1(n505), .A0N(str_reg[138]), .A1N(n577), .Y(
        n212) );
  OAI2BB2X4 U137 ( .B0(n577), .B1(n509), .A0N(str_reg[137]), .A1N(n577), .Y(
        n213) );
  OAI2BB2X4 U138 ( .B0(n577), .B1(n11), .A0N(str_reg[136]), .A1N(n577), .Y(
        n214) );
  AOI2BB1X4 U139 ( .A0N(n37), .A1N(n42), .B0(n612), .Y(n48) );
  OAI2BB2X4 U140 ( .B0(n576), .B1(n607), .A0N(str_reg[135]), .A1N(n576), .Y(
        n215) );
  OAI2BB2X4 U141 ( .B0(n576), .B1(n525), .A0N(str_reg[134]), .A1N(n576), .Y(
        n216) );
  OAI2BB2X4 U142 ( .B0(n576), .B1(n602), .A0N(str_reg[133]), .A1N(n576), .Y(
        n217) );
  OAI2BB2X4 U143 ( .B0(n576), .B1(n529), .A0N(str_reg[132]), .A1N(n576), .Y(
        n218) );
  OAI2BB2X4 U144 ( .B0(n576), .B1(n20), .A0N(str_reg[131]), .A1N(n576), .Y(
        n219) );
  OAI2BB2X4 U145 ( .B0(n576), .B1(n504), .A0N(str_reg[130]), .A1N(n576), .Y(
        n220) );
  OAI2BB2X4 U146 ( .B0(n576), .B1(n508), .A0N(str_reg[129]), .A1N(n576), .Y(
        n221) );
  OAI2BB2X4 U147 ( .B0(n576), .B1(n11), .A0N(str_reg[128]), .A1N(n576), .Y(
        n222) );
  AOI2BB1X4 U148 ( .A0N(n39), .A1N(n42), .B0(n613), .Y(n49) );
  OAI2BB2X4 U223 ( .B0(n567), .B1(n606), .A0N(str_reg[63]), .A1N(n567), .Y(
        n287) );
  OAI2BB2X4 U224 ( .B0(n567), .B1(n520), .A0N(str_reg[62]), .A1N(n567), .Y(
        n288) );
  OAI2BB2X4 U225 ( .B0(n567), .B1(n443), .A0N(str_reg[61]), .A1N(n567), .Y(
        n289) );
  OAI2BB2X4 U226 ( .B0(n567), .B1(n529), .A0N(str_reg[60]), .A1N(n567), .Y(
        n290) );
  OAI2BB2X4 U227 ( .B0(n567), .B1(n512), .A0N(str_reg[59]), .A1N(n567), .Y(
        n291) );
  OAI2BB2X4 U228 ( .B0(n567), .B1(n504), .A0N(str_reg[58]), .A1N(n567), .Y(
        n292) );
  OAI2BB2X4 U229 ( .B0(n567), .B1(n508), .A0N(str_reg[57]), .A1N(n567), .Y(
        n293) );
  OAI2BB2X4 U230 ( .B0(n567), .B1(n599), .A0N(str_reg[56]), .A1N(n567), .Y(
        n294) );
  AOI2BB1X4 U231 ( .A0N(n25), .A1N(n549), .B0(n611), .Y(n59) );
  OAI2BB2X4 U235 ( .B0(n566), .B1(n443), .A0N(str_reg[53]), .A1N(n566), .Y(
        n297) );
  AOI2BB1X4 U241 ( .A0N(n27), .A1N(n549), .B0(n612), .Y(n61) );
  OAI2BB2X4 U255 ( .B0(n564), .B1(n443), .A0N(str_reg[37]), .A1N(n564), .Y(
        n313) );
  AOI2BB1X4 U261 ( .A0N(n31), .A1N(n549), .B0(n613), .Y(n63) );
  OAI2BB2X4 U264 ( .B0(n563), .B1(n519), .A0N(str_reg[30]), .A1N(n563), .Y(
        n320) );
  OAI2BB2X4 U265 ( .B0(n563), .B1(n443), .A0N(str_reg[29]), .A1N(n563), .Y(
        n321) );
  OAI2BB2X4 U266 ( .B0(n563), .B1(n527), .A0N(str_reg[28]), .A1N(n563), .Y(
        n322) );
  OAI2BB2X4 U267 ( .B0(n563), .B1(n513), .A0N(str_reg[27]), .A1N(n563), .Y(
        n323) );
  OAI2BB2X4 U268 ( .B0(n563), .B1(n503), .A0N(str_reg[26]), .A1N(n563), .Y(
        n324) );
  OAI2BB2X4 U269 ( .B0(n563), .B1(n507), .A0N(str_reg[25]), .A1N(n563), .Y(
        n325) );
  OAI2BB2X4 U270 ( .B0(n563), .B1(n599), .A0N(str_reg[24]), .A1N(n563), .Y(
        n326) );
  OAI2BB2X4 U273 ( .B0(n562), .B1(n608), .A0N(str_reg[23]), .A1N(n562), .Y(
        n327) );
  OAI2BB2X4 U275 ( .B0(n562), .B1(n443), .A0N(str_reg[21]), .A1N(n562), .Y(
        n329) );
  AOI2BB1X4 U281 ( .A0N(n35), .A1N(n549), .B0(n613), .Y(n65) );
  OAI2BB2X4 U285 ( .B0(n561), .B1(n443), .A0N(str_reg[13]), .A1N(n561), .Y(
        n337) );
  AOI2BB1X4 U291 ( .A0N(n37), .A1N(n549), .B0(n613), .Y(n66) );
  OAI2BB2X4 U295 ( .B0(n560), .B1(n443), .A0N(str_reg[5]), .A1N(n560), .Y(n345) );
  AOI2BB1X4 U301 ( .A0N(n39), .A1N(n549), .B0(n613), .Y(n67) );
  AOI2B1X4 U312 ( .A1N(n73), .A0(active[1]), .B0(n622), .Y(n71) );
  NAND3BX4 U316 ( .AN(active[0]), .B(n72), .C(active[1]), .Y(n77) );
  NOR2X8 U318 ( .A(n609), .B(write), .Y(n72) );
  OAI2BB2X4 U319 ( .B0(n559), .B1(n606), .A0N(pat_reg[63]), .A1N(n559), .Y(
        n359) );
  OAI2BB2X4 U320 ( .B0(n559), .B1(n523), .A0N(pat_reg[62]), .A1N(n559), .Y(
        n360) );
  OAI2BB2X4 U321 ( .B0(n559), .B1(n443), .A0N(pat_reg[61]), .A1N(n559), .Y(
        n361) );
  OAI2BB2X4 U322 ( .B0(n559), .B1(n527), .A0N(pat_reg[60]), .A1N(n559), .Y(
        n362) );
  OAI2BB2X4 U323 ( .B0(n559), .B1(n512), .A0N(pat_reg[59]), .A1N(n559), .Y(
        n363) );
  OAI2BB2X4 U324 ( .B0(n559), .B1(n503), .A0N(pat_reg[58]), .A1N(n559), .Y(
        n364) );
  OAI2BB2X4 U325 ( .B0(n559), .B1(n507), .A0N(pat_reg[57]), .A1N(n559), .Y(
        n365) );
  OAI2BB2X4 U326 ( .B0(n559), .B1(n599), .A0N(pat_reg[56]), .A1N(n559), .Y(
        n366) );
  AOI2BB1X4 U327 ( .A0N(n79), .A1N(n515), .B0(n614), .Y(n78) );
  AOI31X4 U336 ( .A0(n81), .A1(n618), .A2(p_index[1]), .B0(n614), .Y(n80) );
  OAI2BB2X4 U337 ( .B0(n557), .B1(n606), .A0N(pat_reg[47]), .A1N(n557), .Y(
        n375) );
  OAI2BB2X4 U338 ( .B0(n557), .B1(n525), .A0N(pat_reg[46]), .A1N(n557), .Y(
        n376) );
  OAI2BB2X4 U339 ( .B0(n557), .B1(n443), .A0N(pat_reg[45]), .A1N(n557), .Y(
        n377) );
  OAI2BB2X4 U340 ( .B0(n557), .B1(n528), .A0N(pat_reg[44]), .A1N(n557), .Y(
        n378) );
  OAI2BB2X4 U341 ( .B0(n557), .B1(n20), .A0N(pat_reg[43]), .A1N(n557), .Y(n379) );
  OAI2BB2X4 U342 ( .B0(n557), .B1(n505), .A0N(pat_reg[42]), .A1N(n557), .Y(
        n380) );
  OAI2BB2X4 U343 ( .B0(n557), .B1(n509), .A0N(pat_reg[41]), .A1N(n557), .Y(
        n381) );
  OAI2BB2X4 U344 ( .B0(n557), .B1(n599), .A0N(pat_reg[40]), .A1N(n557), .Y(
        n382) );
  AOI2BB1X4 U345 ( .A0N(n515), .A1N(n83), .B0(n614), .Y(n82) );
  OAI2BB2X4 U346 ( .B0(n490), .B1(n605), .A0N(pat_reg[39]), .A1N(n492), .Y(
        n383) );
  OAI2BB2X4 U347 ( .B0(n492), .B1(n521), .A0N(pat_reg[38]), .A1N(n491), .Y(
        n384) );
  OAI2BB2X4 U348 ( .B0(n491), .B1(n443), .A0N(pat_reg[37]), .A1N(n491), .Y(
        n385) );
  OAI2BB2X4 U349 ( .B0(n490), .B1(n529), .A0N(pat_reg[36]), .A1N(n491), .Y(
        n386) );
  OAI2BB2X4 U350 ( .B0(n490), .B1(n513), .A0N(pat_reg[35]), .A1N(n492), .Y(
        n387) );
  OAI2BB2X4 U351 ( .B0(n490), .B1(n504), .A0N(pat_reg[34]), .A1N(n492), .Y(
        n388) );
  OAI2BB2X4 U352 ( .B0(n490), .B1(n508), .A0N(pat_reg[33]), .A1N(n491), .Y(
        n389) );
  OAI2BB2X4 U353 ( .B0(n490), .B1(n599), .A0N(pat_reg[32]), .A1N(n492), .Y(
        n390) );
  AOI31X4 U354 ( .A0(n81), .A1(n619), .A2(n618), .B0(n614), .Y(n84) );
  AOI31X4 U373 ( .A0(n87), .A1(n618), .A2(p_index[1]), .B0(n615), .Y(n86) );
  OAI2BB2X4 U376 ( .B0(n554), .B1(n443), .A0N(pat_reg[13]), .A1N(n554), .Y(
        n409) );
  OAI2BB2X4 U383 ( .B0(n553), .B1(n606), .A0N(pat_reg[7]), .A1N(n553), .Y(n415) );
  OAI2BB2X4 U385 ( .B0(n553), .B1(n525), .A0N(pat_reg[6]), .A1N(n553), .Y(n416) );
  OAI2BB2X4 U387 ( .B0(n553), .B1(n443), .A0N(pat_reg[5]), .A1N(n553), .Y(n417) );
  OAI2BB2X4 U389 ( .B0(n553), .B1(n527), .A0N(pat_reg[4]), .A1N(n553), .Y(n418) );
  OAI2BB2X4 U391 ( .B0(n553), .B1(n512), .A0N(pat_reg[3]), .A1N(n553), .Y(n419) );
  OAI2BB2X4 U393 ( .B0(n553), .B1(n503), .A0N(pat_reg[2]), .A1N(n553), .Y(n420) );
  OAI2BB2X4 U395 ( .B0(n553), .B1(n509), .A0N(pat_reg[1]), .A1N(n553), .Y(n421) );
  OAI2BB2X4 U397 ( .B0(n553), .B1(n599), .A0N(pat_reg[0]), .A1N(n553), .Y(n422) );
  AOI31X4 U399 ( .A0(n87), .A1(n619), .A2(n618), .B0(n615), .Y(n89) );
  NAND2X8 U401 ( .A(w_sel), .B(n623), .Y(n70) );
  NOR2X8 U406 ( .A(n539), .B(n550), .Y(n90) );
  OAI32X4 U408 ( .A0(n446), .A1(p_index[2]), .A2(n79), .B0(n93), .B1(n620), 
        .Y(n426) );
  NAND2BX8 U417 ( .AN(n615), .B(write), .Y(n76) );
  DFFHQX8 \p_index_reg[0]  ( .D(n428), .CK(clk), .Q(p_index[0]) );
  DFFHQX8 \pat_reg_reg[63]  ( .D(n359), .CK(clk), .Q(pat_reg[63]) );
  DFFHQX8 \pat_reg_reg[62]  ( .D(n360), .CK(clk), .Q(pat_reg[62]) );
  DFFHQX8 \pat_reg_reg[61]  ( .D(n361), .CK(clk), .Q(pat_reg[61]) );
  DFFHQX8 \pat_reg_reg[60]  ( .D(n362), .CK(clk), .Q(pat_reg[60]) );
  DFFHQX8 \pat_reg_reg[59]  ( .D(n363), .CK(clk), .Q(pat_reg[59]) );
  DFFHQX8 \pat_reg_reg[58]  ( .D(n364), .CK(clk), .Q(pat_reg[58]) );
  DFFHQX8 \pat_reg_reg[57]  ( .D(n365), .CK(clk), .Q(pat_reg[57]) );
  DFFHQX8 \pat_reg_reg[56]  ( .D(n366), .CK(clk), .Q(pat_reg[56]) );
  DFFHQX8 \pat_reg_reg[47]  ( .D(n375), .CK(clk), .Q(pat_reg[47]) );
  DFFHQX8 \pat_reg_reg[46]  ( .D(n376), .CK(clk), .Q(pat_reg[46]) );
  DFFHQX8 \pat_reg_reg[45]  ( .D(n377), .CK(clk), .Q(pat_reg[45]) );
  DFFHQX8 \pat_reg_reg[44]  ( .D(n378), .CK(clk), .Q(pat_reg[44]) );
  DFFHQX8 \pat_reg_reg[43]  ( .D(n379), .CK(clk), .Q(pat_reg[43]) );
  DFFHQX8 \pat_reg_reg[42]  ( .D(n380), .CK(clk), .Q(pat_reg[42]) );
  DFFHQX8 \pat_reg_reg[41]  ( .D(n381), .CK(clk), .Q(pat_reg[41]) );
  DFFHQX8 \pat_reg_reg[40]  ( .D(n382), .CK(clk), .Q(pat_reg[40]) );
  DFFHQX8 \pat_reg_reg[55]  ( .D(n367), .CK(clk), .Q(pat_reg[55]) );
  DFFHQX8 \pat_reg_reg[54]  ( .D(n368), .CK(clk), .Q(pat_reg[54]) );
  DFFHQX8 \pat_reg_reg[53]  ( .D(n369), .CK(clk), .Q(pat_reg[53]) );
  DFFHQX8 \pat_reg_reg[52]  ( .D(n370), .CK(clk), .Q(pat_reg[52]) );
  DFFHQX8 \pat_reg_reg[51]  ( .D(n371), .CK(clk), .Q(pat_reg[51]) );
  DFFHQX8 \pat_reg_reg[50]  ( .D(n372), .CK(clk), .Q(pat_reg[50]) );
  DFFHQX8 \pat_reg_reg[49]  ( .D(n373), .CK(clk), .Q(pat_reg[49]) );
  DFFHQX8 \pat_reg_reg[48]  ( .D(n374), .CK(clk), .Q(pat_reg[48]) );
  DFFHQX8 \pat_reg_reg[39]  ( .D(n383), .CK(clk), .Q(pat_reg[39]) );
  DFFHQX8 \pat_reg_reg[38]  ( .D(n384), .CK(clk), .Q(pat_reg[38]) );
  DFFHQX8 \pat_reg_reg[37]  ( .D(n385), .CK(clk), .Q(pat_reg[37]) );
  DFFHQX8 \pat_reg_reg[36]  ( .D(n386), .CK(clk), .Q(pat_reg[36]) );
  DFFHQX8 \pat_reg_reg[35]  ( .D(n387), .CK(clk), .Q(pat_reg[35]) );
  DFFHQX8 \pat_reg_reg[34]  ( .D(n388), .CK(clk), .Q(pat_reg[34]) );
  DFFHQX8 \pat_reg_reg[33]  ( .D(n389), .CK(clk), .Q(pat_reg[33]) );
  DFFHQX8 \pat_reg_reg[32]  ( .D(n390), .CK(clk), .Q(pat_reg[32]) );
  DFFHQX8 \pat_reg_reg[31]  ( .D(n391), .CK(clk), .Q(pat_reg[31]) );
  DFFHQX8 \pat_reg_reg[30]  ( .D(n392), .CK(clk), .Q(pat_reg[30]) );
  DFFHQX8 \pat_reg_reg[29]  ( .D(n393), .CK(clk), .Q(pat_reg[29]) );
  DFFHQX8 \pat_reg_reg[28]  ( .D(n394), .CK(clk), .Q(pat_reg[28]) );
  DFFHQX8 \pat_reg_reg[27]  ( .D(n395), .CK(clk), .Q(pat_reg[27]) );
  DFFHQX8 \pat_reg_reg[26]  ( .D(n396), .CK(clk), .Q(pat_reg[26]) );
  DFFHQX8 \pat_reg_reg[25]  ( .D(n397), .CK(clk), .Q(pat_reg[25]) );
  DFFHQX8 \pat_reg_reg[24]  ( .D(n398), .CK(clk), .Q(pat_reg[24]) );
  DFFHQX8 \pat_reg_reg[15]  ( .D(n407), .CK(clk), .Q(pat_reg[15]) );
  DFFHQX8 \pat_reg_reg[14]  ( .D(n408), .CK(clk), .Q(pat_reg[14]) );
  DFFHQX8 \pat_reg_reg[13]  ( .D(n409), .CK(clk), .Q(pat_reg[13]) );
  DFFHQX8 \pat_reg_reg[12]  ( .D(n410), .CK(clk), .Q(pat_reg[12]) );
  DFFHQX8 \pat_reg_reg[11]  ( .D(n411), .CK(clk), .Q(pat_reg[11]) );
  DFFHQX8 \pat_reg_reg[10]  ( .D(n412), .CK(clk), .Q(pat_reg[10]) );
  DFFHQX8 \pat_reg_reg[9]  ( .D(n413), .CK(clk), .Q(pat_reg[9]) );
  DFFHQX8 \pat_reg_reg[8]  ( .D(n414), .CK(clk), .Q(pat_reg[8]) );
  DFFHQX8 \pat_reg_reg[23]  ( .D(n399), .CK(clk), .Q(pat_reg[23]) );
  DFFHQX8 \pat_reg_reg[22]  ( .D(n400), .CK(clk), .Q(pat_reg[22]) );
  DFFHQX8 \pat_reg_reg[21]  ( .D(n401), .CK(clk), .Q(pat_reg[21]) );
  DFFHQX8 \pat_reg_reg[20]  ( .D(n402), .CK(clk), .Q(pat_reg[20]) );
  DFFHQX8 \pat_reg_reg[19]  ( .D(n403), .CK(clk), .Q(pat_reg[19]) );
  DFFHQX8 \pat_reg_reg[18]  ( .D(n404), .CK(clk), .Q(pat_reg[18]) );
  DFFHQX8 \pat_reg_reg[17]  ( .D(n405), .CK(clk), .Q(pat_reg[17]) );
  DFFHQX8 \pat_reg_reg[16]  ( .D(n406), .CK(clk), .Q(pat_reg[16]) );
  DFFHQX8 \pat_reg_reg[7]  ( .D(n415), .CK(clk), .Q(pat_reg[7]) );
  DFFHQX8 \pat_reg_reg[6]  ( .D(n416), .CK(clk), .Q(pat_reg[6]) );
  DFFHQX8 \pat_reg_reg[5]  ( .D(n417), .CK(clk), .Q(pat_reg[5]) );
  DFFHQX8 \pat_reg_reg[4]  ( .D(n418), .CK(clk), .Q(pat_reg[4]) );
  DFFHQX8 \pat_reg_reg[3]  ( .D(n419), .CK(clk), .Q(pat_reg[3]) );
  DFFHQX8 \pat_reg_reg[2]  ( .D(n420), .CK(clk), .Q(pat_reg[2]) );
  DFFHQX8 \pat_reg_reg[1]  ( .D(n421), .CK(clk), .Q(pat_reg[1]) );
  DFFHQX8 \pat_reg_reg[0]  ( .D(n422), .CK(clk), .Q(pat_reg[0]) );
  EDFFTRX4 \s_index_reg[0]  ( .RN(n438), .D(n451), .E(n625), .CK(clk), .Q(
        s_index[0]) );
  EDFFTRX4 \s_index_reg[1]  ( .RN(n437), .D(N65), .E(n625), .CK(clk), .Q(
        s_index[1]), .QN(n10) );
  EDFFTRX4 \s_index_reg[2]  ( .RN(n437), .D(N66), .E(n625), .CK(clk), .Q(
        s_index[2]), .QN(n9) );
  EDFFTRX4 \s_index_reg[3]  ( .RN(n437), .D(N67), .E(n625), .CK(clk), .Q(
        s_index[3]), .QN(n8) );
  EDFFTRX4 \s_index_reg[4]  ( .RN(n438), .D(N68), .E(n625), .CK(clk), .Q(
        s_index[4]), .QN(n7) );
  DFFHQX8 \str_reg_reg[247]  ( .D(n103), .CK(clk), .Q(str_reg[247]) );
  DFFHQX8 \str_reg_reg[246]  ( .D(n104), .CK(clk), .Q(str_reg[246]) );
  DFFHQX8 \str_reg_reg[245]  ( .D(n105), .CK(clk), .Q(str_reg[245]) );
  DFFHQX8 \str_reg_reg[244]  ( .D(n106), .CK(clk), .Q(str_reg[244]) );
  DFFHQX8 \str_reg_reg[243]  ( .D(n107), .CK(clk), .Q(str_reg[243]) );
  DFFHQX8 \str_reg_reg[242]  ( .D(n108), .CK(clk), .Q(str_reg[242]) );
  DFFHQX8 \str_reg_reg[241]  ( .D(n109), .CK(clk), .Q(str_reg[241]) );
  DFFHQX8 \str_reg_reg[240]  ( .D(n110), .CK(clk), .Q(str_reg[240]) );
  DFFHQX8 \str_reg_reg[183]  ( .D(n167), .CK(clk), .Q(str_reg[183]) );
  DFFHQX8 \str_reg_reg[182]  ( .D(n168), .CK(clk), .Q(str_reg[182]) );
  DFFHQX8 \str_reg_reg[181]  ( .D(n169), .CK(clk), .Q(str_reg[181]) );
  DFFHQX8 \str_reg_reg[180]  ( .D(n170), .CK(clk), .Q(str_reg[180]) );
  DFFHQX8 \str_reg_reg[179]  ( .D(n171), .CK(clk), .Q(str_reg[179]) );
  DFFHQX8 \str_reg_reg[178]  ( .D(n172), .CK(clk), .Q(str_reg[178]) );
  DFFHQX8 \str_reg_reg[177]  ( .D(n173), .CK(clk), .Q(str_reg[177]) );
  DFFHQX8 \str_reg_reg[176]  ( .D(n174), .CK(clk), .Q(str_reg[176]) );
  DFFHQX8 \str_reg_reg[119]  ( .D(n231), .CK(clk), .Q(str_reg[119]) );
  DFFHQX8 \str_reg_reg[118]  ( .D(n232), .CK(clk), .Q(str_reg[118]) );
  DFFHQX8 \str_reg_reg[117]  ( .D(n233), .CK(clk), .Q(str_reg[117]) );
  DFFHQX8 \str_reg_reg[116]  ( .D(n234), .CK(clk), .Q(str_reg[116]) );
  DFFHQX8 \str_reg_reg[115]  ( .D(n235), .CK(clk), .Q(str_reg[115]) );
  DFFHQX8 \str_reg_reg[114]  ( .D(n236), .CK(clk), .Q(str_reg[114]) );
  DFFHQX8 \str_reg_reg[113]  ( .D(n237), .CK(clk), .Q(str_reg[113]) );
  DFFHQX8 \str_reg_reg[112]  ( .D(n238), .CK(clk), .Q(str_reg[112]) );
  DFFHQX8 \str_reg_reg[55]  ( .D(n295), .CK(clk), .Q(str_reg[55]) );
  DFFHQX8 \str_reg_reg[54]  ( .D(n296), .CK(clk), .Q(str_reg[54]) );
  DFFHQX8 \str_reg_reg[53]  ( .D(n297), .CK(clk), .Q(str_reg[53]) );
  DFFHQX8 \str_reg_reg[52]  ( .D(n298), .CK(clk), .Q(str_reg[52]) );
  DFFHQX8 \str_reg_reg[51]  ( .D(n299), .CK(clk), .Q(str_reg[51]) );
  DFFHQX8 \str_reg_reg[50]  ( .D(n300), .CK(clk), .Q(str_reg[50]) );
  DFFHQX8 \str_reg_reg[49]  ( .D(n301), .CK(clk), .Q(str_reg[49]) );
  DFFHQX8 \str_reg_reg[48]  ( .D(n302), .CK(clk), .Q(str_reg[48]) );
  DFFHQX8 \str_reg_reg[231]  ( .D(n119), .CK(clk), .Q(str_reg[231]) );
  DFFHQX8 \str_reg_reg[230]  ( .D(n120), .CK(clk), .Q(str_reg[230]) );
  DFFHQX8 \str_reg_reg[229]  ( .D(n121), .CK(clk), .Q(str_reg[229]) );
  DFFHQX8 \str_reg_reg[228]  ( .D(n122), .CK(clk), .Q(str_reg[228]) );
  DFFHQX8 \str_reg_reg[227]  ( .D(n123), .CK(clk), .Q(str_reg[227]) );
  DFFHQX8 \str_reg_reg[226]  ( .D(n124), .CK(clk), .Q(str_reg[226]) );
  DFFHQX8 \str_reg_reg[225]  ( .D(n125), .CK(clk), .Q(str_reg[225]) );
  DFFHQX8 \str_reg_reg[224]  ( .D(n126), .CK(clk), .Q(str_reg[224]) );
  DFFHQX8 \str_reg_reg[167]  ( .D(n183), .CK(clk), .Q(str_reg[167]) );
  DFFHQX8 \str_reg_reg[166]  ( .D(n184), .CK(clk), .Q(str_reg[166]) );
  DFFHQX8 \str_reg_reg[165]  ( .D(n185), .CK(clk), .Q(str_reg[165]) );
  DFFHQX8 \str_reg_reg[164]  ( .D(n186), .CK(clk), .Q(str_reg[164]) );
  DFFHQX8 \str_reg_reg[163]  ( .D(n187), .CK(clk), .Q(str_reg[163]) );
  DFFHQX8 \str_reg_reg[162]  ( .D(n188), .CK(clk), .Q(str_reg[162]) );
  DFFHQX8 \str_reg_reg[161]  ( .D(n189), .CK(clk), .Q(str_reg[161]) );
  DFFHQX8 \str_reg_reg[160]  ( .D(n190), .CK(clk), .Q(str_reg[160]) );
  DFFHQX8 \str_reg_reg[103]  ( .D(n247), .CK(clk), .Q(str_reg[103]) );
  DFFHQX8 \str_reg_reg[102]  ( .D(n248), .CK(clk), .Q(str_reg[102]) );
  DFFHQX8 \str_reg_reg[101]  ( .D(n249), .CK(clk), .Q(str_reg[101]) );
  DFFHQX8 \str_reg_reg[100]  ( .D(n250), .CK(clk), .Q(str_reg[100]) );
  DFFHQX8 \str_reg_reg[99]  ( .D(n251), .CK(clk), .Q(str_reg[99]) );
  DFFHQX8 \str_reg_reg[98]  ( .D(n252), .CK(clk), .Q(str_reg[98]) );
  DFFHQX8 \str_reg_reg[97]  ( .D(n253), .CK(clk), .Q(str_reg[97]) );
  DFFHQX8 \str_reg_reg[96]  ( .D(n254), .CK(clk), .Q(str_reg[96]) );
  DFFHQX8 \str_reg_reg[39]  ( .D(n311), .CK(clk), .Q(str_reg[39]) );
  DFFHQX8 \str_reg_reg[38]  ( .D(n312), .CK(clk), .Q(str_reg[38]) );
  DFFHQX8 \str_reg_reg[37]  ( .D(n313), .CK(clk), .Q(str_reg[37]) );
  DFFHQX8 \str_reg_reg[36]  ( .D(n314), .CK(clk), .Q(str_reg[36]) );
  DFFHQX8 \str_reg_reg[35]  ( .D(n315), .CK(clk), .Q(str_reg[35]) );
  DFFHQX8 \str_reg_reg[34]  ( .D(n316), .CK(clk), .Q(str_reg[34]) );
  DFFHQX8 \str_reg_reg[33]  ( .D(n317), .CK(clk), .Q(str_reg[33]) );
  DFFHQX8 \str_reg_reg[32]  ( .D(n318), .CK(clk), .Q(str_reg[32]) );
  DFFHQX8 \str_reg_reg[215]  ( .D(n135), .CK(clk), .Q(str_reg[215]) );
  DFFHQX8 \str_reg_reg[214]  ( .D(n136), .CK(clk), .Q(str_reg[214]) );
  DFFHQX8 \str_reg_reg[213]  ( .D(n137), .CK(clk), .Q(str_reg[213]) );
  DFFHQX8 \str_reg_reg[212]  ( .D(n138), .CK(clk), .Q(str_reg[212]) );
  DFFHQX8 \str_reg_reg[211]  ( .D(n139), .CK(clk), .Q(str_reg[211]) );
  DFFHQX8 \str_reg_reg[210]  ( .D(n140), .CK(clk), .Q(str_reg[210]) );
  DFFHQX8 \str_reg_reg[209]  ( .D(n141), .CK(clk), .Q(str_reg[209]) );
  DFFHQX8 \str_reg_reg[208]  ( .D(n142), .CK(clk), .Q(str_reg[208]) );
  DFFHQX8 \str_reg_reg[151]  ( .D(n199), .CK(clk), .Q(str_reg[151]) );
  DFFHQX8 \str_reg_reg[150]  ( .D(n200), .CK(clk), .Q(str_reg[150]) );
  DFFHQX8 \str_reg_reg[149]  ( .D(n201), .CK(clk), .Q(str_reg[149]) );
  DFFHQX8 \str_reg_reg[148]  ( .D(n202), .CK(clk), .Q(str_reg[148]) );
  DFFHQX8 \str_reg_reg[147]  ( .D(n203), .CK(clk), .Q(str_reg[147]) );
  DFFHQX8 \str_reg_reg[146]  ( .D(n204), .CK(clk), .Q(str_reg[146]) );
  DFFHQX8 \str_reg_reg[145]  ( .D(n205), .CK(clk), .Q(str_reg[145]) );
  DFFHQX8 \str_reg_reg[144]  ( .D(n206), .CK(clk), .Q(str_reg[144]) );
  DFFHQX8 \str_reg_reg[87]  ( .D(n263), .CK(clk), .Q(str_reg[87]) );
  DFFHQX8 \str_reg_reg[86]  ( .D(n264), .CK(clk), .Q(str_reg[86]) );
  DFFHQX8 \str_reg_reg[85]  ( .D(n265), .CK(clk), .Q(str_reg[85]) );
  DFFHQX8 \str_reg_reg[84]  ( .D(n266), .CK(clk), .Q(str_reg[84]) );
  DFFHQX8 \str_reg_reg[83]  ( .D(n267), .CK(clk), .Q(str_reg[83]) );
  DFFHQX8 \str_reg_reg[82]  ( .D(n268), .CK(clk), .Q(str_reg[82]) );
  DFFHQX8 \str_reg_reg[81]  ( .D(n269), .CK(clk), .Q(str_reg[81]) );
  DFFHQX8 \str_reg_reg[80]  ( .D(n270), .CK(clk), .Q(str_reg[80]) );
  DFFHQX8 \str_reg_reg[23]  ( .D(n327), .CK(clk), .Q(str_reg[23]) );
  DFFHQX8 \str_reg_reg[22]  ( .D(n328), .CK(clk), .Q(str_reg[22]) );
  DFFHQX8 \str_reg_reg[21]  ( .D(n329), .CK(clk), .Q(str_reg[21]) );
  DFFHQX8 \str_reg_reg[20]  ( .D(n330), .CK(clk), .Q(str_reg[20]) );
  DFFHQX8 \str_reg_reg[19]  ( .D(n331), .CK(clk), .Q(str_reg[19]) );
  DFFHQX8 \str_reg_reg[18]  ( .D(n332), .CK(clk), .Q(str_reg[18]) );
  DFFHQX8 \str_reg_reg[17]  ( .D(n333), .CK(clk), .Q(str_reg[17]) );
  DFFHQX8 \str_reg_reg[16]  ( .D(n334), .CK(clk), .Q(str_reg[16]) );
  DFFHQX8 \str_reg_reg[199]  ( .D(n151), .CK(clk), .Q(str_reg[199]) );
  DFFHQX8 \str_reg_reg[198]  ( .D(n152), .CK(clk), .Q(str_reg[198]) );
  DFFHQX8 \str_reg_reg[197]  ( .D(n153), .CK(clk), .Q(str_reg[197]) );
  DFFHQX8 \str_reg_reg[196]  ( .D(n154), .CK(clk), .Q(str_reg[196]) );
  DFFHQX8 \str_reg_reg[195]  ( .D(n155), .CK(clk), .Q(str_reg[195]) );
  DFFHQX8 \str_reg_reg[194]  ( .D(n156), .CK(clk), .Q(str_reg[194]) );
  DFFHQX8 \str_reg_reg[193]  ( .D(n157), .CK(clk), .Q(str_reg[193]) );
  DFFHQX8 \str_reg_reg[192]  ( .D(n158), .CK(clk), .Q(str_reg[192]) );
  DFFHQX8 \str_reg_reg[135]  ( .D(n215), .CK(clk), .Q(str_reg[135]) );
  DFFHQX8 \str_reg_reg[134]  ( .D(n216), .CK(clk), .Q(str_reg[134]) );
  DFFHQX8 \str_reg_reg[133]  ( .D(n217), .CK(clk), .Q(str_reg[133]) );
  DFFHQX8 \str_reg_reg[132]  ( .D(n218), .CK(clk), .Q(str_reg[132]) );
  DFFHQX8 \str_reg_reg[131]  ( .D(n219), .CK(clk), .Q(str_reg[131]) );
  DFFHQX8 \str_reg_reg[130]  ( .D(n220), .CK(clk), .Q(str_reg[130]) );
  DFFHQX8 \str_reg_reg[129]  ( .D(n221), .CK(clk), .Q(str_reg[129]) );
  DFFHQX8 \str_reg_reg[128]  ( .D(n222), .CK(clk), .Q(str_reg[128]) );
  DFFHQX8 \str_reg_reg[71]  ( .D(n279), .CK(clk), .Q(str_reg[71]) );
  DFFHQX8 \str_reg_reg[70]  ( .D(n280), .CK(clk), .Q(str_reg[70]) );
  DFFHQX8 \str_reg_reg[69]  ( .D(n281), .CK(clk), .Q(str_reg[69]) );
  DFFHQX8 \str_reg_reg[68]  ( .D(n282), .CK(clk), .Q(str_reg[68]) );
  DFFHQX8 \str_reg_reg[67]  ( .D(n283), .CK(clk), .Q(str_reg[67]) );
  DFFHQX8 \str_reg_reg[66]  ( .D(n284), .CK(clk), .Q(str_reg[66]) );
  DFFHQX8 \str_reg_reg[65]  ( .D(n285), .CK(clk), .Q(str_reg[65]) );
  DFFHQX8 \str_reg_reg[64]  ( .D(n286), .CK(clk), .Q(str_reg[64]) );
  DFFHQX8 \str_reg_reg[7]  ( .D(n343), .CK(clk), .Q(str_reg[7]) );
  DFFHQX8 \str_reg_reg[6]  ( .D(n344), .CK(clk), .Q(str_reg[6]) );
  DFFHQX8 \str_reg_reg[5]  ( .D(n345), .CK(clk), .Q(str_reg[5]) );
  DFFHQX8 \str_reg_reg[4]  ( .D(n346), .CK(clk), .Q(str_reg[4]) );
  DFFHQX8 \str_reg_reg[3]  ( .D(n347), .CK(clk), .Q(str_reg[3]) );
  DFFHQX8 \str_reg_reg[2]  ( .D(n348), .CK(clk), .Q(str_reg[2]) );
  DFFHQX8 \str_reg_reg[1]  ( .D(n349), .CK(clk), .Q(str_reg[1]) );
  DFFHQX8 \str_reg_reg[0]  ( .D(n350), .CK(clk), .Q(str_reg[0]) );
  DFFHQX8 \str_reg_reg[255]  ( .D(n95), .CK(clk), .Q(str_reg[255]) );
  DFFHQX8 \str_reg_reg[254]  ( .D(n96), .CK(clk), .Q(str_reg[254]) );
  DFFHQX8 \str_reg_reg[253]  ( .D(n97), .CK(clk), .Q(str_reg[253]) );
  DFFHQX8 \str_reg_reg[252]  ( .D(n98), .CK(clk), .Q(str_reg[252]) );
  DFFHQX8 \str_reg_reg[251]  ( .D(n99), .CK(clk), .Q(str_reg[251]) );
  DFFHQX8 \str_reg_reg[250]  ( .D(n100), .CK(clk), .Q(str_reg[250]) );
  DFFHQX8 \str_reg_reg[249]  ( .D(n101), .CK(clk), .Q(str_reg[249]) );
  DFFHQX8 \str_reg_reg[248]  ( .D(n102), .CK(clk), .Q(str_reg[248]) );
  DFFHQX8 \str_reg_reg[191]  ( .D(n159), .CK(clk), .Q(str_reg[191]) );
  DFFHQX8 \str_reg_reg[190]  ( .D(n160), .CK(clk), .Q(str_reg[190]) );
  DFFHQX8 \str_reg_reg[189]  ( .D(n161), .CK(clk), .Q(str_reg[189]) );
  DFFHQX8 \str_reg_reg[188]  ( .D(n162), .CK(clk), .Q(str_reg[188]) );
  DFFHQX8 \str_reg_reg[187]  ( .D(n163), .CK(clk), .Q(str_reg[187]) );
  DFFHQX8 \str_reg_reg[186]  ( .D(n164), .CK(clk), .Q(str_reg[186]) );
  DFFHQX8 \str_reg_reg[185]  ( .D(n165), .CK(clk), .Q(str_reg[185]) );
  DFFHQX8 \str_reg_reg[184]  ( .D(n166), .CK(clk), .Q(str_reg[184]) );
  DFFHQX8 \str_reg_reg[127]  ( .D(n223), .CK(clk), .Q(str_reg[127]) );
  DFFHQX8 \str_reg_reg[126]  ( .D(n224), .CK(clk), .Q(str_reg[126]) );
  DFFHQX8 \str_reg_reg[125]  ( .D(n225), .CK(clk), .Q(str_reg[125]) );
  DFFHQX8 \str_reg_reg[124]  ( .D(n226), .CK(clk), .Q(str_reg[124]) );
  DFFHQX8 \str_reg_reg[123]  ( .D(n227), .CK(clk), .Q(str_reg[123]) );
  DFFHQX8 \str_reg_reg[122]  ( .D(n228), .CK(clk), .Q(str_reg[122]) );
  DFFHQX8 \str_reg_reg[121]  ( .D(n229), .CK(clk), .Q(str_reg[121]) );
  DFFHQX8 \str_reg_reg[120]  ( .D(n230), .CK(clk), .Q(str_reg[120]) );
  DFFHQX8 \str_reg_reg[63]  ( .D(n287), .CK(clk), .Q(str_reg[63]) );
  DFFHQX8 \str_reg_reg[62]  ( .D(n288), .CK(clk), .Q(str_reg[62]) );
  DFFHQX8 \str_reg_reg[61]  ( .D(n289), .CK(clk), .Q(str_reg[61]) );
  DFFHQX8 \str_reg_reg[60]  ( .D(n290), .CK(clk), .Q(str_reg[60]) );
  DFFHQX8 \str_reg_reg[59]  ( .D(n291), .CK(clk), .Q(str_reg[59]) );
  DFFHQX8 \str_reg_reg[58]  ( .D(n292), .CK(clk), .Q(str_reg[58]) );
  DFFHQX8 \str_reg_reg[57]  ( .D(n293), .CK(clk), .Q(str_reg[57]) );
  DFFHQX8 \str_reg_reg[56]  ( .D(n294), .CK(clk), .Q(str_reg[56]) );
  DFFHQX8 \str_reg_reg[239]  ( .D(n111), .CK(clk), .Q(str_reg[239]) );
  DFFHQX8 \str_reg_reg[238]  ( .D(n112), .CK(clk), .Q(str_reg[238]) );
  DFFHQX8 \str_reg_reg[237]  ( .D(n113), .CK(clk), .Q(str_reg[237]) );
  DFFHQX8 \str_reg_reg[236]  ( .D(n114), .CK(clk), .Q(str_reg[236]) );
  DFFHQX8 \str_reg_reg[235]  ( .D(n115), .CK(clk), .Q(str_reg[235]) );
  DFFHQX8 \str_reg_reg[234]  ( .D(n116), .CK(clk), .Q(str_reg[234]) );
  DFFHQX8 \str_reg_reg[233]  ( .D(n117), .CK(clk), .Q(str_reg[233]) );
  DFFHQX8 \str_reg_reg[232]  ( .D(n118), .CK(clk), .Q(str_reg[232]) );
  DFFHQX8 \str_reg_reg[175]  ( .D(n175), .CK(clk), .Q(str_reg[175]) );
  DFFHQX8 \str_reg_reg[174]  ( .D(n176), .CK(clk), .Q(str_reg[174]) );
  DFFHQX8 \str_reg_reg[173]  ( .D(n177), .CK(clk), .Q(str_reg[173]) );
  DFFHQX8 \str_reg_reg[172]  ( .D(n178), .CK(clk), .Q(str_reg[172]) );
  DFFHQX8 \str_reg_reg[171]  ( .D(n179), .CK(clk), .Q(str_reg[171]) );
  DFFHQX8 \str_reg_reg[170]  ( .D(n180), .CK(clk), .Q(str_reg[170]) );
  DFFHQX8 \str_reg_reg[169]  ( .D(n181), .CK(clk), .Q(str_reg[169]) );
  DFFHQX8 \str_reg_reg[168]  ( .D(n182), .CK(clk), .Q(str_reg[168]) );
  DFFHQX8 \str_reg_reg[111]  ( .D(n239), .CK(clk), .Q(str_reg[111]) );
  DFFHQX8 \str_reg_reg[110]  ( .D(n240), .CK(clk), .Q(str_reg[110]) );
  DFFHQX8 \str_reg_reg[109]  ( .D(n241), .CK(clk), .Q(str_reg[109]) );
  DFFHQX8 \str_reg_reg[108]  ( .D(n242), .CK(clk), .Q(str_reg[108]) );
  DFFHQX8 \str_reg_reg[107]  ( .D(n243), .CK(clk), .Q(str_reg[107]) );
  DFFHQX8 \str_reg_reg[106]  ( .D(n244), .CK(clk), .Q(str_reg[106]) );
  DFFHQX8 \str_reg_reg[105]  ( .D(n245), .CK(clk), .Q(str_reg[105]) );
  DFFHQX8 \str_reg_reg[104]  ( .D(n246), .CK(clk), .Q(str_reg[104]) );
  DFFHQX8 \str_reg_reg[47]  ( .D(n303), .CK(clk), .Q(str_reg[47]) );
  DFFHQX8 \str_reg_reg[46]  ( .D(n304), .CK(clk), .Q(str_reg[46]) );
  DFFHQX8 \str_reg_reg[45]  ( .D(n305), .CK(clk), .Q(str_reg[45]) );
  DFFHQX8 \str_reg_reg[44]  ( .D(n306), .CK(clk), .Q(str_reg[44]) );
  DFFHQX8 \str_reg_reg[43]  ( .D(n307), .CK(clk), .Q(str_reg[43]) );
  DFFHQX8 \str_reg_reg[42]  ( .D(n308), .CK(clk), .Q(str_reg[42]) );
  DFFHQX8 \str_reg_reg[41]  ( .D(n309), .CK(clk), .Q(str_reg[41]) );
  DFFHQX8 \str_reg_reg[40]  ( .D(n310), .CK(clk), .Q(str_reg[40]) );
  DFFHQX8 \str_reg_reg[223]  ( .D(n127), .CK(clk), .Q(str_reg[223]) );
  DFFHQX8 \str_reg_reg[222]  ( .D(n128), .CK(clk), .Q(str_reg[222]) );
  DFFHQX8 \str_reg_reg[221]  ( .D(n129), .CK(clk), .Q(str_reg[221]) );
  DFFHQX8 \str_reg_reg[220]  ( .D(n130), .CK(clk), .Q(str_reg[220]) );
  DFFHQX8 \str_reg_reg[219]  ( .D(n131), .CK(clk), .Q(str_reg[219]) );
  DFFHQX8 \str_reg_reg[218]  ( .D(n132), .CK(clk), .Q(str_reg[218]) );
  DFFHQX8 \str_reg_reg[217]  ( .D(n133), .CK(clk), .Q(str_reg[217]) );
  DFFHQX8 \str_reg_reg[216]  ( .D(n134), .CK(clk), .Q(str_reg[216]) );
  DFFHQX8 \str_reg_reg[159]  ( .D(n191), .CK(clk), .Q(str_reg[159]) );
  DFFHQX8 \str_reg_reg[158]  ( .D(n192), .CK(clk), .Q(str_reg[158]) );
  DFFHQX8 \str_reg_reg[157]  ( .D(n193), .CK(clk), .Q(str_reg[157]) );
  DFFHQX8 \str_reg_reg[156]  ( .D(n194), .CK(clk), .Q(str_reg[156]) );
  DFFHQX8 \str_reg_reg[155]  ( .D(n195), .CK(clk), .Q(str_reg[155]) );
  DFFHQX8 \str_reg_reg[154]  ( .D(n196), .CK(clk), .Q(str_reg[154]) );
  DFFHQX8 \str_reg_reg[153]  ( .D(n197), .CK(clk), .Q(str_reg[153]) );
  DFFHQX8 \str_reg_reg[152]  ( .D(n198), .CK(clk), .Q(str_reg[152]) );
  DFFHQX8 \str_reg_reg[95]  ( .D(n255), .CK(clk), .Q(str_reg[95]) );
  DFFHQX8 \str_reg_reg[94]  ( .D(n256), .CK(clk), .Q(str_reg[94]) );
  DFFHQX8 \str_reg_reg[93]  ( .D(n257), .CK(clk), .Q(str_reg[93]) );
  DFFHQX8 \str_reg_reg[92]  ( .D(n258), .CK(clk), .Q(str_reg[92]) );
  DFFHQX8 \str_reg_reg[91]  ( .D(n259), .CK(clk), .Q(str_reg[91]) );
  DFFHQX8 \str_reg_reg[90]  ( .D(n260), .CK(clk), .Q(str_reg[90]) );
  DFFHQX8 \str_reg_reg[89]  ( .D(n261), .CK(clk), .Q(str_reg[89]) );
  DFFHQX8 \str_reg_reg[88]  ( .D(n262), .CK(clk), .Q(str_reg[88]) );
  DFFHQX8 \str_reg_reg[31]  ( .D(n319), .CK(clk), .Q(str_reg[31]) );
  DFFHQX8 \str_reg_reg[30]  ( .D(n320), .CK(clk), .Q(str_reg[30]) );
  DFFHQX8 \str_reg_reg[29]  ( .D(n321), .CK(clk), .Q(str_reg[29]) );
  DFFHQX8 \str_reg_reg[28]  ( .D(n322), .CK(clk), .Q(str_reg[28]) );
  DFFHQX8 \str_reg_reg[27]  ( .D(n323), .CK(clk), .Q(str_reg[27]) );
  DFFHQX8 \str_reg_reg[26]  ( .D(n324), .CK(clk), .Q(str_reg[26]) );
  DFFHQX8 \str_reg_reg[25]  ( .D(n325), .CK(clk), .Q(str_reg[25]) );
  DFFHQX8 \str_reg_reg[24]  ( .D(n326), .CK(clk), .Q(str_reg[24]) );
  DFFHQX8 \str_reg_reg[207]  ( .D(n143), .CK(clk), .Q(str_reg[207]) );
  DFFHQX8 \str_reg_reg[206]  ( .D(n144), .CK(clk), .Q(str_reg[206]) );
  DFFHQX8 \str_reg_reg[205]  ( .D(n145), .CK(clk), .Q(str_reg[205]) );
  DFFHQX8 \str_reg_reg[204]  ( .D(n146), .CK(clk), .Q(str_reg[204]) );
  DFFHQX8 \str_reg_reg[203]  ( .D(n147), .CK(clk), .Q(str_reg[203]) );
  DFFHQX8 \str_reg_reg[202]  ( .D(n148), .CK(clk), .Q(str_reg[202]) );
  DFFHQX8 \str_reg_reg[201]  ( .D(n149), .CK(clk), .Q(str_reg[201]) );
  DFFHQX8 \str_reg_reg[200]  ( .D(n150), .CK(clk), .Q(str_reg[200]) );
  DFFHQX8 \str_reg_reg[143]  ( .D(n207), .CK(clk), .Q(str_reg[143]) );
  DFFHQX8 \str_reg_reg[142]  ( .D(n208), .CK(clk), .Q(str_reg[142]) );
  DFFHQX8 \str_reg_reg[141]  ( .D(n209), .CK(clk), .Q(str_reg[141]) );
  DFFHQX8 \str_reg_reg[140]  ( .D(n210), .CK(clk), .Q(str_reg[140]) );
  DFFHQX8 \str_reg_reg[139]  ( .D(n211), .CK(clk), .Q(str_reg[139]) );
  DFFHQX8 \str_reg_reg[138]  ( .D(n212), .CK(clk), .Q(str_reg[138]) );
  DFFHQX8 \str_reg_reg[137]  ( .D(n213), .CK(clk), .Q(str_reg[137]) );
  DFFHQX8 \str_reg_reg[136]  ( .D(n214), .CK(clk), .Q(str_reg[136]) );
  DFFHQX8 \str_reg_reg[79]  ( .D(n271), .CK(clk), .Q(str_reg[79]) );
  DFFHQX8 \str_reg_reg[78]  ( .D(n272), .CK(clk), .Q(str_reg[78]) );
  DFFHQX8 \str_reg_reg[77]  ( .D(n273), .CK(clk), .Q(str_reg[77]) );
  DFFHQX8 \str_reg_reg[76]  ( .D(n274), .CK(clk), .Q(str_reg[76]) );
  DFFHQX8 \str_reg_reg[75]  ( .D(n275), .CK(clk), .Q(str_reg[75]) );
  DFFHQX8 \str_reg_reg[74]  ( .D(n276), .CK(clk), .Q(str_reg[74]) );
  DFFHQX8 \str_reg_reg[73]  ( .D(n277), .CK(clk), .Q(str_reg[73]) );
  DFFHQX8 \str_reg_reg[72]  ( .D(n278), .CK(clk), .Q(str_reg[72]) );
  DFFHQX8 \str_reg_reg[15]  ( .D(n335), .CK(clk), .Q(str_reg[15]) );
  DFFHQX8 \str_reg_reg[14]  ( .D(n336), .CK(clk), .Q(str_reg[14]) );
  DFFHQX8 \str_reg_reg[13]  ( .D(n337), .CK(clk), .Q(str_reg[13]) );
  DFFHQX8 \str_reg_reg[12]  ( .D(n338), .CK(clk), .Q(str_reg[12]) );
  DFFHQX8 \str_reg_reg[11]  ( .D(n339), .CK(clk), .Q(str_reg[11]) );
  DFFHQX8 \str_reg_reg[10]  ( .D(n340), .CK(clk), .Q(str_reg[10]) );
  DFFHQX8 \str_reg_reg[9]  ( .D(n341), .CK(clk), .Q(str_reg[9]) );
  DFFHQX8 \str_reg_reg[8]  ( .D(n342), .CK(clk), .Q(str_reg[8]) );
  DP_FailFunc dp1 ( .clk(clk), .reset(n609), .i_valid(read_done), .pattern(
        pat_reg), .last_pat_idx({pat_last_idx[2:1], n454}), .o_fail_func(
        ff_result), .o_valid(ff_valid) );
  DFFQX4 \p_index_reg[2]  ( .D(n426), .CK(clk), .Q(p_index[2]) );
  DFFQX2 \str_last_idx_reg[4]  ( .D(n351), .CK(clk), .Q(str_last_idx[4]) );
  DFFQX2 \active_reg[0]  ( .D(n357), .CK(clk), .Q(active[0]) );
  EDFFX2 read_done_reg ( .D(n72), .E(n74), .CK(clk), .Q(read_done) );
  DFFQX4 \str_last_idx_reg[2]  ( .D(n353), .CK(clk), .Q(str_last_idx[2]) );
  DFFHQX8 \str_last_idx_reg[0]  ( .D(n355), .CK(clk), .Q(str_last_idx[0]) );
  DFFHQX8 \p_index_reg[1]  ( .D(n427), .CK(clk), .Q(p_index[1]) );
  DFFQX4 \str_last_idx_reg[3]  ( .D(n352), .CK(clk), .Q(str_last_idx[3]) );
  DFFQX2 \pat_last_idx_reg[2]  ( .D(n423), .CK(clk), .Q(n626) );
  DFFHQX4 \pat_last_idx_reg[0]  ( .D(n425), .CK(clk), .Q(n628) );
  DFFQX2 \pat_last_idx_reg[1]  ( .D(n424), .CK(clk), .Q(n627) );
  DFFQX4 \active_reg[1]  ( .D(n358), .CK(clk), .Q(active[1]) );
  DFFQX2 valid_reg ( .D(n356), .CK(clk), .Q(n629) );
  DFFHQX4 \str_last_idx_reg[1]  ( .D(n354), .CK(clk), .Q(str_last_idx[1]) );
  CLKBUFX32 U3 ( .A(n51), .Y(n548) );
  BUFX14 U12 ( .A(n58), .Y(n568) );
  BUFX16 U21 ( .A(n63), .Y(n564) );
  BUFX16 U48 ( .A(n61), .Y(n566) );
  BUFX16 U57 ( .A(n65), .Y(n562) );
  NAND3X3 U59 ( .A(n550), .B(n7), .C(s_index[3]), .Y(n51) );
  CLKBUFX40 U61 ( .A(n60), .Y(n549) );
  CLKINVX40 U63 ( .A(n76), .Y(n1) );
  CLKINVX40 U65 ( .A(n1), .Y(n2) );
  OAI2BB2X4 U66 ( .B0(n562), .B1(n504), .A0N(str_reg[18]), .A1N(n562), .Y(n332) );
  BUFX12 U75 ( .A(n501), .Y(n504) );
  OAI2BB2X4 U76 ( .B0(n566), .B1(n505), .A0N(str_reg[50]), .A1N(n566), .Y(n300) );
  CLKBUFX12 U85 ( .A(n501), .Y(n505) );
  BUFX5 U87 ( .A(n18), .Y(n3) );
  NAND2X3 U89 ( .A(w_data[5]), .B(n623), .Y(n18) );
  OAI22X4 U90 ( .A0(n624), .A1(n618), .B0(p_index[0]), .B1(n446), .Y(n428) );
  CLKBUFX40 U91 ( .A(n500), .Y(n4) );
  CLKAND2X2 U92 ( .A(w_data[3]), .B(n623), .Y(n500) );
  INVX20 U93 ( .A(n6), .Y(n11) );
  BUFX10 U94 ( .A(n23), .Y(n600) );
  NAND2X4 U149 ( .A(w_data[4]), .B(n552), .Y(n19) );
  CLKBUFX16 U150 ( .A(n623), .Y(n552) );
  OAI2BB2X4 U151 ( .B0(n554), .B1(n529), .A0N(pat_reg[12]), .A1N(n554), .Y(
        n410) );
  INVX10 U152 ( .A(n526), .Y(n529) );
  INVX14 U153 ( .A(n599), .Y(n495) );
  CLKBUFX32 U154 ( .A(n23), .Y(n599) );
  CLKBUFX40 U155 ( .A(reset), .Y(n615) );
  CLKINVX40 U156 ( .A(n526), .Y(n527) );
  INVX16 U157 ( .A(n555), .Y(n516) );
  OAI2BB2X4 U158 ( .B0(n555), .B1(n20), .A0N(pat_reg[19]), .A1N(n517), .Y(n403) );
  BUFX20 U159 ( .A(n86), .Y(n555) );
  INVX20 U160 ( .A(n528), .Y(n486) );
  INVX12 U161 ( .A(n526), .Y(n528) );
  INVX16 U162 ( .A(n502), .Y(n488) );
  BUFX12 U163 ( .A(n501), .Y(n502) );
  CLKBUFX40 U164 ( .A(n68), .Y(n5) );
  OAI2BB2X4 U165 ( .B0(n537), .B1(n527), .A0N(str_reg[204]), .A1N(n538), .Y(
        n146) );
  OAI2B2X2 U166 ( .A1N(str_last_idx[0]), .A0(n5), .B0(n451), .B1(n436), .Y(
        n355) );
  INVX6 U167 ( .A(n584), .Y(n586) );
  INVX20 U168 ( .A(n435), .Y(n436) );
  CLKINVX40 U169 ( .A(n4), .Y(n20) );
  INVX12 U170 ( .A(n600), .Y(n6) );
  OAI2BB2X4 U171 ( .B0(n582), .B1(n503), .A0N(str_reg[178]), .A1N(n582), .Y(
        n172) );
  OAI2BB2X4 U172 ( .B0(n582), .B1(n20), .A0N(str_reg[179]), .A1N(n582), .Y(
        n171) );
  OAI2BB2X4 U173 ( .B0(n582), .B1(n525), .A0N(str_reg[182]), .A1N(n582), .Y(
        n168) );
  BUFX20 U174 ( .A(n43), .Y(n582) );
  BUFX8 U175 ( .A(n22), .Y(n506) );
  INVX16 U176 ( .A(n90), .Y(n12) );
  CLKINVX40 U177 ( .A(n12), .Y(n13) );
  OAI2BB2X4 U178 ( .B0(n562), .B1(n529), .A0N(str_reg[20]), .A1N(n562), .Y(
        n330) );
  BUFX8 U179 ( .A(n20), .Y(n14) );
  BUFX8 U180 ( .A(n20), .Y(n15) );
  INVX6 U181 ( .A(n36), .Y(n587) );
  AOI2BB1X4 U182 ( .A0N(n24), .A1N(n37), .B0(n610), .Y(n36) );
  CLKINVX20 U183 ( .A(n587), .Y(n538) );
  INVX12 U184 ( .A(n587), .Y(n537) );
  BUFX2 U185 ( .A(n623), .Y(n26) );
  BUFX2 U186 ( .A(n623), .Y(n40) );
  DLY1X1 U187 ( .A(n623), .Y(n432) );
  BUFX2 U188 ( .A(n551), .Y(n438) );
  CLKBUFX4 U189 ( .A(n551), .Y(n437) );
  OAI22X4 U190 ( .A0(n94), .A1(n619), .B0(n83), .B1(n446), .Y(n427) );
  AOI21X8 U191 ( .A0(n618), .A1(n40), .B0(n550), .Y(n94) );
  BUFX8 U192 ( .A(n53), .Y(n573) );
  AOI2BB1X4 U193 ( .A0N(n29), .A1N(n548), .B0(n612), .Y(n53) );
  BUFX20 U194 ( .A(n56), .Y(n570) );
  BUFX20 U195 ( .A(n52), .Y(n574) );
  BUFX20 U196 ( .A(n55), .Y(n571) );
  BUFX20 U197 ( .A(n57), .Y(n569) );
  BUFX20 U198 ( .A(n54), .Y(n572) );
  BUFX20 U199 ( .A(n50), .Y(n575) );
  BUFX18 U200 ( .A(n38), .Y(n92) );
  AOI2BB1X4 U201 ( .A0N(n24), .A1N(n39), .B0(n610), .Y(n38) );
  INVX20 U202 ( .A(n429), .Y(n589) );
  INVX20 U203 ( .A(n430), .Y(n591) );
  CLKBUFX40 U204 ( .A(n85), .Y(n556) );
  CLKBUFX40 U205 ( .A(n88), .Y(n554) );
  BUFX10 U206 ( .A(n34), .Y(n429) );
  BUFX10 U207 ( .A(n32), .Y(n430) );
  INVX20 U208 ( .A(n439), .Y(n458) );
  CLKBUFX40 U209 ( .A(n558), .Y(n439) );
  CLKBUFX40 U210 ( .A(n20), .Y(n512) );
  CLKBUFX20 U211 ( .A(n601), .Y(n443) );
  CLKBUFX32 U212 ( .A(n3), .Y(n601) );
  OAI2BB2X4 U213 ( .B0(n565), .B1(n599), .A0N(str_reg[40]), .A1N(n565), .Y(
        n310) );
  OAI2BB2X4 U214 ( .B0(n565), .B1(n506), .A0N(str_reg[41]), .A1N(n565), .Y(
        n309) );
  OAI2BB2X4 U215 ( .B0(n565), .B1(n502), .A0N(str_reg[42]), .A1N(n565), .Y(
        n308) );
  OAI2BB2X4 U216 ( .B0(n565), .B1(n20), .A0N(str_reg[43]), .A1N(n565), .Y(n307) );
  OAI2BB2X4 U217 ( .B0(n565), .B1(n529), .A0N(str_reg[44]), .A1N(n565), .Y(
        n306) );
  CLKBUFX40 U218 ( .A(n62), .Y(n565) );
  CLKINVX40 U219 ( .A(n519), .Y(n522) );
  INVX16 U220 ( .A(n525), .Y(n485) );
  NAND2X8 U221 ( .A(w_data[1]), .B(n623), .Y(n22) );
  CLKBUFX8 U222 ( .A(n610), .Y(n611) );
  CLKBUFX40 U232 ( .A(n616), .Y(n610) );
  INVX12 U233 ( .A(n92), .Y(n584) );
  INVX20 U234 ( .A(n524), .Y(n525) );
  CLKBUFX40 U236 ( .A(n496), .Y(n431) );
  CLKINVX40 U237 ( .A(n455), .Y(n24) );
  INVX20 U238 ( .A(n499), .Y(n23) );
  BUFX16 U239 ( .A(n22), .Y(n507) );
  BUFX16 U240 ( .A(n22), .Y(n509) );
  BUFX20 U242 ( .A(n21), .Y(n501) );
  NAND2X6 U243 ( .A(w_data[2]), .B(n26), .Y(n21) );
  BUFX2 U244 ( .A(n623), .Y(n433) );
  BUFX3 U245 ( .A(n623), .Y(n551) );
  INVX10 U246 ( .A(n434), .Y(n520) );
  BUFX20 U247 ( .A(n604), .Y(n519) );
  CLKBUFX16 U248 ( .A(n17), .Y(n604) );
  OAI2BB2X4 U249 ( .B0(n562), .B1(n521), .A0N(str_reg[22]), .A1N(n562), .Y(
        n328) );
  OAI2BB2X4 U250 ( .B0(n565), .B1(n523), .A0N(str_reg[46]), .A1N(n565), .Y(
        n304) );
  CLKINVX40 U251 ( .A(n19), .Y(n526) );
  CLKINVX2 U252 ( .A(n604), .Y(n524) );
  CLKINVX40 U253 ( .A(n434), .Y(n523) );
  NAND2X8 U254 ( .A(w_data[6]), .B(n623), .Y(n17) );
  CLKBUFX40 U256 ( .A(n522), .Y(n434) );
  OAI2BB2X4 U257 ( .B0(n554), .B1(n525), .A0N(pat_reg[14]), .A1N(n554), .Y(
        n408) );
  OAI2BB2X4 U258 ( .B0(n564), .B1(n523), .A0N(str_reg[38]), .A1N(n564), .Y(
        n312) );
  OAI2BB2X4 U259 ( .B0(n560), .B1(n525), .A0N(str_reg[6]), .A1N(n560), .Y(n344) );
  INVX14 U260 ( .A(n494), .Y(n42) );
  AOI2BB1X2 U262 ( .A0N(n37), .A1N(n548), .B0(n611), .Y(n57) );
  AOI2BB1X2 U263 ( .A0N(n33), .A1N(n548), .B0(n615), .Y(n55) );
  AOI2BB1X2 U271 ( .A0N(n24), .A1N(n33), .B0(n610), .Y(n32) );
  AOI2BB1X2 U272 ( .A0N(n25), .A1N(n548), .B0(n611), .Y(n50) );
  AOI2BB1X2 U274 ( .A0N(n39), .A1N(n548), .B0(n612), .Y(n58) );
  INVX4 U276 ( .A(n586), .Y(n532) );
  AOI2BB1X2 U277 ( .A0N(n35), .A1N(n548), .B0(n612), .Y(n56) );
  AOI2BB1X2 U278 ( .A0N(n24), .A1N(n35), .B0(n610), .Y(n34) );
  AOI2BB1X2 U279 ( .A0N(n31), .A1N(n548), .B0(n611), .Y(n54) );
  AOI2BB1X2 U280 ( .A0N(n27), .A1N(n548), .B0(n612), .Y(n52) );
  CLKINVX20 U282 ( .A(n84), .Y(n489) );
  BUFX16 U283 ( .A(n80), .Y(n558) );
  INVX6 U284 ( .A(n628), .Y(n452) );
  CLKBUFX32 U286 ( .A(n569), .Y(n479) );
  CLKBUFX32 U287 ( .A(n569), .Y(n477) );
  CLKBUFX32 U288 ( .A(n569), .Y(n478) );
  CLKBUFX32 U289 ( .A(n48), .Y(n577) );
  INVX12 U290 ( .A(n587), .Y(n588) );
  BUFX16 U292 ( .A(n64), .Y(n563) );
  BUFX16 U293 ( .A(n571), .Y(n470) );
  BUFX20 U294 ( .A(n571), .Y(n468) );
  BUFX16 U296 ( .A(n571), .Y(n469) );
  INVX14 U297 ( .A(n591), .Y(n592) );
  INVX14 U298 ( .A(n591), .Y(n536) );
  INVX14 U299 ( .A(n591), .Y(n535) );
  AOI2BB1X2 U300 ( .A0N(n29), .A1N(n549), .B0(n613), .Y(n62) );
  BUFX16 U302 ( .A(n573), .Y(n473) );
  BUFX20 U303 ( .A(n573), .Y(n471) );
  BUFX16 U304 ( .A(n573), .Y(n472) );
  CLKBUFX32 U305 ( .A(n575), .Y(n464) );
  CLKBUFX32 U306 ( .A(n575), .Y(n462) );
  CLKBUFX32 U307 ( .A(n575), .Y(n463) );
  BUFX20 U308 ( .A(n568), .Y(n480) );
  BUFX16 U309 ( .A(n568), .Y(n482) );
  BUFX16 U310 ( .A(n568), .Y(n481) );
  CLKBUFX32 U311 ( .A(n49), .Y(n576) );
  INVX14 U313 ( .A(n584), .Y(n585) );
  INVX14 U314 ( .A(n532), .Y(n534) );
  INVX14 U315 ( .A(n532), .Y(n533) );
  BUFX20 U317 ( .A(n570), .Y(n474) );
  BUFX16 U328 ( .A(n570), .Y(n475) );
  BUFX16 U329 ( .A(n570), .Y(n476) );
  CLKBUFX32 U330 ( .A(n47), .Y(n578) );
  INVX14 U331 ( .A(n589), .Y(n590) );
  INVX14 U332 ( .A(n589), .Y(n531) );
  INVX14 U333 ( .A(n589), .Y(n530) );
  CLKBUFX32 U334 ( .A(n572), .Y(n465) );
  CLKBUFX32 U335 ( .A(n572), .Y(n467) );
  CLKBUFX32 U355 ( .A(n572), .Y(n466) );
  CLKBUFX32 U356 ( .A(n45), .Y(n580) );
  INVX8 U357 ( .A(n442), .Y(n496) );
  BUFX16 U358 ( .A(n574), .Y(n460) );
  BUFX20 U359 ( .A(n574), .Y(n459) );
  BUFX16 U360 ( .A(n574), .Y(n461) );
  INVX12 U361 ( .A(n606), .Y(n493) );
  INVX2 U362 ( .A(n27), .Y(n483) );
  BUFX16 U363 ( .A(n89), .Y(n553) );
  BUFX5 U364 ( .A(n601), .Y(n442) );
  CLKINVX32 U365 ( .A(n489), .Y(n491) );
  INVX4 U366 ( .A(n434), .Y(n521) );
  BUFX8 U367 ( .A(n16), .Y(n605) );
  CLKINVX32 U368 ( .A(n489), .Y(n492) );
  CLKAND2X4 U369 ( .A(w_data[0]), .B(n623), .Y(n499) );
  INVX6 U370 ( .A(n506), .Y(n497) );
  CLKBUFX24 U371 ( .A(n82), .Y(n557) );
  CLKBUFX24 U372 ( .A(n78), .Y(n559) );
  INVX2 U374 ( .A(n627), .Y(n540) );
  INVX6 U375 ( .A(n484), .Y(n91) );
  INVX4 U377 ( .A(n550), .Y(n624) );
  OAI2B2X2 U378 ( .A1N(str_last_idx[1]), .A0(n5), .B0(n450), .B1(n436), .Y(
        n354) );
  OAI2BB2X2 U379 ( .B0(n561), .B1(n599), .A0N(str_reg[8]), .A1N(n561), .Y(n342) );
  OAI2BB2X2 U380 ( .B0(n561), .B1(n507), .A0N(str_reg[9]), .A1N(n561), .Y(n341) );
  OAI2BB2X2 U381 ( .B0(n561), .B1(n503), .A0N(str_reg[10]), .A1N(n561), .Y(
        n340) );
  OAI2BB2X2 U382 ( .B0(n561), .B1(n20), .A0N(str_reg[11]), .A1N(n561), .Y(n339) );
  OAI2BB2X2 U384 ( .B0(n561), .B1(n527), .A0N(str_reg[12]), .A1N(n561), .Y(
        n338) );
  OAI2BB2X2 U386 ( .B0(n561), .B1(n523), .A0N(str_reg[14]), .A1N(n561), .Y(
        n336) );
  OAI2BB2X2 U388 ( .B0(n537), .B1(n11), .A0N(str_reg[200]), .A1N(n538), .Y(
        n150) );
  OAI2BB2X2 U390 ( .B0(n537), .B1(n503), .A0N(str_reg[202]), .A1N(n538), .Y(
        n148) );
  OAI2BB2X2 U392 ( .B0(n537), .B1(n520), .A0N(str_reg[206]), .A1N(n538), .Y(
        n144) );
  OAI2BB2X2 U394 ( .B0(n565), .B1(n3), .A0N(str_reg[45]), .A1N(n565), .Y(n305)
         );
  OAI2BB2X2 U396 ( .B0(n565), .B1(n606), .A0N(str_reg[47]), .A1N(n565), .Y(
        n303) );
  OAI2BB2X2 U398 ( .B0(n560), .B1(n599), .A0N(str_reg[0]), .A1N(n560), .Y(n350) );
  OAI2BB2X2 U400 ( .B0(n560), .B1(n506), .A0N(str_reg[1]), .A1N(n560), .Y(n349) );
  OAI2BB2X2 U402 ( .B0(n560), .B1(n502), .A0N(str_reg[2]), .A1N(n560), .Y(n348) );
  OAI2BB2X2 U403 ( .B0(n560), .B1(n20), .A0N(str_reg[3]), .A1N(n560), .Y(n347)
         );
  OAI2BB2X2 U404 ( .B0(n560), .B1(n527), .A0N(str_reg[4]), .A1N(n560), .Y(n346) );
  OAI2BB2X2 U405 ( .B0(n562), .B1(n599), .A0N(str_reg[16]), .A1N(n562), .Y(
        n334) );
  OAI2BB2X2 U407 ( .B0(n562), .B1(n508), .A0N(str_reg[17]), .A1N(n562), .Y(
        n333) );
  OAI2BB2X2 U409 ( .B0(n562), .B1(n20), .A0N(str_reg[19]), .A1N(n562), .Y(n331) );
  OAI2BB2X2 U410 ( .B0(n564), .B1(n23), .A0N(str_reg[32]), .A1N(n564), .Y(n318) );
  OAI2BB2X2 U411 ( .B0(n564), .B1(n507), .A0N(str_reg[33]), .A1N(n564), .Y(
        n317) );
  OAI2BB2X2 U412 ( .B0(n564), .B1(n503), .A0N(str_reg[34]), .A1N(n564), .Y(
        n316) );
  OAI2BB2X2 U413 ( .B0(n564), .B1(n20), .A0N(str_reg[35]), .A1N(n564), .Y(n315) );
  OAI2BB2X2 U414 ( .B0(n564), .B1(n527), .A0N(str_reg[36]), .A1N(n564), .Y(
        n314) );
  OAI2BB2X2 U415 ( .B0(n564), .B1(n606), .A0N(str_reg[39]), .A1N(n564), .Y(
        n311) );
  OAI2BB2X2 U416 ( .B0(n566), .B1(n599), .A0N(str_reg[48]), .A1N(n566), .Y(
        n302) );
  OAI2BB2X2 U418 ( .B0(n566), .B1(n509), .A0N(str_reg[49]), .A1N(n566), .Y(
        n301) );
  OAI2BB2X2 U419 ( .B0(n566), .B1(n20), .A0N(str_reg[51]), .A1N(n566), .Y(n299) );
  OAI2BB2X2 U420 ( .B0(n566), .B1(n528), .A0N(str_reg[52]), .A1N(n566), .Y(
        n298) );
  OAI2BB2X2 U421 ( .B0(n566), .B1(n520), .A0N(str_reg[54]), .A1N(n566), .Y(
        n296) );
  OAI2BB2X2 U422 ( .B0(n566), .B1(n606), .A0N(str_reg[55]), .A1N(n566), .Y(
        n295) );
  OAI2BB2X2 U423 ( .B0(n582), .B1(n11), .A0N(str_reg[176]), .A1N(n582), .Y(
        n174) );
  OAI2BB2X2 U424 ( .B0(n582), .B1(n507), .A0N(str_reg[177]), .A1N(n582), .Y(
        n173) );
  OAI2BB2X2 U425 ( .B0(n582), .B1(n528), .A0N(str_reg[180]), .A1N(n582), .Y(
        n170) );
  OAI2BB2X2 U426 ( .B0(n555), .B1(n527), .A0N(pat_reg[20]), .A1N(n517), .Y(
        n402) );
  OAI2BB2X2 U427 ( .B0(n555), .B1(n523), .A0N(pat_reg[22]), .A1N(n517), .Y(
        n400) );
  OAI2BB2X2 U428 ( .B0(n554), .B1(n599), .A0N(pat_reg[8]), .A1N(n554), .Y(n414) );
  OAI2BB2X2 U429 ( .B0(n554), .B1(n507), .A0N(pat_reg[9]), .A1N(n554), .Y(n413) );
  OAI2BB2X2 U430 ( .B0(n554), .B1(n503), .A0N(pat_reg[10]), .A1N(n554), .Y(
        n412) );
  OAI2BB2X2 U431 ( .B0(n554), .B1(n20), .A0N(pat_reg[11]), .A1N(n554), .Y(n411) );
  OAI2BB2X2 U432 ( .B0(n554), .B1(n606), .A0N(pat_reg[15]), .A1N(n554), .Y(
        n407) );
  OAI2BB2X2 U433 ( .B0(n556), .B1(n599), .A0N(pat_reg[24]), .A1N(n556), .Y(
        n398) );
  OAI2BB2X2 U434 ( .B0(n556), .B1(n508), .A0N(pat_reg[25]), .A1N(n556), .Y(
        n397) );
  OAI2BB2X2 U435 ( .B0(n556), .B1(n504), .A0N(pat_reg[26]), .A1N(n556), .Y(
        n396) );
  OAI2BB2X2 U436 ( .B0(n556), .B1(n20), .A0N(pat_reg[27]), .A1N(n556), .Y(n395) );
  OAI2BB2X2 U437 ( .B0(n556), .B1(n528), .A0N(pat_reg[28]), .A1N(n556), .Y(
        n394) );
  OAI2BB2X2 U438 ( .B0(n556), .B1(n523), .A0N(pat_reg[30]), .A1N(n556), .Y(
        n392) );
  OAI2BB2X2 U439 ( .B0(n556), .B1(n606), .A0N(pat_reg[31]), .A1N(n556), .Y(
        n391) );
  OAI2B2X2 U440 ( .A1N(pat_last_idx[1]), .A0(n13), .B0(n619), .B1(n91), .Y(
        n424) );
  OAI2B2X2 U441 ( .A1N(n454), .A0(n13), .B0(n618), .B1(n91), .Y(n425) );
  BUFX12 U442 ( .A(n629), .Y(valid) );
  INVX8 U443 ( .A(n69), .Y(n435) );
  NAND3X6 U444 ( .A(n8), .B(n7), .C(n550), .Y(n60) );
  INVX4 U445 ( .A(n615), .Y(n498) );
  CLKBUFX40 U446 ( .A(n558), .Y(n440) );
  CLKBUFX40 U447 ( .A(n558), .Y(n441) );
  BUFX5 U448 ( .A(n605), .Y(n608) );
  OAI2BB2X4 U449 ( .B0(n563), .B1(n16), .A0N(str_reg[31]), .A1N(n563), .Y(n319) );
  INVX20 U450 ( .A(n515), .Y(n81) );
  BUFX6 U451 ( .A(n610), .Y(n613) );
  OAI2BB2X4 U452 ( .B0(n441), .B1(n16), .A0N(pat_reg[55]), .A1N(n440), .Y(n367) );
  OAI2BB2X2 U453 ( .B0(n560), .B1(n16), .A0N(str_reg[7]), .A1N(n560), .Y(n343)
         );
  OAI2BB2X2 U454 ( .B0(n561), .B1(n16), .A0N(str_reg[15]), .A1N(n561), .Y(n335) );
  NAND2X8 U455 ( .A(w_data[7]), .B(n623), .Y(n16) );
  BUFX14 U456 ( .A(reset), .Y(n617) );
  BUFX10 U457 ( .A(n501), .Y(n503) );
  OAI21X6 U458 ( .A0(n24), .A1(n27), .B0(n498), .Y(n444) );
  OAI21X6 U459 ( .A0(n24), .A1(n25), .B0(n498), .Y(n445) );
  NAND2X4 U460 ( .A(n432), .B(n624), .Y(n446) );
  INVX4 U461 ( .A(n507), .Y(n487) );
  INVX12 U462 ( .A(n540), .Y(pat_last_idx[1]) );
  INVX10 U463 ( .A(n452), .Y(pat_last_idx[0]) );
  NOR2X2 U464 ( .A(n625), .B(p_index[2]), .Y(n514) );
  INVX6 U465 ( .A(w_sel), .Y(n625) );
  BUFX8 U466 ( .A(n609), .Y(n612) );
  INVX2 U467 ( .A(n9), .Y(n447) );
  INVX6 U468 ( .A(n447), .Y(n448) );
  INVX2 U469 ( .A(n10), .Y(n449) );
  INVX6 U470 ( .A(n449), .Y(n450) );
  CLKBUFX6 U471 ( .A(reset), .Y(n614) );
  AOI21X4 U472 ( .A0(n456), .A1(n457), .B0(n610), .Y(n41) );
  INVX8 U473 ( .A(s_index[0]), .Y(n451) );
  CLKINVX2 U474 ( .A(n452), .Y(n454) );
  OA21X4 U475 ( .A0(n33), .A1(n549), .B0(n498), .Y(n64) );
  INVX20 U476 ( .A(n30), .Y(n593) );
  AND3X8 U477 ( .A(s_index[3]), .B(n550), .C(s_index[4]), .Y(n455) );
  AOI21BX2 U478 ( .A0(n483), .A1(n494), .B0N(n498), .Y(n43) );
  AND3X6 U479 ( .A(n550), .B(n8), .C(s_index[4]), .Y(n494) );
  CLKINVX40 U480 ( .A(n25), .Y(n456) );
  CLKINVX40 U481 ( .A(n42), .Y(n457) );
  BUFX20 U482 ( .A(n617), .Y(n616) );
  AO2B2X4 U483 ( .B0(n458), .B1(n488), .A0(pat_reg[50]), .A1N(n458), .Y(n372)
         );
  AO2B2X2 U484 ( .B0(valid), .B1(n71), .A0(n72), .A1N(n71), .Y(n356) );
  OR2X8 U485 ( .A(n518), .B(w_sel), .Y(n547) );
  INVX18 U486 ( .A(n445), .Y(n598) );
  INVX18 U487 ( .A(n444), .Y(n597) );
  AND2X6 U488 ( .A(n13), .B(n551), .Y(n484) );
  AO2B2X4 U489 ( .B0(str_reg[119]), .B1(n461), .A0(n493), .A1N(n459), .Y(n231)
         );
  AO2B2X4 U490 ( .B0(str_reg[103]), .B1(n467), .A0(n493), .A1N(n466), .Y(n247)
         );
  AO2B2X4 U491 ( .B0(str_reg[126]), .B1(n464), .A0(n485), .A1N(n462), .Y(n224)
         );
  AO2B2X4 U492 ( .B0(str_reg[110]), .B1(n473), .A0(n434), .A1N(n473), .Y(n240)
         );
  AO2B2X4 U493 ( .B0(str_reg[93]), .B1(n468), .A0(n431), .A1N(n468), .Y(n257)
         );
  AO2B2X4 U494 ( .B0(str_reg[118]), .B1(n459), .A0(n434), .A1N(n460), .Y(n232)
         );
  AO2B2X4 U495 ( .B0(str_reg[102]), .B1(n465), .A0(n434), .A1N(n465), .Y(n248)
         );
  AO2B2X4 U496 ( .B0(str_reg[124]), .B1(n462), .A0(n486), .A1N(n462), .Y(n226)
         );
  AO2B2X4 U497 ( .B0(str_reg[108]), .B1(n471), .A0(n486), .A1N(n472), .Y(n242)
         );
  AO2B2X4 U498 ( .B0(str_reg[92]), .B1(n469), .A0(n486), .A1N(n469), .Y(n258)
         );
  AO2B2X4 U499 ( .B0(str_reg[86]), .B1(n476), .A0(n434), .A1N(n474), .Y(n264)
         );
  AO2B2X4 U500 ( .B0(str_reg[71]), .B1(n482), .A0(n493), .A1N(n481), .Y(n279)
         );
  AO2B2X4 U501 ( .B0(str_reg[73]), .B1(n477), .A0(n487), .A1N(n477), .Y(n277)
         );
  AO2B2X4 U502 ( .B0(str_reg[117]), .B1(n460), .A0(n431), .A1N(n459), .Y(n233)
         );
  AO2B2X4 U503 ( .B0(str_reg[100]), .B1(n466), .A0(n486), .A1N(n467), .Y(n250)
         );
  AO2B2X4 U504 ( .B0(str_reg[122]), .B1(n463), .A0(n488), .A1N(n463), .Y(n228)
         );
  AO2B2X4 U505 ( .B0(str_reg[106]), .B1(n472), .A0(n488), .A1N(n471), .Y(n244)
         );
  AO2B2X4 U506 ( .B0(str_reg[90]), .B1(n470), .A0(n488), .A1N(n470), .Y(n260)
         );
  AO2B2X4 U507 ( .B0(str_reg[84]), .B1(n474), .A0(n526), .A1N(n475), .Y(n266)
         );
  AO2B2X4 U508 ( .B0(str_reg[70]), .B1(n480), .A0(n485), .A1N(n480), .Y(n280)
         );
  AO2B2X4 U509 ( .B0(str_reg[74]), .B1(n478), .A0(n488), .A1N(n479), .Y(n276)
         );
  OR2X8 U510 ( .A(n620), .B(n70), .Y(n515) );
  AO2B2X4 U511 ( .B0(str_reg[112]), .B1(n461), .A0(n495), .A1N(n460), .Y(n238)
         );
  AO2B2X4 U512 ( .B0(str_reg[98]), .B1(n467), .A0(n488), .A1N(n465), .Y(n252)
         );
  AO2B2X4 U513 ( .B0(str_reg[121]), .B1(n464), .A0(n487), .A1N(n463), .Y(n229)
         );
  AO2B2X4 U514 ( .B0(str_reg[105]), .B1(n473), .A0(n487), .A1N(n471), .Y(n245)
         );
  AO2B2X4 U515 ( .B0(str_reg[89]), .B1(n468), .A0(n487), .A1N(n470), .Y(n261)
         );
  AO2B2X4 U516 ( .B0(str_reg[82]), .B1(n475), .A0(n488), .A1N(n475), .Y(n268)
         );
  AO2B2X4 U517 ( .B0(str_reg[69]), .B1(n481), .A0(n431), .A1N(n481), .Y(n281)
         );
  AO2B2X4 U518 ( .B0(str_reg[78]), .B1(n479), .A0(n522), .A1N(n477), .Y(n272)
         );
  AO2B2X4 U519 ( .B0(str_reg[97]), .B1(n465), .A0(n497), .A1N(n467), .Y(n253)
         );
  AO2B2X4 U520 ( .B0(str_reg[104]), .B1(n471), .A0(n495), .A1N(n472), .Y(n246)
         );
  AO2B2X4 U521 ( .B0(str_reg[88]), .B1(n469), .A0(n495), .A1N(n468), .Y(n262)
         );
  AO2B2X4 U522 ( .B0(str_reg[115]), .B1(n459), .A0(n4), .A1N(n461), .Y(n235)
         );
  AO2B2X4 U523 ( .B0(str_reg[127]), .B1(n462), .A0(n493), .A1N(n463), .Y(n223)
         );
  AO2B2X4 U524 ( .B0(str_reg[81]), .B1(n476), .A0(n497), .A1N(n476), .Y(n269)
         );
  AO2B2X4 U525 ( .B0(str_reg[64]), .B1(n482), .A0(n495), .A1N(n480), .Y(n286)
         );
  AO2B2X4 U526 ( .B0(str_reg[77]), .B1(n479), .A0(n431), .A1N(n478), .Y(n273)
         );
  CLKINVX40 U527 ( .A(n489), .Y(n490) );
  AO2B2X4 U528 ( .B0(str_reg[111]), .B1(n472), .A0(n493), .A1N(n471), .Y(n239)
         );
  AO2B2X4 U529 ( .B0(str_reg[101]), .B1(n466), .A0(n431), .A1N(n466), .Y(n249)
         );
  AO2B2X4 U530 ( .B0(str_reg[123]), .B1(n463), .A0(n4), .A1N(n464), .Y(n227)
         );
  AO2B2X4 U531 ( .B0(str_reg[91]), .B1(n470), .A0(n4), .A1N(n468), .Y(n259) );
  AO2B2X4 U532 ( .B0(str_reg[116]), .B1(n460), .A0(n526), .A1N(n459), .Y(n234)
         );
  AO2B2X4 U533 ( .B0(str_reg[80]), .B1(n474), .A0(n495), .A1N(n475), .Y(n270)
         );
  AO2B2X4 U534 ( .B0(str_reg[79]), .B1(n477), .A0(n493), .A1N(n478), .Y(n271)
         );
  AO2B2X4 U535 ( .B0(str_reg[67]), .B1(n480), .A0(n4), .A1N(n481), .Y(n283) );
  AO2B2X4 U536 ( .B0(str_reg[96]), .B1(n467), .A0(n495), .A1N(n465), .Y(n254)
         );
  AO2B2X4 U537 ( .B0(str_reg[125]), .B1(n464), .A0(n431), .A1N(n464), .Y(n225)
         );
  AO2B2X4 U538 ( .B0(str_reg[114]), .B1(n461), .A0(n488), .A1N(n460), .Y(n236)
         );
  AO2B2X4 U539 ( .B0(str_reg[107]), .B1(n473), .A0(n4), .A1N(n472), .Y(n243)
         );
  AO2B2X4 U540 ( .B0(str_reg[95]), .B1(n468), .A0(n493), .A1N(n469), .Y(n255)
         );
  AO2B2X4 U541 ( .B0(str_reg[87]), .B1(n475), .A0(n493), .A1N(n476), .Y(n263)
         );
  AO2B2X4 U542 ( .B0(str_reg[66]), .B1(n481), .A0(n488), .A1N(n482), .Y(n284)
         );
  AO2B2X4 U543 ( .B0(str_reg[72]), .B1(n478), .A0(n495), .A1N(n478), .Y(n278)
         );
  AO2B2X4 U544 ( .B0(str_reg[120]), .B1(n462), .A0(n495), .A1N(n462), .Y(n230)
         );
  AO2B2X4 U545 ( .B0(str_reg[113]), .B1(n459), .A0(n497), .A1N(n461), .Y(n237)
         );
  AO2B2X4 U546 ( .B0(str_reg[109]), .B1(n471), .A0(n431), .A1N(n473), .Y(n241)
         );
  AO2B2X4 U547 ( .B0(str_reg[99]), .B1(n465), .A0(n4), .A1N(n466), .Y(n251) );
  AO2B2X4 U548 ( .B0(str_reg[94]), .B1(n470), .A0(n485), .A1N(n469), .Y(n256)
         );
  AO2B2X4 U549 ( .B0(str_reg[85]), .B1(n476), .A0(n431), .A1N(n474), .Y(n265)
         );
  AO2B2X4 U550 ( .B0(str_reg[65]), .B1(n482), .A0(n497), .A1N(n480), .Y(n285)
         );
  AO2B2X4 U551 ( .B0(str_reg[75]), .B1(n479), .A0(n4), .A1N(n477), .Y(n275) );
  CLKINVX32 U552 ( .A(n595), .Y(n596) );
  AO2B2X4 U553 ( .B0(str_reg[83]), .B1(n474), .A0(n4), .A1N(n474), .Y(n267) );
  AO2B2X4 U554 ( .B0(str_reg[68]), .B1(n480), .A0(n526), .A1N(n482), .Y(n282)
         );
  AO2B2X4 U555 ( .B0(str_reg[76]), .B1(n477), .A0(n526), .A1N(n479), .Y(n274)
         );
  CLKINVX32 U556 ( .A(n593), .Y(n594) );
  AO2B2X4 U557 ( .B0(n458), .B1(n497), .A0(pat_reg[49]), .A1N(n458), .Y(n373)
         );
  AO2B2X2 U558 ( .B0(pat_reg[48]), .B1(n441), .A0(n499), .A1N(n439), .Y(n374)
         );
  INVX16 U559 ( .A(n28), .Y(n595) );
  AO2B2X2 U560 ( .B0(pat_reg[51]), .B1(n440), .A0(n4), .A1N(n439), .Y(n371) );
  BUFX8 U561 ( .A(n22), .Y(n508) );
  BUFX8 U562 ( .A(n20), .Y(n510) );
  BUFX8 U563 ( .A(n20), .Y(n511) );
  BUFX8 U564 ( .A(n20), .Y(n513) );
  CLKINVX40 U565 ( .A(n547), .Y(n550) );
  AND2X8 U566 ( .A(n514), .B(n623), .Y(n87) );
  BUFX20 U567 ( .A(n75), .Y(n539) );
  OAI2BB2X4 U568 ( .B0(n440), .B1(n525), .A0N(pat_reg[54]), .A1N(n440), .Y(
        n368) );
  OAI2BB2X4 U569 ( .B0(n440), .B1(n527), .A0N(pat_reg[52]), .A1N(n441), .Y(
        n370) );
  AOI2BB1X4 U570 ( .A0N(n83), .A1N(n621), .B0(n614), .Y(n88) );
  CLKINVX40 U571 ( .A(n516), .Y(n517) );
  CLKBUFX40 U572 ( .A(n616), .Y(n609) );
  NAND2BX8 U573 ( .AN(n615), .B(write), .Y(n518) );
  OAI2BB2X2 U574 ( .B0(n555), .B1(n606), .A0N(pat_reg[23]), .A1N(n517), .Y(
        n399) );
  OAI2BB2X2 U575 ( .B0(n555), .B1(n442), .A0N(pat_reg[21]), .A1N(n517), .Y(
        n401) );
  INVX20 U576 ( .A(n539), .Y(n622) );
  CLKNAND2X12 U577 ( .A(n5), .B(n433), .Y(n69) );
  OAI2BB2X4 U578 ( .B0(n556), .B1(n443), .A0N(pat_reg[29]), .A1N(n556), .Y(
        n393) );
  AOI2BB1X4 U579 ( .A0N(n79), .A1N(n621), .B0(n614), .Y(n85) );
  BUFX4 U580 ( .A(n3), .Y(n603) );
  OAI2BB2X4 U581 ( .B0(n441), .B1(n443), .A0N(pat_reg[53]), .A1N(n441), .Y(
        n369) );
  OAI2B2X4 U582 ( .A1N(str_last_idx[3]), .A0(n5), .B0(n8), .B1(n436), .Y(n352)
         );
  OAI2B2X4 U583 ( .A1N(str_last_idx[4]), .A0(n5), .B0(n7), .B1(n436), .Y(n351)
         );
  OAI2B2X4 U584 ( .A1N(str_last_idx[2]), .A0(n5), .B0(n448), .B1(n436), .Y(
        n353) );
  CLKAND2X12 U585 ( .A(n70), .B(n622), .Y(n68) );
  OAI2B2X4 U586 ( .A1N(n626), .A0(n13), .B0(n620), .B1(n91), .Y(n423) );
  CLKBUFX4 U587 ( .A(s_index[2]), .Y(n542) );
  CLKBUFX4 U588 ( .A(s_index[1]), .Y(n543) );
  CLKXOR2X2 U589 ( .A(\add_69_S2/carry[4] ), .B(s_index[4]), .Y(N68) );
  CLKINVX4 U590 ( .A(n451), .Y(n544) );
  CLKBUFX16 U591 ( .A(n626), .Y(pat_last_idx[2]) );
  CLKBUFX40 U592 ( .A(n46), .Y(n579) );
  CLKBUFX40 U593 ( .A(n44), .Y(n581) );
  CLKBUFX40 U594 ( .A(n41), .Y(n583) );
  CLKBUFX40 U595 ( .A(n59), .Y(n567) );
  CLKBUFX40 U596 ( .A(n66), .Y(n561) );
  CLKBUFX40 U597 ( .A(n67), .Y(n560) );
  INVX20 U598 ( .A(n87), .Y(n621) );
  INVX5 U599 ( .A(p_index[1]), .Y(n619) );
  NOR2X6 U600 ( .A(n609), .B(n623), .Y(n75) );
  BUFX12 U601 ( .A(n16), .Y(n606) );
  BUFX12 U602 ( .A(n3), .Y(n602) );
  BUFX12 U603 ( .A(n605), .Y(n607) );
  OA21X1 U604 ( .A0(n2), .A1(p_index[1]), .B0(n94), .Y(n93) );
  AOI2BB2X2 U605 ( .B0(n2), .B1(n77), .A0N(ff_valid), .A1N(n622), .Y(n357) );
  OAI2BB2X2 U606 ( .B0(n555), .B1(n599), .A0N(pat_reg[16]), .A1N(n517), .Y(
        n406) );
  OAI2BB2X2 U607 ( .B0(n555), .B1(n506), .A0N(pat_reg[17]), .A1N(n517), .Y(
        n405) );
  OAI2BB2X2 U608 ( .B0(n555), .B1(n502), .A0N(pat_reg[18]), .A1N(n517), .Y(
        n404) );
  NAND2X4 U609 ( .A(active[0]), .B(n72), .Y(n73) );
  OAI21X2 U610 ( .A0(active[1]), .A1(n73), .B0(n539), .Y(n74) );
  OAI21X2 U611 ( .A0(active[1]), .A1(n73), .B0(n77), .Y(n358) );
  NAND3X6 U612 ( .A(s_index[0]), .B(n448), .C(n543), .Y(n33) );
  NAND3X6 U613 ( .A(n544), .B(n450), .C(n542), .Y(n29) );
  NAND3X6 U614 ( .A(s_index[1]), .B(n544), .C(s_index[2]), .Y(n25) );
  NAND3X6 U615 ( .A(s_index[1]), .B(n451), .C(n542), .Y(n27) );
  NAND3X6 U616 ( .A(n450), .B(n448), .C(n544), .Y(n37) );
  NAND3X6 U617 ( .A(n450), .B(n448), .C(n451), .Y(n39) );
  NAND3X6 U618 ( .A(n451), .B(n448), .C(n543), .Y(n35) );
  NAND3X6 U619 ( .A(n451), .B(n450), .C(s_index[2]), .Y(n31) );
  NAND2X4 U620 ( .A(p_index[0]), .B(n619), .Y(n83) );
  ADDHX2 U621 ( .A(n543), .B(s_index[0]), .CO(\add_69_S2/carry[2] ), .S(N65)
         );
  ADDHX2 U622 ( .A(n542), .B(\add_69_S2/carry[2] ), .CO(\add_69_S2/carry[3] ), 
        .S(N66) );
  ADDHX2 U623 ( .A(s_index[3]), .B(\add_69_S2/carry[3] ), .CO(
        \add_69_S2/carry[4] ), .S(N67) );
  INVX4 U624 ( .A(p_index[2]), .Y(n620) );
  NAND2X4 U625 ( .A(p_index[1]), .B(p_index[0]), .Y(n79) );
  INVX8 U626 ( .A(p_index[0]), .Y(n618) );
  CLKINVX40 U627 ( .A(n2), .Y(n623) );
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
  wire   n469, done, N58, N59, N60, N389, N390, N391, N392, N393, N438, N439,
         N440, N441, n22, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n46, n48, n49, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n63, n64, n65, n66, n67, n69, n70, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n118, n119, n120, n122, n123, n124, n125,
         n126, n127, n129, n130, n131, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n147, n149, n150, n151,
         n153, n155, n156, n157, n162, n163, n164, n165, n166, n167, n169,
         n172, n173, n174, n175, n176, n177, n178, n179, n181, n182, n183,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n199, n200, n201, n203, n204, n207, n208, n209, n211,
         n212, n213, n218, n219, n220, n221, n222, n223, n224, n225, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n237, n238, n239,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n263,
         n264, n265, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n280, n281, n282, n283, n284, n285, n286, n287, n289,
         n290, n291, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n313,
         n315, n316, n317, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n346, n347, \sub_83/carry[4] ,
         \sub_83/carry[3] , \sub_83/carry[2] , \sub_83/carry[1] ,
         \r342/carry[4] , \r342/carry[3] , \r342/carry[2] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n45,
         n47, n50, n62, n68, n71, n72, n73, n74, n94, n95, n96, n97, n98, n116,
         n117, n121, n128, n132, n146, n148, n152, n154, n158, n159, n160,
         n161, n168, n170, n171, n180, n184, n198, n202, n205, n206, n210,
         n214, n215, n216, n217, n226, n236, n240, n262, n266, n278, n279,
         n288, n292, n312, n314, n318, n331, n345, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468;
  wire   [2:0] current_st;
  wire   [2:0] next_st;
  wire   [4:0] str_pro_idx;
  wire   [2:0] pat_pro_idx;

  DFFTRX4 \current_st_reg[1]  ( .D(next_st[1]), .RN(n448), .CK(clk), .Q(
        current_st[1]), .QN(n7) );
  DFFTRX4 \current_st_reg[2]  ( .D(next_st[2]), .RN(n448), .CK(clk), .Q(
        current_st[2]), .QN(n236) );
  AOI222X4 U19 ( .A0(ff_result[11]), .A1(n465), .B0(ff_result[17]), .B1(n58), 
        .C0(ff_result[5]), .C1(n443), .Y(n52) );
  AOI222X4 U26 ( .A0(ff_result[9]), .A1(n465), .B0(ff_result[15]), .B1(n58), 
        .C0(ff_result[3]), .C1(n443), .Y(n64) );
  AOI22X4 U30 ( .A0(start_idx[3]), .A1(n457), .B0(N440), .B1(n18), .Y(n70) );
  AOI222X4 U44 ( .A0(ff_result[10]), .A1(n465), .B0(ff_result[16]), .B1(n58), 
        .C0(ff_result[4]), .C1(n443), .Y(n77) );
  NOR2X8 U48 ( .A(n450), .B(n457), .Y(n82) );
  OAI211X4 U66 ( .A0(n441), .A1(n100), .B0(n101), .C0(n102), .Y(n99) );
  AOI222X4 U67 ( .A0(pat_input[15]), .A1(n55), .B0(pat_input[31]), .B1(n464), 
        .C0(pat_input[7]), .C1(n84), .Y(n102) );
  AOI222X4 U69 ( .A0(pat_input[39]), .A1(n465), .B0(pat_input[55]), .B1(n58), 
        .C0(pat_input[23]), .C1(n443), .Y(n100) );
  AOI22X4 U78 ( .A0(str_input[15]), .A1(n400), .B0(str_input[79]), .B1(n62), 
        .Y(n127) );
  AOI22X4 U83 ( .A0(str_input[31]), .A1(n447), .B0(str_input[95]), .B1(n408), 
        .Y(n131) );
  OAI211X4 U93 ( .A0(n441), .A1(n138), .B0(n139), .C0(n140), .Y(n137) );
  AOI222X4 U94 ( .A0(pat_input[14]), .A1(n55), .B0(pat_input[30]), .B1(n464), 
        .C0(pat_input[6]), .C1(n84), .Y(n140) );
  AOI222X4 U96 ( .A0(pat_input[38]), .A1(n465), .B0(pat_input[54]), .B1(n58), 
        .C0(pat_input[22]), .C1(n443), .Y(n138) );
  AOI221X4 U97 ( .A0(n312), .A1(n141), .B0(n266), .B1(n142), .C0(n143), .Y(
        n136) );
  AOI22X4 U108 ( .A0(str_input[174]), .A1(n214), .B0(str_input[238]), .B1(n73), 
        .Y(n150) );
  AOI22X4 U111 ( .A0(str_input[158]), .A1(n161), .B0(str_input[222]), .B1(n184), .Y(n156) );
  OAI211X4 U120 ( .A0(n441), .A1(n164), .B0(n165), .C0(n166), .Y(n163) );
  AOI222X4 U121 ( .A0(pat_input[13]), .A1(n55), .B0(pat_input[29]), .B1(n464), 
        .C0(pat_input[5]), .C1(n84), .Y(n166) );
  AOI222X4 U123 ( .A0(pat_input[37]), .A1(n465), .B0(pat_input[53]), .B1(n58), 
        .C0(pat_input[21]), .C1(n443), .Y(n164) );
  AOI221X4 U124 ( .A0(n312), .A1(n167), .B0(n266), .B1(n391), .C0(n169), .Y(
        n162) );
  AOI22X4 U135 ( .A0(str_input[173]), .A1(n216), .B0(str_input[237]), .B1(n72), 
        .Y(n176) );
  AOI22X4 U137 ( .A0(str_input[29]), .A1(n400), .B0(str_input[93]), .B1(n4), 
        .Y(n183) );
  AOI22X4 U142 ( .A0(str_input[21]), .A1(n400), .B0(str_input[85]), .B1(n4), 
        .Y(n187) );
  AOI22X4 U143 ( .A0(str_input[149]), .A1(n170), .B0(str_input[213]), .B1(n184), .Y(n186) );
  AOI222X4 U148 ( .A0(pat_input[12]), .A1(n55), .B0(pat_input[28]), .B1(n464), 
        .C0(pat_input[4]), .C1(n84), .Y(n192) );
  AOI222X4 U150 ( .A0(pat_input[36]), .A1(n465), .B0(pat_input[52]), .B1(n58), 
        .C0(pat_input[20]), .C1(n443), .Y(n190) );
  AOI22X4 U164 ( .A0(str_input[28]), .A1(n400), .B0(str_input[92]), .B1(n6), 
        .Y(n209) );
  AOI22X4 U169 ( .A0(str_input[20]), .A1(n400), .B0(str_input[84]), .B1(n5), 
        .Y(n213) );
  OAI211X4 U175 ( .A0(n441), .A1(n220), .B0(n221), .C0(n222), .Y(n219) );
  AOI222X4 U176 ( .A0(pat_input[11]), .A1(n55), .B0(pat_input[27]), .B1(n464), 
        .C0(pat_input[3]), .C1(n84), .Y(n222) );
  AOI222X4 U178 ( .A0(pat_input[35]), .A1(n465), .B0(pat_input[51]), .B1(n58), 
        .C0(pat_input[19]), .C1(n443), .Y(n220) );
  AOI221X4 U179 ( .A0(n312), .A1(n223), .B0(n266), .B1(n224), .C0(n225), .Y(
        n218) );
  AOI22X4 U193 ( .A0(str_input[155]), .A1(n168), .B0(str_input[219]), .B1(n180), .Y(n238) );
  AOI22X4 U197 ( .A0(str_input[19]), .A1(n400), .B0(str_input[83]), .B1(n4), 
        .Y(n243) );
  AOI22X4 U198 ( .A0(str_input[147]), .A1(n160), .B0(str_input[211]), .B1(n180), .Y(n242) );
  OAI211X4 U202 ( .A0(n441), .A1(n246), .B0(n247), .C0(n248), .Y(n245) );
  AOI222X4 U203 ( .A0(pat_input[10]), .A1(n55), .B0(pat_input[26]), .B1(n464), 
        .C0(pat_input[2]), .C1(n84), .Y(n248) );
  AOI222X4 U205 ( .A0(pat_input[34]), .A1(n465), .B0(pat_input[50]), .B1(n58), 
        .C0(pat_input[18]), .C1(n443), .Y(n246) );
  AOI22X4 U209 ( .A0(str_input[2]), .A1(n400), .B0(str_input[66]), .B1(n408), 
        .Y(n257) );
  AOI22X4 U224 ( .A0(str_input[18]), .A1(n24), .B0(str_input[82]), .B1(n62), 
        .Y(n269) );
  OAI211X4 U229 ( .A0(n441), .A1(n272), .B0(n273), .C0(n274), .Y(n271) );
  AOI222X4 U230 ( .A0(pat_input[9]), .A1(n55), .B0(pat_input[25]), .B1(n464), 
        .C0(pat_input[1]), .C1(n84), .Y(n274) );
  AOI222X4 U232 ( .A0(pat_input[33]), .A1(n465), .B0(pat_input[49]), .B1(n58), 
        .C0(pat_input[17]), .C1(n443), .Y(n272) );
  AOI22X4 U244 ( .A0(str_input[169]), .A1(n210), .B0(str_input[233]), .B1(n72), 
        .Y(n284) );
  AOI22X4 U246 ( .A0(str_input[25]), .A1(n400), .B0(str_input[89]), .B1(n6), 
        .Y(n291) );
  AOI22X4 U247 ( .A0(str_input[153]), .A1(n159), .B0(str_input[217]), .B1(n184), .Y(n290) );
  AOI22X4 U251 ( .A0(str_input[17]), .A1(n400), .B0(str_input[81]), .B1(n5), 
        .Y(n295) );
  OAI211X4 U256 ( .A0(n441), .A1(n298), .B0(n299), .C0(n300), .Y(n297) );
  AOI222X4 U257 ( .A0(pat_input[8]), .A1(n55), .B0(pat_input[24]), .B1(n464), 
        .C0(pat_input[0]), .C1(n84), .Y(n300) );
  AOI222X4 U264 ( .A0(pat_input[32]), .A1(n465), .B0(pat_input[48]), .B1(n58), 
        .C0(pat_input[16]), .C1(n443), .Y(n298) );
  NOR2X8 U265 ( .A(n466), .B(pat_pro_idx[2]), .Y(n59) );
  AOI22X4 U277 ( .A0(str_input[8]), .A1(n400), .B0(str_input[72]), .B1(n5), 
        .Y(n313) );
  AOI22X4 U283 ( .A0(str_input[24]), .A1(n400), .B0(str_input[88]), .B1(n6), 
        .Y(n317) );
  AOI22X4 U284 ( .A0(str_input[152]), .A1(n160), .B0(str_input[216]), .B1(n184), .Y(n316) );
  AOI22X4 U289 ( .A0(str_input[16]), .A1(n400), .B0(str_input[80]), .B1(n5), 
        .Y(n321) );
  NOR2BX8 U294 ( .AN(n325), .B(n394), .Y(n118) );
  NOR2BX8 U298 ( .AN(n323), .B(n461), .Y(n120) );
  NOR2X8 U299 ( .A(n345), .B(n401), .Y(n323) );
  DFFHQX8 \str_pro_idx_reg[1]  ( .D(n384), .CK(clk), .Q(str_pro_idx[1]) );
  DFFHQX8 \str_pro_idx_reg[0]  ( .D(n344), .CK(clk), .Q(str_pro_idx[0]) );
  DFFHQX8 \str_pro_idx_reg[2]  ( .D(n343), .CK(clk), .Q(str_pro_idx[2]) );
  DFFHQX8 \str_pro_idx_reg[3]  ( .D(n342), .CK(clk), .Q(str_pro_idx[3]) );
  DFFHQX8 \pat_pro_idx_reg[1]  ( .D(n346), .CK(clk), .Q(pat_pro_idx[1]) );
  DFFHQX8 \pat_pro_idx_reg[2]  ( .D(n339), .CK(clk), .Q(pat_pro_idx[2]) );
  DFFHQX8 match_reg ( .D(n337), .CK(clk), .Q(match) );
  DFFHQX8 \match_idx_reg[4]  ( .D(n336), .CK(clk), .Q(match_idx[4]) );
  DFFHQX8 \match_idx_reg[3]  ( .D(n335), .CK(clk), .Q(match_idx[3]) );
  DFFHQX8 \match_idx_reg[1]  ( .D(n333), .CK(clk), .Q(match_idx[1]) );
  DFFQX4 done_reg ( .D(n347), .CK(clk), .Q(done) );
  DFFQX2 output_valid_reg ( .D(n338), .CK(clk), .Q(output_valid) );
  TLATX1 \next_st_reg[1]  ( .G(n12), .D(N59), .Q(next_st[1]) );
  TLATX1 \next_st_reg[2]  ( .G(n12), .D(N60), .Q(next_st[2]) );
  TLATX1 \next_st_reg[0]  ( .G(n12), .D(N58), .Q(next_st[0]) );
  DFFHX8 \str_pro_idx_reg[4]  ( .D(n341), .CK(clk), .Q(n26) );
  DFFTRX4 \current_st_reg[0]  ( .D(next_st[0]), .RN(n448), .CK(clk), .Q(n226), 
        .QN(n22) );
  DFFHQX4 \match_idx_reg[2]  ( .D(n334), .CK(clk), .Q(n469) );
  DFFHQX4 \match_idx_reg[0]  ( .D(n332), .CK(clk), .Q(match_idx[0]) );
  DFFHQX4 \pat_pro_idx_reg[0]  ( .D(n340), .CK(clk), .Q(pat_pro_idx[0]) );
  INVX14 U3 ( .A(n60), .Y(n464) );
  INVX14 U4 ( .A(n68), .Y(n73) );
  CLKINVX32 U5 ( .A(n123), .Y(n68) );
  NAND4X8 U6 ( .A(n8), .B(n390), .C(n147), .D(n149), .Y(n145) );
  AND2X4 U7 ( .A(n266), .B(n194), .Y(n32) );
  AO22X2 U8 ( .A0(str_input[22]), .A1(n400), .B0(str_input[86]), .B1(n4), .Y(
        n1) );
  OR4X2 U9 ( .A(n377), .B(n2), .C(n3), .D(n1), .Y(n141) );
  AO22X2 U10 ( .A0(str_input[54]), .A1(n416), .B0(str_input[118]), .B1(n146), 
        .Y(n2) );
  AO22X2 U11 ( .A0(str_input[150]), .A1(n171), .B0(str_input[214]), .B1(n180), 
        .Y(n3) );
  AOI22X4 U12 ( .A0(str_input[9]), .A1(n400), .B0(str_input[73]), .B1(n446), 
        .Y(n287) );
  AND4X4 U13 ( .A(n280), .B(n281), .C(n282), .D(n283), .Y(n410) );
  INVX14 U14 ( .A(n415), .Y(n419) );
  CLKAND2X6 U15 ( .A(n266), .B(n250), .Y(n422) );
  NAND4X6 U16 ( .A(n356), .B(n129), .C(n130), .D(n131), .Y(n106) );
  CLKAND2X4 U17 ( .A(n266), .B(n106), .Y(n406) );
  BUFX16 U18 ( .A(n451), .Y(n148) );
  NAND4X4 U20 ( .A(n385), .B(n203), .C(n204), .D(n386), .Y(n196) );
  AOI22X4 U21 ( .A0(str_input[140]), .A1(n170), .B0(str_input[204]), .B1(n184), 
        .Y(n204) );
  INVX4 U22 ( .A(n412), .Y(n228) );
  INVX12 U23 ( .A(n21), .Y(n239) );
  CLKINVX24 U24 ( .A(str_pro_idx[0]), .Y(n460) );
  INVX10 U25 ( .A(n50), .Y(n62) );
  CLKBUFX40 U27 ( .A(n119), .Y(n180) );
  AO22X2 U28 ( .A0(str_input[182]), .A1(n215), .B0(str_input[246]), .B1(n73), 
        .Y(n377) );
  NOR2BX4 U29 ( .AN(n58), .B(n440), .Y(n56) );
  CLKINVX32 U31 ( .A(n367), .Y(n58) );
  BUFX20 U32 ( .A(n56), .Y(n444) );
  AO22X2 U33 ( .A0(str_input[190]), .A1(n216), .B0(str_input[254]), .B1(n72), 
        .Y(n372) );
  AO2B2BX4 U34 ( .A0(n441), .A1N(n198), .B0(n429), .B1N(n48), .Y(n340) );
  NAND4X6 U35 ( .A(n258), .B(n259), .C(n260), .D(n261), .Y(n252) );
  CLKINVX20 U36 ( .A(n122), .Y(n205) );
  CLKBUFX40 U37 ( .A(n407), .Y(n5) );
  AOI22X4 U38 ( .A0(str_input[154]), .A1(n168), .B0(str_input[218]), .B1(n184), 
        .Y(n264) );
  INVX18 U39 ( .A(n158), .Y(n168) );
  AOI22X4 U40 ( .A0(str_input[161]), .A1(n206), .B0(str_input[225]), .B1(n71), 
        .Y(n280) );
  AND4X8 U41 ( .A(n172), .B(n173), .C(n174), .D(n175), .Y(n411) );
  AOI22X4 U42 ( .A0(str_input[133]), .A1(n168), .B0(str_input[197]), .B1(n184), 
        .Y(n174) );
  CLKBUFX40 U43 ( .A(n469), .Y(match_idx[2]) );
  INVX16 U45 ( .A(n440), .Y(n441) );
  INVX2 U46 ( .A(n440), .Y(n442) );
  INVX12 U47 ( .A(pat_pro_idx[0]), .Y(n440) );
  INVX2 U49 ( .A(n441), .Y(n467) );
  INVX20 U50 ( .A(n205), .Y(n217) );
  CLKINVX32 U51 ( .A(n122), .Y(n202) );
  INVX12 U52 ( .A(n202), .Y(n206) );
  INVX12 U53 ( .A(n154), .Y(n160) );
  NAND3X4 U54 ( .A(n326), .B(n327), .C(n328), .Y(n37) );
  INVX12 U55 ( .A(n98), .Y(n132) );
  INVX12 U56 ( .A(n118), .Y(n158) );
  INVX6 U57 ( .A(n98), .Y(n94) );
  INVX12 U58 ( .A(n205), .Y(n216) );
  AOI22X2 U59 ( .A0(str_input[14]), .A1(n366), .B0(str_input[78]), .B1(n446), 
        .Y(n153) );
  INVX6 U60 ( .A(n415), .Y(n418) );
  INVX12 U61 ( .A(n202), .Y(n214) );
  AND2X2 U62 ( .A(str_input[202]), .B(n184), .Y(n362) );
  INVX18 U63 ( .A(n97), .Y(n117) );
  INVX12 U64 ( .A(n205), .Y(n215) );
  INVX10 U65 ( .A(n154), .Y(n161) );
  INVX6 U68 ( .A(n108), .Y(n292) );
  INVX4 U70 ( .A(n97), .Y(n96) );
  INVX12 U71 ( .A(n154), .Y(n159) );
  INVX14 U72 ( .A(n202), .Y(n210) );
  AND2X6 U73 ( .A(n312), .B(n104), .Y(n405) );
  AOI22X2 U74 ( .A0(str_input[151]), .A1(n160), .B0(str_input[215]), .B1(n180), 
        .Y(n134) );
  INVX2 U75 ( .A(n11), .Y(n14) );
  INVX12 U76 ( .A(n61), .Y(n465) );
  INVX2 U77 ( .A(n80), .Y(n349) );
  NAND2X4 U79 ( .A(pat_pro_idx[2]), .B(n466), .Y(n61) );
  INVX8 U80 ( .A(n9), .Y(n331) );
  INVX2 U81 ( .A(str_input[30]), .Y(n29) );
  INVX14 U82 ( .A(n98), .Y(n146) );
  AOI22X2 U84 ( .A0(str_input[165]), .A1(n214), .B0(str_input[229]), .B1(n73), 
        .Y(n172) );
  NOR2X4 U85 ( .A(n352), .B(n353), .Y(n114) );
  CLKINVX20 U86 ( .A(n365), .Y(n50) );
  INVX2 U87 ( .A(str_input[4]), .Y(n425) );
  INVX2 U88 ( .A(str_input[68]), .Y(n414) );
  AOI22X2 U89 ( .A0(str_input[172]), .A1(n217), .B0(str_input[236]), .B1(n74), 
        .Y(n385) );
  AOI22X2 U90 ( .A0(str_input[132]), .A1(n160), .B0(str_input[196]), .B1(n180), 
        .Y(n200) );
  AOI22X2 U91 ( .A0(str_input[164]), .A1(n216), .B0(str_input[228]), .B1(n72), 
        .Y(n387) );
  AOI22X2 U92 ( .A0(str_input[36]), .A1(n418), .B0(str_input[100]), .B1(n132), 
        .Y(n199) );
  INVX2 U95 ( .A(str_input[27]), .Y(n23) );
  AOI22X2 U98 ( .A0(str_input[129]), .A1(n171), .B0(str_input[193]), .B1(n184), 
        .Y(n282) );
  AOI22X2 U99 ( .A0(str_input[156]), .A1(n168), .B0(str_input[220]), .B1(n184), 
        .Y(n208) );
  CLKAND2X4 U100 ( .A(n312), .B(n193), .Y(n31) );
  AOI22X2 U101 ( .A0(str_input[148]), .A1(n159), .B0(str_input[212]), .B1(n184), .Y(n212) );
  AOI22X2 U102 ( .A0(pat_input[60]), .A1(n444), .B0(pat_input[44]), .B1(n445), 
        .Y(n191) );
  NOR2X4 U103 ( .A(n361), .B(n362), .Y(n260) );
  NAND4X6 U104 ( .A(n228), .B(n229), .C(n230), .D(n231), .Y(n227) );
  AOI22X2 U105 ( .A0(str_input[144]), .A1(n161), .B0(str_input[208]), .B1(n180), .Y(n320) );
  CLKAND2X4 U106 ( .A(n312), .B(n275), .Y(n19) );
  AOI22X2 U107 ( .A0(str_input[145]), .A1(n159), .B0(str_input[209]), .B1(n180), .Y(n294) );
  AOI22X2 U109 ( .A0(pat_input[57]), .A1(n444), .B0(pat_input[41]), .B1(n445), 
        .Y(n273) );
  INVX10 U110 ( .A(n358), .Y(n84) );
  INVX20 U112 ( .A(n396), .Y(n397) );
  BUFX14 U113 ( .A(n148), .Y(n450) );
  INVX16 U114 ( .A(n26), .Y(n463) );
  INVX2 U115 ( .A(pat_last_idx[0]), .Y(n454) );
  INVX14 U116 ( .A(n39), .Y(n455) );
  INVX12 U117 ( .A(pat_pro_idx[2]), .Y(n468) );
  NAND2X4 U118 ( .A(n443), .B(n442), .Y(n60) );
  INVX14 U119 ( .A(pat_pro_idx[1]), .Y(n466) );
  INVX18 U122 ( .A(n83), .Y(n457) );
  INVX5 U125 ( .A(n417), .Y(n404) );
  AND2X4 U126 ( .A(n312), .B(n301), .Y(n34) );
  NOR2X6 U127 ( .A(n314), .B(n318), .Y(n231) );
  AND2X4 U128 ( .A(str_input[67]), .B(n408), .Y(n318) );
  AND4X4 U129 ( .A(n233), .B(n232), .C(n234), .D(n235), .Y(n424) );
  AOI22X4 U130 ( .A0(str_input[171]), .A1(n217), .B0(str_input[235]), .B1(n71), 
        .Y(n232) );
  BUFX10 U131 ( .A(n407), .Y(n4) );
  BUFX10 U132 ( .A(n407), .Y(n6) );
  BUFX12 U133 ( .A(n446), .Y(n407) );
  INVX16 U134 ( .A(n152), .Y(n24) );
  AO22X2 U136 ( .A0(str_input[187]), .A1(n206), .B0(str_input[251]), .B1(n71), 
        .Y(n370) );
  BUFX3 U138 ( .A(reset), .Y(n451) );
  INVX18 U139 ( .A(n415), .Y(n417) );
  CLKINVX32 U140 ( .A(n120), .Y(n415) );
  INVX8 U141 ( .A(n394), .Y(n409) );
  INVX16 U144 ( .A(n354), .Y(n98) );
  INVX18 U145 ( .A(n68), .Y(n72) );
  INVX14 U146 ( .A(n68), .Y(n71) );
  INVX16 U147 ( .A(n97), .Y(n116) );
  INVX12 U149 ( .A(n97), .Y(n95) );
  AOI22X4 U151 ( .A0(str_input[166]), .A1(n216), .B0(str_input[230]), .B1(n71), 
        .Y(n8) );
  OR2X2 U152 ( .A(n458), .B(n80), .Y(n9) );
  AOI22X2 U153 ( .A0(str_input[183]), .A1(n206), .B0(str_input[247]), .B1(n72), 
        .Y(n357) );
  AOI22X2 U154 ( .A0(str_input[191]), .A1(n215), .B0(str_input[255]), .B1(n74), 
        .Y(n356) );
  INVX14 U155 ( .A(str_pro_idx[2]), .Y(n393) );
  AND2X2 U156 ( .A(n226), .B(n236), .Y(n10) );
  CLKAND2X4 U157 ( .A(n7), .B(n10), .Y(n11) );
  CLKINVX16 U158 ( .A(n397), .Y(n462) );
  BUFX14 U159 ( .A(n148), .Y(n449) );
  OR2X6 U160 ( .A(n330), .B(n279), .Y(n12) );
  AOI21BX2 U161 ( .A0(n226), .A1(current_st[1]), .B0N(n236), .Y(n13) );
  AOI22X2 U162 ( .A0(str_input[159]), .A1(n159), .B0(str_input[223]), .B1(n184), .Y(n130) );
  AOI22X2 U163 ( .A0(str_input[0]), .A1(n366), .B0(str_input[64]), .B1(n62), 
        .Y(n309) );
  AO22X2 U165 ( .A0(n458), .A1(n49), .B0(n331), .B1(n51), .Y(n428) );
  AO22X2 U166 ( .A0(n458), .A1(n75), .B0(n331), .B1(n76), .Y(n432) );
  AO22X2 U167 ( .A0(n331), .A1(n63), .B0(n458), .B1(n467), .Y(n429) );
  CLKXOR2X2 U168 ( .A(n348), .B(process_2idx[3]), .Y(n89) );
  INVX2 U170 ( .A(n396), .Y(n348) );
  AND4X2 U171 ( .A(n176), .B(n177), .C(n178), .D(n179), .Y(n423) );
  AOI22X2 U172 ( .A0(str_input[13]), .A1(n366), .B0(str_input[77]), .B1(n446), 
        .Y(n179) );
  AND2X2 U173 ( .A(str_input[199]), .B(n180), .Y(n353) );
  NAND4X4 U174 ( .A(n357), .B(n133), .C(n134), .D(n135), .Y(n104) );
  AOI22X2 U177 ( .A0(str_input[23]), .A1(n366), .B0(str_input[87]), .B1(n446), 
        .Y(n135) );
  AND2X2 U180 ( .A(str_input[3]), .B(n366), .Y(n314) );
  AND2X2 U181 ( .A(str_input[135]), .B(n159), .Y(n352) );
  INVX6 U182 ( .A(n35), .Y(n262) );
  OR3X2 U183 ( .A(n36), .B(n37), .C(n38), .Y(n35) );
  XNOR2X2 U184 ( .A(\sub_83/carry[3] ), .B(n345), .Y(N392) );
  ADDFX2 U185 ( .A(n394), .B(n452), .CI(\sub_83/carry[2] ), .CO(
        \sub_83/carry[3] ), .S(N391) );
  OAI31X4 U186 ( .A0(n85), .A1(n449), .A2(done), .B0(n16), .Y(N59) );
  INVX2 U187 ( .A(n457), .Y(n16) );
  AOI22X2 U188 ( .A0(ff_result[7]), .A1(n464), .B0(ff_result[1]), .B1(n55), 
        .Y(n79) );
  AOI22X2 U189 ( .A0(ff_result[8]), .A1(n464), .B0(ff_result[2]), .B1(n55), 
        .Y(n54) );
  AOI22X2 U190 ( .A0(ff_result[6]), .A1(n464), .B0(ff_result[0]), .B1(n55), 
        .Y(n66) );
  INVX12 U191 ( .A(n359), .Y(n55) );
  ADDHX2 U192 ( .A(str_pro_idx[1]), .B(str_pro_idx[0]), .CO(\r342/carry[2] ), 
        .S(N438) );
  OR2X2 U194 ( .A(n462), .B(n399), .Y(n33) );
  CLKXOR2X2 U195 ( .A(n401), .B(process_2idx[4]), .Y(n91) );
  OR2X2 U196 ( .A(n459), .B(str_pro_idx[0]), .Y(n103) );
  INVX4 U199 ( .A(str_pro_idx[1]), .Y(n459) );
  XNOR2X2 U200 ( .A(str_pro_idx[0]), .B(n454), .Y(N389) );
  INVX8 U201 ( .A(n110), .Y(n240) );
  OR2X4 U204 ( .A(str_pro_idx[0]), .B(str_pro_idx[1]), .Y(n110) );
  CLKXOR2X2 U206 ( .A(\r342/carry[4] ), .B(n15), .Y(N441) );
  XNOR2X2 U207 ( .A(n15), .B(\sub_83/carry[4] ), .Y(N393) );
  INVX2 U208 ( .A(n463), .Y(n15) );
  INVX8 U210 ( .A(n449), .Y(n448) );
  NOR2BX8 U211 ( .AN(n14), .B(n450), .Y(n42) );
  OR2X8 U212 ( .A(n14), .B(n449), .Y(n83) );
  NAND2X4 U213 ( .A(n33), .B(n70), .Y(n342) );
  AOI22X4 U214 ( .A0(str_input[53]), .A1(n419), .B0(str_input[117]), .B1(n116), 
        .Y(n185) );
  AO22X2 U215 ( .A0(str_input[178]), .A1(n210), .B0(str_input[242]), .B1(n71), 
        .Y(n382) );
  BUFX20 U216 ( .A(n366), .Y(n447) );
  INVX10 U217 ( .A(n30), .Y(n41) );
  BUFX10 U218 ( .A(n446), .Y(n408) );
  CLKINVX40 U219 ( .A(n69), .Y(n17) );
  INVX20 U220 ( .A(n17), .Y(n18) );
  CLKAND2X6 U221 ( .A(n266), .B(n276), .Y(n20) );
  NOR3X8 U222 ( .A(n19), .B(n20), .C(n277), .Y(n270) );
  NAND4X6 U223 ( .A(n150), .B(n151), .C(n388), .D(n153), .Y(n144) );
  AO2B2BX4 U225 ( .A0(n292), .A1N(n423), .B0(n240), .B1N(n411), .Y(n169) );
  NOR2X8 U226 ( .A(n463), .B(n462), .Y(n360) );
  AO2B2X4 U227 ( .B0(n145), .B1(n240), .A0(n144), .A1N(n108), .Y(n143) );
  CLKNAND2X12 U228 ( .A(n323), .B(n409), .Y(n25) );
  XOR2X8 U231 ( .A(n270), .B(n271), .Y(n437) );
  AO2B2X4 U233 ( .B0(str_input[91]), .B1(n6), .A0(n400), .A1N(n23), .Y(n21) );
  NOR2BX8 U234 ( .AN(n397), .B(n401), .Y(n322) );
  AOI22X4 U235 ( .A0(str_input[157]), .A1(n170), .B0(str_input[221]), .B1(n180), .Y(n182) );
  INVX12 U236 ( .A(n158), .Y(n170) );
  AOI22X2 U237 ( .A0(str_input[6]), .A1(n366), .B0(str_input[70]), .B1(n446), 
        .Y(n149) );
  CLKINVX12 U238 ( .A(n366), .Y(n152) );
  AOI22X2 U239 ( .A0(str_input[5]), .A1(n366), .B0(str_input[69]), .B1(n62), 
        .Y(n175) );
  NAND4X8 U240 ( .A(n254), .B(n255), .C(n256), .D(n257), .Y(n253) );
  AOI22X4 U241 ( .A0(str_input[146]), .A1(n171), .B0(str_input[210]), .B1(n184), .Y(n268) );
  CLKINVX20 U242 ( .A(n158), .Y(n171) );
  AND2X8 U243 ( .A(n322), .B(n409), .Y(n365) );
  OAI211X2 U245 ( .A0(n441), .A1(n468), .B0(n60), .C0(n61), .Y(n49) );
  CLKINVX40 U248 ( .A(n25), .Y(n366) );
  AO2B2X4 U249 ( .B0(n240), .B1(n227), .A0(n292), .A1N(n424), .Y(n225) );
  AOI22X2 U250 ( .A0(str_input[11]), .A1(n366), .B0(str_input[75]), .B1(n62), 
        .Y(n235) );
  AOI22X2 U252 ( .A0(str_input[26]), .A1(n24), .B0(str_input[90]), .B1(n446), 
        .Y(n265) );
  AOI22X2 U253 ( .A0(str_input[10]), .A1(n24), .B0(str_input[74]), .B1(n446), 
        .Y(n261) );
  NAND4X8 U254 ( .A(n112), .B(n113), .C(n114), .D(n115), .Y(n111) );
  INVX10 U255 ( .A(n415), .Y(n416) );
  AO22X2 U258 ( .A0(match_idx[4]), .A1(n455), .B0(N393), .B1(n262), .Y(n336)
         );
  OR2X2 U259 ( .A(n345), .B(\sub_83/carry[3] ), .Y(\sub_83/carry[4] ) );
  AOI22X4 U260 ( .A0(str_input[41]), .A1(n419), .B0(str_input[105]), .B1(n94), 
        .Y(n285) );
  AO22X2 U261 ( .A0(str_input[177]), .A1(n210), .B0(str_input[241]), .B1(n72), 
        .Y(n378) );
  AND2X8 U262 ( .A(n324), .B(n394), .Y(n123) );
  CLKAND2X12 U263 ( .A(n93), .B(n92), .Y(n427) );
  OAI22X4 U266 ( .A0(n108), .A1(n420), .B0(n110), .B1(n410), .Y(n277) );
  CLKINVX24 U267 ( .A(n396), .Y(n345) );
  NOR2X8 U268 ( .A(n11), .B(n450), .Y(n27) );
  AOI22X4 U269 ( .A0(str_input[56]), .A1(n419), .B0(str_input[120]), .B1(n96), 
        .Y(n315) );
  CLKINVX20 U270 ( .A(n354), .Y(n97) );
  AO2B2X4 U271 ( .B0(str_input[94]), .B1(n5), .A0(n400), .A1N(n29), .Y(n28) );
  CLKINVX40 U272 ( .A(n28), .Y(n157) );
  AOI22X4 U273 ( .A0(str_input[47]), .A1(n417), .B0(str_input[111]), .B1(n117), 
        .Y(n125) );
  XOR2X8 U274 ( .A(n218), .B(n219), .Y(n439) );
  AND2X2 U275 ( .A(str_input[138]), .B(n160), .Y(n361) );
  CLKNAND2X12 U276 ( .A(n350), .B(n82), .Y(n67) );
  NOR3X8 U278 ( .A(n34), .B(n45), .C(n303), .Y(n296) );
  AND3X2 U279 ( .A(n85), .B(n43), .C(n27), .Y(n30) );
  OAI211X4 U280 ( .A0(n441), .A1(n190), .B0(n191), .C0(n192), .Y(n189) );
  AOI22X4 U281 ( .A0(str_input[139]), .A1(n170), .B0(str_input[203]), .B1(n180), .Y(n234) );
  NOR3X8 U282 ( .A(n31), .B(n32), .C(n195), .Y(n188) );
  AO22X2 U285 ( .A0(start_idx[1]), .A1(n457), .B0(N438), .B1(n18), .Y(n47) );
  AO2B2BX4 U286 ( .A0(n431), .A1N(n198), .B0(n432), .B1N(n48), .Y(n346) );
  AND2X8 U287 ( .A(n266), .B(n302), .Y(n45) );
  OAI21BX4 U288 ( .A0(n459), .A1(n399), .B0N(n47), .Y(n384) );
  INVX8 U290 ( .A(n103), .Y(n312) );
  INVX8 U291 ( .A(n105), .Y(n266) );
  AO22X4 U292 ( .A0(n292), .A1(n252), .B0(n240), .B1(n253), .Y(n251) );
  AND2X2 U293 ( .A(n312), .B(n249), .Y(n421) );
  XOR2X8 U295 ( .A(n296), .B(n297), .Y(n436) );
  AOI22X4 U296 ( .A0(str_input[32]), .A1(n419), .B0(str_input[96]), .B1(n116), 
        .Y(n307) );
  CLKBUFX40 U297 ( .A(n46), .Y(n198) );
  AO21X4 U300 ( .A0(n430), .A1(n331), .B0(n399), .Y(n46) );
  AND2X8 U301 ( .A(n399), .B(n430), .Y(n69) );
  AO22X4 U302 ( .A0(start_idx[0]), .A1(n457), .B0(n460), .B1(n18), .Y(n381) );
  AO22X4 U303 ( .A0(start_idx[2]), .A1(n457), .B0(N439), .B1(n18), .Y(n368) );
  NOR2X8 U304 ( .A(n61), .B(n440), .Y(n57) );
  NAND2X8 U305 ( .A(n430), .B(n198), .Y(n48) );
  NOR2BX8 U306 ( .AN(n325), .B(n461), .Y(n122) );
  INVX12 U307 ( .A(n68), .Y(n74) );
  NAND4X8 U308 ( .A(n310), .B(n311), .C(n389), .D(n313), .Y(n304) );
  BUFX20 U309 ( .A(n40), .Y(n398) );
  AOI22X4 U310 ( .A0(str_input[141]), .A1(n161), .B0(str_input[205]), .B1(n180), .Y(n178) );
  INVX20 U311 ( .A(n97), .Y(n121) );
  INVX20 U312 ( .A(n98), .Y(n128) );
  AOI22X4 U313 ( .A0(str_input[33]), .A1(n419), .B0(str_input[97]), .B1(n146), 
        .Y(n281) );
  AOI22X4 U314 ( .A0(str_input[61]), .A1(n419), .B0(str_input[125]), .B1(n116), 
        .Y(n181) );
  AOI22X4 U315 ( .A0(str_input[59]), .A1(n416), .B0(str_input[123]), .B1(n117), 
        .Y(n237) );
  NOR3X8 U316 ( .A(n405), .B(n406), .C(n107), .Y(n355) );
  AO22X4 U317 ( .A0(n292), .A1(n109), .B0(n240), .B1(n111), .Y(n107) );
  AOI22X4 U318 ( .A0(str_input[37]), .A1(n418), .B0(str_input[101]), .B1(n146), 
        .Y(n173) );
  AOI22X4 U319 ( .A0(str_input[45]), .A1(n417), .B0(str_input[109]), .B1(n94), 
        .Y(n177) );
  AOI22X4 U320 ( .A0(str_input[51]), .A1(n417), .B0(str_input[115]), .B1(n121), 
        .Y(n241) );
  AOI22X4 U321 ( .A0(str_input[57]), .A1(n419), .B0(str_input[121]), .B1(n95), 
        .Y(n289) );
  NOR3X8 U322 ( .A(n421), .B(n422), .C(n251), .Y(n244) );
  AOI22X4 U323 ( .A0(str_input[35]), .A1(n417), .B0(str_input[99]), .B1(n128), 
        .Y(n229) );
  AOI22X4 U324 ( .A0(str_input[43]), .A1(n419), .B0(str_input[107]), .B1(n95), 
        .Y(n233) );
  NOR2X4 U325 ( .A(n463), .B(n462), .Y(n324) );
  CLKINVX40 U326 ( .A(n118), .Y(n154) );
  CLKBUFX40 U327 ( .A(n119), .Y(n184) );
  NOR2BX8 U328 ( .AN(n360), .B(n394), .Y(n119) );
  AOI22X4 U329 ( .A0(str_input[137]), .A1(n171), .B0(str_input[201]), .B1(n180), .Y(n286) );
  CLKBUFX40 U330 ( .A(n365), .Y(n446) );
  AOI22X4 U331 ( .A0(str_input[206]), .A1(n180), .B0(n171), .B1(str_input[142]), .Y(n388) );
  NOR2X8 U332 ( .A(n463), .B(n345), .Y(n325) );
  AOI22X4 U333 ( .A0(str_input[131]), .A1(n170), .B0(str_input[195]), .B1(n180), .Y(n230) );
  AOI22X4 U334 ( .A0(str_input[134]), .A1(n168), .B0(str_input[198]), .B1(n180), .Y(n390) );
  AND4X8 U335 ( .A(n284), .B(n285), .C(n286), .D(n287), .Y(n420) );
  CLKINVX1 U336 ( .A(pat_last_idx[1]), .Y(n453) );
  AND4X1 U337 ( .A(n448), .B(n236), .C(n330), .D(input_valid), .Y(N58) );
  AO22X4 U338 ( .A0(n292), .A1(n196), .B0(n240), .B1(n197), .Y(n195) );
  NAND4X8 U339 ( .A(n387), .B(n199), .C(n200), .D(n201), .Y(n197) );
  AO21X1 U340 ( .A0(match), .A1(n455), .B0(n262), .Y(n337) );
  AO22X4 U341 ( .A0(n292), .A1(n304), .B0(n240), .B1(n305), .Y(n303) );
  NAND4X8 U342 ( .A(n306), .B(n307), .C(n308), .D(n309), .Y(n305) );
  OR2X2 U343 ( .A(n459), .B(n460), .Y(n105) );
  AO22X4 U344 ( .A0(start_idx[4]), .A1(n457), .B0(N441), .B1(n18), .Y(n369) );
  CLKINVX1 U345 ( .A(n448), .Y(n278) );
  NOR2X2 U346 ( .A(n13), .B(n278), .Y(n288) );
  INVX2 U347 ( .A(n288), .Y(n279) );
  OR2X4 U348 ( .A(n460), .B(str_pro_idx[1]), .Y(n108) );
  CLKINVX1 U349 ( .A(pat_last_idx[2]), .Y(n452) );
  CLKBUFX40 U350 ( .A(n447), .Y(n400) );
  OA21X2 U351 ( .A0(n37), .A1(n36), .B0(n349), .Y(n40) );
  CLKINVX40 U352 ( .A(str_pro_idx[3]), .Y(n396) );
  AND3X4 U353 ( .A(n86), .B(n87), .C(n88), .Y(n80) );
  OR3X8 U354 ( .A(n38), .B(n81), .C(n80), .Y(n350) );
  CLKBUFX40 U355 ( .A(n67), .Y(n399) );
  NAND4X6 U356 ( .A(n124), .B(n125), .C(n126), .D(n127), .Y(n109) );
  XOR2X8 U357 ( .A(n188), .B(n189), .Y(n351) );
  CLKINVX32 U358 ( .A(n394), .Y(n461) );
  CLKINVX2 U359 ( .A(str_input[38]), .Y(n403) );
  NOR2BX8 U360 ( .AN(n322), .B(n461), .Y(n354) );
  CLKINVX40 U361 ( .A(n393), .Y(n394) );
  INVX20 U362 ( .A(n426), .Y(n38) );
  OR2X4 U363 ( .A(n468), .B(n466), .Y(n367) );
  CLKINVX1 U364 ( .A(str_input[46]), .Y(n402) );
  AOI22X2 U365 ( .A0(str_input[40]), .A1(n416), .B0(str_input[104]), .B1(n128), 
        .Y(n311) );
  OAI211X4 U366 ( .A0(n398), .A1(n38), .B0(n41), .C0(n448), .Y(n39) );
  AND2X8 U367 ( .A(n42), .B(n456), .Y(n426) );
  AND4X8 U368 ( .A(n439), .B(n436), .C(n438), .D(n437), .Y(n92) );
  AND4X8 U369 ( .A(n433), .B(n434), .C(n435), .D(n351), .Y(n93) );
  XOR2X8 U370 ( .A(n136), .B(n137), .Y(n434) );
  XOR2X8 U371 ( .A(n162), .B(n163), .Y(n433) );
  AO22X1 U372 ( .A0(str_input[184]), .A1(n214), .B0(str_input[248]), .B1(n74), 
        .Y(n373) );
  AO22X2 U373 ( .A0(str_input[188]), .A1(n206), .B0(str_input[252]), .B1(n73), 
        .Y(n371) );
  AO22X1 U374 ( .A0(str_input[181]), .A1(n214), .B0(str_input[245]), .B1(n72), 
        .Y(n376) );
  AO22X1 U375 ( .A0(str_input[189]), .A1(n210), .B0(str_input[253]), .B1(n74), 
        .Y(n392) );
  AO22X1 U376 ( .A0(str_input[185]), .A1(n206), .B0(str_input[249]), .B1(n71), 
        .Y(n374) );
  AO22X2 U377 ( .A0(str_input[180]), .A1(n210), .B0(str_input[244]), .B1(n71), 
        .Y(n375) );
  AO22X1 U378 ( .A0(str_input[179]), .A1(n217), .B0(str_input[243]), .B1(n73), 
        .Y(n379) );
  AO22X1 U379 ( .A0(str_input[176]), .A1(n215), .B0(str_input[240]), .B1(n74), 
        .Y(n380) );
  AO22X1 U380 ( .A0(str_input[186]), .A1(n210), .B0(str_input[250]), .B1(n72), 
        .Y(n383) );
  XOR2X8 U381 ( .A(n355), .B(n99), .Y(n435) );
  XOR2X8 U382 ( .A(n244), .B(n245), .Y(n438) );
  OAI21BX2 U383 ( .A0(n460), .A1(n399), .B0N(n381), .Y(n344) );
  AOI22X4 U384 ( .A0(str_input[7]), .A1(n400), .B0(str_input[71]), .B1(n6), 
        .Y(n115) );
  OR3X2 U385 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(pat_pro_idx[0]), .Y(
        n358) );
  OR3X2 U386 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n440), .Y(n359) );
  CLKBUFX40 U387 ( .A(n59), .Y(n443) );
  NAND3X4 U388 ( .A(n22), .B(n236), .C(current_st[1]), .Y(n85) );
  NAND2X4 U389 ( .A(n84), .B(n36), .Y(n363) );
  NAND2X8 U390 ( .A(n458), .B(n37), .Y(n364) );
  AND2X8 U391 ( .A(n363), .B(n364), .Y(n81) );
  CLKINVX40 U392 ( .A(n427), .Y(n36) );
  CLKINVX40 U393 ( .A(n36), .Y(n458) );
  INVX4 U394 ( .A(n38), .Y(n430) );
  BUFX12 U395 ( .A(n57), .Y(n445) );
  OAI2B2X4 U396 ( .A1N(n428), .A0(n48), .B0(n468), .B1(n198), .Y(n339) );
  INVX4 U397 ( .A(n85), .Y(n456) );
  ADDHX2 U398 ( .A(n394), .B(\r342/carry[2] ), .CO(\r342/carry[3] ), .S(N439)
         );
  OAI21BX2 U399 ( .A0(n461), .A1(n399), .B0N(n368), .Y(n343) );
  OAI21BX2 U400 ( .A0(n463), .A1(n399), .B0N(n369), .Y(n341) );
  AOI22X2 U401 ( .A0(str_input[160]), .A1(n215), .B0(str_input[224]), .B1(n74), 
        .Y(n306) );
  AOI22X2 U402 ( .A0(str_input[168]), .A1(n214), .B0(str_input[232]), .B1(n72), 
        .Y(n310) );
  AOI22X2 U403 ( .A0(str_input[162]), .A1(n217), .B0(str_input[226]), .B1(n71), 
        .Y(n254) );
  AOI22X2 U404 ( .A0(str_input[170]), .A1(n217), .B0(str_input[234]), .B1(n73), 
        .Y(n258) );
  AOI22X2 U405 ( .A0(str_input[167]), .A1(n215), .B0(str_input[231]), .B1(n73), 
        .Y(n112) );
  AOI22X2 U406 ( .A0(str_input[175]), .A1(n216), .B0(str_input[239]), .B1(n71), 
        .Y(n124) );
  AOI22X2 U407 ( .A0(str_input[34]), .A1(n419), .B0(str_input[98]), .B1(n95), 
        .Y(n255) );
  AOI22X2 U408 ( .A0(str_input[48]), .A1(n419), .B0(str_input[112]), .B1(n94), 
        .Y(n319) );
  AOI22X2 U409 ( .A0(str_input[60]), .A1(n418), .B0(str_input[124]), .B1(n116), 
        .Y(n207) );
  AOI22X2 U410 ( .A0(str_input[52]), .A1(n418), .B0(str_input[116]), .B1(n117), 
        .Y(n211) );
  AOI22X2 U411 ( .A0(str_input[62]), .A1(n417), .B0(str_input[126]), .B1(n121), 
        .Y(n155) );
  AOI22X2 U412 ( .A0(str_input[39]), .A1(n416), .B0(str_input[103]), .B1(n95), 
        .Y(n113) );
  AOI22X2 U413 ( .A0(str_input[63]), .A1(n416), .B0(str_input[127]), .B1(n117), 
        .Y(n129) );
  AOI22X2 U414 ( .A0(str_input[42]), .A1(n417), .B0(str_input[106]), .B1(n132), 
        .Y(n259) );
  AOI22X2 U415 ( .A0(str_input[55]), .A1(n419), .B0(str_input[119]), .B1(n116), 
        .Y(n133) );
  AOI22X2 U416 ( .A0(str_input[49]), .A1(n417), .B0(str_input[113]), .B1(n121), 
        .Y(n293) );
  AOI22X2 U417 ( .A0(str_input[128]), .A1(n161), .B0(str_input[192]), .B1(n180), .Y(n308) );
  AOI22X2 U418 ( .A0(str_input[143]), .A1(n159), .B0(str_input[207]), .B1(n184), .Y(n126) );
  AOI22X2 U419 ( .A0(str_input[130]), .A1(n161), .B0(str_input[194]), .B1(n184), .Y(n256) );
  AOI22X2 U420 ( .A0(str_input[58]), .A1(n417), .B0(str_input[122]), .B1(n132), 
        .Y(n263) );
  AOI22X2 U421 ( .A0(str_input[50]), .A1(n417), .B0(str_input[114]), .B1(n128), 
        .Y(n267) );
  AOI22X2 U422 ( .A0(str_input[1]), .A1(n24), .B0(str_input[65]), .B1(n408), 
        .Y(n283) );
  AOI22X4 U423 ( .A0(str_input[108]), .A1(n121), .B0(str_input[44]), .B1(n416), 
        .Y(n203) );
  AOI22X2 U424 ( .A0(pat_input[59]), .A1(n444), .B0(pat_input[43]), .B1(n445), 
        .Y(n221) );
  AOI22X2 U425 ( .A0(pat_input[58]), .A1(n444), .B0(pat_input[42]), .B1(n445), 
        .Y(n247) );
  AOI22X2 U426 ( .A0(pat_input[63]), .A1(n444), .B0(pat_input[47]), .B1(n445), 
        .Y(n101) );
  AOI22X2 U427 ( .A0(pat_input[56]), .A1(n444), .B0(pat_input[40]), .B1(n445), 
        .Y(n299) );
  AOI22X2 U428 ( .A0(pat_input[61]), .A1(n444), .B0(pat_input[45]), .B1(n445), 
        .Y(n165) );
  AOI22X2 U429 ( .A0(pat_input[62]), .A1(n444), .B0(pat_input[46]), .B1(n445), 
        .Y(n139) );
  CLKXOR2X2 U430 ( .A(n466), .B(pat_last_idx[1]), .Y(n326) );
  CLKXOR2X2 U431 ( .A(n467), .B(pat_last_idx[0]), .Y(n327) );
  CLKXOR2X2 U432 ( .A(n468), .B(pat_last_idx[2]), .Y(n328) );
  OAI2BB2X2 U433 ( .B0(n398), .B1(n38), .A0N(n41), .A1N(done), .Y(n347) );
  NAND4BX4 U434 ( .AN(n370), .B(n237), .C(n238), .D(n239), .Y(n224) );
  NAND4BX4 U435 ( .AN(n371), .B(n207), .C(n208), .D(n209), .Y(n194) );
  NAND4BX4 U436 ( .AN(n372), .B(n155), .C(n156), .D(n157), .Y(n142) );
  NAND4BX4 U437 ( .AN(n373), .B(n315), .C(n316), .D(n317), .Y(n302) );
  NAND4BX4 U438 ( .AN(n374), .B(n289), .C(n290), .D(n291), .Y(n276) );
  NAND4BX4 U439 ( .AN(n375), .B(n211), .C(n212), .D(n213), .Y(n193) );
  NAND4BX4 U440 ( .AN(n376), .B(n185), .C(n186), .D(n187), .Y(n167) );
  NAND4BX4 U441 ( .AN(n378), .B(n293), .C(n294), .D(n295), .Y(n275) );
  NAND4BX4 U442 ( .AN(n379), .B(n241), .C(n242), .D(n243), .Y(n223) );
  NAND4BX4 U443 ( .AN(n380), .B(n319), .C(n320), .D(n321), .Y(n301) );
  AO22X1 U444 ( .A0(match_idx[3]), .A1(n455), .B0(N392), .B1(n262), .Y(n335)
         );
  AO22X1 U445 ( .A0(match_idx[0]), .A1(n455), .B0(N389), .B1(n262), .Y(n332)
         );
  AO22X1 U446 ( .A0(match_idx[1]), .A1(n455), .B0(N390), .B1(n262), .Y(n333)
         );
  NAND4BX4 U447 ( .AN(n382), .B(n267), .C(n268), .D(n269), .Y(n249) );
  NAND4BX4 U448 ( .AN(n383), .B(n263), .C(n264), .D(n265), .Y(n250) );
  OAI211X2 U449 ( .A0(n441), .A1(n64), .B0(n65), .C0(n66), .Y(n63) );
  AOI22X2 U450 ( .A0(ff_result[18]), .A1(n444), .B0(ff_result[12]), .B1(n445), 
        .Y(n65) );
  INVX1 U451 ( .A(n466), .Y(n431) );
  CLKXOR2X2 U452 ( .A(pat_pro_idx[1]), .B(n441), .Y(n75) );
  AOI22X4 U453 ( .A0(str_input[12]), .A1(n400), .B0(str_input[76]), .B1(n5), 
        .Y(n386) );
  INVX2 U454 ( .A(str_input[163]), .Y(n413) );
  AOI22X2 U455 ( .A0(str_input[200]), .A1(n184), .B0(n160), .B1(str_input[136]), .Y(n389) );
  NAND4BX4 U456 ( .AN(n392), .B(n181), .C(n182), .D(n183), .Y(n391) );
  OAI2B1X2 U457 ( .A1N(n27), .A0(n43), .B0(n44), .Y(n338) );
  OAI211X2 U458 ( .A0(n456), .A1(n11), .B0(n448), .C0(output_valid), .Y(n44)
         );
  CLKXOR2X2 U459 ( .A(n461), .B(process_2idx[2]), .Y(n87) );
  CLKXOR2X2 U460 ( .A(n460), .B(process_2idx[0]), .Y(n86) );
  NOR3X4 U461 ( .A(n89), .B(n90), .C(n91), .Y(n88) );
  ADDFX1 U462 ( .A(str_pro_idx[1]), .B(n453), .CI(\sub_83/carry[1] ), .CO(
        \sub_83/carry[2] ), .S(N390) );
  CLKXOR2X2 U463 ( .A(str_pro_idx[1]), .B(process_2idx[1]), .Y(n90) );
  NOR2X6 U464 ( .A(n226), .B(current_st[1]), .Y(n330) );
  NAND3X4 U465 ( .A(current_st[2]), .B(n330), .C(input_valid), .Y(n43) );
  OAI211X2 U466 ( .A0(n441), .A1(n52), .B0(n53), .C0(n54), .Y(n51) );
  AOI22X2 U467 ( .A0(ff_result[20]), .A1(n444), .B0(ff_result[14]), .B1(n445), 
        .Y(n53) );
  OAI211X2 U468 ( .A0(n441), .A1(n77), .B0(n78), .C0(n79), .Y(n76) );
  AOI22X2 U469 ( .A0(ff_result[19]), .A1(n444), .B0(ff_result[13]), .B1(n445), 
        .Y(n78) );
  AOI21X2 U470 ( .A0(n43), .A1(n329), .B0(n148), .Y(N60) );
  NAND2X2 U471 ( .A(done), .B(n456), .Y(n329) );
  AO22X1 U472 ( .A0(n455), .A1(match_idx[2]), .B0(N391), .B1(n262), .Y(n334)
         );
  CLKBUFX40 U473 ( .A(n26), .Y(n401) );
  AOI2BB2X4 U474 ( .B0(str_input[110]), .B1(n96), .A0N(n402), .A1N(n404), .Y(
        n151) );
  AOI2BB2X4 U475 ( .B0(str_input[102]), .B1(n116), .A0N(n403), .A1N(n404), .Y(
        n147) );
  AO2B2X4 U476 ( .B0(str_input[227]), .B1(n72), .A0(n206), .A1N(n413), .Y(n412) );
  OA22X4 U477 ( .A0(n414), .A1(n50), .B0(n425), .B1(n152), .Y(n201) );
  ADDHX2 U478 ( .A(n348), .B(\r342/carry[3] ), .CO(\r342/carry[4] ), .S(N440)
         );
  OR2X1 U479 ( .A(n454), .B(str_pro_idx[0]), .Y(\sub_83/carry[1] ) );
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
  wire   done, N57, N58, N59, N60, N389, N390, N391, N392, N393, N438, N439,
         N440, N441, \sub_83/carry[4] , \sub_83/carry[3] , \sub_83/carry[2] ,
         \sub_83/carry[1] , \r342/carry[4] , \r342/carry[3] , \r342/carry[2] ,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n47, n48, n62, n68, n71, n72, n73, n74, n94, n95, n96, n97,
         n109, n111, n115, n123, n128, n129, n132, n133, n172, n173, n174,
         n177, n199, n200, n203, n214, n215, n216, n217, n227, n228, n229,
         n230, n232, n233, n254, n255, n256, n259, n281, n282, n285, n307,
         n308, n311, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716;
  wire   [2:0] current_st;
  wire   [2:0] next_st;
  wire   [4:0] str_pro_idx;
  wire   [2:0] pat_pro_idx;

  DFFTRX4 \current_st_reg[1]  ( .D(next_st[1]), .RN(n233), .CK(clk), .Q(
        current_st[1]) );
  DFFTRX4 \current_st_reg[2]  ( .D(next_st[2]), .RN(n233), .CK(clk), .Q(
        current_st[2]), .QN(n716) );
  AOI222X4 U19 ( .A0(ff_result[11]), .A1(n445), .B0(ff_result[17]), .B1(n693), 
        .C0(ff_result[5]), .C1(n422), .Y(n699) );
  AOI222X4 U26 ( .A0(ff_result[9]), .A1(n445), .B0(ff_result[15]), .B1(n693), 
        .C0(ff_result[3]), .C1(n422), .Y(n688) );
  AOI222X4 U44 ( .A0(ff_result[10]), .A1(n445), .B0(ff_result[16]), .B1(n693), 
        .C0(ff_result[4]), .C1(n422), .Y(n680) );
  OAI211X4 U66 ( .A0(n421), .A1(n661), .B0(n660), .C0(n659), .Y(n662) );
  AOI222X4 U67 ( .A0(pat_input[15]), .A1(n696), .B0(pat_input[31]), .B1(n444), 
        .C0(pat_input[7]), .C1(n673), .Y(n659) );
  AOI22X4 U68 ( .A0(pat_input[63]), .A1(n12), .B0(pat_input[47]), .B1(n694), 
        .Y(n660) );
  AOI222X4 U69 ( .A0(pat_input[39]), .A1(n445), .B0(pat_input[55]), .B1(n693), 
        .C0(pat_input[23]), .C1(n422), .Y(n661) );
  AOI221X4 U70 ( .A0(n214), .A1(n657), .B0(n229), .B1(n655), .C0(n654), .Y(
        n663) );
  AOI22X4 U75 ( .A0(str_input[39]), .A1(n24), .B0(str_input[103]), .B1(n428), 
        .Y(n650) );
  AOI22X4 U76 ( .A0(str_input[167]), .A1(n401), .B0(str_input[231]), .B1(n172), 
        .Y(n651) );
  AOI22X4 U78 ( .A0(str_input[15]), .A1(n8), .B0(str_input[79]), .B1(n647), 
        .Y(n638) );
  AOI22X4 U79 ( .A0(str_input[143]), .A1(n17), .B0(str_input[207]), .B1(n128), 
        .Y(n639) );
  AOI22X4 U80 ( .A0(str_input[47]), .A1(n27), .B0(str_input[111]), .B1(n428), 
        .Y(n640) );
  AOI22X4 U81 ( .A0(str_input[175]), .A1(n401), .B0(str_input[239]), .B1(n174), 
        .Y(n641) );
  AOI22X4 U83 ( .A0(str_input[31]), .A1(n10), .B0(str_input[95]), .B1(n647), 
        .Y(n636) );
  AOI22X4 U88 ( .A0(str_input[23]), .A1(n7), .B0(str_input[87]), .B1(n647), 
        .Y(n634) );
  OAI211X4 U93 ( .A0(n420), .A1(n631), .B0(n630), .C0(n629), .Y(n632) );
  AOI222X4 U94 ( .A0(pat_input[14]), .A1(n696), .B0(pat_input[30]), .B1(n444), 
        .C0(pat_input[6]), .C1(n673), .Y(n629) );
  AOI22X4 U95 ( .A0(pat_input[62]), .A1(n12), .B0(pat_input[46]), .B1(n694), 
        .Y(n630) );
  AOI222X4 U96 ( .A0(pat_input[38]), .A1(n445), .B0(pat_input[54]), .B1(n693), 
        .C0(pat_input[22]), .C1(n422), .Y(n631) );
  NAND4X8 U99 ( .A(n623), .B(n622), .C(n621), .D(n620), .Y(n624) );
  AOI22X4 U100 ( .A0(str_input[6]), .A1(n9), .B0(str_input[70]), .B1(n647), 
        .Y(n620) );
  AOI22X4 U101 ( .A0(str_input[134]), .A1(n404), .B0(str_input[198]), .B1(n123), .Y(n621) );
  AOI22X4 U102 ( .A0(str_input[38]), .A1(n23), .B0(str_input[102]), .B1(n428), 
        .Y(n622) );
  AOI22X4 U103 ( .A0(str_input[166]), .A1(n401), .B0(str_input[230]), .B1(n177), .Y(n623) );
  AOI22X4 U105 ( .A0(str_input[14]), .A1(n5), .B0(str_input[78]), .B1(n647), 
        .Y(n616) );
  AOI22X4 U106 ( .A0(str_input[142]), .A1(n18), .B0(str_input[206]), .B1(n115), 
        .Y(n617) );
  AOI22X4 U107 ( .A0(str_input[46]), .A1(n26), .B0(str_input[110]), .B1(n428), 
        .Y(n618) );
  AOI22X4 U108 ( .A0(str_input[174]), .A1(n401), .B0(str_input[238]), .B1(n177), .Y(n619) );
  AOI22X4 U111 ( .A0(str_input[158]), .A1(n18), .B0(str_input[222]), .B1(n128), 
        .Y(n613) );
  OAI211X4 U120 ( .A0(n421), .A1(n605), .B0(n604), .C0(n603), .Y(n606) );
  AOI222X4 U121 ( .A0(pat_input[13]), .A1(n696), .B0(pat_input[29]), .B1(n444), 
        .C0(pat_input[5]), .C1(n673), .Y(n603) );
  AOI22X4 U122 ( .A0(pat_input[61]), .A1(n12), .B0(pat_input[45]), .B1(n694), 
        .Y(n604) );
  AOI222X4 U123 ( .A0(pat_input[37]), .A1(n445), .B0(pat_input[53]), .B1(n693), 
        .C0(pat_input[21]), .C1(n422), .Y(n605) );
  AOI221X4 U124 ( .A0(n214), .A1(n602), .B0(n229), .B1(n601), .C0(n600), .Y(
        n607) );
  NAND4X8 U126 ( .A(n366), .B(n373), .C(n384), .D(n597), .Y(n598) );
  NAND4X8 U131 ( .A(n596), .B(n375), .C(n595), .D(n594), .Y(n599) );
  AOI22X4 U132 ( .A0(str_input[13]), .A1(n10), .B0(str_input[77]), .B1(n647), 
        .Y(n594) );
  AOI22X4 U133 ( .A0(str_input[141]), .A1(n18), .B0(str_input[205]), .B1(n111), 
        .Y(n595) );
  AOI22X4 U135 ( .A0(str_input[173]), .A1(n401), .B0(str_input[237]), .B1(n174), .Y(n596) );
  AOI22X4 U137 ( .A0(str_input[29]), .A1(n8), .B0(str_input[93]), .B1(n647), 
        .Y(n590) );
  AOI22X4 U138 ( .A0(str_input[157]), .A1(n17), .B0(str_input[221]), .B1(n111), 
        .Y(n591) );
  AOI22X4 U139 ( .A0(str_input[61]), .A1(n23), .B0(str_input[125]), .B1(n426), 
        .Y(n592) );
  AOI22X4 U142 ( .A0(str_input[21]), .A1(n7), .B0(str_input[85]), .B1(n647), 
        .Y(n586) );
  AOI22X4 U143 ( .A0(str_input[149]), .A1(n404), .B0(str_input[213]), .B1(n115), .Y(n587) );
  AOI22X4 U144 ( .A0(str_input[53]), .A1(n28), .B0(str_input[117]), .B1(n398), 
        .Y(n588) );
  OAI211X4 U147 ( .A0(n420), .A1(n583), .B0(n582), .C0(n581), .Y(n584) );
  AOI222X4 U148 ( .A0(pat_input[12]), .A1(n696), .B0(pat_input[28]), .B1(n444), 
        .C0(pat_input[4]), .C1(n673), .Y(n581) );
  AOI22X4 U149 ( .A0(pat_input[60]), .A1(n13), .B0(pat_input[44]), .B1(n694), 
        .Y(n582) );
  AOI222X4 U150 ( .A0(pat_input[36]), .A1(n445), .B0(pat_input[52]), .B1(n693), 
        .C0(pat_input[20]), .C1(n422), .Y(n583) );
  AOI221X4 U151 ( .A0(n214), .A1(n580), .B0(n229), .B1(n579), .C0(n578), .Y(
        n585) );
  NAND4X8 U153 ( .A(n575), .B(n369), .C(n381), .D(n574), .Y(n576) );
  AOI22X4 U154 ( .A0(str_input[4]), .A1(n8), .B0(str_input[68]), .B1(n647), 
        .Y(n574) );
  AOI22X4 U157 ( .A0(str_input[164]), .A1(n402), .B0(str_input[228]), .B1(n172), .Y(n575) );
  NAND4X8 U158 ( .A(n573), .B(n371), .C(n572), .D(n571), .Y(n577) );
  AOI22X4 U159 ( .A0(str_input[12]), .A1(n5), .B0(str_input[76]), .B1(n647), 
        .Y(n571) );
  AOI22X4 U160 ( .A0(str_input[140]), .A1(n404), .B0(str_input[204]), .B1(n115), .Y(n572) );
  AOI22X4 U162 ( .A0(str_input[172]), .A1(n400), .B0(str_input[236]), .B1(n174), .Y(n573) );
  AOI22X4 U164 ( .A0(str_input[28]), .A1(n6), .B0(str_input[92]), .B1(n647), 
        .Y(n567) );
  AOI22X4 U165 ( .A0(str_input[156]), .A1(n404), .B0(str_input[220]), .B1(n128), .Y(n568) );
  AOI22X4 U166 ( .A0(str_input[60]), .A1(n23), .B0(str_input[124]), .B1(n398), 
        .Y(n569) );
  AOI22X4 U170 ( .A0(str_input[148]), .A1(n404), .B0(str_input[212]), .B1(n111), .Y(n564) );
  AOI22X4 U171 ( .A0(str_input[52]), .A1(n24), .B0(str_input[116]), .B1(n398), 
        .Y(n565) );
  OAI211X4 U175 ( .A0(n421), .A1(n560), .B0(n559), .C0(n558), .Y(n561) );
  AOI222X4 U176 ( .A0(pat_input[11]), .A1(n696), .B0(pat_input[27]), .B1(n444), 
        .C0(pat_input[3]), .C1(n673), .Y(n558) );
  AOI22X4 U177 ( .A0(pat_input[59]), .A1(n14), .B0(pat_input[43]), .B1(n694), 
        .Y(n559) );
  AOI222X4 U178 ( .A0(pat_input[35]), .A1(n445), .B0(pat_input[51]), .B1(n693), 
        .C0(pat_input[19]), .C1(n422), .Y(n560) );
  AOI221X4 U179 ( .A0(n214), .A1(n557), .B0(n229), .B1(n556), .C0(n555), .Y(
        n562) );
  AOI22X4 U182 ( .A0(str_input[3]), .A1(n9), .B0(str_input[67]), .B1(n647), 
        .Y(n553) );
  AOI22X4 U187 ( .A0(str_input[11]), .A1(n5), .B0(str_input[75]), .B1(n647), 
        .Y(n551) );
  AOI22X4 U188 ( .A0(str_input[139]), .A1(n17), .B0(str_input[203]), .B1(n128), 
        .Y(n552) );
  AOI22X4 U192 ( .A0(str_input[27]), .A1(n8), .B0(str_input[91]), .B1(n647), 
        .Y(n547) );
  AOI22X4 U193 ( .A0(str_input[155]), .A1(n404), .B0(str_input[219]), .B1(n123), .Y(n548) );
  AOI22X4 U194 ( .A0(str_input[59]), .A1(n24), .B0(str_input[123]), .B1(n398), 
        .Y(n549) );
  AOI22X4 U198 ( .A0(str_input[147]), .A1(n404), .B0(str_input[211]), .B1(n111), .Y(n544) );
  AOI22X4 U199 ( .A0(str_input[51]), .A1(n28), .B0(str_input[115]), .B1(n398), 
        .Y(n545) );
  OAI211X4 U202 ( .A0(n420), .A1(n540), .B0(n539), .C0(n538), .Y(n541) );
  AOI222X4 U203 ( .A0(pat_input[10]), .A1(n696), .B0(pat_input[26]), .B1(n444), 
        .C0(pat_input[2]), .C1(n673), .Y(n538) );
  AOI22X4 U204 ( .A0(pat_input[58]), .A1(n13), .B0(pat_input[42]), .B1(n694), 
        .Y(n539) );
  AOI222X4 U205 ( .A0(pat_input[34]), .A1(n445), .B0(pat_input[50]), .B1(n693), 
        .C0(pat_input[18]), .C1(n422), .Y(n540) );
  AOI221X4 U206 ( .A0(n214), .A1(n537), .B0(n229), .B1(n536), .C0(n535), .Y(
        n542) );
  AOI22X4 U209 ( .A0(str_input[2]), .A1(n6), .B0(str_input[66]), .B1(n647), 
        .Y(n532) );
  NAND4X8 U213 ( .A(n531), .B(n370), .C(n530), .D(n529), .Y(n534) );
  AOI22X4 U214 ( .A0(str_input[10]), .A1(n5), .B0(str_input[74]), .B1(n647), 
        .Y(n529) );
  AOI22X4 U215 ( .A0(str_input[138]), .A1(n17), .B0(str_input[202]), .B1(n123), 
        .Y(n530) );
  AOI22X4 U217 ( .A0(str_input[170]), .A1(n401), .B0(str_input[234]), .B1(n173), .Y(n531) );
  AOI22X4 U219 ( .A0(str_input[26]), .A1(n8), .B0(str_input[90]), .B1(n647), 
        .Y(n525) );
  AOI22X4 U220 ( .A0(str_input[154]), .A1(n404), .B0(str_input[218]), .B1(n123), .Y(n526) );
  AOI22X4 U221 ( .A0(str_input[58]), .A1(n28), .B0(str_input[122]), .B1(n426), 
        .Y(n527) );
  AOI22X4 U224 ( .A0(str_input[18]), .A1(n9), .B0(str_input[82]), .B1(n647), 
        .Y(n521) );
  AOI22X4 U225 ( .A0(str_input[146]), .A1(n18), .B0(str_input[210]), .B1(n115), 
        .Y(n522) );
  AOI22X4 U226 ( .A0(str_input[50]), .A1(n26), .B0(str_input[114]), .B1(n426), 
        .Y(n523) );
  OAI211X4 U229 ( .A0(n421), .A1(n518), .B0(n517), .C0(n516), .Y(n519) );
  AOI222X4 U230 ( .A0(pat_input[9]), .A1(n696), .B0(pat_input[25]), .B1(n444), 
        .C0(pat_input[1]), .C1(n673), .Y(n516) );
  AOI22X4 U231 ( .A0(pat_input[57]), .A1(n14), .B0(pat_input[41]), .B1(n694), 
        .Y(n517) );
  AOI222X4 U232 ( .A0(pat_input[33]), .A1(n445), .B0(pat_input[49]), .B1(n693), 
        .C0(pat_input[17]), .C1(n422), .Y(n518) );
  AOI221X4 U233 ( .A0(n214), .A1(n515), .B0(n229), .B1(n514), .C0(n513), .Y(
        n520) );
  NAND4X8 U235 ( .A(n510), .B(n372), .C(n383), .D(n509), .Y(n511) );
  AOI22X4 U236 ( .A0(str_input[1]), .A1(n9), .B0(str_input[65]), .B1(n647), 
        .Y(n509) );
  AOI22X4 U239 ( .A0(str_input[161]), .A1(n400), .B0(str_input[225]), .B1(n177), .Y(n510) );
  AOI22X4 U241 ( .A0(str_input[9]), .A1(n6), .B0(str_input[73]), .B1(n647), 
        .Y(n506) );
  AOI22X4 U242 ( .A0(str_input[137]), .A1(n18), .B0(str_input[201]), .B1(n123), 
        .Y(n507) );
  AOI22X4 U244 ( .A0(str_input[169]), .A1(n402), .B0(str_input[233]), .B1(n173), .Y(n508) );
  AOI22X4 U247 ( .A0(str_input[153]), .A1(n404), .B0(str_input[217]), .B1(n111), .Y(n503) );
  AOI22X4 U248 ( .A0(str_input[57]), .A1(n2), .B0(str_input[121]), .B1(n398), 
        .Y(n504) );
  AOI22X4 U249 ( .A0(str_input[185]), .A1(n402), .B0(str_input[249]), .B1(n172), .Y(n505) );
  NAND4X8 U250 ( .A(n501), .B(n500), .C(n499), .D(n498), .Y(n515) );
  AOI22X4 U251 ( .A0(str_input[17]), .A1(n5), .B0(str_input[81]), .B1(n647), 
        .Y(n498) );
  AOI22X4 U252 ( .A0(str_input[145]), .A1(n404), .B0(str_input[209]), .B1(n128), .Y(n499) );
  AOI22X4 U253 ( .A0(str_input[49]), .A1(n2), .B0(str_input[113]), .B1(n426), 
        .Y(n500) );
  OAI211X4 U256 ( .A0(n420), .A1(n495), .B0(n494), .C0(n493), .Y(n496) );
  AOI222X4 U257 ( .A0(pat_input[8]), .A1(n696), .B0(pat_input[24]), .B1(n444), 
        .C0(pat_input[0]), .C1(n673), .Y(n493) );
  NAND2X8 U259 ( .A(n422), .B(n420), .Y(n691) );
  AOI22X4 U261 ( .A0(pat_input[56]), .A1(n14), .B0(pat_input[40]), .B1(n694), 
        .Y(n494) );
  AOI222X4 U264 ( .A0(pat_input[32]), .A1(n445), .B0(pat_input[48]), .B1(n693), 
        .C0(pat_input[16]), .C1(n422), .Y(n495) );
  NOR2X8 U265 ( .A(n446), .B(pat_pro_idx[2]), .Y(n692) );
  AOI221X4 U268 ( .A0(n214), .A1(n492), .B0(n229), .B1(n491), .C0(n490), .Y(
        n497) );
  NAND4X8 U270 ( .A(n487), .B(n374), .C(n382), .D(n486), .Y(n488) );
  AOI22X4 U271 ( .A0(str_input[0]), .A1(n7), .B0(str_input[64]), .B1(n647), 
        .Y(n486) );
  AOI22X4 U274 ( .A0(str_input[160]), .A1(n400), .B0(str_input[224]), .B1(n173), .Y(n487) );
  NAND4X8 U276 ( .A(n485), .B(n376), .C(n484), .D(n483), .Y(n489) );
  AOI22X4 U277 ( .A0(str_input[8]), .A1(n6), .B0(str_input[72]), .B1(n647), 
        .Y(n483) );
  AOI22X4 U278 ( .A0(str_input[136]), .A1(n404), .B0(str_input[200]), .B1(n111), .Y(n484) );
  AOI22X4 U280 ( .A0(str_input[168]), .A1(n402), .B0(str_input[232]), .B1(n177), .Y(n485) );
  AOI22X4 U283 ( .A0(str_input[24]), .A1(n10), .B0(str_input[88]), .B1(n647), 
        .Y(n479) );
  AOI22X4 U284 ( .A0(str_input[152]), .A1(n404), .B0(str_input[216]), .B1(n115), .Y(n480) );
  AOI22X4 U285 ( .A0(str_input[56]), .A1(n27), .B0(str_input[120]), .B1(n426), 
        .Y(n481) );
  AOI22X4 U289 ( .A0(str_input[16]), .A1(n10), .B0(str_input[80]), .B1(n647), 
        .Y(n475) );
  NOR2BX8 U291 ( .AN(n473), .B(n386), .Y(n648) );
  AOI22X4 U292 ( .A0(str_input[144]), .A1(n17), .B0(str_input[208]), .B1(n123), 
        .Y(n476) );
  NOR2BX8 U294 ( .AN(n471), .B(n386), .Y(n646) );
  AOI22X4 U295 ( .A0(str_input[48]), .A1(n27), .B0(str_input[112]), .B1(n426), 
        .Y(n477) );
  NOR2BX8 U303 ( .AN(n254), .B(n441), .Y(n642) );
  OAI31X4 U313 ( .A0(n672), .A1(n429), .A2(done), .B0(n674), .Y(N59) );
  DFFHQX8 \str_pro_idx_reg[1]  ( .D(n451), .CK(clk), .Q(str_pro_idx[1]) );
  DFFHQX8 \str_pro_idx_reg[0]  ( .D(n452), .CK(clk), .Q(str_pro_idx[0]) );
  DFFHQX8 \str_pro_idx_reg[2]  ( .D(n453), .CK(clk), .Q(str_pro_idx[2]) );
  DFFHQX8 \str_pro_idx_reg[4]  ( .D(n455), .CK(clk), .Q(str_pro_idx[4]) );
  DFFHQX8 \pat_pro_idx_reg[1]  ( .D(n450), .CK(clk), .Q(pat_pro_idx[1]) );
  DFFHQX8 \pat_pro_idx_reg[2]  ( .D(n457), .CK(clk), .Q(pat_pro_idx[2]) );
  DFFHQX8 match_reg ( .D(n459), .CK(clk), .Q(match) );
  DFFHQX8 \match_idx_reg[3]  ( .D(n461), .CK(clk), .Q(match_idx[3]) );
  DFFHQX8 \match_idx_reg[2]  ( .D(n462), .CK(clk), .Q(match_idx[2]) );
  DFFHQX8 \match_idx_reg[1]  ( .D(n463), .CK(clk), .Q(match_idx[1]) );
  DFFYQX2 \pat_pro_idx_reg[0]  ( .D(n456), .CK(clk), .Q(pat_pro_idx[0]) );
  DFFQX4 done_reg ( .D(n449), .CK(clk), .Q(done) );
  TLATX1 \next_st_reg[1]  ( .G(n200), .D(N59), .Q(next_st[1]) );
  TLATX1 \next_st_reg[2]  ( .G(n200), .D(N60), .Q(next_st[2]) );
  TLATX1 \next_st_reg[0]  ( .G(n200), .D(N58), .Q(next_st[0]) );
  DFFQX2 output_valid_reg ( .D(n458), .CK(clk), .Q(output_valid) );
  DFFHQX8 \str_pro_idx_reg[3]  ( .D(n454), .CK(clk), .Q(str_pro_idx[3]) );
  DFFHQX8 \match_idx_reg[4]  ( .D(n460), .CK(clk), .Q(match_idx[4]) );
  DFFTRX2 \current_st_reg[0]  ( .D(next_st[0]), .RN(n233), .CK(clk), .Q(
        current_st[0]), .QN(n715) );
  DFFHQX8 \match_idx_reg[0]  ( .D(n464), .CK(clk), .Q(match_idx[0]) );
  BUFX20 U3 ( .A(n430), .Y(n132) );
  AND2X4 U4 ( .A(str_input[214]), .B(n115), .Y(n232) );
  NAND2X4 U5 ( .A(n611), .B(n609), .Y(n308) );
  NOR2X6 U6 ( .A(n230), .B(n232), .Y(n609) );
  NAND3X8 U7 ( .A(n672), .B(n706), .C(n707), .Y(n708) );
  INVX16 U8 ( .A(n710), .Y(n434) );
  INVX18 U9 ( .A(n399), .Y(n401) );
  BUFX12 U10 ( .A(n676), .Y(n74) );
  BUFX18 U11 ( .A(n34), .Y(n391) );
  INVX12 U12 ( .A(n133), .Y(n177) );
  INVX6 U13 ( .A(n33), .Y(n34) );
  INVX12 U14 ( .A(n20), .Y(n26) );
  INVX12 U15 ( .A(n20), .Y(n27) );
  CLKINVX32 U16 ( .A(n25), .Y(n1) );
  INVX20 U17 ( .A(n1), .Y(n2) );
  INVX12 U18 ( .A(n20), .Y(n28) );
  NAND4X8 U20 ( .A(n508), .B(n379), .C(n507), .D(n506), .Y(n512) );
  CLKINVX40 U21 ( .A(n644), .Y(n19) );
  CLKINVX40 U22 ( .A(n648), .Y(n3) );
  CLKINVX40 U23 ( .A(n648), .Y(n4) );
  INVX14 U24 ( .A(n3), .Y(n5) );
  INVX16 U25 ( .A(n3), .Y(n6) );
  INVX18 U27 ( .A(n3), .Y(n7) );
  INVX16 U28 ( .A(n4), .Y(n8) );
  INVX12 U29 ( .A(n4), .Y(n9) );
  INVX12 U30 ( .A(n4), .Y(n10) );
  NAND4X4 U31 ( .A(n566), .B(n565), .C(n564), .D(n563), .Y(n580) );
  AOI22X4 U32 ( .A0(str_input[20]), .A1(n7), .B0(str_input[84]), .B1(n647), 
        .Y(n563) );
  NAND2X4 U33 ( .A(str_input[223]), .B(n128), .Y(n256) );
  INVX18 U34 ( .A(n109), .Y(n128) );
  CLKBUFX40 U35 ( .A(n646), .Y(n404) );
  NAND4X4 U36 ( .A(n505), .B(n504), .C(n503), .D(n502), .Y(n514) );
  AOI22X4 U37 ( .A0(str_input[25]), .A1(n6), .B0(str_input[89]), .B1(n647), 
        .Y(n502) );
  NAND4X4 U38 ( .A(n546), .B(n545), .C(n544), .D(n543), .Y(n557) );
  AOI22X4 U39 ( .A0(str_input[19]), .A1(n5), .B0(str_input[83]), .B1(n647), 
        .Y(n543) );
  INVX14 U40 ( .A(n419), .Y(n420) );
  INVX14 U41 ( .A(pat_pro_idx[0]), .Y(n419) );
  BUFX20 U42 ( .A(n709), .Y(n392) );
  INVX20 U43 ( .A(n644), .Y(n20) );
  INVX12 U45 ( .A(n199), .Y(n33) );
  NOR2X8 U46 ( .A(n227), .B(n429), .Y(n707) );
  CLKBUFX16 U47 ( .A(n132), .Y(n429) );
  CLKINVX40 U48 ( .A(n695), .Y(n11) );
  INVX14 U49 ( .A(n11), .Y(n12) );
  INVX20 U50 ( .A(n11), .Y(n13) );
  INVX20 U51 ( .A(n11), .Y(n14) );
  NOR2BX8 U52 ( .AN(n388), .B(n390), .Y(n474) );
  CLKINVX40 U53 ( .A(n387), .Y(n388) );
  CLKBUFX40 U54 ( .A(str_pro_idx[4]), .Y(n390) );
  INVX8 U55 ( .A(n652), .Y(n228) );
  OR2X2 U56 ( .A(str_pro_idx[0]), .B(str_pro_idx[1]), .Y(n652) );
  BUFX16 U57 ( .A(n62), .Y(n16) );
  INVX18 U58 ( .A(n215), .Y(n714) );
  INVX8 U59 ( .A(n711), .Y(n435) );
  INVX14 U60 ( .A(n16), .Y(n675) );
  INVX16 U61 ( .A(n443), .Y(n395) );
  INVX10 U62 ( .A(n386), .Y(n397) );
  INVX8 U63 ( .A(n19), .Y(n25) );
  INVX4 U64 ( .A(n94), .Y(n597) );
  INVX2 U65 ( .A(str_input[5]), .Y(n95) );
  INVX4 U71 ( .A(n15), .Y(n373) );
  AND4X4 U72 ( .A(n651), .B(n650), .C(n649), .D(n31), .Y(n97) );
  AND4X4 U73 ( .A(n641), .B(n640), .C(n639), .D(n638), .Y(n96) );
  CLKAND2X4 U74 ( .A(n255), .B(n256), .Y(n637) );
  AO22X2 U77 ( .A0(str_input[191]), .A1(n402), .B0(str_input[255]), .B1(n177), 
        .Y(n357) );
  AO22X2 U82 ( .A0(str_input[183]), .A1(n401), .B0(str_input[247]), .B1(n172), 
        .Y(n359) );
  NAND4X6 U84 ( .A(n478), .B(n477), .C(n476), .D(n475), .Y(n492) );
  NAND4X4 U85 ( .A(n482), .B(n481), .C(n480), .D(n479), .Y(n491) );
  NAND4X6 U86 ( .A(n356), .B(n378), .C(n552), .D(n551), .Y(n554) );
  NAND4X4 U87 ( .A(n550), .B(n549), .C(n548), .D(n547), .Y(n556) );
  NAND4X6 U89 ( .A(n524), .B(n523), .C(n522), .D(n521), .Y(n537) );
  NAND4X6 U90 ( .A(n528), .B(n527), .C(n526), .D(n525), .Y(n536) );
  NAND4X4 U91 ( .A(n593), .B(n592), .C(n591), .D(n590), .Y(n601) );
  NAND4X4 U92 ( .A(n570), .B(n569), .C(n568), .D(n567), .Y(n579) );
  INVX8 U97 ( .A(n656), .Y(n229) );
  INVX8 U98 ( .A(n658), .Y(n214) );
  AO22X2 U104 ( .A0(n203), .A1(n625), .B0(n228), .B1(n624), .Y(n626) );
  NAND4X6 U109 ( .A(n619), .B(n618), .C(n617), .D(n616), .Y(n625) );
  INVX16 U110 ( .A(pat_pro_idx[1]), .Y(n446) );
  INVX12 U112 ( .A(n711), .Y(n216) );
  INVX12 U113 ( .A(n348), .Y(n695) );
  OR2X2 U114 ( .A(n351), .B(n447), .Y(n348) );
  CLKXOR2X2 U115 ( .A(n389), .B(process_2idx[3]), .Y(n668) );
  INVX10 U116 ( .A(n388), .Y(n442) );
  INVX8 U117 ( .A(n420), .Y(n447) );
  BUFX16 U118 ( .A(n390), .Y(n72) );
  INVX4 U119 ( .A(str_pro_idx[1]), .Y(n439) );
  OAI2BB1X1 U125 ( .A0N(current_st[0]), .A1N(current_st[1]), .B0(n716), .Y(
        n465) );
  AO22X2 U127 ( .A0(match_idx[0]), .A1(n434), .B0(N389), .B1(n714), .Y(n464)
         );
  AO22X2 U128 ( .A0(match_idx[3]), .A1(n434), .B0(N392), .B1(n714), .Y(n461)
         );
  INVX4 U129 ( .A(n129), .Y(n48) );
  AO21X2 U130 ( .A0(n386), .A1(n73), .B0(n355), .Y(n453) );
  CLKINVX32 U134 ( .A(n713), .Y(n438) );
  AOI22X4 U136 ( .A0(str_input[181]), .A1(n402), .B0(str_input[245]), .B1(n177), .Y(n589) );
  NAND4X4 U140 ( .A(n589), .B(n588), .C(n587), .D(n586), .Y(n602) );
  AO22X4 U141 ( .A0(str_input[37]), .A1(n24), .B0(str_input[101]), .B1(n427), 
        .Y(n15) );
  INVX5 U145 ( .A(n674), .Y(n437) );
  INVX16 U146 ( .A(n109), .Y(n111) );
  CLKBUFX40 U152 ( .A(n403), .Y(n17) );
  CLKBUFX40 U155 ( .A(n403), .Y(n18) );
  INVX12 U156 ( .A(n19), .Y(n23) );
  INVX12 U161 ( .A(n19), .Y(n24) );
  OAI21X8 U163 ( .A0(n442), .A1(n391), .B0(n683), .Y(n454) );
  BUFX20 U167 ( .A(n47), .Y(n29) );
  INVX2 U168 ( .A(n713), .Y(n47) );
  INVX16 U169 ( .A(n133), .Y(n172) );
  CLKINVX20 U172 ( .A(n132), .Y(n233) );
  INVX16 U173 ( .A(n399), .Y(n400) );
  CLKINVX32 U174 ( .A(n645), .Y(n109) );
  INVX14 U180 ( .A(n109), .Y(n115) );
  INVX14 U181 ( .A(n109), .Y(n123) );
  CLKINVX32 U183 ( .A(n642), .Y(n399) );
  BUFX20 U184 ( .A(n646), .Y(n403) );
  INVX14 U185 ( .A(n133), .Y(n174) );
  INVX12 U186 ( .A(n351), .Y(n693) );
  OR2X4 U189 ( .A(n448), .B(n446), .Y(n351) );
  AND2X2 U190 ( .A(n216), .B(n217), .Y(n30) );
  AOI22X4 U191 ( .A0(str_input[7]), .A1(n7), .B0(str_input[71]), .B1(n647), 
        .Y(n31) );
  NAND4X8 U195 ( .A(n367), .B(n377), .C(n364), .D(n553), .Y(n32) );
  INVX10 U196 ( .A(n363), .Y(n673) );
  INVX5 U197 ( .A(str_pro_idx[0]), .Y(n440) );
  INVX20 U200 ( .A(n386), .Y(n441) );
  INVX2 U201 ( .A(n712), .Y(n217) );
  INVX5 U207 ( .A(n704), .Y(n227) );
  NOR2X8 U208 ( .A(n29), .B(n677), .Y(n701) );
  INVX2 U210 ( .A(n394), .Y(n73) );
  AND2X2 U211 ( .A(str_input[118]), .B(n428), .Y(n282) );
  BUFX16 U212 ( .A(n424), .Y(n428) );
  AND2X2 U216 ( .A(str_input[150]), .B(n646), .Y(n230) );
  INVX2 U218 ( .A(pat_last_idx[0]), .Y(n433) );
  AO22X2 U222 ( .A0(n701), .A1(n689), .B0(n29), .B1(n447), .Y(n408) );
  AO22X4 U223 ( .A0(start_idx[2]), .A1(n437), .B0(N439), .B1(n385), .Y(n355)
         );
  AO2B2X4 U227 ( .B0(n406), .B1(n48), .A0(n407), .A1N(n68), .Y(n457) );
  CLKINVX32 U228 ( .A(n387), .Y(n389) );
  AOI2BB1X2 U234 ( .A0N(n712), .A1N(n713), .B0(n677), .Y(n709) );
  NAND2BX4 U237 ( .AN(n429), .B(n674), .Y(n62) );
  NAND2X8 U238 ( .A(n435), .B(n129), .Y(n68) );
  NAND2X8 U240 ( .A(n435), .B(n129), .Y(n71) );
  AO22X4 U243 ( .A0(start_idx[1]), .A1(n437), .B0(N438), .B1(n385), .Y(n354)
         );
  AND2X8 U245 ( .A(n393), .B(n435), .Y(n684) );
  AOI22X4 U246 ( .A0(str_input[188]), .A1(n400), .B0(str_input[252]), .B1(n173), .Y(n570) );
  AO2B2X4 U254 ( .B0(str_input[69]), .B1(n647), .A0(n10), .A1N(n95), .Y(n94)
         );
  AO2B2BX4 U255 ( .A0(n203), .A1N(n96), .B0(n228), .B1N(n97), .Y(n654) );
  NOR2BX4 U258 ( .AN(n474), .B(n441), .Y(n643) );
  AOI22X4 U260 ( .A0(str_input[180]), .A1(n400), .B0(str_input[244]), .B1(n172), .Y(n566) );
  AOI22X4 U262 ( .A0(str_input[184]), .A1(n402), .B0(str_input[248]), .B1(n173), .Y(n482) );
  INVX12 U263 ( .A(n133), .Y(n173) );
  NOR2X4 U266 ( .A(n443), .B(n389), .Y(n254) );
  AOI22X4 U267 ( .A0(str_input[189]), .A1(n401), .B0(str_input[253]), .B1(n173), .Y(n593) );
  AND2X4 U269 ( .A(n472), .B(n397), .Y(n645) );
  NOR2X5 U272 ( .A(n443), .B(n389), .Y(n471) );
  NAND4X8 U273 ( .A(n365), .B(n368), .C(n380), .D(n532), .Y(n533) );
  CLKBUFX40 U275 ( .A(n423), .Y(n427) );
  INVX12 U279 ( .A(n691), .Y(n444) );
  INVX14 U281 ( .A(n419), .Y(n421) );
  NOR2X8 U282 ( .A(n389), .B(n72), .Y(n473) );
  CLKINVX40 U286 ( .A(n349), .Y(n133) );
  AND2X2 U287 ( .A(n229), .B(n627), .Y(n307) );
  NAND4X4 U288 ( .A(n615), .B(n614), .C(n613), .D(n612), .Y(n627) );
  AND2X6 U290 ( .A(n214), .B(n628), .Y(n285) );
  AOI22X4 U293 ( .A0(str_input[62]), .A1(n26), .B0(str_input[126]), .B1(n428), 
        .Y(n614) );
  NAND2X4 U296 ( .A(str_input[159]), .B(n404), .Y(n255) );
  CLKBUFX40 U297 ( .A(str_pro_idx[2]), .Y(n386) );
  AO22X2 U298 ( .A0(str_input[55]), .A1(n2), .B0(str_input[119]), .B1(n428), 
        .Y(n360) );
  AO22X2 U299 ( .A0(str_input[63]), .A1(n23), .B0(str_input[127]), .B1(n428), 
        .Y(n358) );
  CLKINVX6 U300 ( .A(n438), .Y(n405) );
  CLKNAND2X12 U301 ( .A(n665), .B(n664), .Y(n713) );
  CLKNAND2X12 U302 ( .A(n474), .B(n397), .Y(n396) );
  AOI22X4 U304 ( .A0(str_input[34]), .A1(n28), .B0(str_input[98]), .B1(n398), 
        .Y(n368) );
  CLKNAND2X12 U305 ( .A(n227), .B(n233), .Y(n674) );
  AO22X4 U306 ( .A0(start_idx[0]), .A1(n437), .B0(n440), .B1(n385), .Y(n353)
         );
  OAI21BX4 U307 ( .A0(n443), .A1(n391), .B0N(n361), .Y(n455) );
  CLKBUFX40 U308 ( .A(n424), .Y(n426) );
  OAI31X4 U309 ( .A0(n74), .A1(n677), .A2(n711), .B0(n675), .Y(n394) );
  OAI31X4 U310 ( .A0(n74), .A1(n677), .A2(n711), .B0(n675), .Y(n199) );
  NOR2X6 U311 ( .A(n281), .B(n282), .Y(n610) );
  CLKNAND2X12 U312 ( .A(n29), .B(n30), .Y(n215) );
  AOI22X4 U314 ( .A0(str_input[128]), .A1(n17), .B0(str_input[192]), .B1(n111), 
        .Y(n382) );
  CLKBUFX40 U315 ( .A(n423), .Y(n398) );
  BUFX20 U316 ( .A(n425), .Y(n423) );
  AOI22X4 U317 ( .A0(str_input[129]), .A1(n404), .B0(str_input[193]), .B1(n115), .Y(n383) );
  AOI22X4 U318 ( .A0(str_input[151]), .A1(n18), .B0(str_input[215]), .B1(n123), 
        .Y(n635) );
  INVX20 U319 ( .A(n350), .Y(n676) );
  AO22X4 U320 ( .A0(start_idx[4]), .A1(n437), .B0(N441), .B1(n385), .Y(n361)
         );
  AO21X4 U321 ( .A0(n435), .A1(n701), .B0(n393), .Y(n703) );
  CLKBUFX40 U322 ( .A(n685), .Y(n393) );
  CLKINVX40 U323 ( .A(n396), .Y(n647) );
  AOI22X4 U324 ( .A0(str_input[187]), .A1(n402), .B0(str_input[251]), .B1(n177), .Y(n550) );
  AOI22X4 U325 ( .A0(str_input[179]), .A1(n401), .B0(str_input[243]), .B1(n174), .Y(n546) );
  AOI22X4 U326 ( .A0(str_input[190]), .A1(n400), .B0(str_input[254]), .B1(n174), .Y(n615) );
  CLKBUFX40 U327 ( .A(n703), .Y(n129) );
  CLKBUFX40 U328 ( .A(n684), .Y(n385) );
  AOI22X4 U329 ( .A0(str_input[135]), .A1(n17), .B0(str_input[199]), .B1(n111), 
        .Y(n649) );
  CLKINVX40 U330 ( .A(n399), .Y(n402) );
  AOI22X4 U331 ( .A0(str_input[130]), .A1(n18), .B0(str_input[194]), .B1(n123), 
        .Y(n380) );
  BUFX2 U332 ( .A(reset), .Y(n430) );
  NOR3X8 U333 ( .A(n676), .B(n677), .C(n711), .Y(n259) );
  NOR3X8 U334 ( .A(n285), .B(n307), .C(n626), .Y(n633) );
  AO22X4 U335 ( .A0(n203), .A1(n554), .B0(n228), .B1(n32), .Y(n555) );
  OAI21BX4 U336 ( .A0(n440), .A1(n34), .B0N(n353), .Y(n452) );
  AOI22X4 U337 ( .A0(str_input[30]), .A1(n9), .B0(str_input[94]), .B1(n647), 
        .Y(n612) );
  AOI22X4 U338 ( .A0(str_input[131]), .A1(n404), .B0(str_input[195]), .B1(n115), .Y(n364) );
  AO22X4 U339 ( .A0(n203), .A1(n534), .B0(n228), .B1(n533), .Y(n535) );
  AO21X1 U340 ( .A0(match), .A1(n434), .B0(n714), .Y(n459) );
  AO22X4 U341 ( .A0(n203), .A1(n599), .B0(n228), .B1(n598), .Y(n600) );
  AO22X4 U342 ( .A0(n203), .A1(n489), .B0(n228), .B1(n488), .Y(n490) );
  CLKINVX1 U343 ( .A(pat_last_idx[1]), .Y(n432) );
  AO22X4 U344 ( .A0(n203), .A1(n577), .B0(n228), .B1(n576), .Y(n578) );
  AO22X4 U345 ( .A0(n203), .A1(n512), .B0(n228), .B1(n511), .Y(n513) );
  XNOR2X2 U346 ( .A(n72), .B(\sub_83/carry[4] ), .Y(N393) );
  OR2X1 U347 ( .A(n389), .B(\sub_83/carry[3] ), .Y(\sub_83/carry[4] ) );
  AND4X1 U348 ( .A(n233), .B(n716), .C(n466), .D(input_valid), .Y(N58) );
  AO22X1 U349 ( .A0(n29), .A1(n702), .B0(n701), .B1(n700), .Y(n407) );
  XNOR2X2 U350 ( .A(str_pro_idx[0]), .B(n433), .Y(N389) );
  BUFX5 U351 ( .A(N57), .Y(n200) );
  NAND3BX2 U352 ( .AN(n466), .B(n233), .C(n465), .Y(N57) );
  XNOR2X2 U353 ( .A(\sub_83/carry[3] ), .B(n389), .Y(N392) );
  OR2X4 U354 ( .A(n440), .B(str_pro_idx[1]), .Y(n653) );
  INVX20 U355 ( .A(n653), .Y(n203) );
  OR2X2 U356 ( .A(n439), .B(str_pro_idx[0]), .Y(n658) );
  NAND3X4 U357 ( .A(n470), .B(n469), .C(n468), .Y(n712) );
  CLKXOR2X2 U358 ( .A(\r342/carry[4] ), .B(n72), .Y(N441) );
  OR3X2 U359 ( .A(current_st[1]), .B(current_st[2]), .C(n715), .Y(n704) );
  OR2X2 U360 ( .A(n439), .B(n440), .Y(n656) );
  CLKINVX1 U361 ( .A(pat_last_idx[2]), .Y(n431) );
  BUFX20 U362 ( .A(n425), .Y(n424) );
  CLKINVX40 U363 ( .A(n390), .Y(n443) );
  OR2X8 U364 ( .A(n259), .B(n16), .Y(n685) );
  AND2X2 U365 ( .A(str_input[54]), .B(n24), .Y(n281) );
  CLKINVX8 U366 ( .A(pat_pro_idx[2]), .Y(n448) );
  CLKNAND2X4 U367 ( .A(pat_pro_idx[2]), .B(n446), .Y(n690) );
  NOR2BX8 U368 ( .AN(n473), .B(n441), .Y(n644) );
  BUFX18 U369 ( .A(n643), .Y(n425) );
  NAND3X8 U370 ( .A(n608), .B(n610), .C(n311), .Y(n628) );
  INVX4 U371 ( .A(n308), .Y(n311) );
  OR2X4 U372 ( .A(n690), .B(n447), .Y(n352) );
  OR3X8 U373 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n447), .Y(n362) );
  OAI211X4 U374 ( .A0(n392), .A1(n711), .B0(n708), .C0(n233), .Y(n710) );
  NAND2BX8 U375 ( .AN(n132), .B(n436), .Y(n410) );
  AOI22X4 U376 ( .A0(start_idx[3]), .A1(n437), .B0(N440), .B1(n385), .Y(n683)
         );
  AOI22X4 U377 ( .A0(str_input[182]), .A1(n402), .B0(str_input[246]), .B1(n173), .Y(n611) );
  AOI22X4 U378 ( .A0(str_input[22]), .A1(n6), .B0(str_input[86]), .B1(n647), 
        .Y(n608) );
  NAND3X4 U379 ( .A(n715), .B(n716), .C(current_st[1]), .Y(n672) );
  NOR2BX8 U380 ( .AN(n472), .B(n441), .Y(n349) );
  AO22X4 U381 ( .A0(n405), .A1(n673), .B0(n438), .B1(n712), .Y(n350) );
  INVX12 U382 ( .A(n690), .Y(n445) );
  INVX20 U383 ( .A(n352), .Y(n694) );
  INVX4 U384 ( .A(n672), .Y(n436) );
  INVX2 U385 ( .A(n448), .Y(n406) );
  OAI211X2 U386 ( .A0(n420), .A1(n448), .B0(n691), .C0(n690), .Y(n702) );
  ADDHX2 U387 ( .A(n386), .B(\r342/carry[2] ), .CO(\r342/carry[3] ), .S(N439)
         );
  AOI22X2 U388 ( .A0(str_input[178]), .A1(n402), .B0(str_input[242]), .B1(n172), .Y(n524) );
  AOI22X2 U389 ( .A0(str_input[186]), .A1(n642), .B0(str_input[250]), .B1(n174), .Y(n528) );
  AOI22X2 U390 ( .A0(str_input[177]), .A1(n402), .B0(str_input[241]), .B1(n172), .Y(n501) );
  AOI22X2 U391 ( .A0(str_input[176]), .A1(n400), .B0(str_input[240]), .B1(n174), .Y(n478) );
  CLKXOR2X2 U392 ( .A(n446), .B(pat_last_idx[1]), .Y(n470) );
  CLKXOR2X2 U393 ( .A(n447), .B(pat_last_idx[0]), .Y(n469) );
  CLKXOR2X2 U394 ( .A(n448), .B(pat_last_idx[2]), .Y(n468) );
  AND3X6 U395 ( .A(n671), .B(n670), .C(n669), .Y(n677) );
  CLKXOR2X2 U396 ( .A(n441), .B(process_2idx[2]), .Y(n670) );
  CLKXOR2X2 U397 ( .A(n440), .B(process_2idx[0]), .Y(n671) );
  NOR3X4 U398 ( .A(n668), .B(n667), .C(n666), .Y(n669) );
  OAI21BX4 U399 ( .A0(n439), .A1(n391), .B0N(n354), .Y(n451) );
  OAI2BB2X2 U400 ( .B0(n392), .B1(n711), .A0N(n708), .A1N(done), .Y(n449) );
  AOI22X4 U401 ( .A0(str_input[171]), .A1(n402), .B0(str_input[235]), .B1(n172), .Y(n356) );
  NAND4BBX4 U402 ( .AN(n357), .BN(n358), .C(n637), .D(n636), .Y(n655) );
  NAND4BBX4 U403 ( .AN(n359), .BN(n360), .C(n635), .D(n634), .Y(n657) );
  INVX20 U404 ( .A(n362), .Y(n696) );
  AO22X1 U405 ( .A0(match_idx[2]), .A1(n434), .B0(N391), .B1(n714), .Y(n462)
         );
  AO22X1 U406 ( .A0(match_idx[4]), .A1(n434), .B0(N393), .B1(n714), .Y(n460)
         );
  OR3X4 U407 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n421), .Y(n363) );
  OAI211X2 U408 ( .A0(n421), .A1(n688), .B0(n687), .C0(n686), .Y(n689) );
  AOI22X2 U409 ( .A0(ff_result[18]), .A1(n13), .B0(ff_result[12]), .B1(n694), 
        .Y(n687) );
  CLKXOR2X2 U410 ( .A(pat_pro_idx[1]), .B(n421), .Y(n682) );
  AOI22X4 U411 ( .A0(str_input[162]), .A1(n400), .B0(str_input[226]), .B1(n172), .Y(n365) );
  AOI22X4 U412 ( .A0(str_input[165]), .A1(n400), .B0(str_input[229]), .B1(n177), .Y(n366) );
  AOI22X4 U413 ( .A0(str_input[163]), .A1(n401), .B0(str_input[227]), .B1(n173), .Y(n367) );
  AOI22X4 U414 ( .A0(str_input[36]), .A1(n24), .B0(str_input[100]), .B1(n427), 
        .Y(n369) );
  AOI22X4 U415 ( .A0(str_input[42]), .A1(n2), .B0(str_input[106]), .B1(n427), 
        .Y(n370) );
  AOI22X4 U416 ( .A0(str_input[44]), .A1(n27), .B0(str_input[108]), .B1(n427), 
        .Y(n371) );
  AOI22X4 U417 ( .A0(str_input[33]), .A1(n27), .B0(str_input[97]), .B1(n427), 
        .Y(n372) );
  AOI22X4 U418 ( .A0(str_input[32]), .A1(n2), .B0(str_input[96]), .B1(n427), 
        .Y(n374) );
  AOI22X4 U419 ( .A0(str_input[45]), .A1(n26), .B0(str_input[109]), .B1(n427), 
        .Y(n375) );
  AOI22X4 U420 ( .A0(str_input[40]), .A1(n28), .B0(str_input[104]), .B1(n427), 
        .Y(n376) );
  AOI22X4 U421 ( .A0(str_input[35]), .A1(n23), .B0(str_input[99]), .B1(n426), 
        .Y(n377) );
  AOI22X4 U422 ( .A0(str_input[43]), .A1(n23), .B0(str_input[107]), .B1(n426), 
        .Y(n378) );
  AOI22X4 U423 ( .A0(str_input[41]), .A1(n26), .B0(str_input[105]), .B1(n427), 
        .Y(n379) );
  AOI22X4 U424 ( .A0(str_input[132]), .A1(n18), .B0(str_input[196]), .B1(n128), 
        .Y(n381) );
  AOI22X4 U425 ( .A0(str_input[133]), .A1(n17), .B0(str_input[197]), .B1(n111), 
        .Y(n384) );
  AOI22X2 U426 ( .A0(ff_result[6]), .A1(n444), .B0(ff_result[0]), .B1(n696), 
        .Y(n686) );
  OAI211X2 U427 ( .A0(n421), .A1(n699), .B0(n698), .C0(n697), .Y(n700) );
  AOI22X2 U428 ( .A0(ff_result[20]), .A1(n14), .B0(ff_result[14]), .B1(n694), 
        .Y(n698) );
  AOI22X2 U429 ( .A0(ff_result[8]), .A1(n444), .B0(ff_result[2]), .B1(n696), 
        .Y(n697) );
  OAI211X2 U430 ( .A0(n420), .A1(n680), .B0(n679), .C0(n678), .Y(n681) );
  AOI22X2 U431 ( .A0(ff_result[19]), .A1(n13), .B0(ff_result[13]), .B1(n694), 
        .Y(n679) );
  AOI22X2 U432 ( .A0(ff_result[7]), .A1(n444), .B0(ff_result[1]), .B1(n696), 
        .Y(n678) );
  OAI2B1X2 U433 ( .A1N(n707), .A0(n706), .B0(n705), .Y(n458) );
  OAI211X2 U434 ( .A0(n436), .A1(n227), .B0(n233), .C0(output_valid), .Y(n705)
         );
  ADDFX2 U435 ( .A(n386), .B(n431), .CI(\sub_83/carry[2] ), .CO(
        \sub_83/carry[3] ), .S(N391) );
  ADDFX1 U436 ( .A(str_pro_idx[1]), .B(n432), .CI(\sub_83/carry[1] ), .CO(
        \sub_83/carry[2] ), .S(N390) );
  CLKXOR2X2 U437 ( .A(str_pro_idx[1]), .B(process_2idx[1]), .Y(n667) );
  CLKXOR2X2 U438 ( .A(n72), .B(process_2idx[4]), .Y(n666) );
  NOR2X6 U439 ( .A(current_st[0]), .B(current_st[1]), .Y(n466) );
  NAND3X4 U440 ( .A(current_st[2]), .B(n466), .C(input_valid), .Y(n706) );
  ADDHX2 U441 ( .A(str_pro_idx[1]), .B(str_pro_idx[0]), .CO(\r342/carry[2] ), 
        .S(N438) );
  AOI21X2 U442 ( .A0(n706), .A1(n467), .B0(n429), .Y(N60) );
  NAND2X2 U443 ( .A(done), .B(n436), .Y(n467) );
  CLKINVX40 U444 ( .A(str_pro_idx[3]), .Y(n387) );
  ADDHX2 U445 ( .A(n389), .B(\r342/carry[3] ), .CO(\r342/carry[4] ), .S(N440)
         );
  AO22X1 U446 ( .A0(match_idx[1]), .A1(n434), .B0(N390), .B1(n714), .Y(n463)
         );
  NOR2BX8 U447 ( .AN(n395), .B(n442), .Y(n472) );
  AO22X1 U448 ( .A0(n29), .A1(n682), .B0(n701), .B1(n681), .Y(n409) );
  AO2B2BX4 U449 ( .A0(n420), .A1N(n129), .B0(n408), .B1N(n68), .Y(n456) );
  AO2B2BX4 U450 ( .A0(pat_pro_idx[1]), .A1N(n129), .B0(n409), .B1N(n71), .Y(
        n450) );
  OR2X8 U451 ( .A(n227), .B(n410), .Y(n711) );
  XOR2X8 U452 ( .A(n585), .B(n584), .Y(n411) );
  AND4X8 U453 ( .A(n411), .B(n412), .C(n413), .D(n414), .Y(n664) );
  XOR2X8 U454 ( .A(n607), .B(n606), .Y(n412) );
  XOR2X8 U455 ( .A(n633), .B(n632), .Y(n413) );
  XOR2X8 U456 ( .A(n663), .B(n662), .Y(n414) );
  AND4X8 U457 ( .A(n416), .B(n418), .C(n417), .D(n415), .Y(n665) );
  XOR2X8 U458 ( .A(n497), .B(n496), .Y(n415) );
  XOR2X8 U459 ( .A(n520), .B(n519), .Y(n416) );
  XOR2X8 U460 ( .A(n542), .B(n541), .Y(n417) );
  XOR2X8 U461 ( .A(n562), .B(n561), .Y(n418) );
  CLKBUFX40 U462 ( .A(n692), .Y(n422) );
  OR2X1 U463 ( .A(n433), .B(str_pro_idx[0]), .Y(\sub_83/carry[1] ) );
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
  wire   n705, done, N58, N59, N60, N389, N390, N391, N392, N393, N438, N439,
         N440, N441, \sub_83/carry[4] , \sub_83/carry[3] , \sub_83/carry[2] ,
         \sub_83/carry[1] , \r342/carry[4] , \r342/carry[3] , \r342/carry[2] ,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n45, n47, n62, n74, n82, n92, n93, n109, n112, n113, n121,
         n123, n124, n128, n129, n132, n133, n144, n146, n147, n148, n154,
         n155, n158, n159, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n198, n199, n201, n202, n203, n205, n206, n228, n229, n231,
         n232, n233, n234, n235, n240, n241, n254, n255, n256, n257, n258,
         n259, n260, n261, n280, n281, n282, n283, n284, n285, n287, n292,
         n293, n306, n307, n309, n310, n311, n312, n313, n318, n331, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704;
  wire   [2:0] current_st;
  wire   [2:0] next_st;
  wire   [4:0] str_pro_idx;
  wire   [2:0] pat_pro_idx;

  DFFTRX4 \current_st_reg[1]  ( .D(next_st[1]), .RN(n446), .CK(clk), .Q(
        current_st[1]), .QN(n18) );
  DFFTRX4 \current_st_reg[2]  ( .D(next_st[2]), .RN(n446), .CK(clk), .Q(
        current_st[2]), .QN(n704) );
  OAI211X4 U11 ( .A0(n7), .A1(n175), .B0(n696), .C0(n446), .Y(n698) );
  AOI222X4 U19 ( .A0(ff_result[11]), .A1(n462), .B0(ff_result[17]), .B1(n681), 
        .C0(ff_result[5]), .C1(n6), .Y(n687) );
  OAI211X4 U20 ( .A0(n439), .A1(n465), .B0(n679), .C0(n678), .Y(n690) );
  AOI222X4 U26 ( .A0(ff_result[9]), .A1(n462), .B0(ff_result[15]), .B1(n681), 
        .C0(ff_result[3]), .C1(n6), .Y(n676) );
  AOI222X4 U44 ( .A0(ff_result[10]), .A1(n462), .B0(ff_result[16]), .B1(n681), 
        .C0(ff_result[4]), .C1(n6), .Y(n664) );
  CLKXOR2X12 U45 ( .A(pat_pro_idx[1]), .B(n439), .Y(n666) );
  AO21X4 U46 ( .A0(n452), .A1(n689), .B0(n365), .Y(n692) );
  AOI2BB1X4 U55 ( .A0N(n700), .A1N(n423), .B0(n661), .Y(n697) );
  OAI211X4 U66 ( .A0(n439), .A1(n644), .B0(n643), .C0(n642), .Y(n645) );
  AOI222X4 U67 ( .A0(pat_input[15]), .A1(n684), .B0(pat_input[31]), .B1(n461), 
        .C0(pat_input[7]), .C1(n442), .Y(n642) );
  AOI222X4 U69 ( .A0(pat_input[39]), .A1(n462), .B0(pat_input[55]), .B1(n681), 
        .C0(pat_input[23]), .C1(n6), .Y(n644) );
  AOI22X4 U88 ( .A0(str_input[23]), .A1(n445), .B0(str_input[87]), .B1(n112), 
        .Y(n619) );
  OAI211X4 U93 ( .A0(n439), .A1(n616), .B0(n615), .C0(n614), .Y(n617) );
  AOI222X4 U94 ( .A0(pat_input[14]), .A1(n684), .B0(pat_input[30]), .B1(n461), 
        .C0(pat_input[6]), .C1(n442), .Y(n614) );
  AOI222X4 U96 ( .A0(pat_input[38]), .A1(n462), .B0(pat_input[54]), .B1(n681), 
        .C0(pat_input[22]), .C1(n6), .Y(n616) );
  AOI221X4 U97 ( .A0(n231), .A1(n613), .B0(n229), .B1(n612), .C0(n611), .Y(
        n618) );
  AOI22X4 U107 ( .A0(str_input[46]), .A1(n377), .B0(str_input[110]), .B1(n173), 
        .Y(n607) );
  AOI22X4 U110 ( .A0(str_input[30]), .A1(n444), .B0(str_input[94]), .B1(n121), 
        .Y(n603) );
  AOI22X4 U115 ( .A0(str_input[22]), .A1(n445), .B0(str_input[86]), .B1(n124), 
        .Y(n601) );
  OAI211X4 U120 ( .A0(n439), .A1(n598), .B0(n597), .C0(n596), .Y(n599) );
  AOI222X4 U121 ( .A0(pat_input[13]), .A1(n684), .B0(pat_input[29]), .B1(n461), 
        .C0(pat_input[5]), .C1(n442), .Y(n596) );
  AOI222X4 U123 ( .A0(pat_input[37]), .A1(n462), .B0(pat_input[53]), .B1(n681), 
        .C0(pat_input[21]), .C1(n6), .Y(n598) );
  AOI221X4 U124 ( .A0(n231), .A1(n595), .B0(n229), .B1(n594), .C0(n593), .Y(
        n600) );
  NAND4X8 U136 ( .A(n591), .B(n590), .C(n589), .D(n588), .Y(n594) );
  AOI22X4 U137 ( .A0(str_input[29]), .A1(n384), .B0(str_input[93]), .B1(n121), 
        .Y(n588) );
  AOI22X4 U138 ( .A0(str_input[157]), .A1(n408), .B0(str_input[221]), .B1(n390), .Y(n589) );
  AOI22X4 U139 ( .A0(str_input[61]), .A1(n378), .B0(str_input[125]), .B1(n172), 
        .Y(n590) );
  AOI22X4 U140 ( .A0(str_input[189]), .A1(n147), .B0(str_input[253]), .B1(n178), .Y(n591) );
  NAND4X8 U141 ( .A(n587), .B(n586), .C(n585), .D(n584), .Y(n595) );
  OAI211X4 U147 ( .A0(n439), .A1(n581), .B0(n580), .C0(n579), .Y(n582) );
  AOI222X4 U148 ( .A0(pat_input[12]), .A1(n684), .B0(pat_input[28]), .B1(n461), 
        .C0(pat_input[4]), .C1(n442), .Y(n579) );
  AOI222X4 U150 ( .A0(pat_input[36]), .A1(n462), .B0(pat_input[52]), .B1(n681), 
        .C0(pat_input[20]), .C1(n6), .Y(n581) );
  AOI221X4 U151 ( .A0(n231), .A1(n578), .B0(n229), .B1(n577), .C0(n576), .Y(
        n583) );
  AOI22X4 U155 ( .A0(str_input[132]), .A1(n409), .B0(str_input[196]), .B1(n4), 
        .Y(n573) );
  AOI22X4 U160 ( .A0(str_input[140]), .A1(n407), .B0(str_input[204]), .B1(n3), 
        .Y(n572) );
  AOI22X4 U165 ( .A0(str_input[156]), .A1(n407), .B0(str_input[220]), .B1(n4), 
        .Y(n570) );
  AOI22X4 U166 ( .A0(str_input[60]), .A1(n377), .B0(str_input[124]), .B1(n174), 
        .Y(n571) );
  OAI211X4 U175 ( .A0(n439), .A1(n558), .B0(n557), .C0(n556), .Y(n559) );
  AOI222X4 U176 ( .A0(pat_input[11]), .A1(n684), .B0(pat_input[27]), .B1(n461), 
        .C0(pat_input[3]), .C1(n442), .Y(n556) );
  AOI222X4 U178 ( .A0(pat_input[35]), .A1(n462), .B0(pat_input[51]), .B1(n681), 
        .C0(pat_input[19]), .C1(n6), .Y(n558) );
  AOI22X4 U192 ( .A0(str_input[27]), .A1(n444), .B0(str_input[91]), .B1(n128), 
        .Y(n546) );
  AOI22X4 U198 ( .A0(str_input[147]), .A1(n409), .B0(str_input[211]), .B1(n4), 
        .Y(n545) );
  OAI211X4 U202 ( .A0(n439), .A1(n541), .B0(n540), .C0(n539), .Y(n542) );
  AOI222X4 U203 ( .A0(pat_input[10]), .A1(n684), .B0(pat_input[26]), .B1(n461), 
        .C0(pat_input[2]), .C1(n442), .Y(n539) );
  AOI222X4 U205 ( .A0(pat_input[34]), .A1(n462), .B0(pat_input[50]), .B1(n681), 
        .C0(pat_input[18]), .C1(n6), .Y(n541) );
  AOI221X4 U206 ( .A0(n231), .A1(n538), .B0(n229), .B1(n537), .C0(n536), .Y(
        n543) );
  OAI211X4 U229 ( .A0(n439), .A1(n523), .B0(n522), .C0(n521), .Y(n524) );
  AOI222X4 U230 ( .A0(pat_input[9]), .A1(n684), .B0(pat_input[25]), .B1(n461), 
        .C0(pat_input[1]), .C1(n442), .Y(n521) );
  AOI222X4 U232 ( .A0(pat_input[33]), .A1(n462), .B0(pat_input[49]), .B1(n681), 
        .C0(pat_input[17]), .C1(n6), .Y(n523) );
  AOI221X4 U233 ( .A0(n231), .A1(n520), .B0(n229), .B1(n519), .C0(n518), .Y(
        n525) );
  AOI22X4 U252 ( .A0(str_input[145]), .A1(n408), .B0(str_input[209]), .B1(n390), .Y(n510) );
  OAI211X4 U256 ( .A0(n439), .A1(n506), .B0(n505), .C0(n504), .Y(n507) );
  AOI222X4 U257 ( .A0(pat_input[8]), .A1(n684), .B0(pat_input[24]), .B1(n461), 
        .C0(pat_input[0]), .C1(n442), .Y(n504) );
  NAND2X8 U259 ( .A(n5), .B(n439), .Y(n679) );
  AOI222X4 U264 ( .A0(pat_input[32]), .A1(n462), .B0(pat_input[48]), .B1(n681), 
        .C0(pat_input[16]), .C1(n6), .Y(n506) );
  NOR2X8 U265 ( .A(n463), .B(pat_pro_idx[2]), .Y(n680) );
  AOI221X4 U268 ( .A0(n231), .A1(n503), .B0(n229), .B1(n502), .C0(n501), .Y(
        n508) );
  AOI22X4 U272 ( .A0(str_input[128]), .A1(n407), .B0(str_input[192]), .B1(n390), .Y(n498) );
  NOR2BX8 U290 ( .AN(n490), .B(n47), .Y(n630) );
  NOR2BX8 U291 ( .AN(n489), .B(n47), .Y(n631) );
  AOI22X4 U292 ( .A0(str_input[144]), .A1(n408), .B0(str_input[208]), .B1(n391), .Y(n492) );
  NOR2BX8 U294 ( .AN(n487), .B(n47), .Y(n629) );
  AOI22X4 U295 ( .A0(str_input[48]), .A1(n377), .B0(str_input[112]), .B1(n159), 
        .Y(n493) );
  NOR2BX8 U298 ( .AN(n489), .B(n458), .Y(n627) );
  NOR2X8 U299 ( .A(n82), .B(n388), .Y(n489) );
  NOR2BX8 U303 ( .AN(n487), .B(n458), .Y(n626) );
  NOR2X8 U304 ( .A(n460), .B(n82), .Y(n487) );
  OAI31X4 U313 ( .A0(n657), .A1(n10), .A2(done), .B0(n659), .Y(N59) );
  DFFHQX8 \str_pro_idx_reg[1]  ( .D(n468), .CK(clk), .Q(str_pro_idx[1]) );
  DFFHQX8 \str_pro_idx_reg[0]  ( .D(n469), .CK(clk), .Q(str_pro_idx[0]) );
  DFFHQX8 \str_pro_idx_reg[2]  ( .D(n470), .CK(clk), .Q(str_pro_idx[2]) );
  DFFHQX8 \str_pro_idx_reg[3]  ( .D(n471), .CK(clk), .Q(str_pro_idx[3]) );
  DFFHQX8 \pat_pro_idx_reg[1]  ( .D(n467), .CK(clk), .Q(pat_pro_idx[1]) );
  DFFHQX8 \pat_pro_idx_reg[2]  ( .D(n474), .CK(clk), .Q(pat_pro_idx[2]) );
  DFFHQX8 match_reg ( .D(n476), .CK(clk), .Q(match) );
  DFFHQX8 \match_idx_reg[4]  ( .D(n477), .CK(clk), .Q(match_idx[4]) );
  DFFHQX8 \match_idx_reg[3]  ( .D(n478), .CK(clk), .Q(match_idx[3]) );
  DFFHQX8 \match_idx_reg[1]  ( .D(n480), .CK(clk), .Q(match_idx[1]) );
  DFFQX4 done_reg ( .D(n466), .CK(clk), .Q(done) );
  DFFQX2 output_valid_reg ( .D(n475), .CK(clk), .Q(output_valid) );
  TLATX1 \next_st_reg[1]  ( .G(n20), .D(N59), .Q(next_st[1]) );
  TLATX1 \next_st_reg[2]  ( .G(n20), .D(N60), .Q(next_st[2]) );
  TLATX1 \next_st_reg[0]  ( .G(n20), .D(N58), .Q(next_st[0]) );
  DFFQX2 \pat_pro_idx_reg[0]  ( .D(n473), .CK(clk), .Q(pat_pro_idx[0]) );
  DFFHQX8 \match_idx_reg[0]  ( .D(n481), .CK(clk), .Q(match_idx[0]) );
  DFFHQX8 \str_pro_idx_reg[4]  ( .D(n472), .CK(clk), .Q(str_pro_idx[4]) );
  DFFTRX4 \current_st_reg[0]  ( .D(next_st[0]), .RN(n446), .CK(clk), .Q(
        current_st[0]), .QN(n703) );
  DFFHQX8 \match_idx_reg[2]  ( .D(n479), .CK(clk), .Q(n705) );
  OA21X4 U3 ( .A0(n456), .A1(n365), .B0(n667), .Y(n1) );
  CLKINVX40 U4 ( .A(n1), .Y(n468) );
  OA21X4 U5 ( .A0(n459), .A1(n365), .B0(n670), .Y(n2) );
  CLKINVX40 U6 ( .A(n2), .Y(n471) );
  INVX16 U7 ( .A(n74), .Y(n459) );
  INVX16 U8 ( .A(n293), .Y(n155) );
  NOR2X5 U9 ( .A(n19), .B(n10), .Y(n695) );
  INVX20 U10 ( .A(n9), .Y(n10) );
  CLKBUFX40 U12 ( .A(n392), .Y(n3) );
  CLKBUFX40 U13 ( .A(n392), .Y(n4) );
  AO22X4 U14 ( .A0(match_idx[3]), .A1(n451), .B0(N392), .B1(n228), .Y(n478) );
  INVX12 U15 ( .A(n176), .Y(n178) );
  AOI22X4 U16 ( .A0(pat_input[63]), .A1(n441), .B0(pat_input[47]), .B1(n682), 
        .Y(n643) );
  CLKINVX40 U17 ( .A(str_pro_idx[0]), .Y(n457) );
  AOI22X4 U18 ( .A0(str_input[21]), .A1(n384), .B0(str_input[85]), .B1(n123), 
        .Y(n584) );
  CLKBUFX40 U21 ( .A(n440), .Y(n5) );
  CLKBUFX40 U22 ( .A(n440), .Y(n6) );
  AOI22X4 U23 ( .A0(pat_input[57]), .A1(n441), .B0(pat_input[41]), .B1(n682), 
        .Y(n522) );
  INVX20 U24 ( .A(n259), .Y(n682) );
  INVX20 U25 ( .A(n260), .Y(n684) );
  AOI22X4 U27 ( .A0(str_input[174]), .A1(n148), .B0(str_input[238]), .B1(n177), 
        .Y(n608) );
  INVX16 U28 ( .A(n133), .Y(n148) );
  NAND4X6 U29 ( .A(n353), .B(n309), .C(n632), .D(n633), .Y(n634) );
  AOI22X4 U30 ( .A0(str_input[231]), .A1(n177), .B0(n144), .B1(str_input[167]), 
        .Y(n353) );
  CLKINVX40 U31 ( .A(n679), .Y(n461) );
  CLKINVX12 U32 ( .A(n92), .Y(n112) );
  INVX18 U33 ( .A(n630), .Y(n92) );
  BUFX20 U34 ( .A(n697), .Y(n7) );
  AOI22X2 U35 ( .A0(pat_input[61]), .A1(n441), .B0(pat_input[45]), .B1(n682), 
        .Y(n597) );
  INVX6 U36 ( .A(n524), .Y(n432) );
  INVX6 U37 ( .A(n507), .Y(n418) );
  INVX6 U38 ( .A(n645), .Y(n33) );
  INVX8 U39 ( .A(n582), .Y(n419) );
  INVX18 U40 ( .A(n293), .Y(n154) );
  INVX16 U41 ( .A(n626), .Y(n133) );
  AO22X2 U42 ( .A0(str_input[1]), .A1(n384), .B0(str_input[65]), .B1(n129), 
        .Y(n394) );
  INVX10 U43 ( .A(n154), .Y(n171) );
  INVX12 U47 ( .A(n92), .Y(n113) );
  INVX12 U48 ( .A(n155), .Y(n173) );
  AOI2BB2X2 U49 ( .B0(str_input[6]), .B1(n443), .A0N(n372), .A1N(n92), .Y(n609) );
  INVX2 U50 ( .A(str_input[70]), .Y(n372) );
  INVX18 U51 ( .A(n444), .Y(n382) );
  AOI22X2 U52 ( .A0(str_input[47]), .A1(n376), .B0(str_input[111]), .B1(n171), 
        .Y(n625) );
  AOI2BB2X2 U53 ( .B0(str_input[79]), .B1(n124), .A0N(n373), .A1N(n382), .Y(
        n623) );
  INVX2 U54 ( .A(str_input[15]), .Y(n373) );
  INVX14 U56 ( .A(n93), .Y(n129) );
  BUFX16 U57 ( .A(n629), .Y(n409) );
  INVX14 U58 ( .A(n93), .Y(n128) );
  INVX16 U59 ( .A(n93), .Y(n123) );
  BUFX16 U60 ( .A(n629), .Y(n407) );
  BUFX16 U61 ( .A(n627), .Y(n377) );
  INVX18 U62 ( .A(n176), .Y(n177) );
  INVX18 U63 ( .A(n132), .Y(n144) );
  INVX12 U64 ( .A(n155), .Y(n172) );
  BUFX16 U65 ( .A(n627), .Y(n378) );
  INVX8 U68 ( .A(n636), .Y(n202) );
  OR2X2 U70 ( .A(n457), .B(str_pro_idx[1]), .Y(n636) );
  INVX8 U71 ( .A(n635), .Y(n203) );
  OR2X2 U72 ( .A(str_pro_idx[0]), .B(str_pro_idx[1]), .Y(n635) );
  BUFX10 U73 ( .A(n658), .Y(n442) );
  INVX10 U74 ( .A(n702), .Y(n228) );
  NAND2X8 U75 ( .A(n452), .B(n198), .Y(n691) );
  INVX12 U76 ( .A(n92), .Y(n109) );
  AND2X2 U77 ( .A(str_input[99]), .B(n173), .Y(n257) );
  AND2X2 U78 ( .A(str_input[35]), .B(n378), .Y(n256) );
  AO22X2 U79 ( .A0(str_input[11]), .A1(n384), .B0(str_input[75]), .B1(n113), 
        .Y(n399) );
  AO22X2 U80 ( .A0(str_input[139]), .A1(n407), .B0(str_input[203]), .B1(n391), 
        .Y(n385) );
  NOR2X4 U81 ( .A(n233), .B(n234), .Y(n364) );
  AND2X2 U82 ( .A(str_input[3]), .B(n443), .Y(n233) );
  CLKAND2X6 U83 ( .A(str_input[67]), .B(n109), .Y(n234) );
  AO22X2 U84 ( .A0(str_input[8]), .A1(n444), .B0(str_input[72]), .B1(n112), 
        .Y(n386) );
  INVX10 U85 ( .A(n92), .Y(n121) );
  INVX12 U86 ( .A(n155), .Y(n174) );
  AO22X2 U87 ( .A0(str_input[5]), .A1(n384), .B0(str_input[69]), .B1(n124), 
        .Y(n415) );
  AO22X2 U89 ( .A0(str_input[37]), .A1(n376), .B0(str_input[101]), .B1(n174), 
        .Y(n413) );
  AO22X2 U90 ( .A0(str_input[165]), .A1(n148), .B0(str_input[229]), .B1(n179), 
        .Y(n414) );
  AO22X2 U91 ( .A0(str_input[133]), .A1(n407), .B0(str_input[197]), .B1(n4), 
        .Y(n412) );
  AO22X2 U92 ( .A0(str_input[45]), .A1(n378), .B0(str_input[109]), .B1(n159), 
        .Y(n417) );
  AO22X2 U95 ( .A0(str_input[77]), .A1(n112), .B0(n384), .B1(str_input[13]), 
        .Y(n416) );
  AO22X2 U98 ( .A0(str_input[173]), .A1(n144), .B0(str_input[237]), .B1(n177), 
        .Y(n421) );
  NAND4X4 U99 ( .A(n549), .B(n548), .C(n547), .D(n546), .Y(n554) );
  CLKAND2X4 U100 ( .A(n231), .B(n555), .Y(n26) );
  NAND4X4 U101 ( .A(n17), .B(n362), .C(n515), .D(n355), .Y(n517) );
  AOI22X2 U102 ( .A0(str_input[24]), .A1(n444), .B0(str_input[88]), .B1(n113), 
        .Y(n494) );
  AO22X2 U103 ( .A0(str_input[34]), .A1(n378), .B0(str_input[98]), .B1(n171), 
        .Y(n403) );
  AO22X2 U104 ( .A0(str_input[162]), .A1(n146), .B0(str_input[226]), .B1(n177), 
        .Y(n410) );
  AND4X6 U105 ( .A(n608), .B(n607), .C(n606), .D(n605), .Y(n352) );
  NAND4X6 U106 ( .A(n359), .B(n310), .C(n363), .D(n609), .Y(n610) );
  AND4X6 U108 ( .A(n357), .B(n625), .C(n624), .D(n623), .Y(n351) );
  OA22X2 U109 ( .A0(n375), .A1(n93), .B0(n381), .B1(n382), .Y(n632) );
  AOI22X2 U111 ( .A0(str_input[191]), .A1(n144), .B0(str_input[255]), .B1(n179), .Y(n283) );
  AOI22X2 U112 ( .A0(str_input[31]), .A1(n443), .B0(str_input[95]), .B1(n129), 
        .Y(n621) );
  AOI22X2 U113 ( .A0(str_input[149]), .A1(n407), .B0(str_input[213]), .B1(n391), .Y(n585) );
  AOI22X2 U114 ( .A0(str_input[53]), .A1(n377), .B0(str_input[117]), .B1(n158), 
        .Y(n586) );
  AOI22X2 U116 ( .A0(str_input[181]), .A1(n144), .B0(str_input[245]), .B1(n177), .Y(n587) );
  CLKXOR2X2 U117 ( .A(n82), .B(process_2idx[3]), .Y(n653) );
  INVX20 U118 ( .A(n371), .Y(n423) );
  INVX2 U119 ( .A(n442), .Y(n34) );
  INVX18 U122 ( .A(n292), .Y(n681) );
  INVX12 U125 ( .A(n678), .Y(n462) );
  BUFX16 U126 ( .A(n680), .Y(n440) );
  NAND2X5 U127 ( .A(pat_pro_idx[2]), .B(n463), .Y(n678) );
  INVX6 U128 ( .A(pat_pro_idx[0]), .Y(n438) );
  CLKBUFX32 U129 ( .A(n692), .Y(n198) );
  INVX20 U130 ( .A(str_pro_idx[2]), .Y(n458) );
  INVX4 U131 ( .A(str_pro_idx[1]), .Y(n456) );
  AO22X2 U132 ( .A0(match_idx[0]), .A1(n451), .B0(N389), .B1(n228), .Y(n481)
         );
  NAND2X4 U133 ( .A(n199), .B(n201), .Y(n477) );
  NAND2X2 U134 ( .A(N393), .B(n228), .Y(n199) );
  NAND2X6 U135 ( .A(match_idx[4]), .B(n451), .Y(n201) );
  AO21X2 U142 ( .A0(match), .A1(n451), .B0(n228), .Y(n476) );
  INVX5 U143 ( .A(n8), .Y(n469) );
  INVX14 U144 ( .A(reset), .Y(n446) );
  OA21X4 U145 ( .A0(n457), .A1(n365), .B0(n668), .Y(n8) );
  BUFX16 U146 ( .A(n628), .Y(n392) );
  INVX10 U149 ( .A(n447), .Y(n9) );
  BUFX14 U152 ( .A(n443), .Y(n445) );
  CLKBUFX40 U153 ( .A(n631), .Y(n443) );
  AO22X2 U154 ( .A0(str_input[177]), .A1(n144), .B0(str_input[241]), .B1(n179), 
        .Y(n348) );
  NOR3X6 U156 ( .A(n26), .B(n27), .C(n553), .Y(n560) );
  INVX14 U157 ( .A(n626), .Y(n132) );
  CLKINVX24 U158 ( .A(n659), .Y(n454) );
  NAND2X4 U159 ( .A(n19), .B(n446), .Y(n659) );
  BUFX6 U161 ( .A(reset), .Y(n447) );
  INVX12 U162 ( .A(n132), .Y(n146) );
  BUFX14 U163 ( .A(n443), .Y(n444) );
  AND2X2 U164 ( .A(current_st[0]), .B(n704), .Y(n11) );
  BUFX14 U167 ( .A(n443), .Y(n384) );
  INVX10 U168 ( .A(str_pro_idx[2]), .Y(n45) );
  AOI21BX2 U169 ( .A0(current_st[0]), .A1(current_st[1]), .B0N(n704), .Y(n12)
         );
  OR2X2 U170 ( .A(n175), .B(n700), .Y(n13) );
  CLKINVX32 U171 ( .A(n258), .Y(n176) );
  INVX14 U172 ( .A(n176), .Y(n179) );
  OR2X2 U173 ( .A(n10), .B(n454), .Y(n14) );
  AO22X2 U174 ( .A0(str_input[40]), .A1(n378), .B0(str_input[104]), .B1(n158), 
        .Y(n387) );
  AOI22X4 U177 ( .A0(str_input[32]), .A1(n377), .B0(str_input[96]), .B1(n158), 
        .Y(n15) );
  AOI22X4 U179 ( .A0(str_input[36]), .A1(n377), .B0(str_input[100]), .B1(n158), 
        .Y(n16) );
  INVX12 U180 ( .A(str_pro_idx[4]), .Y(n460) );
  AOI22X4 U181 ( .A0(str_input[169]), .A1(n144), .B0(str_input[233]), .B1(n177), .Y(n17) );
  INVX14 U182 ( .A(n630), .Y(n93) );
  CLKAND2X4 U183 ( .A(n18), .B(n11), .Y(n19) );
  INVX10 U184 ( .A(pat_pro_idx[1]), .Y(n463) );
  INVX6 U185 ( .A(pat_pro_idx[2]), .Y(n465) );
  OR2X6 U186 ( .A(n482), .B(n205), .Y(n20) );
  INVX2 U187 ( .A(N439), .Y(n31) );
  NOR2X4 U188 ( .A(n240), .B(n241), .Y(n357) );
  AND2X2 U189 ( .A(str_input[239]), .B(n178), .Y(n241) );
  INVX2 U190 ( .A(n388), .Y(n24) );
  AO22X2 U191 ( .A0(n255), .A1(n677), .B0(n371), .B1(n464), .Y(n429) );
  NOR2X6 U193 ( .A(n371), .B(n661), .Y(n255) );
  OAI211X2 U194 ( .A0(n453), .A1(n19), .B0(n446), .C0(output_valid), .Y(n693)
         );
  ADDFX2 U195 ( .A(n47), .B(n448), .CI(\sub_83/carry[2] ), .CO(
        \sub_83/carry[3] ), .S(N391) );
  INVX2 U196 ( .A(pat_last_idx[2]), .Y(n448) );
  CLKXOR2X2 U197 ( .A(n388), .B(process_2idx[4]), .Y(n651) );
  NAND3X4 U199 ( .A(n486), .B(n485), .C(n484), .Y(n700) );
  CLKXOR2X2 U200 ( .A(n464), .B(pat_last_idx[0]), .Y(n485) );
  INVX2 U201 ( .A(n436), .Y(n32) );
  INVX2 U204 ( .A(pat_last_idx[0]), .Y(n450) );
  BUFX20 U207 ( .A(n455), .Y(n371) );
  CLKINVX32 U208 ( .A(n698), .Y(n451) );
  OR2X1 U209 ( .A(n24), .B(n365), .Y(n23) );
  NAND2X2 U210 ( .A(n23), .B(n672), .Y(n472) );
  NAND4X4 U211 ( .A(n311), .B(n361), .C(n572), .D(n354), .Y(n575) );
  AOI22X4 U212 ( .A0(str_input[172]), .A1(n148), .B0(str_input[236]), .B1(n179), .Y(n311) );
  CLKINVX2 U213 ( .A(n24), .Y(n25) );
  CLKAND2X6 U214 ( .A(n229), .B(n554), .Y(n27) );
  INVX12 U215 ( .A(n133), .Y(n147) );
  NAND4X4 U216 ( .A(n281), .B(n282), .C(n602), .D(n601), .Y(n613) );
  AOI22X4 U217 ( .A0(str_input[182]), .A1(n146), .B0(str_input[246]), .B1(n177), .Y(n281) );
  NOR2BX8 U218 ( .AN(n74), .B(n388), .Y(n490) );
  AO22X2 U219 ( .A0(str_input[161]), .A1(n146), .B0(str_input[225]), .B1(n179), 
        .Y(n402) );
  OR2X4 U220 ( .A(n13), .B(n423), .Y(n702) );
  NAND4X4 U221 ( .A(n285), .B(n287), .C(n604), .D(n603), .Y(n612) );
  AOI22X4 U222 ( .A0(str_input[190]), .A1(n144), .B0(str_input[254]), .B1(n179), .Y(n285) );
  CLKAND2X6 U223 ( .A(n231), .B(n640), .Y(n28) );
  CLKAND2X6 U224 ( .A(n229), .B(n638), .Y(n29) );
  NOR3X6 U225 ( .A(n28), .B(n29), .C(n637), .Y(n646) );
  AOI22X4 U226 ( .A0(str_input[187]), .A1(n148), .B0(str_input[251]), .B1(n178), .Y(n549) );
  CLKINVX40 U227 ( .A(n62), .Y(n82) );
  AO22X2 U228 ( .A0(str_input[49]), .A1(n376), .B0(str_input[113]), .B1(n159), 
        .Y(n349) );
  INVX12 U231 ( .A(n154), .Y(n159) );
  NAND4X6 U234 ( .A(n514), .B(n513), .C(n512), .D(n511), .Y(n519) );
  AOI22X4 U235 ( .A0(str_input[57]), .A1(n376), .B0(str_input[121]), .B1(n158), 
        .Y(n513) );
  INVX12 U236 ( .A(n154), .Y(n158) );
  BUFX16 U237 ( .A(n627), .Y(n376) );
  NOR2X8 U238 ( .A(n256), .B(n257), .Y(n356) );
  NOR2X4 U239 ( .A(n460), .B(n459), .Y(n235) );
  AOI22X4 U240 ( .A0(str_input[55]), .A1(n377), .B0(str_input[119]), .B1(n172), 
        .Y(n280) );
  BUFX16 U241 ( .A(n628), .Y(n391) );
  AOI22X4 U242 ( .A0(str_input[151]), .A1(n409), .B0(str_input[215]), .B1(n391), .Y(n620) );
  OR4X4 U243 ( .A(n389), .B(n387), .C(n366), .D(n386), .Y(n500) );
  NAND4X8 U244 ( .A(n497), .B(n496), .C(n495), .D(n494), .Y(n502) );
  AND2X2 U245 ( .A(str_input[175]), .B(n146), .Y(n240) );
  NAND4X6 U246 ( .A(n283), .B(n284), .C(n622), .D(n621), .Y(n638) );
  AOI22X4 U247 ( .A0(str_input[158]), .A1(n408), .B0(str_input[222]), .B1(n390), .Y(n604) );
  AOI22X4 U248 ( .A0(str_input[155]), .A1(n408), .B0(str_input[219]), .B1(n390), .Y(n547) );
  AOI22X4 U249 ( .A0(str_input[153]), .A1(n409), .B0(str_input[217]), .B1(n390), .Y(n512) );
  INVX10 U250 ( .A(n390), .Y(n369) );
  AOI22X4 U251 ( .A0(str_input[12]), .A1(n445), .B0(str_input[76]), .B1(n109), 
        .Y(n354) );
  AOI22X4 U253 ( .A0(str_input[54]), .A1(n377), .B0(str_input[118]), .B1(n158), 
        .Y(n282) );
  AOI22X4 U254 ( .A0(str_input[150]), .A1(n409), .B0(str_input[214]), .B1(n391), .Y(n602) );
  AOI22X4 U255 ( .A0(str_input[59]), .A1(n376), .B0(str_input[123]), .B1(n159), 
        .Y(n548) );
  AO22X2 U258 ( .A0(str_input[129]), .A1(n408), .B0(str_input[193]), .B1(n4), 
        .Y(n370) );
  AO22X4 U260 ( .A0(str_input[10]), .A1(n445), .B0(str_input[74]), .B1(n121), 
        .Y(n397) );
  OAI21X4 U261 ( .A0(n458), .A1(n365), .B0(n669), .Y(n470) );
  AOI22X4 U262 ( .A0(str_input[62]), .A1(n378), .B0(str_input[126]), .B1(n174), 
        .Y(n287) );
  AO22X2 U263 ( .A0(match_idx[1]), .A1(n451), .B0(N390), .B1(n228), .Y(n480)
         );
  AO22X2 U266 ( .A0(match_idx[2]), .A1(n451), .B0(N391), .B1(n228), .Y(n479)
         );
  AOI22X4 U267 ( .A0(str_input[44]), .A1(n376), .B0(str_input[108]), .B1(n171), 
        .Y(n361) );
  CLKBUFX40 U269 ( .A(n671), .Y(n254) );
  AOI2BB2X4 U270 ( .B0(n254), .B1(N438), .A0N(n435), .A1N(n436), .Y(n667) );
  AOI22X4 U271 ( .A0(str_input[160]), .A1(n147), .B0(str_input[224]), .B1(n178), .Y(n358) );
  AOI2BB2X4 U273 ( .B0(N440), .B1(n254), .A0N(n430), .A1N(n436), .Y(n670) );
  AO2B2X4 U274 ( .B0(start_idx[2]), .B1(n32), .A0(n254), .A1N(n31), .Y(n30) );
  CLKINVX40 U275 ( .A(n30), .Y(n669) );
  AO2B2BX4 U276 ( .A0(n439), .A1N(n198), .B0(n429), .B1N(n691), .Y(n473) );
  AO2B2BX4 U277 ( .A0(pat_pro_idx[1]), .A1N(n198), .B0(n437), .B1N(n691), .Y(
        n467) );
  AO2B2BX4 U278 ( .A0(pat_pro_idx[2]), .A1N(n198), .B0(n427), .B1N(n691), .Y(
        n474) );
  XOR2X8 U279 ( .A(n646), .B(n33), .Y(n647) );
  AOI2BB2X4 U280 ( .B0(n455), .B1(n700), .A0N(n34), .A1N(n455), .Y(n660) );
  CLKINVX40 U281 ( .A(n438), .Y(n439) );
  CLKBUFX40 U282 ( .A(str_pro_idx[4]), .Y(n388) );
  AO22X4 U283 ( .A0(n202), .A1(n575), .B0(n203), .B1(n574), .Y(n576) );
  AOI22X4 U284 ( .A0(str_input[26]), .A1(n384), .B0(str_input[90]), .B1(n113), 
        .Y(n530) );
  AOI22X4 U285 ( .A0(str_input[163]), .A1(n147), .B0(str_input[227]), .B1(n179), .Y(n360) );
  AOI22X4 U286 ( .A0(str_input[137]), .A1(n408), .B0(str_input[201]), .B1(n391), .Y(n515) );
  AOI22X4 U287 ( .A0(str_input[9]), .A1(n445), .B0(str_input[73]), .B1(n113), 
        .Y(n355) );
  AOI22X4 U288 ( .A0(str_input[16]), .A1(n384), .B0(str_input[80]), .B1(n112), 
        .Y(n491) );
  AOI22X4 U289 ( .A0(str_input[20]), .A1(n384), .B0(str_input[84]), .B1(n123), 
        .Y(n565) );
  NAND4X8 U293 ( .A(n533), .B(n532), .C(n531), .D(n530), .Y(n537) );
  AOI22X2 U296 ( .A0(str_input[25]), .A1(n444), .B0(str_input[89]), .B1(n109), 
        .Y(n511) );
  NOR2BX8 U297 ( .AN(n365), .B(n175), .Y(n671) );
  AOI22X4 U300 ( .A0(str_input[17]), .A1(n384), .B0(str_input[81]), .B1(n129), 
        .Y(n509) );
  CLKINVX40 U301 ( .A(n45), .Y(n47) );
  NOR2BX8 U302 ( .AN(n490), .B(n458), .Y(n293) );
  INVX12 U305 ( .A(n93), .Y(n124) );
  AOI22X4 U306 ( .A0(str_input[14]), .A1(n445), .B0(str_input[78]), .B1(n123), 
        .Y(n605) );
  CLKINVX40 U307 ( .A(str_pro_idx[3]), .Y(n62) );
  INVX20 U308 ( .A(n62), .Y(n74) );
  OR3X8 U309 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n464), .Y(n260) );
  OR2X8 U310 ( .A(n678), .B(n464), .Y(n259) );
  INVX20 U311 ( .A(n439), .Y(n464) );
  AOI22X4 U312 ( .A0(str_input[18]), .A1(n444), .B0(str_input[82]), .B1(n124), 
        .Y(n526) );
  AOI22X4 U314 ( .A0(str_input[28]), .A1(n444), .B0(str_input[92]), .B1(n128), 
        .Y(n569) );
  AOI22X4 U315 ( .A0(str_input[64]), .A1(n109), .B0(str_input[0]), .B1(n445), 
        .Y(n374) );
  BUFX12 U316 ( .A(n628), .Y(n390) );
  AND2X8 U317 ( .A(n235), .B(n398), .Y(n628) );
  CLKBUFX40 U318 ( .A(n699), .Y(n175) );
  OR2X8 U319 ( .A(n19), .B(n424), .Y(n699) );
  AOI22X4 U320 ( .A0(str_input[131]), .A1(n408), .B0(str_input[195]), .B1(n391), .Y(n550) );
  AOI22X4 U321 ( .A0(str_input[19]), .A1(n445), .B0(str_input[83]), .B1(n128), 
        .Y(n544) );
  AO2B2X4 U322 ( .B0(n203), .B1(n610), .A0(n202), .A1N(n352), .Y(n611) );
  AOI22X4 U323 ( .A0(str_input[142]), .A1(n409), .B0(str_input[206]), .B1(n390), .Y(n606) );
  AOI22X4 U324 ( .A0(str_input[166]), .A1(n147), .B0(str_input[230]), .B1(n178), .Y(n359) );
  AO2B2X4 U325 ( .B0(n203), .B1(n634), .A0(n202), .A1N(n351), .Y(n637) );
  AOI2BB2X4 U326 ( .B0(n254), .B1(n457), .A0N(n431), .A1N(n436), .Y(n668) );
  AOI22X4 U327 ( .A0(str_input[164]), .A1(n146), .B0(str_input[228]), .B1(n177), .Y(n312) );
  AOI22X4 U328 ( .A0(str_input[134]), .A1(n408), .B0(str_input[198]), .B1(n3), 
        .Y(n363) );
  AO22X4 U329 ( .A0(n202), .A1(n517), .B0(n203), .B1(n516), .Y(n518) );
  AO22X4 U330 ( .A0(n202), .A1(n500), .B0(n203), .B1(n499), .Y(n501) );
  NAND4X8 U331 ( .A(n358), .B(n15), .C(n498), .D(n374), .Y(n499) );
  AO22X4 U332 ( .A0(n202), .A1(n552), .B0(n551), .B1(n203), .Y(n553) );
  CLKINVX1 U333 ( .A(pat_last_idx[1]), .Y(n449) );
  AO22X4 U334 ( .A0(n202), .A1(n535), .B0(n203), .B1(n534), .Y(n536) );
  AO22X4 U335 ( .A0(n202), .A1(n592), .B0(n203), .B1(n411), .Y(n593) );
  OR2X1 U336 ( .A(n82), .B(\sub_83/carry[3] ), .Y(\sub_83/carry[4] ) );
  XNOR2X2 U337 ( .A(n25), .B(\sub_83/carry[4] ), .Y(N393) );
  AND4X1 U338 ( .A(n446), .B(n704), .C(n482), .D(input_valid), .Y(N58) );
  XNOR2X2 U339 ( .A(str_pro_idx[0]), .B(n450), .Y(N389) );
  XNOR2X2 U340 ( .A(\sub_83/carry[3] ), .B(n82), .Y(N392) );
  AO22X1 U341 ( .A0(n371), .A1(n666), .B0(n255), .B1(n665), .Y(n437) );
  NOR2X2 U342 ( .A(n12), .B(n10), .Y(n206) );
  INVX2 U343 ( .A(n206), .Y(n205) );
  OR2X2 U344 ( .A(n456), .B(n457), .Y(n639) );
  INVX8 U345 ( .A(n639), .Y(n229) );
  AO22X1 U346 ( .A0(n371), .A1(n690), .B0(n255), .B1(n688), .Y(n427) );
  AOI2BB2X4 U347 ( .B0(N441), .B1(n254), .A0N(n428), .A1N(n436), .Y(n672) );
  CLKXOR2X2 U348 ( .A(\r342/carry[4] ), .B(n25), .Y(N441) );
  OR2X2 U349 ( .A(n456), .B(str_pro_idx[0]), .Y(n641) );
  INVX8 U350 ( .A(n641), .Y(n231) );
  NOR3X8 U351 ( .A(n175), .B(n660), .C(n661), .Y(n232) );
  OR2X8 U352 ( .A(n232), .B(n14), .Y(n673) );
  AND3X6 U353 ( .A(n656), .B(n655), .C(n654), .Y(n661) );
  NAND4X8 U354 ( .A(n360), .B(n356), .C(n550), .D(n364), .Y(n551) );
  NOR2X8 U355 ( .A(n460), .B(n459), .Y(n488) );
  CLKBUFX32 U356 ( .A(n629), .Y(n408) );
  NOR2X2 U357 ( .A(n371), .B(n661), .Y(n689) );
  OR4X6 U358 ( .A(n406), .B(n400), .C(n385), .D(n399), .Y(n552) );
  AO22X2 U359 ( .A0(str_input[2]), .A1(n384), .B0(str_input[66]), .B1(n123), 
        .Y(n401) );
  AOI22X4 U360 ( .A0(str_input[41]), .A1(n376), .B0(str_input[105]), .B1(n159), 
        .Y(n362) );
  AO22X1 U361 ( .A0(str_input[188]), .A1(n147), .B0(str_input[252]), .B1(n177), 
        .Y(n313) );
  AO22X2 U362 ( .A0(str_input[33]), .A1(n378), .B0(str_input[97]), .B1(n172), 
        .Y(n393) );
  CLKINVX16 U363 ( .A(n599), .Y(n307) );
  AO22X2 U364 ( .A0(str_input[171]), .A1(n144), .B0(str_input[235]), .B1(n179), 
        .Y(n406) );
  INVX20 U365 ( .A(n701), .Y(n455) );
  CLKBUFX40 U366 ( .A(n683), .Y(n441) );
  NOR2BX8 U367 ( .AN(n681), .B(n464), .Y(n683) );
  NAND4X6 U368 ( .A(n529), .B(n528), .C(n527), .D(n526), .Y(n538) );
  AND2X8 U369 ( .A(n488), .B(n306), .Y(n258) );
  NAND2BX8 U370 ( .AN(n10), .B(n453), .Y(n424) );
  AOI2BB2X4 U371 ( .B0(str_input[143]), .B1(n407), .A0N(n367), .A1N(n369), .Y(
        n624) );
  CLKINVX1 U372 ( .A(str_input[207]), .Y(n367) );
  CLKINVX1 U373 ( .A(str_input[199]), .Y(n368) );
  CLKINVX1 U374 ( .A(str_input[4]), .Y(n380) );
  INVX12 U375 ( .A(n542), .Y(n434) );
  AOI22X2 U376 ( .A0(pat_input[58]), .A1(n441), .B0(pat_input[42]), .B1(n682), 
        .Y(n540) );
  NAND4X4 U377 ( .A(n261), .B(n280), .C(n620), .D(n619), .Y(n640) );
  AOI22X2 U378 ( .A0(str_input[183]), .A1(n148), .B0(str_input[247]), .B1(n177), .Y(n261) );
  AO22X1 U379 ( .A0(str_input[176]), .A1(n144), .B0(str_input[240]), .B1(n178), 
        .Y(n350) );
  AOI22X2 U380 ( .A0(str_input[63]), .A1(n377), .B0(str_input[127]), .B1(n171), 
        .Y(n284) );
  CLKINVX1 U381 ( .A(str_input[7]), .Y(n381) );
  CLKINVX1 U382 ( .A(str_input[71]), .Y(n375) );
  NAND3X4 U383 ( .A(n703), .B(n704), .C(current_st[1]), .Y(n657) );
  CLKINVX1 U384 ( .A(str_input[42]), .Y(n396) );
  CLKINVX1 U385 ( .A(str_input[170]), .Y(n405) );
  INVX5 U386 ( .A(n454), .Y(n436) );
  CLKINVX3 U387 ( .A(n175), .Y(n452) );
  XNOR2X4 U388 ( .A(n560), .B(n559), .Y(n561) );
  XNOR2X4 U389 ( .A(n618), .B(n617), .Y(n648) );
  NAND3X4 U390 ( .A(n657), .B(n694), .C(n695), .Y(n696) );
  OR2X8 U391 ( .A(n465), .B(n463), .Y(n292) );
  NAND4X6 U392 ( .A(n312), .B(n16), .C(n573), .D(n379), .Y(n574) );
  CLKINVX40 U393 ( .A(n458), .Y(n306) );
  INVX4 U394 ( .A(n657), .Y(n453) );
  AOI22X2 U395 ( .A0(str_input[186]), .A1(n148), .B0(str_input[250]), .B1(n179), .Y(n533) );
  AOI22X2 U396 ( .A0(str_input[178]), .A1(n146), .B0(str_input[242]), .B1(n177), .Y(n529) );
  AOI22X2 U397 ( .A0(str_input[185]), .A1(n146), .B0(str_input[249]), .B1(n179), .Y(n514) );
  AOI22X2 U398 ( .A0(str_input[184]), .A1(n147), .B0(str_input[248]), .B1(n178), .Y(n497) );
  AOI22X2 U399 ( .A0(str_input[180]), .A1(n148), .B0(str_input[244]), .B1(n178), .Y(n568) );
  AOI22X2 U400 ( .A0(str_input[58]), .A1(n377), .B0(str_input[122]), .B1(n172), 
        .Y(n532) );
  AOI22X2 U401 ( .A0(str_input[50]), .A1(n376), .B0(str_input[114]), .B1(n159), 
        .Y(n528) );
  AOI22X2 U402 ( .A0(str_input[154]), .A1(n407), .B0(str_input[218]), .B1(n391), .Y(n531) );
  AOI22X2 U403 ( .A0(str_input[159]), .A1(n407), .B0(str_input[223]), .B1(n391), .Y(n622) );
  AOI22X2 U404 ( .A0(str_input[146]), .A1(n408), .B0(str_input[210]), .B1(n4), 
        .Y(n527) );
  XOR2X8 U405 ( .A(n600), .B(n307), .Y(n649) );
  AOI22X2 U406 ( .A0(pat_input[59]), .A1(n441), .B0(pat_input[43]), .B1(n682), 
        .Y(n557) );
  AOI22X2 U407 ( .A0(pat_input[62]), .A1(n441), .B0(pat_input[46]), .B1(n682), 
        .Y(n615) );
  AOI22X2 U408 ( .A0(pat_input[60]), .A1(n441), .B0(pat_input[44]), .B1(n682), 
        .Y(n580) );
  AOI22X2 U409 ( .A0(pat_input[56]), .A1(n441), .B0(pat_input[40]), .B1(n682), 
        .Y(n505) );
  INVX2 U410 ( .A(start_idx[0]), .Y(n431) );
  INVX2 U411 ( .A(start_idx[3]), .Y(n430) );
  INVX2 U412 ( .A(start_idx[1]), .Y(n435) );
  CLKXOR2X2 U413 ( .A(n463), .B(pat_last_idx[1]), .Y(n486) );
  CLKXOR2X2 U414 ( .A(n465), .B(pat_last_idx[2]), .Y(n484) );
  OAI2BB2X2 U415 ( .B0(n7), .B1(n175), .A0N(n696), .A1N(done), .Y(n466) );
  CLKXOR2X2 U416 ( .A(n457), .B(process_2idx[0]), .Y(n656) );
  CLKXOR2X2 U417 ( .A(n458), .B(process_2idx[2]), .Y(n655) );
  INVX2 U418 ( .A(start_idx[4]), .Y(n428) );
  AOI22X4 U419 ( .A0(str_input[39]), .A1(n376), .B0(str_input[103]), .B1(n171), 
        .Y(n309) );
  AOI22X4 U420 ( .A0(str_input[38]), .A1(n377), .B0(str_input[102]), .B1(n173), 
        .Y(n310) );
  NAND4BX4 U421 ( .AN(n313), .B(n571), .C(n570), .D(n569), .Y(n577) );
  AOI22X2 U422 ( .A0(str_input[56]), .A1(n376), .B0(str_input[120]), .B1(n173), 
        .Y(n496) );
  AOI22X2 U423 ( .A0(str_input[152]), .A1(n407), .B0(str_input[216]), .B1(n390), .Y(n495) );
  NAND4BBX4 U424 ( .AN(n318), .BN(n331), .C(n545), .D(n544), .Y(n555) );
  AO22X2 U425 ( .A0(str_input[179]), .A1(n147), .B0(str_input[243]), .B1(n179), 
        .Y(n318) );
  AO22X2 U426 ( .A0(str_input[51]), .A1(n376), .B0(str_input[115]), .B1(n172), 
        .Y(n331) );
  NAND4BBX4 U427 ( .AN(n348), .BN(n349), .C(n510), .D(n509), .Y(n520) );
  NAND4BX4 U428 ( .AN(n350), .B(n493), .C(n492), .D(n491), .Y(n503) );
  NAND4X6 U429 ( .A(n568), .B(n567), .C(n566), .D(n565), .Y(n578) );
  AOI22X2 U430 ( .A0(str_input[52]), .A1(n378), .B0(str_input[116]), .B1(n174), 
        .Y(n567) );
  AOI22X2 U431 ( .A0(str_input[148]), .A1(n409), .B0(str_input[212]), .B1(n4), 
        .Y(n566) );
  OR4X4 U432 ( .A(n402), .B(n393), .C(n370), .D(n394), .Y(n516) );
  AO22X2 U433 ( .A0(str_input[168]), .A1(n144), .B0(str_input[232]), .B1(n177), 
        .Y(n389) );
  AO22X2 U434 ( .A0(str_input[43]), .A1(n378), .B0(str_input[107]), .B1(n174), 
        .Y(n400) );
  ADDFX1 U435 ( .A(str_pro_idx[1]), .B(n449), .CI(\sub_83/carry[1] ), .CO(
        \sub_83/carry[2] ), .S(N390) );
  OAI211X2 U436 ( .A0(n439), .A1(n676), .B0(n675), .C0(n674), .Y(n677) );
  AOI22X2 U437 ( .A0(ff_result[18]), .A1(n441), .B0(ff_result[12]), .B1(n682), 
        .Y(n675) );
  NOR3X4 U438 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n439), .Y(n658) );
  OR4X4 U439 ( .A(n404), .B(n395), .C(n383), .D(n397), .Y(n535) );
  AO22X2 U440 ( .A0(str_input[138]), .A1(n409), .B0(str_input[202]), .B1(n391), 
        .Y(n383) );
  OR4X4 U441 ( .A(n401), .B(n403), .C(n433), .D(n410), .Y(n534) );
  AO22X2 U442 ( .A0(str_input[130]), .A1(n409), .B0(str_input[194]), .B1(n4), 
        .Y(n433) );
  AOI22X2 U443 ( .A0(ff_result[6]), .A1(n461), .B0(ff_result[0]), .B1(n684), 
        .Y(n674) );
  OAI211X2 U444 ( .A0(n439), .A1(n687), .B0(n686), .C0(n685), .Y(n688) );
  AOI22X2 U445 ( .A0(ff_result[20]), .A1(n441), .B0(ff_result[14]), .B1(n682), 
        .Y(n686) );
  AOI22X2 U446 ( .A0(ff_result[8]), .A1(n461), .B0(ff_result[2]), .B1(n684), 
        .Y(n685) );
  OAI211X2 U447 ( .A0(n439), .A1(n664), .B0(n663), .C0(n662), .Y(n665) );
  AOI22X2 U448 ( .A0(ff_result[19]), .A1(n441), .B0(ff_result[13]), .B1(n682), 
        .Y(n663) );
  AOI22X2 U449 ( .A0(ff_result[7]), .A1(n461), .B0(ff_result[1]), .B1(n684), 
        .Y(n662) );
  OAI2B1X2 U450 ( .A1N(n695), .A0(n694), .B0(n693), .Y(n475) );
  CLKXOR2X2 U451 ( .A(str_pro_idx[1]), .B(process_2idx[1]), .Y(n652) );
  NOR2X6 U452 ( .A(current_st[0]), .B(current_st[1]), .Y(n482) );
  NAND3X4 U453 ( .A(current_st[2]), .B(n482), .C(input_valid), .Y(n694) );
  ADDHX2 U454 ( .A(str_pro_idx[1]), .B(str_pro_idx[0]), .CO(\r342/carry[2] ), 
        .S(N438) );
  AOI21X2 U455 ( .A0(n694), .A1(n483), .B0(n10), .Y(N60) );
  NAND2X2 U456 ( .A(done), .B(n453), .Y(n483) );
  CLKBUFX40 U457 ( .A(n673), .Y(n365) );
  ADDHX2 U458 ( .A(n47), .B(\r342/carry[2] ), .CO(\r342/carry[3] ), .S(N439)
         );
  INVX14 U459 ( .A(n47), .Y(n398) );
  AO22X2 U460 ( .A0(str_input[136]), .A1(n409), .B0(str_input[200]), .B1(n390), 
        .Y(n366) );
  AOI2BB2X4 U461 ( .B0(str_input[135]), .B1(n407), .A0N(n368), .A1N(n369), .Y(
        n633) );
  AOI2BB2X4 U462 ( .B0(str_input[68]), .B1(n121), .A0N(n380), .A1N(n382), .Y(
        n379) );
  OR4X8 U463 ( .A(n421), .B(n417), .C(n420), .D(n416), .Y(n592) );
  AO2B2X4 U464 ( .B0(str_input[106]), .B1(n173), .A0(n378), .A1N(n396), .Y(
        n395) );
  AO2B2X4 U465 ( .B0(str_input[234]), .B1(n179), .A0(n148), .A1N(n405), .Y(
        n404) );
  OR4X8 U466 ( .A(n414), .B(n413), .C(n415), .D(n412), .Y(n411) );
  XOR2X8 U467 ( .A(n508), .B(n418), .Y(n564) );
  XOR2X8 U468 ( .A(n583), .B(n419), .Y(n650) );
  AO22X4 U469 ( .A0(str_input[141]), .A1(n408), .B0(str_input[205]), .B1(n391), 
        .Y(n420) );
  CLKBUFX40 U470 ( .A(n705), .Y(match_idx[2]) );
  OR2X8 U471 ( .A(n425), .B(n426), .Y(n701) );
  OR4X8 U472 ( .A(n564), .B(n562), .C(n563), .D(n561), .Y(n425) );
  OR4X8 U473 ( .A(n650), .B(n647), .C(n648), .D(n649), .Y(n426) );
  ADDHX2 U474 ( .A(n82), .B(\r342/carry[3] ), .CO(\r342/carry[4] ), .S(N440)
         );
  NOR3X4 U475 ( .A(n653), .B(n652), .C(n651), .Y(n654) );
  XOR2X8 U476 ( .A(n525), .B(n432), .Y(n563) );
  XOR2X8 U477 ( .A(n543), .B(n434), .Y(n562) );
  OR2X1 U478 ( .A(n450), .B(str_pro_idx[0]), .Y(\sub_83/carry[1] ) );
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
  wire   done, N58, N59, N60, N389, N390, N391, N392, N393, N437, N438, N439,
         N440, N441, \sub_83/carry[4] , \sub_83/carry[3] , \sub_83/carry[2] ,
         \sub_83/carry[1] , \r342/carry[4] , \r342/carry[3] , \r342/carry[2] ,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n36, n42, n45, n62, n68, n74, n93, n94, n95, n96, n98, n117,
         n121, n146, n148, n150, n151, n152, n154, n155, n171, n172, n173,
         n174, n175, n177, n178, n179, n180, n196, n197, n200, n206, n210,
         n214, n215, n216, n217, n224, n228, n229, n232, n233, n234, n235,
         n236, n237, n238, n239, n254, n258, n262, n279, n285, n286, n287,
         n307, n308, n310, n311, n312, n313, n314, n318, n331, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704, n705, n706, n707, n708, n709, n710, n711;
  wire   [2:0] current_st;
  wire   [2:0] next_st;
  wire   [4:0] str_pro_idx;
  wire   [2:0] pat_pro_idx;

  DFFTRX4 \current_st_reg[1]  ( .D(next_st[1]), .RN(n443), .CK(clk), .Q(
        current_st[1]), .QN(n15) );
  DFFTRX4 \current_st_reg[2]  ( .D(next_st[2]), .RN(n443), .CK(clk), .Q(
        current_st[2]), .QN(n711) );
  AOI222X4 U19 ( .A0(ff_result[11]), .A1(n459), .B0(ff_result[17]), .B1(n434), 
        .C0(ff_result[5]), .C1(n688), .Y(n695) );
  AOI222X4 U26 ( .A0(ff_result[9]), .A1(n459), .B0(ff_result[15]), .B1(n434), 
        .C0(ff_result[3]), .C1(n688), .Y(n684) );
  AOI222X4 U44 ( .A0(ff_result[10]), .A1(n459), .B0(ff_result[16]), .B1(n434), 
        .C0(ff_result[4]), .C1(n688), .Y(n673) );
  OAI31X4 U47 ( .A0(n707), .A1(n670), .A2(n669), .B0(n668), .Y(n681) );
  AOI22X4 U49 ( .A0(n313), .A1(n666), .B0(n375), .B1(n708), .Y(n669) );
  OAI211X4 U66 ( .A0(n433), .A1(n656), .B0(n655), .C0(n654), .Y(n657) );
  AOI222X4 U67 ( .A0(pat_input[15]), .A1(n692), .B0(pat_input[31]), .B1(n458), 
        .C0(pat_input[7]), .C1(n666), .Y(n654) );
  AOI222X4 U69 ( .A0(pat_input[39]), .A1(n459), .B0(pat_input[55]), .B1(n434), 
        .C0(pat_input[23]), .C1(n688), .Y(n656) );
  AOI22X4 U83 ( .A0(str_input[31]), .A1(n398), .B0(str_input[95]), .B1(n151), 
        .Y(n627) );
  AOI22X4 U90 ( .A0(str_input[55]), .A1(n407), .B0(str_input[119]), .B1(n440), 
        .Y(n625) );
  OAI211X4 U93 ( .A0(n433), .A1(n620), .B0(n619), .C0(n618), .Y(n621) );
  AOI222X4 U94 ( .A0(pat_input[14]), .A1(n692), .B0(pat_input[30]), .B1(n458), 
        .C0(pat_input[6]), .C1(n666), .Y(n618) );
  AOI222X4 U96 ( .A0(pat_input[38]), .A1(n459), .B0(pat_input[54]), .B1(n434), 
        .C0(pat_input[22]), .C1(n688), .Y(n620) );
  AOI221X4 U97 ( .A0(n224), .A1(n617), .B0(n216), .B1(n616), .C0(n615), .Y(
        n622) );
  AOI22X4 U100 ( .A0(str_input[6]), .A1(n398), .B0(str_input[70]), .B1(n151), 
        .Y(n611) );
  AOI22X4 U105 ( .A0(str_input[14]), .A1(n400), .B0(str_input[78]), .B1(n148), 
        .Y(n610) );
  AOI22X4 U110 ( .A0(str_input[30]), .A1(n398), .B0(str_input[94]), .B1(n148), 
        .Y(n608) );
  AOI22X4 U115 ( .A0(str_input[22]), .A1(n401), .B0(str_input[86]), .B1(n148), 
        .Y(n604) );
  AOI22X4 U117 ( .A0(str_input[54]), .A1(n11), .B0(str_input[118]), .B1(n440), 
        .Y(n606) );
  OAI211X4 U120 ( .A0(n433), .A1(n601), .B0(n600), .C0(n599), .Y(n602) );
  AOI222X4 U121 ( .A0(pat_input[13]), .A1(n692), .B0(pat_input[29]), .B1(n458), 
        .C0(pat_input[5]), .C1(n666), .Y(n599) );
  AOI222X4 U123 ( .A0(pat_input[37]), .A1(n459), .B0(pat_input[53]), .B1(n434), 
        .C0(pat_input[21]), .C1(n688), .Y(n601) );
  AOI22X4 U137 ( .A0(str_input[29]), .A1(n398), .B0(str_input[93]), .B1(n148), 
        .Y(n591) );
  AOI22X4 U138 ( .A0(str_input[157]), .A1(n411), .B0(str_input[221]), .B1(n8), 
        .Y(n592) );
  AOI22X4 U144 ( .A0(str_input[53]), .A1(n407), .B0(str_input[117]), .B1(n441), 
        .Y(n589) );
  OAI211X4 U147 ( .A0(n433), .A1(n584), .B0(n583), .C0(n582), .Y(n585) );
  AOI222X4 U148 ( .A0(pat_input[12]), .A1(n692), .B0(pat_input[28]), .B1(n458), 
        .C0(pat_input[4]), .C1(n666), .Y(n582) );
  AOI222X4 U150 ( .A0(pat_input[36]), .A1(n459), .B0(pat_input[52]), .B1(n434), 
        .C0(pat_input[20]), .C1(n688), .Y(n584) );
  AOI22X4 U164 ( .A0(str_input[28]), .A1(n401), .B0(str_input[92]), .B1(n151), 
        .Y(n569) );
  AOI22X4 U165 ( .A0(str_input[156]), .A1(n412), .B0(str_input[220]), .B1(n8), 
        .Y(n570) );
  AOI22X4 U170 ( .A0(str_input[148]), .A1(n412), .B0(str_input[212]), .B1(n3), 
        .Y(n567) );
  OAI211X4 U175 ( .A0(n433), .A1(n563), .B0(n562), .C0(n561), .Y(n564) );
  AOI222X4 U176 ( .A0(pat_input[11]), .A1(n692), .B0(pat_input[27]), .B1(n458), 
        .C0(pat_input[3]), .C1(n666), .Y(n561) );
  AOI222X4 U178 ( .A0(pat_input[35]), .A1(n459), .B0(pat_input[51]), .B1(n434), 
        .C0(pat_input[19]), .C1(n688), .Y(n563) );
  AOI221X4 U179 ( .A0(n224), .A1(n560), .B0(n216), .B1(n24), .C0(n559), .Y(
        n565) );
  AOI22X4 U182 ( .A0(str_input[3]), .A1(n399), .B0(str_input[67]), .B1(n150), 
        .Y(n555) );
  OAI211X4 U202 ( .A0(n433), .A1(n548), .B0(n547), .C0(n546), .Y(n549) );
  AOI222X4 U203 ( .A0(pat_input[10]), .A1(n692), .B0(pat_input[26]), .B1(n458), 
        .C0(pat_input[2]), .C1(n666), .Y(n546) );
  AOI222X4 U205 ( .A0(pat_input[34]), .A1(n459), .B0(pat_input[50]), .B1(n434), 
        .C0(pat_input[18]), .C1(n688), .Y(n548) );
  AOI22X4 U209 ( .A0(str_input[2]), .A1(n401), .B0(str_input[66]), .B1(n150), 
        .Y(n538) );
  AOI22X4 U210 ( .A0(str_input[130]), .A1(n412), .B0(str_input[194]), .B1(n6), 
        .Y(n539) );
  AOI22X4 U214 ( .A0(str_input[10]), .A1(n399), .B0(str_input[74]), .B1(n151), 
        .Y(n535) );
  AOI22X4 U215 ( .A0(str_input[138]), .A1(n411), .B0(str_input[202]), .B1(n8), 
        .Y(n536) );
  AOI22X4 U219 ( .A0(str_input[26]), .A1(n401), .B0(str_input[90]), .B1(n151), 
        .Y(n532) );
  AOI22X4 U220 ( .A0(str_input[154]), .A1(n411), .B0(str_input[218]), .B1(n3), 
        .Y(n533) );
  AOI22X4 U225 ( .A0(str_input[146]), .A1(n412), .B0(str_input[210]), .B1(n8), 
        .Y(n529) );
  AOI22X4 U226 ( .A0(str_input[50]), .A1(n11), .B0(str_input[114]), .B1(n233), 
        .Y(n530) );
  OAI211X4 U229 ( .A0(n433), .A1(n525), .B0(n524), .C0(n523), .Y(n526) );
  AOI222X4 U230 ( .A0(pat_input[9]), .A1(n692), .B0(pat_input[25]), .B1(n458), 
        .C0(pat_input[1]), .C1(n666), .Y(n523) );
  AOI222X4 U232 ( .A0(pat_input[33]), .A1(n459), .B0(pat_input[49]), .B1(n434), 
        .C0(pat_input[17]), .C1(n688), .Y(n525) );
  AOI221X4 U233 ( .A0(n224), .A1(n522), .B0(n216), .B1(n521), .C0(n520), .Y(
        n527) );
  AOI22X4 U236 ( .A0(str_input[1]), .A1(n399), .B0(str_input[65]), .B1(n150), 
        .Y(n515) );
  AOI22X4 U237 ( .A0(n410), .A1(str_input[129]), .B0(str_input[193]), .B1(n5), 
        .Y(n516) );
  AOI22X4 U248 ( .A0(str_input[57]), .A1(n11), .B0(str_input[121]), .B1(n441), 
        .Y(n512) );
  AOI22X4 U253 ( .A0(str_input[49]), .A1(n407), .B0(str_input[113]), .B1(n441), 
        .Y(n508) );
  OAI211X4 U256 ( .A0(n433), .A1(n503), .B0(n502), .C0(n501), .Y(n504) );
  AOI222X4 U257 ( .A0(pat_input[8]), .A1(n692), .B0(pat_input[24]), .B1(n458), 
        .C0(pat_input[0]), .C1(n666), .Y(n501) );
  AOI222X4 U264 ( .A0(pat_input[32]), .A1(n459), .B0(pat_input[48]), .B1(n434), 
        .C0(pat_input[16]), .C1(n688), .Y(n503) );
  AOI221X4 U268 ( .A0(n224), .A1(n500), .B0(n216), .B1(n499), .C0(n498), .Y(
        n505) );
  AOI22X4 U271 ( .A0(str_input[0]), .A1(n398), .B0(str_input[64]), .B1(n148), 
        .Y(n494) );
  AOI22X4 U283 ( .A0(str_input[24]), .A1(n398), .B0(str_input[88]), .B1(n148), 
        .Y(n491) );
  AOI22X4 U284 ( .A0(str_input[152]), .A1(n410), .B0(str_input[216]), .B1(n7), 
        .Y(n492) );
  AOI22X4 U289 ( .A0(str_input[16]), .A1(n399), .B0(str_input[80]), .B1(n151), 
        .Y(n488) );
  AOI22X4 U292 ( .A0(str_input[144]), .A1(n410), .B0(str_input[208]), .B1(n6), 
        .Y(n489) );
  NOR2BX8 U294 ( .AN(n484), .B(n377), .Y(n639) );
  NOR2BX8 U298 ( .AN(n486), .B(n455), .Y(n637) );
  NOR2X8 U299 ( .A(n262), .B(n405), .Y(n486) );
  NOR2BX8 U301 ( .AN(n485), .B(n455), .Y(n635) );
  NOR2BX8 U303 ( .AN(n484), .B(n455), .Y(n636) );
  NOR2X8 U304 ( .A(n457), .B(n262), .Y(n484) );
  OAI31X4 U313 ( .A0(n665), .A1(n444), .A2(done), .B0(n173), .Y(N59) );
  DFFHQX8 \str_pro_idx_reg[3]  ( .D(n468), .CK(clk), .Q(str_pro_idx[3]) );
  DFFHQX8 \pat_pro_idx_reg[1]  ( .D(n464), .CK(clk), .Q(pat_pro_idx[1]) );
  DFFHQX8 \pat_pro_idx_reg[2]  ( .D(n471), .CK(clk), .Q(pat_pro_idx[2]) );
  DFFHQX8 match_reg ( .D(n473), .CK(clk), .Q(match) );
  DFFHQX8 \match_idx_reg[2]  ( .D(n476), .CK(clk), .Q(match_idx[2]) );
  DFFHQX8 \match_idx_reg[1]  ( .D(n477), .CK(clk), .Q(match_idx[1]) );
  DFFHQX8 \match_idx_reg[0]  ( .D(n478), .CK(clk), .Q(match_idx[0]) );
  DFFQX4 done_reg ( .D(n463), .CK(clk), .Q(done) );
  DFFQX2 output_valid_reg ( .D(n472), .CK(clk), .Q(output_valid) );
  DFFHQX8 \str_pro_idx_reg[2]  ( .D(n467), .CK(clk), .Q(str_pro_idx[2]) );
  DFFHQX8 \str_pro_idx_reg[4]  ( .D(n469), .CK(clk), .Q(str_pro_idx[4]) );
  DFFTRX2 \current_st_reg[0]  ( .D(next_st[0]), .RN(n443), .CK(clk), .Q(
        current_st[0]), .QN(n710) );
  TLATX1 \next_st_reg[2]  ( .G(n18), .D(N60), .Q(next_st[2]) );
  TLATX1 \next_st_reg[1]  ( .G(n18), .D(N59), .Q(next_st[1]) );
  TLATX1 \next_st_reg[0]  ( .G(n18), .D(N58), .Q(next_st[0]) );
  DFFYQX2 \str_pro_idx_reg[1]  ( .D(n465), .CK(clk), .Q(n93) );
  DFFYQX2 \str_pro_idx_reg[0]  ( .D(n466), .CK(clk), .Q(n45) );
  DFFX4 \match_idx_reg[3]  ( .D(n475), .CK(clk), .Q(match_idx[3]), .QN(n96) );
  DFFHQX4 \match_idx_reg[4]  ( .D(n474), .CK(clk), .Q(match_idx[4]) );
  DFFHQX4 \pat_pro_idx_reg[0]  ( .D(n470), .CK(clk), .Q(pat_pro_idx[0]) );
  BUFX6 U3 ( .A(reset), .Y(n445) );
  BUFX14 U4 ( .A(n445), .Y(n444) );
  OR2X6 U5 ( .A(n444), .B(n146), .Y(n420) );
  INVX12 U6 ( .A(n707), .Y(n450) );
  NAND2X4 U7 ( .A(n450), .B(n206), .Y(n42) );
  BUFX6 U8 ( .A(n709), .Y(n371) );
  AO2B2BX4 U9 ( .A0(n433), .A1N(n206), .B0(n404), .B1N(n42), .Y(n470) );
  CLKBUFX40 U10 ( .A(n635), .Y(n437) );
  CLKBUFX40 U11 ( .A(n635), .Y(n438) );
  AND4X8 U12 ( .A(n423), .B(n424), .C(n425), .D(n426), .Y(n307) );
  CLKXOR2X12 U13 ( .A(n622), .B(n621), .Y(n425) );
  CLKXOR2X12 U14 ( .A(n550), .B(n549), .Y(n429) );
  CLKXOR2X12 U15 ( .A(n586), .B(n585), .Y(n423) );
  NOR3X8 U16 ( .A(n197), .B(n200), .C(n579), .Y(n586) );
  CLKINVX40 U17 ( .A(n638), .Y(n1) );
  CLKINVX20 U18 ( .A(n638), .Y(n2) );
  CLKINVX40 U20 ( .A(n1), .Y(n3) );
  INVX16 U21 ( .A(n1), .Y(n4) );
  INVX8 U22 ( .A(n1), .Y(n5) );
  INVX20 U23 ( .A(n2), .Y(n6) );
  INVX20 U24 ( .A(n2), .Y(n7) );
  INVX20 U25 ( .A(n2), .Y(n8) );
  INVX4 U27 ( .A(n637), .Y(n394) );
  CLKBUFX40 U28 ( .A(n637), .Y(n407) );
  BUFX16 U29 ( .A(n637), .Y(n406) );
  AOI22X4 U30 ( .A0(pat_input[56]), .A1(n435), .B0(pat_input[40]), .B1(n436), 
        .Y(n502) );
  CLKXOR2X12 U31 ( .A(n603), .B(n602), .Y(n424) );
  CLKBUFX40 U32 ( .A(n287), .Y(n148) );
  AOI22X4 U33 ( .A0(str_input[147]), .A1(n411), .B0(str_input[211]), .B1(n7), 
        .Y(n552) );
  NAND4X6 U34 ( .A(n513), .B(n512), .C(n511), .D(n510), .Y(n521) );
  AOI22X4 U35 ( .A0(str_input[164]), .A1(n408), .B0(str_input[228]), .B1(n438), 
        .Y(n578) );
  CLKBUFX40 U36 ( .A(n636), .Y(n408) );
  BUFX20 U37 ( .A(n389), .Y(n385) );
  BUFX20 U38 ( .A(n640), .Y(n9) );
  AOI22X4 U39 ( .A0(str_input[15]), .A1(n9), .B0(str_input[79]), .B1(n150), 
        .Y(n631) );
  AOI22X4 U40 ( .A0(pat_input[63]), .A1(n435), .B0(pat_input[47]), .B1(n436), 
        .Y(n655) );
  AOI22X4 U41 ( .A0(str_input[44]), .A1(n11), .B0(str_input[108]), .B1(n441), 
        .Y(n574) );
  CLKBUFX40 U42 ( .A(n639), .Y(n410) );
  AOI22X4 U43 ( .A0(str_input[61]), .A1(n11), .B0(str_input[125]), .B1(n233), 
        .Y(n593) );
  CLKBUFX40 U45 ( .A(n439), .Y(n233) );
  AOI22X4 U46 ( .A0(str_input[7]), .A1(n9), .B0(str_input[71]), .B1(n150), .Y(
        n641) );
  CLKBUFX40 U48 ( .A(n287), .Y(n150) );
  AOI22X4 U50 ( .A0(pat_input[58]), .A1(n435), .B0(pat_input[42]), .B1(n436), 
        .Y(n547) );
  AOI22X4 U51 ( .A0(str_input[36]), .A1(n11), .B0(str_input[100]), .B1(n441), 
        .Y(n577) );
  NOR2X8 U52 ( .A(n686), .B(n431), .Y(n690) );
  AND2X8 U53 ( .A(str_input[82]), .B(n148), .Y(n238) );
  INVX4 U54 ( .A(n431), .Y(n432) );
  INVX14 U55 ( .A(n431), .Y(n433) );
  INVX8 U56 ( .A(n432), .Y(n461) );
  INVX20 U57 ( .A(n687), .Y(n458) );
  AOI2BB2X4 U58 ( .B0(str_input[102]), .B1(n440), .A0N(n391), .A1N(n394), .Y(
        n612) );
  CLKBUFX40 U59 ( .A(n690), .Y(n436) );
  AOI22X4 U60 ( .A0(str_input[20]), .A1(n401), .B0(str_input[84]), .B1(n148), 
        .Y(n566) );
  CLKINVX40 U61 ( .A(n121), .Y(n401) );
  BUFX18 U62 ( .A(n406), .Y(n10) );
  INVX10 U63 ( .A(n648), .Y(n215) );
  CLKINVX12 U64 ( .A(n155), .Y(n365) );
  AO22X2 U65 ( .A0(str_input[190]), .A1(n408), .B0(str_input[254]), .B1(n438), 
        .Y(n351) );
  INVX10 U68 ( .A(n651), .Y(n216) );
  ADDFX2 U70 ( .A(n377), .B(n446), .CI(\sub_83/carry[2] ), .CO(
        \sub_83/carry[3] ), .S(N391) );
  NOR2X6 U71 ( .A(n409), .B(n405), .Y(n487) );
  AND2X4 U72 ( .A(str_input[41]), .B(n407), .Y(n279) );
  BUFX10 U73 ( .A(n9), .Y(n386) );
  INVX8 U74 ( .A(n397), .Y(n400) );
  NOR2X6 U75 ( .A(n237), .B(n238), .Y(n528) );
  AND2X2 U76 ( .A(str_input[161]), .B(n408), .Y(n235) );
  AND2X2 U77 ( .A(str_input[225]), .B(n437), .Y(n236) );
  INVX2 U78 ( .A(str_input[33]), .Y(n393) );
  INVX4 U79 ( .A(n152), .Y(n511) );
  INVX2 U80 ( .A(str_input[153]), .Y(n154) );
  AO2B2X2 U81 ( .B0(str_input[241]), .B1(n437), .A0(n408), .A1N(n177), .Y(n175) );
  INVX2 U82 ( .A(str_input[177]), .Y(n177) );
  AOI22X2 U84 ( .A0(str_input[173]), .A1(n385), .B0(str_input[237]), .B1(n438), 
        .Y(n594) );
  AO22X2 U85 ( .A0(str_input[37]), .A1(n11), .B0(str_input[101]), .B1(n441), 
        .Y(n380) );
  AO2B2X2 U86 ( .B0(str_input[230]), .B1(n437), .A0(n389), .A1N(n171), .Y(n155) );
  INVX2 U87 ( .A(str_input[166]), .Y(n171) );
  INVX2 U88 ( .A(str_input[38]), .Y(n391) );
  BUFX12 U89 ( .A(n25), .Y(n440) );
  AOI22X2 U91 ( .A0(str_input[140]), .A1(n410), .B0(str_input[204]), .B1(n6), 
        .Y(n573) );
  AOI22X2 U92 ( .A0(str_input[172]), .A1(n408), .B0(str_input[236]), .B1(n438), 
        .Y(n575) );
  AOI22X2 U95 ( .A0(str_input[12]), .A1(n9), .B0(str_input[76]), .B1(n148), 
        .Y(n572) );
  AOI22X2 U98 ( .A0(str_input[4]), .A1(n386), .B0(str_input[68]), .B1(n150), 
        .Y(n576) );
  NAND4X6 U99 ( .A(n556), .B(n28), .C(n369), .D(n555), .Y(n557) );
  INVX4 U101 ( .A(n419), .Y(n556) );
  OR4X4 U102 ( .A(n23), .B(n402), .C(n413), .D(n390), .Y(n558) );
  AO22X2 U103 ( .A0(str_input[11]), .A1(n398), .B0(str_input[75]), .B1(n148), 
        .Y(n390) );
  AO22X2 U104 ( .A0(str_input[43]), .A1(n11), .B0(str_input[107]), .B1(n441), 
        .Y(n402) );
  AO22X2 U106 ( .A0(str_input[59]), .A1(n407), .B0(str_input[123]), .B1(n442), 
        .Y(n33) );
  AO22X2 U107 ( .A0(str_input[155]), .A1(n410), .B0(str_input[219]), .B1(n5), 
        .Y(n34) );
  AO22X2 U108 ( .A0(str_input[27]), .A1(n400), .B0(str_input[91]), .B1(n151), 
        .Y(n36) );
  NAND4X6 U109 ( .A(n495), .B(n362), .C(n26), .D(n494), .Y(n496) );
  NAND4X6 U111 ( .A(n314), .B(n367), .C(n331), .D(n366), .Y(n497) );
  AO22X2 U112 ( .A0(str_input[186]), .A1(n389), .B0(str_input[250]), .B1(n437), 
        .Y(n357) );
  INVX8 U113 ( .A(str_pro_idx[2]), .Y(n414) );
  CLKAND2X6 U114 ( .A(n216), .B(n580), .Y(n200) );
  INVX12 U116 ( .A(n310), .Y(n666) );
  INVX18 U118 ( .A(n405), .Y(n457) );
  NAND2X6 U119 ( .A(n688), .B(n432), .Y(n687) );
  NAND2X5 U122 ( .A(pat_pro_idx[2]), .B(n460), .Y(n686) );
  INVX5 U124 ( .A(pat_pro_idx[2]), .Y(n462) );
  INVX10 U125 ( .A(pat_pro_idx[1]), .Y(n460) );
  INVX2 U126 ( .A(start_idx[0]), .Y(n174) );
  INVX2 U127 ( .A(start_idx[1]), .Y(n172) );
  AO22X2 U128 ( .A0(match_idx[4]), .A1(n449), .B0(N393), .B1(n371), .Y(n474)
         );
  OAI21X4 U129 ( .A0(n409), .A1(n117), .B0(n679), .Y(n468) );
  AND2X2 U130 ( .A(start_idx[3]), .B(n452), .Y(n180) );
  NAND2X8 U131 ( .A(n16), .B(n443), .Y(n667) );
  NOR2X8 U132 ( .A(n444), .B(n452), .Y(n668) );
  CLKINVX3 U133 ( .A(n372), .Y(n254) );
  AND2X8 U134 ( .A(n486), .B(n414), .Y(n640) );
  CLKBUFX40 U135 ( .A(n406), .Y(n11) );
  BUFX20 U136 ( .A(n254), .Y(n12) );
  BUFX14 U139 ( .A(n286), .Y(n13) );
  BUFX18 U140 ( .A(n389), .Y(n388) );
  AOI22X4 U141 ( .A0(str_input[9]), .A1(n399), .B0(str_input[73]), .B1(n151), 
        .Y(n14) );
  BUFX20 U142 ( .A(n25), .Y(n439) );
  CLKAND2X6 U143 ( .A(n15), .B(n30), .Y(n16) );
  AOI21BX2 U145 ( .A0(current_st[0]), .A1(current_st[1]), .B0N(n711), .Y(n17)
         );
  OR2X6 U146 ( .A(n479), .B(n31), .Y(n18) );
  NOR2X4 U149 ( .A(n16), .B(n444), .Y(n19) );
  AOI22X2 U151 ( .A0(str_input[141]), .A1(n411), .B0(str_input[205]), .B1(n5), 
        .Y(n20) );
  AO22X2 U152 ( .A0(str_input[171]), .A1(n387), .B0(str_input[235]), .B1(n438), 
        .Y(n23) );
  OR4X2 U153 ( .A(n32), .B(n33), .C(n34), .D(n36), .Y(n24) );
  AND2X8 U154 ( .A(n487), .B(n74), .Y(n25) );
  AOI22X4 U155 ( .A0(str_input[128]), .A1(n412), .B0(str_input[192]), .B1(n3), 
        .Y(n26) );
  AOI22X4 U156 ( .A0(str_input[137]), .A1(n411), .B0(str_input[201]), .B1(n7), 
        .Y(n27) );
  AOI22X4 U157 ( .A0(str_input[163]), .A1(n408), .B0(str_input[227]), .B1(n438), .Y(n28) );
  AOI22X4 U158 ( .A0(str_input[46]), .A1(n10), .B0(str_input[110]), .B1(n440), 
        .Y(n29) );
  CLKXOR2X2 U159 ( .A(n262), .B(process_2idx[3]), .Y(n661) );
  AND2X2 U160 ( .A(n217), .B(n711), .Y(n30) );
  CLKINVX32 U161 ( .A(str_pro_idx[2]), .Y(n455) );
  INVX4 U162 ( .A(n455), .Y(n74) );
  INVX4 U163 ( .A(n45), .Y(n454) );
  INVX20 U166 ( .A(n178), .Y(n443) );
  OR2X2 U167 ( .A(n17), .B(n178), .Y(n31) );
  NAND4X6 U168 ( .A(n626), .B(n625), .C(n624), .D(n623), .Y(n652) );
  XNOR2X2 U169 ( .A(\sub_83/carry[3] ), .B(n262), .Y(N392) );
  NOR3X4 U171 ( .A(n707), .B(n708), .C(n313), .Y(n709) );
  ADDHX2 U172 ( .A(n262), .B(\r342/carry[3] ), .CO(\r342/carry[4] ), .S(N440)
         );
  INVX2 U173 ( .A(n96), .Y(n98) );
  OAI2B1X2 U174 ( .A1N(n19), .A0(n703), .B0(n702), .Y(n472) );
  OAI2BB2X2 U177 ( .B0(n705), .B1(n707), .A0N(n704), .A1N(done), .Y(n463) );
  XNOR2X2 U180 ( .A(n405), .B(\sub_83/carry[4] ), .Y(N393) );
  OR2X2 U181 ( .A(n262), .B(\sub_83/carry[3] ), .Y(\sub_83/carry[4] ) );
  INVX2 U183 ( .A(pat_last_idx[2]), .Y(n446) );
  AOI22X2 U184 ( .A0(n384), .A1(n698), .B0(n210), .B1(n696), .Y(n700) );
  OAI211X2 U185 ( .A0(n433), .A1(n462), .B0(n687), .C0(n686), .Y(n698) );
  ADDHX2 U186 ( .A(n377), .B(\r342/carry[2] ), .CO(\r342/carry[3] ), .S(N439)
         );
  INVX2 U187 ( .A(n45), .Y(n62) );
  INVX2 U188 ( .A(pat_last_idx[0]), .Y(n448) );
  INVX4 U189 ( .A(n452), .Y(n173) );
  AO22X4 U190 ( .A0(str_input[187]), .A1(n388), .B0(str_input[251]), .B1(n438), 
        .Y(n32) );
  BUFX10 U191 ( .A(n445), .Y(n178) );
  CLKAND2X4 U192 ( .A(n216), .B(n544), .Y(n418) );
  BUFX16 U193 ( .A(n287), .Y(n151) );
  INVX16 U194 ( .A(pat_pro_idx[0]), .Y(n431) );
  XOR2X8 U195 ( .A(n308), .B(n657), .Y(n426) );
  INVX20 U196 ( .A(n12), .Y(n117) );
  AO22X4 U197 ( .A0(start_idx[4]), .A1(n452), .B0(N441), .B1(n680), .Y(n179)
         );
  INVX16 U198 ( .A(n62), .Y(n68) );
  NAND2X4 U199 ( .A(n74), .B(n12), .Y(n258) );
  CLKXOR2X12 U200 ( .A(n527), .B(n526), .Y(n428) );
  CLKINVX4 U201 ( .A(n375), .Y(n383) );
  INVX2 U204 ( .A(n93), .Y(n94) );
  INVX10 U206 ( .A(n94), .Y(n95) );
  AND2X8 U207 ( .A(N440), .B(n13), .Y(n196) );
  OAI21X8 U208 ( .A0(n453), .A1(n117), .B0(n676), .Y(n465) );
  AO22X2 U211 ( .A0(match_idx[2]), .A1(n449), .B0(N391), .B1(n371), .Y(n476)
         );
  BUFX20 U212 ( .A(n681), .Y(n372) );
  CLKINVX40 U213 ( .A(n386), .Y(n121) );
  BUFX20 U216 ( .A(n408), .Y(n387) );
  AOI22X4 U217 ( .A0(str_input[17]), .A1(n401), .B0(str_input[81]), .B1(n151), 
        .Y(n506) );
  CLKINVX24 U218 ( .A(n376), .Y(n514) );
  NOR2X8 U221 ( .A(n235), .B(n236), .Y(n518) );
  NOR2BX8 U222 ( .AN(n405), .B(n456), .Y(n234) );
  CLKINVX24 U223 ( .A(str_pro_idx[3]), .Y(n456) );
  NAND4X8 U224 ( .A(n364), .B(n370), .C(n20), .D(n594), .Y(n595) );
  AO22X2 U227 ( .A0(str_input[162]), .A1(n408), .B0(str_input[226]), .B1(n437), 
        .Y(n356) );
  CLKINVX40 U228 ( .A(n451), .Y(n146) );
  AO22X2 U231 ( .A0(n98), .A1(n449), .B0(N392), .B1(n371), .Y(n475) );
  AOI22X4 U234 ( .A0(str_input[191]), .A1(n408), .B0(str_input[255]), .B1(n437), .Y(n630) );
  AND2X8 U235 ( .A(n487), .B(n239), .Y(n287) );
  AO2B2X2 U238 ( .B0(str_input[217]), .B1(n6), .A0(n411), .A1N(n154), .Y(n152)
         );
  CLKAND2X12 U239 ( .A(n224), .B(n581), .Y(n197) );
  NAND2X8 U240 ( .A(n514), .B(n363), .Y(n311) );
  AOI22X4 U241 ( .A0(str_input[52]), .A1(n407), .B0(str_input[116]), .B1(n441), 
        .Y(n568) );
  AND2X8 U242 ( .A(str_input[105]), .B(n441), .Y(n285) );
  AND2X2 U243 ( .A(n224), .B(n652), .Y(n415) );
  AO22X2 U244 ( .A0(str_input[176]), .A1(n408), .B0(str_input[240]), .B1(n437), 
        .Y(n354) );
  AOI22X4 U245 ( .A0(str_input[51]), .A1(n11), .B0(str_input[115]), .B1(n233), 
        .Y(n553) );
  CLKINVX40 U246 ( .A(n397), .Y(n399) );
  AO22X2 U247 ( .A0(str_input[184]), .A1(n408), .B0(str_input[248]), .B1(n437), 
        .Y(n350) );
  NAND4X8 U249 ( .A(n554), .B(n553), .C(n552), .D(n551), .Y(n560) );
  AOI22X4 U250 ( .A0(str_input[48]), .A1(n407), .B0(str_input[112]), .B1(n442), 
        .Y(n490) );
  CLKAND2X6 U251 ( .A(n372), .B(n450), .Y(n680) );
  CLKBUFX40 U252 ( .A(n689), .Y(n434) );
  AOI22X4 U254 ( .A0(str_input[40]), .A1(n407), .B0(str_input[104]), .B1(n442), 
        .Y(n367) );
  NAND3X8 U255 ( .A(n14), .B(n27), .C(n312), .Y(n519) );
  CLKINVX24 U258 ( .A(n311), .Y(n312) );
  AOI22X4 U259 ( .A0(str_input[178]), .A1(n389), .B0(str_input[242]), .B1(n437), .Y(n531) );
  AOI22X4 U260 ( .A0(str_input[179]), .A1(n388), .B0(str_input[243]), .B1(n438), .Y(n554) );
  AO22X2 U261 ( .A0(str_input[170]), .A1(n389), .B0(str_input[234]), .B1(n437), 
        .Y(n355) );
  AOI22X4 U262 ( .A0(str_input[145]), .A1(n412), .B0(str_input[209]), .B1(n3), 
        .Y(n507) );
  AOI22X4 U263 ( .A0(str_input[56]), .A1(n407), .B0(str_input[120]), .B1(n441), 
        .Y(n493) );
  NOR3X8 U265 ( .A(n228), .B(n229), .C(n596), .Y(n603) );
  AOI22X4 U266 ( .A0(str_input[181]), .A1(n388), .B0(str_input[245]), .B1(n438), .Y(n590) );
  AOI22X4 U267 ( .A0(str_input[25]), .A1(n398), .B0(str_input[89]), .B1(n150), 
        .Y(n510) );
  AO22X2 U269 ( .A0(str_input[188]), .A1(n385), .B0(str_input[252]), .B1(n438), 
        .Y(n348) );
  AOI22X4 U270 ( .A0(str_input[60]), .A1(n11), .B0(str_input[124]), .B1(n233), 
        .Y(n571) );
  NOR2BX8 U272 ( .AN(n405), .B(n409), .Y(n485) );
  AOI22X4 U273 ( .A0(str_input[182]), .A1(n388), .B0(str_input[246]), .B1(n437), .Y(n607) );
  XOR2X8 U274 ( .A(n565), .B(n564), .Y(n430) );
  INVX6 U275 ( .A(n383), .Y(n384) );
  AOI2BB2X4 U276 ( .B0(N438), .B1(n13), .A0N(n172), .A1N(n173), .Y(n676) );
  OAI21X8 U277 ( .A0(n454), .A1(n117), .B0(n677), .Y(n466) );
  CLKNAND2X12 U278 ( .A(n258), .B(n678), .Y(n467) );
  AOI2BB2X4 U279 ( .B0(N437), .B1(n13), .A0N(n174), .A1N(n667), .Y(n677) );
  INVX20 U280 ( .A(n667), .Y(n452) );
  AO22X1 U281 ( .A0(n210), .A1(n685), .B0(n384), .B1(n431), .Y(n404) );
  XOR2X2 U282 ( .A(n461), .B(pat_last_idx[0]), .Y(n482) );
  NOR2BX4 U285 ( .AN(n434), .B(n461), .Y(n691) );
  OR3X4 U286 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n431), .Y(n359) );
  AND2X2 U287 ( .A(n224), .B(n598), .Y(n228) );
  AND4X8 U288 ( .A(n427), .B(n428), .C(n429), .D(n430), .Y(n658) );
  NAND4X6 U290 ( .A(n607), .B(n606), .C(n605), .D(n604), .Y(n617) );
  AOI22X4 U291 ( .A0(str_input[158]), .A1(n412), .B0(str_input[222]), .B1(n5), 
        .Y(n609) );
  AO22X4 U293 ( .A0(n215), .A1(n542), .B0(n214), .B1(n541), .Y(n543) );
  CLKBUFX40 U295 ( .A(n639), .Y(n411) );
  NAND3X8 U296 ( .A(n665), .B(n703), .C(n19), .Y(n704) );
  AOI22X4 U297 ( .A0(str_input[160]), .A1(n387), .B0(str_input[224]), .B1(n437), .Y(n495) );
  AND4X8 U300 ( .A(n423), .B(n424), .C(n425), .D(n426), .Y(n403) );
  NOR2X8 U302 ( .A(n462), .B(n460), .Y(n689) );
  OR2X6 U305 ( .A(n460), .B(pat_pro_idx[2]), .Y(n358) );
  AOI22X4 U306 ( .A0(pat_input[59]), .A1(n435), .B0(pat_input[43]), .B1(n436), 
        .Y(n562) );
  CLKINVX40 U307 ( .A(n175), .Y(n509) );
  AO22X2 U308 ( .A0(str_input[62]), .A1(n407), .B0(str_input[126]), .B1(n440), 
        .Y(n352) );
  OAI2BB2X4 U309 ( .B0(n373), .B1(n173), .A0N(N439), .A1N(n680), .Y(n374) );
  AO22X4 U310 ( .A0(n215), .A1(n558), .B0(n214), .B1(n557), .Y(n559) );
  NAND2X8 U311 ( .A(n450), .B(n206), .Y(n699) );
  NAND4X8 U312 ( .A(n509), .B(n508), .C(n507), .D(n506), .Y(n522) );
  OAI21BX4 U314 ( .A0(n457), .A1(n117), .B0N(n179), .Y(n469) );
  NOR2X8 U315 ( .A(n180), .B(n196), .Y(n679) );
  INVX12 U316 ( .A(n653), .Y(n224) );
  AO2B2BX4 U317 ( .A0(n215), .A1N(n395), .B0(n214), .B1N(n396), .Y(n579) );
  AOI22X4 U318 ( .A0(str_input[168]), .A1(n389), .B0(str_input[232]), .B1(n437), .Y(n314) );
  AOI22X4 U319 ( .A0(str_input[185]), .A1(n389), .B0(str_input[249]), .B1(n437), .Y(n513) );
  AO22X4 U320 ( .A0(n519), .A1(n215), .B0(n214), .B1(n360), .Y(n520) );
  AO22X4 U321 ( .A0(str_input[169]), .A1(n408), .B0(str_input[233]), .B1(n437), 
        .Y(n376) );
  AOI22X4 U322 ( .A0(pat_input[62]), .A1(n435), .B0(pat_input[46]), .B1(n436), 
        .Y(n619) );
  AOI22X4 U323 ( .A0(pat_input[61]), .A1(n435), .B0(pat_input[45]), .B1(n436), 
        .Y(n600) );
  AOI22X4 U324 ( .A0(pat_input[60]), .A1(n435), .B0(pat_input[44]), .B1(n436), 
        .Y(n583) );
  NOR2BX8 U325 ( .AN(n234), .B(n377), .Y(n638) );
  CLKBUFX40 U326 ( .A(n639), .Y(n412) );
  NOR3X8 U327 ( .A(n543), .B(n418), .C(n417), .Y(n550) );
  AND2X2 U328 ( .A(n224), .B(n545), .Y(n417) );
  XOR2X8 U329 ( .A(n505), .B(n504), .Y(n427) );
  AO22X2 U330 ( .A0(n215), .A1(n647), .B0(n214), .B1(n645), .Y(n649) );
  NOR3X8 U331 ( .A(n415), .B(n416), .C(n649), .Y(n308) );
  CLKBUFX40 U332 ( .A(n701), .Y(n206) );
  OR2X8 U333 ( .A(n232), .B(n372), .Y(n701) );
  NAND4X8 U334 ( .A(n590), .B(n589), .C(n588), .D(n587), .Y(n598) );
  AOI22X4 U335 ( .A0(str_input[21]), .A1(n399), .B0(str_input[85]), .B1(n150), 
        .Y(n587) );
  AOI22X4 U336 ( .A0(str_input[58]), .A1(n11), .B0(str_input[122]), .B1(n233), 
        .Y(n534) );
  AOI22X4 U337 ( .A0(str_input[149]), .A1(n410), .B0(str_input[213]), .B1(n6), 
        .Y(n588) );
  AOI22X4 U338 ( .A0(str_input[183]), .A1(n408), .B0(str_input[247]), .B1(n438), .Y(n626) );
  AOI22X4 U339 ( .A0(str_input[132]), .A1(n412), .B0(str_input[196]), .B1(n4), 
        .Y(n361) );
  AND4X8 U340 ( .A(n575), .B(n574), .C(n573), .D(n572), .Y(n395) );
  AOI22X4 U341 ( .A0(str_input[151]), .A1(n412), .B0(str_input[215]), .B1(n5), 
        .Y(n624) );
  CLKINVX40 U342 ( .A(n9), .Y(n397) );
  AOI22X4 U343 ( .A0(str_input[175]), .A1(n389), .B0(str_input[239]), .B1(n437), .Y(n634) );
  AO22X4 U344 ( .A0(n215), .A1(n497), .B0(n214), .B1(n496), .Y(n498) );
  AND4X8 U345 ( .A(n578), .B(n577), .C(n361), .D(n576), .Y(n396) );
  AOI22X4 U346 ( .A0(str_input[167]), .A1(n388), .B0(str_input[231]), .B1(n438), .Y(n644) );
  AOI22X4 U347 ( .A0(str_input[136]), .A1(n412), .B0(str_input[200]), .B1(n4), 
        .Y(n331) );
  AOI22X4 U348 ( .A0(str_input[47]), .A1(n11), .B0(str_input[111]), .B1(n440), 
        .Y(n633) );
  AOI22X4 U349 ( .A0(str_input[39]), .A1(n11), .B0(str_input[103]), .B1(n440), 
        .Y(n643) );
  NAND4X8 U350 ( .A(n634), .B(n633), .C(n632), .D(n631), .Y(n647) );
  AOI22X4 U351 ( .A0(str_input[143]), .A1(n411), .B0(str_input[207]), .B1(n4), 
        .Y(n632) );
  AOI22X4 U352 ( .A0(str_input[32]), .A1(n407), .B0(str_input[96]), .B1(n233), 
        .Y(n362) );
  NAND4X8 U353 ( .A(n644), .B(n643), .C(n642), .D(n641), .Y(n645) );
  AOI22X4 U354 ( .A0(str_input[135]), .A1(n410), .B0(str_input[199]), .B1(n3), 
        .Y(n642) );
  AO22X4 U355 ( .A0(n215), .A1(n614), .B0(n613), .B1(n214), .Y(n615) );
  AOI22X4 U356 ( .A0(str_input[23]), .A1(n401), .B0(str_input[87]), .B1(n148), 
        .Y(n623) );
  AOI22X4 U357 ( .A0(str_input[134]), .A1(n410), .B0(str_input[198]), .B1(n8), 
        .Y(n318) );
  NAND4X8 U358 ( .A(n365), .B(n612), .C(n318), .D(n611), .Y(n613) );
  AOI22X4 U359 ( .A0(str_input[142]), .A1(n412), .B0(str_input[206]), .B1(n3), 
        .Y(n368) );
  CLKBUFX40 U360 ( .A(n697), .Y(n210) );
  CLKINVX1 U361 ( .A(pat_last_idx[1]), .Y(n447) );
  OAI211X4 U362 ( .A0(n705), .A1(n707), .B0(n704), .C0(n443), .Y(n706) );
  OR2X8 U363 ( .A(n16), .B(n420), .Y(n707) );
  AND4X1 U364 ( .A(n443), .B(n711), .C(n479), .D(input_valid), .Y(N58) );
  AO22X4 U365 ( .A0(n215), .A1(n595), .B0(n214), .B1(n378), .Y(n596) );
  AO22X2 U366 ( .A0(match_idx[0]), .A1(n449), .B0(N389), .B1(n371), .Y(n478)
         );
  XNOR2X2 U367 ( .A(n68), .B(n448), .Y(N389) );
  OR2X6 U368 ( .A(n68), .B(n95), .Y(n646) );
  INVX20 U369 ( .A(n646), .Y(n214) );
  CLKAND2X12 U370 ( .A(n216), .B(n650), .Y(n416) );
  NAND4X8 U371 ( .A(n630), .B(n629), .C(n628), .D(n627), .Y(n650) );
  OR2X4 U372 ( .A(n454), .B(n95), .Y(n648) );
  CLKAND2X12 U373 ( .A(n216), .B(n597), .Y(n229) );
  OR2X2 U374 ( .A(n453), .B(n454), .Y(n651) );
  CLKXOR2X2 U375 ( .A(\r342/carry[4] ), .B(n405), .Y(N441) );
  AO22X4 U376 ( .A0(n384), .A1(n675), .B0(n210), .B1(n674), .Y(n422) );
  INVX2 U377 ( .A(n710), .Y(n217) );
  OR2X2 U378 ( .A(n453), .B(n68), .Y(n653) );
  CLKAND2X4 U379 ( .A(n450), .B(n210), .Y(n232) );
  AO2B2BX4 U380 ( .A0(n421), .A1N(n206), .B0(n422), .B1N(n699), .Y(n464) );
  OAI22X4 U381 ( .A0(n462), .A1(n206), .B0(n700), .B1(n699), .Y(n471) );
  NAND4X8 U382 ( .A(n517), .B(n518), .C(n516), .D(n515), .Y(n360) );
  AOI22X4 U383 ( .A0(str_input[34]), .A1(n407), .B0(str_input[98]), .B1(n441), 
        .Y(n540) );
  AOI2BB2X4 U384 ( .B0(str_input[97]), .B1(n442), .A0N(n393), .A1N(n394), .Y(
        n517) );
  AOI22X4 U385 ( .A0(str_input[42]), .A1(n11), .B0(str_input[106]), .B1(n233), 
        .Y(n537) );
  CLKBUFX40 U386 ( .A(n439), .Y(n441) );
  AND2X2 U387 ( .A(str_input[18]), .B(n399), .Y(n237) );
  INVX20 U388 ( .A(n397), .Y(n398) );
  NAND4X8 U389 ( .A(n531), .B(n530), .C(n529), .D(n528), .Y(n545) );
  AO22X2 U390 ( .A0(str_input[139]), .A1(n410), .B0(str_input[203]), .B1(n7), 
        .Y(n413) );
  INVX20 U391 ( .A(n377), .Y(n239) );
  CLKINVX40 U392 ( .A(n414), .Y(n377) );
  CLKBUFX40 U393 ( .A(n456), .Y(n409) );
  AOI22X2 U394 ( .A0(str_input[13]), .A1(n386), .B0(str_input[77]), .B1(n150), 
        .Y(n364) );
  NOR2X8 U395 ( .A(n285), .B(n279), .Y(n363) );
  AO22X4 U396 ( .A0(str_input[131]), .A1(n411), .B0(str_input[195]), .B1(n7), 
        .Y(n419) );
  INVX12 U397 ( .A(n374), .Y(n678) );
  CLKBUFX40 U398 ( .A(str_pro_idx[3]), .Y(n262) );
  NOR2BX8 U399 ( .AN(n372), .B(n707), .Y(n286) );
  BUFX20 U400 ( .A(n636), .Y(n389) );
  CLKBUFX40 U401 ( .A(n691), .Y(n435) );
  CLKNAND2X12 U402 ( .A(n307), .B(n658), .Y(n313) );
  NAND4BX4 U403 ( .AN(n392), .B(n29), .C(n368), .D(n610), .Y(n614) );
  AOI22X2 U404 ( .A0(str_input[45]), .A1(n407), .B0(str_input[109]), .B1(n442), 
        .Y(n370) );
  AOI22X2 U405 ( .A0(str_input[150]), .A1(n411), .B0(str_input[214]), .B1(n4), 
        .Y(n605) );
  AO22X1 U406 ( .A0(str_input[189]), .A1(n389), .B0(str_input[253]), .B1(n438), 
        .Y(n349) );
  AO22X1 U407 ( .A0(str_input[180]), .A1(n389), .B0(str_input[244]), .B1(n438), 
        .Y(n353) );
  AOI22X2 U408 ( .A0(str_input[159]), .A1(n410), .B0(str_input[223]), .B1(n4), 
        .Y(n628) );
  OR3X2 U409 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(pat_pro_idx[0]), .Y(
        n310) );
  INVX18 U410 ( .A(n95), .Y(n453) );
  INVX18 U411 ( .A(n358), .Y(n688) );
  NAND3X4 U412 ( .A(n710), .B(n711), .C(current_st[1]), .Y(n665) );
  BUFX12 U413 ( .A(n439), .Y(n442) );
  CLKINVX12 U414 ( .A(n706), .Y(n449) );
  NOR2BX8 U415 ( .AN(n383), .B(n670), .Y(n697) );
  OAI211X2 U416 ( .A0(n433), .A1(n695), .B0(n694), .C0(n693), .Y(n696) );
  INVX12 U417 ( .A(n686), .Y(n459) );
  INVX4 U418 ( .A(n665), .Y(n451) );
  OR4X4 U419 ( .A(n379), .B(n381), .C(n380), .D(n382), .Y(n378) );
  OAI211X2 U420 ( .A0(n433), .A1(n684), .B0(n683), .C0(n682), .Y(n685) );
  AOI22X2 U421 ( .A0(pat_input[57]), .A1(n435), .B0(pat_input[41]), .B1(n436), 
        .Y(n524) );
  AOI22X2 U422 ( .A0(str_input[19]), .A1(n386), .B0(str_input[83]), .B1(n150), 
        .Y(n551) );
  AOI22X2 U423 ( .A0(str_input[63]), .A1(n11), .B0(str_input[127]), .B1(n440), 
        .Y(n629) );
  INVX2 U424 ( .A(start_idx[2]), .Y(n373) );
  NAND3X4 U425 ( .A(n483), .B(n482), .C(n481), .Y(n708) );
  CLKXOR2X2 U426 ( .A(n460), .B(pat_last_idx[1]), .Y(n483) );
  CLKXOR2X2 U427 ( .A(n462), .B(pat_last_idx[2]), .Y(n481) );
  NAND4BX4 U428 ( .AN(n348), .B(n571), .C(n570), .D(n569), .Y(n580) );
  NAND4BX4 U429 ( .AN(n349), .B(n593), .C(n592), .D(n591), .Y(n597) );
  NAND4BX4 U430 ( .AN(n350), .B(n493), .C(n492), .D(n491), .Y(n499) );
  NAND4BBX4 U431 ( .AN(n351), .BN(n352), .C(n609), .D(n608), .Y(n616) );
  NAND4BX4 U432 ( .AN(n353), .B(n568), .C(n567), .D(n566), .Y(n581) );
  NAND4BX4 U433 ( .AN(n354), .B(n490), .C(n489), .D(n488), .Y(n500) );
  NAND4BX4 U434 ( .AN(n355), .B(n537), .C(n536), .D(n535), .Y(n542) );
  NAND4BX4 U435 ( .AN(n356), .B(n540), .C(n539), .D(n538), .Y(n541) );
  NAND4BX4 U436 ( .AN(n357), .B(n534), .C(n533), .D(n532), .Y(n544) );
  INVX12 U437 ( .A(n359), .Y(n692) );
  ADDFX1 U438 ( .A(n95), .B(n447), .CI(\sub_83/carry[1] ), .CO(
        \sub_83/carry[2] ), .S(N390) );
  CLKINVX1 U439 ( .A(n460), .Y(n421) );
  CLKXOR2X2 U440 ( .A(pat_pro_idx[1]), .B(n433), .Y(n675) );
  AO22X2 U441 ( .A0(match_idx[1]), .A1(n449), .B0(N390), .B1(n371), .Y(n477)
         );
  AO21X2 U442 ( .A0(match), .A1(n449), .B0(n371), .Y(n473) );
  AOI22X4 U443 ( .A0(str_input[8]), .A1(n399), .B0(str_input[72]), .B1(n151), 
        .Y(n366) );
  AOI22X4 U444 ( .A0(str_input[35]), .A1(n10), .B0(str_input[99]), .B1(n441), 
        .Y(n369) );
  OAI211X2 U445 ( .A0(n451), .A1(n16), .B0(n443), .C0(output_valid), .Y(n702)
         );
  AND3X4 U446 ( .A(n664), .B(n663), .C(n662), .Y(n670) );
  CLKXOR2X2 U447 ( .A(n455), .B(process_2idx[2]), .Y(n663) );
  CLKXOR2X2 U448 ( .A(n454), .B(process_2idx[0]), .Y(n664) );
  NOR3X4 U449 ( .A(n661), .B(n660), .C(n659), .Y(n662) );
  CLKXOR2X2 U450 ( .A(n95), .B(process_2idx[1]), .Y(n660) );
  CLKXOR2X2 U451 ( .A(n405), .B(process_2idx[4]), .Y(n659) );
  NOR2X6 U452 ( .A(current_st[0]), .B(current_st[1]), .Y(n479) );
  NAND3X4 U453 ( .A(current_st[2]), .B(n479), .C(input_valid), .Y(n703) );
  AOI22X2 U454 ( .A0(ff_result[8]), .A1(n458), .B0(ff_result[2]), .B1(n692), 
        .Y(n693) );
  AOI22X2 U455 ( .A0(ff_result[6]), .A1(n458), .B0(ff_result[0]), .B1(n692), 
        .Y(n682) );
  AOI22X2 U456 ( .A0(ff_result[20]), .A1(n435), .B0(ff_result[14]), .B1(n436), 
        .Y(n694) );
  AOI22X2 U457 ( .A0(ff_result[18]), .A1(n435), .B0(ff_result[12]), .B1(n436), 
        .Y(n683) );
  OAI211X2 U458 ( .A0(n433), .A1(n673), .B0(n672), .C0(n671), .Y(n674) );
  AOI22X2 U459 ( .A0(ff_result[7]), .A1(n458), .B0(ff_result[1]), .B1(n692), 
        .Y(n671) );
  AOI22X2 U460 ( .A0(ff_result[19]), .A1(n435), .B0(ff_result[13]), .B1(n436), 
        .Y(n672) );
  ADDHX2 U461 ( .A(n95), .B(n68), .CO(\r342/carry[2] ), .S(N438) );
  AOI21X2 U462 ( .A0(n703), .A1(n480), .B0(n178), .Y(N60) );
  NAND2X2 U463 ( .A(done), .B(n451), .Y(n480) );
  AOI2BB1X4 U464 ( .A0N(n708), .A1N(n313), .B0(n670), .Y(n705) );
  CLKAND2X12 U465 ( .A(n403), .B(n658), .Y(n375) );
  AO22X2 U466 ( .A0(str_input[165]), .A1(n385), .B0(str_input[229]), .B1(n438), 
        .Y(n379) );
  AO22X2 U467 ( .A0(str_input[133]), .A1(n411), .B0(str_input[197]), .B1(n4), 
        .Y(n381) );
  AO22X4 U468 ( .A0(str_input[5]), .A1(n399), .B0(str_input[69]), .B1(n150), 
        .Y(n382) );
  AO22X4 U469 ( .A0(str_input[174]), .A1(n389), .B0(str_input[238]), .B1(n437), 
        .Y(n392) );
  CLKBUFX40 U470 ( .A(str_pro_idx[4]), .Y(n405) );
  OR2X1 U471 ( .A(n448), .B(n68), .Y(\sub_83/carry[1] ) );
  CLKINVX1 U472 ( .A(n68), .Y(N437) );
endmodule


module SME ( clk, reset, chardata, isstring, ispattern, valid, match, 
        match_index );
  input [7:0] chardata;
  output [4:0] match_index;
  input clk, reset, isstring, ispattern;
  output valid, match;
  wire   N0, input_valid, pe1_match, pe2_match, pe3_match, pe4_match,
         pe1_valid, pe2_valid, pe3_valid, pe4_valid, n1;
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

  OR2X8 U1 ( .A(ispattern), .B(isstring), .Y(N0) );
  KMP_Control control ( .clk(clk), .reset(reset), .input_valid(input_valid), 
        .str_last_idx(str_last_index), .pat_last_idx(pat_last_index), 
        .i_match_valid({pe1_valid, pe2_valid, pe3_valid, pe4_valid}), 
        .i_match({pe1_match, pe2_match, pe3_match, pe4_match}), .i_match_idx({
        pe1_m_idx, pe2_m_idx, pe3_m_idx[4:2], n1, pe3_m_idx[0], pe4_m_idx}), 
        .start_idx({pe1_start_idx, pe2_start_idx, pe3_start_idx, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4}), .process_2idx({pe1_pro_2idx, pe2_pro_2idx, 
        pe3_pro_2idx, pe4_pro_2idx}), .o_match(match), .o_valid(valid), 
        .o_match_idx(match_index) );
  shared_memory s1 ( .clk(clk), .reset(reset), .w_data(chardata), .write(N0), 
        .w_sel(ispattern), .str_reg(str), .pat_reg(pat), .str_last_idx(
        str_last_index), .pat_last_idx(pat_last_index), .ff_result(ff_result), 
        .valid(input_valid) );
  KMP_pe_3 pe1 ( .clk(clk), .reset(reset), .str_input(str), .pat_input(pat), 
        .input_valid(input_valid), .start_idx(pe1_start_idx), .process_2idx(
        pe1_pro_2idx), .pat_last_idx(pat_last_index), .ff_result(ff_result), 
        .output_valid(pe1_valid), .match(pe1_match), .match_idx(pe1_m_idx) );
  KMP_pe_2 pe2 ( .clk(clk), .reset(reset), .str_input(str), .pat_input(pat), 
        .input_valid(input_valid), .start_idx(pe2_start_idx), .process_2idx(
        pe2_pro_2idx), .pat_last_idx(pat_last_index), .ff_result(ff_result), 
        .output_valid(pe2_valid), .match(pe2_match), .match_idx(pe2_m_idx) );
  KMP_pe_1 pe3 ( .clk(clk), .reset(reset), .str_input(str), .pat_input(pat), 
        .input_valid(input_valid), .start_idx(pe3_start_idx), .process_2idx(
        pe3_pro_2idx), .pat_last_idx(pat_last_index), .ff_result(ff_result), 
        .output_valid(pe3_valid), .match(pe3_match), .match_idx(pe3_m_idx) );
  KMP_pe_0 pe4 ( .clk(clk), .reset(reset), .str_input(str), .pat_input(pat), 
        .input_valid(input_valid), .start_idx({1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .process_2idx(pe4_pro_2idx), .pat_last_idx(pat_last_index), 
        .ff_result(ff_result), .output_valid(pe4_valid), .match(pe4_match), 
        .match_idx(pe4_m_idx) );
  CLKBUFX40 U2 ( .A(pe3_m_idx[1]), .Y(n1) );
endmodule

