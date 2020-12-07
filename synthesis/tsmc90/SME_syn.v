/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Dec  7 22:41:49 2020
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
  wire   n106, n107, n108, n109, n110, n111, n112, \remaining[1] , N16, N18,
         N20, N26, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53,
         N54, N55, N56, N57, N58, N59, N60, N61, N62, N69, N70, N71, N72, N79,
         N80, N81, N82, N94, N95, N96, N97, N118, N119, N120, N121, N122, N129,
         N130, N131, N132, N143, N144, N145, N146, N147, N190, N191, N192,
         N242, N243, N244, N245, N248, N249, N250, N251, N252, N253, N254,
         N255, N256, N257, N258, N259, N260, N261, N262, N263, N264, N265,
         N266, N267, N268, N269, N270, N271, N277, N278, N279, N280, N281,
         N282, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, N142, N140,
         N139, N102, N101, N100, N117, N115, N114, \lte_41/B[5] ,
         \sub_0_root_sub_70/carry[4] , \sub_0_root_sub_70/carry[3] ,
         \sub_0_root_sub_70/carry[2] , \sub_0_root_sub_70/carry[1] ,
         \sub_0_root_sub_69/carry[4] , \sub_0_root_sub_69/carry[3] ,
         \sub_0_root_sub_69/carry[2] , \sub_0_root_sub_69/carry[1] ,
         \sub_0_root_sub_68/carry[4] , \sub_0_root_sub_68/carry[3] ,
         \sub_0_root_sub_68/carry[2] , \sub_0_root_sub_68/carry[1] ,
         \r423/carry[4] , \r423/carry[3] , \r423/carry[2] , \r423/carry[1] ,
         \r420/carry[4] , \r420/carry[3] , \r420/carry[2] , \r418/carry[1] ,
         \r418/carry[2] , \r418/carry[3] ,
         \add_0_root_sub_0_root_sub_87/carry[4] ,
         \add_0_root_sub_0_root_sub_87/carry[3] ,
         \add_0_root_sub_0_root_sub_87/carry[2] ,
         \add_0_root_sub_0_root_sub_86/carry[4] ,
         \add_0_root_sub_0_root_sub_86/carry[3] ,
         \add_0_root_sub_0_root_sub_86/carry[2] ,
         \add_0_root_sub_0_root_sub_86/carry[1] , \r422/n3 , \r422/n2 ,
         \r422/n1 , \r412/carry[4] , \r412/carry[3] , \r412/carry[2] ,
         \add_0_root_sub_0_root_sub_88/carry[4] ,
         \add_0_root_sub_0_root_sub_88/carry[3] ,
         \add_0_root_sub_0_root_sub_88/carry[2] ,
         \add_0_root_sub_0_root_sub_88/carry[1] , \add_0_root_r429/carry[4] ,
         \add_0_root_r429/carry[3] , \add_0_root_r429/carry[2] , n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100
;
  wire   [3:0] num_part;
  wire   [5:0] compare_1a;
  wire   [5:0] compare_1b;

  ADDHX1 \r422/U4  ( .A(N48), .B(num_part[1]), .CO(\r422/n3 ), .S(N49) );
  ADDFX1 \r422/U3  ( .A(num_part[2]), .B(num_part[1]), .CI(\r422/n3 ), .CO(
        \r422/n2 ), .S(N50) );
  ADDFX1 \r422/U2  ( .A(num_part[3]), .B(num_part[2]), .CI(\r422/n2 ), .CO(
        \r422/n1 ), .S(N51) );
  DFFTRXL \process_2idx_reg[17]  ( .D(N190), .RN(n100), .CK(clk), .Q(
        process_2idx[17]) );
  DFFTRXL pe_valid_reg ( .D(input_valid), .RN(n23), .CK(clk), .Q(pe_valid) );
  DFFTRXL \process_2idx_reg[19]  ( .D(N192), .RN(n100), .CK(clk), .Q(
        process_2idx[19]) );
  DFFTRXL \process_2idx_reg[18]  ( .D(N191), .RN(n100), .CK(clk), .Q(
        process_2idx[18]) );
  DFFTRXL \process_2idx_reg[16]  ( .D(str_last_idx[1]), .RN(n100), .CK(clk), 
        .Q(process_2idx[16]) );
  DFFTRXL \process_2idx_reg[15]  ( .D(str_last_idx[0]), .RN(n100), .CK(clk), 
        .Q(process_2idx[15]) );
  DFFTRXL \start_idx_reg[9]  ( .D(N37), .RN(n21), .CK(clk), .Q(start_idx[9])
         );
  DFFTRXL \start_idx_reg[10]  ( .D(N43), .RN(n22), .CK(clk), .Q(start_idx[10])
         );
  DFFQXL o_valid_reg ( .D(N277), .CK(clk), .Q(n107) );
  DFFQXL \o_match_idx_reg[4]  ( .D(N282), .CK(clk), .Q(n108) );
  DFFQXL \o_match_idx_reg[3]  ( .D(N281), .CK(clk), .Q(n109) );
  DFFQXL \o_match_idx_reg[2]  ( .D(N280), .CK(clk), .Q(n110) );
  DFFQXL \o_match_idx_reg[1]  ( .D(N279), .CK(clk), .Q(n111) );
  DFFQXL \o_match_idx_reg[0]  ( .D(N278), .CK(clk), .Q(n112) );
  DFFQXL \process_2idx_reg[0]  ( .D(N257), .CK(clk), .Q(process_2idx[0]) );
  DFFQXL \process_2idx_reg[10]  ( .D(N267), .CK(clk), .Q(process_2idx[10]) );
  DFFQXL \process_2idx_reg[5]  ( .D(N262), .CK(clk), .Q(process_2idx[5]) );
  DFFQXL \start_idx_reg[17]  ( .D(N254), .CK(clk), .Q(start_idx[17]) );
  DFFQXL \process_2idx_reg[12]  ( .D(N269), .CK(clk), .Q(process_2idx[12]) );
  DFFQXL \process_2idx_reg[9]  ( .D(N266), .CK(clk), .Q(process_2idx[9]) );
  DFFQXL \process_2idx_reg[6]  ( .D(N263), .CK(clk), .Q(process_2idx[6]) );
  DFFQXL \process_2idx_reg[3]  ( .D(N260), .CK(clk), .Q(process_2idx[3]) );
  DFFQXL \start_idx_reg[18]  ( .D(N255), .CK(clk), .Q(start_idx[18]) );
  DFFQXL \process_2idx_reg[13]  ( .D(N270), .CK(clk), .Q(process_2idx[13]) );
  DFFQXL \process_2idx_reg[7]  ( .D(N264), .CK(clk), .Q(process_2idx[7]) );
  DFFQXL \process_2idx_reg[4]  ( .D(N261), .CK(clk), .Q(process_2idx[4]) );
  DFFQXL \process_2idx_reg[1]  ( .D(N258), .CK(clk), .Q(process_2idx[1]) );
  DFFQXL \start_idx_reg[19]  ( .D(N256), .CK(clk), .Q(start_idx[19]) );
  DFFQXL \start_idx_reg[16]  ( .D(N253), .CK(clk), .Q(start_idx[16]) );
  DFFQXL \process_2idx_reg[14]  ( .D(N271), .CK(clk), .Q(process_2idx[14]) );
  DFFQXL \process_2idx_reg[11]  ( .D(N268), .CK(clk), .Q(process_2idx[11]) );
  DFFQXL \process_2idx_reg[8]  ( .D(N265), .CK(clk), .Q(process_2idx[8]) );
  DFFQXL \process_2idx_reg[2]  ( .D(N259), .CK(clk), .Q(process_2idx[2]) );
  DFFQXL \start_idx_reg[15]  ( .D(N252), .CK(clk), .Q(start_idx[15]) );
  DFFQXL \start_idx_reg[14]  ( .D(N251), .CK(clk), .Q(start_idx[14]) );
  DFFQXL \start_idx_reg[6]  ( .D(N243), .CK(clk), .Q(start_idx[6]) );
  DFFQXL \start_idx_reg[12]  ( .D(N249), .CK(clk), .Q(start_idx[12]) );
  DFFQXL \start_idx_reg[7]  ( .D(N244), .CK(clk), .Q(start_idx[7]) );
  DFFQXL \start_idx_reg[8]  ( .D(N245), .CK(clk), .Q(start_idx[8]) );
  DFFQXL \start_idx_reg[11]  ( .D(N248), .CK(clk), .Q(start_idx[11]) );
  DFFQXL \start_idx_reg[13]  ( .D(N250), .CK(clk), .Q(start_idx[13]) );
  DFFQXL \start_idx_reg[5]  ( .D(N242), .CK(clk), .Q(start_idx[5]) );
  INVX2 U7 ( .A(1'b1), .Y(start_idx[0]) );
  INVX2 U9 ( .A(1'b1), .Y(start_idx[1]) );
  INVX2 U11 ( .A(1'b1), .Y(start_idx[2]) );
  INVX2 U13 ( .A(1'b1), .Y(start_idx[3]) );
  INVX2 U15 ( .A(1'b1), .Y(start_idx[4]) );
  AO2B2XL U17 ( .B0(n28), .B1(\remaining[1] ), .A0(N38), .A1N(pat_last_idx[0]), 
        .Y(n43) );
  INVXL U18 ( .A(pat_last_idx[0]), .Y(n29) );
  OAI21XL U20 ( .A0(pat_last_idx[0]), .A1(pat_last_idx[1]), .B0(
        pat_last_idx[2]), .Y(n26) );
  OAI21XL U21 ( .A0(pat_last_idx[0]), .A1(pat_last_idx[1]), .B0(
        pat_last_idx[2]), .Y(n27) );
  NOR3XL U22 ( .A(pat_last_idx[1]), .B(pat_last_idx[2]), .C(pat_last_idx[0]), 
        .Y(N142) );
  XNOR2XL U23 ( .A(pat_last_idx[1]), .B(pat_last_idx[0]), .Y(N114) );
  XNOR2XL U24 ( .A(pat_last_idx[1]), .B(pat_last_idx[0]), .Y(N139) );
  NOR3XL U25 ( .A(pat_last_idx[1]), .B(pat_last_idx[2]), .C(pat_last_idx[0]), 
        .Y(N117) );
  CLKBUFX20 U26 ( .A(n107), .Y(o_valid) );
  CLKBUFX20 U27 ( .A(n108), .Y(o_match_idx[4]) );
  CLKBUFX20 U28 ( .A(n109), .Y(o_match_idx[3]) );
  CLKBUFX20 U29 ( .A(n110), .Y(o_match_idx[2]) );
  CLKBUFX20 U30 ( .A(n111), .Y(o_match_idx[1]) );
  CLKBUFX20 U31 ( .A(n112), .Y(o_match_idx[0]) );
  AND4X2 U32 ( .A(n98), .B(n97), .C(\lte_41/B[5] ), .D(n99), .Y(n106) );
  INVX20 U33 ( .A(n106), .Y(o_match) );
  ADDHX1 U34 ( .A(str_last_idx[2]), .B(\r412/carry[2] ), .CO(\r412/carry[3] ), 
        .S(N48) );
  ADDHX1 U35 ( .A(str_last_idx[3]), .B(\r412/carry[3] ), .CO(\r412/carry[4] ), 
        .S(num_part[1]) );
  ADDHX1 U36 ( .A(str_last_idx[1]), .B(str_last_idx[0]), .CO(\r412/carry[2] ), 
        .S(\remaining[1] ) );
  ADDHX1 U37 ( .A(str_last_idx[4]), .B(\r412/carry[4] ), .CO(num_part[3]), .S(
        num_part[2]) );
  INVX2 U38 ( .A(N55), .Y(n42) );
  AO22X2 U39 ( .A0(N69), .A1(n22), .B0(N119), .B1(n19), .Y(N258) );
  AO22X2 U40 ( .A0(N70), .A1(n73), .B0(N120), .B1(n20), .Y(N259) );
  AO22X2 U41 ( .A0(N71), .A1(n21), .B0(N121), .B1(n74), .Y(N260) );
  AO22X2 U42 ( .A0(N80), .A1(n22), .B0(N130), .B1(n19), .Y(N264) );
  AO22X2 U43 ( .A0(N81), .A1(n73), .B0(N131), .B1(n20), .Y(N265) );
  AO22X2 U44 ( .A0(N96), .A1(n22), .B0(N146), .B1(n19), .Y(N270) );
  INVX2 U45 ( .A(N20), .Y(n94) );
  INVX2 U46 ( .A(N40), .Y(n38) );
  INVX2 U47 ( .A(N30), .Y(n34) );
  NAND2X1 U48 ( .A(N277), .B(o_match), .Y(n66) );
  NOR2X2 U49 ( .A(n72), .B(N26), .Y(n20) );
  NOR2X2 U50 ( .A(n70), .B(n66), .Y(N278) );
  AOI22XL U51 ( .A0(N20), .A1(compare_1a[0]), .B0(compare_1b[0]), .B1(n94), 
        .Y(n70) );
  NOR2X2 U52 ( .A(n69), .B(n66), .Y(N279) );
  AOI22XL U53 ( .A0(N20), .A1(compare_1a[1]), .B0(compare_1b[1]), .B1(n94), 
        .Y(n69) );
  NOR2X2 U54 ( .A(n68), .B(n66), .Y(N280) );
  AOI22XL U55 ( .A0(N20), .A1(compare_1a[2]), .B0(compare_1b[2]), .B1(n94), 
        .Y(n68) );
  NOR2X2 U56 ( .A(n67), .B(n66), .Y(N281) );
  AOI22XL U57 ( .A0(N20), .A1(compare_1a[3]), .B0(compare_1b[3]), .B1(n94), 
        .Y(n67) );
  NOR2X2 U58 ( .A(n65), .B(n66), .Y(N282) );
  AOI22XL U59 ( .A0(N20), .A1(compare_1a[4]), .B0(compare_1b[4]), .B1(n94), 
        .Y(n65) );
  NOR2X2 U60 ( .A(n72), .B(N26), .Y(n74) );
  NOR2X2 U61 ( .A(n72), .B(N26), .Y(n19) );
  AND2X2 U62 ( .A(N26), .B(n100), .Y(n73) );
  AND2X2 U63 ( .A(N26), .B(n100), .Y(n22) );
  AND2X2 U64 ( .A(N26), .B(n100), .Y(n21) );
  AO22X2 U65 ( .A0(N59), .A1(n73), .B0(N49), .B1(n20), .Y(N253) );
  INVX2 U66 ( .A(n72), .Y(n100) );
  AO22X2 U67 ( .A0(N62), .A1(n73), .B0(N52), .B1(n20), .Y(N256) );
  AO22X2 U68 ( .A0(N58), .A1(n22), .B0(N48), .B1(n20), .Y(N252) );
  AO22X2 U69 ( .A0(n19), .A1(num_part[1]), .B0(N34), .B1(n21), .Y(N243) );
  AO22X2 U70 ( .A0(n20), .A1(num_part[1]), .B0(N45), .B1(n22), .Y(N249) );
  AO22X2 U71 ( .A0(n20), .A1(num_part[2]), .B0(N35), .B1(n22), .Y(N244) );
  AO22X2 U72 ( .A0(n74), .A1(num_part[2]), .B0(N46), .B1(n73), .Y(N250) );
  AO22X2 U73 ( .A0(n74), .A1(N48), .B0(N33), .B1(n73), .Y(N242) );
  AO22X2 U74 ( .A0(n19), .A1(N48), .B0(N44), .B1(n21), .Y(N248) );
  AO22X2 U75 ( .A0(N60), .A1(n21), .B0(N50), .B1(n74), .Y(N254) );
  AO22X2 U76 ( .A0(N61), .A1(n22), .B0(N51), .B1(n19), .Y(N255) );
  AO2B2X2 U77 ( .B0(N118), .B1(n74), .A0(n21), .A1N(N28), .Y(N257) );
  AO22X2 U78 ( .A0(N72), .A1(n22), .B0(N122), .B1(n19), .Y(N261) );
  AO2B2X2 U79 ( .B0(n29), .B1(n20), .A0(n73), .A1N(N38), .Y(N262) );
  AO22X2 U80 ( .A0(N79), .A1(n21), .B0(N129), .B1(n74), .Y(N263) );
  AO22X2 U81 ( .A0(N82), .A1(n21), .B0(N132), .B1(n74), .Y(N266) );
  XOR3XL U82 ( .A(N117), .B(num_part[3]), .C(
        \add_0_root_sub_0_root_sub_87/carry[4] ), .Y(N132) );
  AO2B2X2 U83 ( .B0(N143), .B1(n19), .A0(n22), .A1N(N53), .Y(N267) );
  AO22X2 U84 ( .A0(N94), .A1(n73), .B0(N144), .B1(n20), .Y(N268) );
  AO22X2 U85 ( .A0(N95), .A1(n21), .B0(N145), .B1(n74), .Y(N269) );
  AO22X2 U86 ( .A0(N97), .A1(n73), .B0(N147), .B1(n20), .Y(N271) );
  XOR3XL U87 ( .A(N142), .B(N52), .C(\add_0_root_sub_0_root_sub_88/carry[4] ), 
        .Y(N147) );
  AO22X2 U88 ( .A0(n74), .A1(num_part[3]), .B0(N36), .B1(n73), .Y(N245) );
  AO22X2 U89 ( .A0(n19), .A1(num_part[3]), .B0(N47), .B1(n21), .Y(N251) );
  INVX2 U90 ( .A(N16), .Y(n95) );
  INVX2 U91 ( .A(N18), .Y(n96) );
  INVX2 U92 ( .A(compare_1b[1]), .Y(n90) );
  ADDFX1 U93 ( .A(N49), .B(\remaining[1] ), .CI(\r423/carry[1] ), .CO(
        \r423/carry[2] ), .S(N54) );
  INVX2 U94 ( .A(compare_1b[2]), .Y(n91) );
  INVX2 U95 ( .A(compare_1a[4]), .Y(n93) );
  INVX2 U96 ( .A(compare_1b[3]), .Y(n92) );
  ADDFX1 U97 ( .A(N114), .B(num_part[1]), .CI(
        \add_0_root_sub_0_root_sub_86/carry[1] ), .CO(
        \add_0_root_sub_0_root_sub_86/carry[2] ), .S(N119) );
  ADDFX1 U98 ( .A(N115), .B(num_part[1]), .CI(
        \add_0_root_sub_0_root_sub_87/carry[2] ), .CO(
        \add_0_root_sub_0_root_sub_87/carry[3] ), .S(N130) );
  ADDFX1 U99 ( .A(N115), .B(num_part[2]), .CI(
        \add_0_root_sub_0_root_sub_86/carry[2] ), .CO(
        \add_0_root_sub_0_root_sub_86/carry[3] ), .S(N120) );
  ADDFX1 U100 ( .A(N117), .B(num_part[2]), .CI(
        \add_0_root_sub_0_root_sub_87/carry[3] ), .CO(
        \add_0_root_sub_0_root_sub_87/carry[4] ), .S(N131) );
  ADDFX1 U101 ( .A(N142), .B(N51), .CI(\add_0_root_sub_0_root_sub_88/carry[3] ), .CO(\add_0_root_sub_0_root_sub_88/carry[4] ), .S(N146) );
  ADDFX1 U102 ( .A(num_part[1]), .B(\remaining[1] ), .CI(\r418/carry[1] ), 
        .CO(\r418/carry[2] ), .S(N29) );
  ADDFX1 U103 ( .A(N117), .B(num_part[3]), .CI(
        \add_0_root_sub_0_root_sub_86/carry[3] ), .CO(
        \add_0_root_sub_0_root_sub_86/carry[4] ), .S(N121) );
  INVX2 U104 ( .A(i_match[0]), .Y(n98) );
  INVX2 U105 ( .A(i_match[1]), .Y(n97) );
  INVX2 U106 ( .A(i_match[3]), .Y(n99) );
  NAND2X2 U107 ( .A(input_valid), .B(n23), .Y(n72) );
  AND4X2 U108 ( .A(i_match_valid[0]), .B(n23), .C(i_match_valid[1]), .D(n71), 
        .Y(N277) );
  AND3X2 U109 ( .A(i_match_valid[3]), .B(i_match_valid[2]), .C(input_valid), 
        .Y(n71) );
  INVX2 U110 ( .A(reset), .Y(n23) );
  OAI22X1 U111 ( .A0(i_match[1]), .A1(n96), .B0(i_match[0]), .B1(N18), .Y(
        compare_1b[5]) );
  AO22X2 U112 ( .A0(i_match_idx[19]), .A1(N16), .B0(i_match_idx[14]), .B1(n95), 
        .Y(compare_1a[4]) );
  AO22X2 U113 ( .A0(i_match_idx[6]), .A1(N18), .B0(i_match_idx[1]), .B1(n96), 
        .Y(compare_1b[1]) );
  AO22X2 U114 ( .A0(i_match_idx[8]), .A1(N18), .B0(i_match_idx[3]), .B1(n96), 
        .Y(compare_1b[3]) );
  AO22X2 U115 ( .A0(i_match_idx[7]), .A1(N18), .B0(i_match_idx[2]), .B1(n96), 
        .Y(compare_1b[2]) );
  INVX2 U116 ( .A(i_match_idx[11]), .Y(n55) );
  INVX2 U117 ( .A(i_match_idx[1]), .Y(n77) );
  AO22X2 U118 ( .A0(i_match_idx[9]), .A1(N18), .B0(i_match_idx[4]), .B1(n96), 
        .Y(compare_1b[4]) );
  AO22X2 U119 ( .A0(i_match_idx[17]), .A1(N16), .B0(i_match_idx[12]), .B1(n95), 
        .Y(compare_1a[2]) );
  AO22X2 U120 ( .A0(i_match_idx[16]), .A1(N16), .B0(i_match_idx[11]), .B1(n95), 
        .Y(compare_1a[1]) );
  AO22X2 U121 ( .A0(i_match_idx[18]), .A1(N16), .B0(i_match_idx[13]), .B1(n95), 
        .Y(compare_1a[3]) );
  AO22X2 U122 ( .A0(i_match_idx[5]), .A1(N18), .B0(i_match_idx[0]), .B1(n96), 
        .Y(compare_1b[0]) );
  AO22X2 U123 ( .A0(i_match_idx[15]), .A1(N16), .B0(i_match_idx[10]), .B1(n95), 
        .Y(compare_1a[0]) );
  OA22X2 U124 ( .A0(i_match[3]), .A1(n95), .B0(i_match[2]), .B1(N16), .Y(n18)
         );
  ADDFX1 U125 ( .A(N55), .B(n30), .CI(\sub_0_root_sub_70/carry[2] ), .CO(
        \sub_0_root_sub_70/carry[3] ), .S(N60) );
  INVX2 U126 ( .A(pat_last_idx[2]), .Y(n30) );
  INVX2 U127 ( .A(i_match[2]), .Y(\lte_41/B[5] ) );
  INVX2 U128 ( .A(i_match_idx[12]), .Y(n56) );
  INVX2 U129 ( .A(i_match_idx[2]), .Y(n78) );
  INVX2 U130 ( .A(i_match_idx[19]), .Y(n54) );
  INVX2 U131 ( .A(i_match_idx[9]), .Y(n80) );
  INVX2 U132 ( .A(i_match_idx[13]), .Y(n57) );
  INVX2 U133 ( .A(i_match_idx[3]), .Y(n79) );
  INVX2 U134 ( .A(n44), .Y(N26) );
  OAI211XL U135 ( .A0(\remaining[1] ), .A1(n28), .B0(n43), .C0(n30), .Y(n44)
         );
  INVX2 U136 ( .A(str_last_idx[0]), .Y(N38) );
  ADDFX1 U137 ( .A(N54), .B(n28), .CI(\sub_0_root_sub_70/carry[1] ), .CO(
        \sub_0_root_sub_70/carry[2] ), .S(N59) );
  ADDFX1 U138 ( .A(N29), .B(n28), .CI(\sub_0_root_sub_68/carry[1] ), .CO(
        \sub_0_root_sub_68/carry[2] ), .S(N34) );
  INVX2 U139 ( .A(pat_last_idx[1]), .Y(n28) );
  ADDFX1 U140 ( .A(N39), .B(n28), .CI(\sub_0_root_sub_69/carry[1] ), .CO(
        \sub_0_root_sub_69/carry[2] ), .S(N44) );
  ADDFX1 U141 ( .A(N139), .B(N49), .CI(\add_0_root_sub_0_root_sub_88/carry[1] ), .CO(\add_0_root_sub_0_root_sub_88/carry[2] ), .S(N144) );
  ADDFX1 U142 ( .A(N140), .B(N50), .CI(\add_0_root_sub_0_root_sub_88/carry[2] ), .CO(\add_0_root_sub_0_root_sub_88/carry[3] ), .S(N145) );
  ADDFX1 U143 ( .A(N40), .B(n30), .CI(\sub_0_root_sub_69/carry[2] ), .CO(
        \sub_0_root_sub_69/carry[3] ), .S(N45) );
  ADDFX1 U144 ( .A(N30), .B(n30), .CI(\sub_0_root_sub_68/carry[2] ), .CO(
        \sub_0_root_sub_68/carry[3] ), .S(N35) );
  XOR2X1 U145 ( .A(N117), .B(\add_0_root_sub_0_root_sub_86/carry[4] ), .Y(N122) );
  AND2X1 U146 ( .A(n29), .B(N48), .Y(\add_0_root_sub_0_root_sub_86/carry[1] )
         );
  XOR2X1 U147 ( .A(N48), .B(n29), .Y(N118) );
  AND2X1 U148 ( .A(N114), .B(N48), .Y(\add_0_root_sub_0_root_sub_87/carry[2] )
         );
  XOR2X1 U149 ( .A(N48), .B(N114), .Y(N129) );
  AND2X1 U150 ( .A(n29), .B(N48), .Y(\add_0_root_sub_0_root_sub_88/carry[1] )
         );
  XOR2X1 U151 ( .A(N48), .B(n29), .Y(N143) );
  XNOR2X1 U152 ( .A(N42), .B(\sub_0_root_sub_69/carry[4] ), .Y(N47) );
  OR2X1 U153 ( .A(N41), .B(\sub_0_root_sub_69/carry[3] ), .Y(
        \sub_0_root_sub_69/carry[4] ) );
  XNOR2X1 U154 ( .A(\sub_0_root_sub_69/carry[3] ), .B(N41), .Y(N46) );
  XOR2X1 U155 ( .A(num_part[3]), .B(\r420/carry[4] ), .Y(N42) );
  AND2X1 U156 ( .A(\r420/carry[3] ), .B(num_part[2]), .Y(\r420/carry[4] ) );
  XOR2X1 U157 ( .A(num_part[2]), .B(\r420/carry[3] ), .Y(N41) );
  AND2X1 U158 ( .A(\r420/carry[2] ), .B(num_part[1]), .Y(\r420/carry[3] ) );
  XOR2X1 U159 ( .A(num_part[1]), .B(\r420/carry[2] ), .Y(N40) );
  AND2X1 U160 ( .A(N48), .B(\remaining[1] ), .Y(\r420/carry[2] ) );
  XOR2X1 U161 ( .A(\remaining[1] ), .B(N48), .Y(N39) );
  XNOR2X1 U162 ( .A(N57), .B(\sub_0_root_sub_70/carry[4] ), .Y(N62) );
  OR2X1 U163 ( .A(N56), .B(\sub_0_root_sub_70/carry[3] ), .Y(
        \sub_0_root_sub_70/carry[4] ) );
  XNOR2X1 U164 ( .A(\sub_0_root_sub_70/carry[3] ), .B(N56), .Y(N61) );
  OR2X1 U165 ( .A(n29), .B(N53), .Y(\sub_0_root_sub_70/carry[1] ) );
  XNOR2X1 U166 ( .A(N53), .B(n29), .Y(N58) );
  XOR2X1 U167 ( .A(N52), .B(\r423/carry[4] ), .Y(N57) );
  AND2X1 U168 ( .A(\r423/carry[3] ), .B(N51), .Y(\r423/carry[4] ) );
  XOR2X1 U169 ( .A(N51), .B(\r423/carry[3] ), .Y(N56) );
  AND2X1 U170 ( .A(\r423/carry[2] ), .B(N50), .Y(\r423/carry[3] ) );
  XOR2X1 U171 ( .A(N50), .B(\r423/carry[2] ), .Y(N55) );
  AND2X1 U172 ( .A(N48), .B(N38), .Y(\r423/carry[1] ) );
  XOR2X1 U173 ( .A(N38), .B(N48), .Y(N53) );
  XOR2X1 U174 ( .A(N102), .B(\add_0_root_r429/carry[4] ), .Y(N192) );
  AND2X1 U175 ( .A(\add_0_root_r429/carry[3] ), .B(N101), .Y(
        \add_0_root_r429/carry[4] ) );
  XOR2X1 U176 ( .A(N101), .B(\add_0_root_r429/carry[3] ), .Y(N191) );
  AND2X1 U177 ( .A(\add_0_root_r429/carry[2] ), .B(N100), .Y(
        \add_0_root_r429/carry[3] ) );
  XOR2X1 U178 ( .A(N100), .B(\add_0_root_r429/carry[2] ), .Y(N190) );
  OR2X1 U179 ( .A(\remaining[1] ), .B(N38), .Y(\add_0_root_r429/carry[2] ) );
  XNOR2X1 U180 ( .A(N32), .B(\sub_0_root_sub_68/carry[4] ), .Y(N37) );
  OR2X1 U181 ( .A(N31), .B(\sub_0_root_sub_68/carry[3] ), .Y(
        \sub_0_root_sub_68/carry[4] ) );
  XNOR2X1 U182 ( .A(\sub_0_root_sub_68/carry[3] ), .B(N31), .Y(N36) );
  OR2X1 U183 ( .A(n29), .B(N28), .Y(\sub_0_root_sub_68/carry[1] ) );
  XNOR2X1 U184 ( .A(N28), .B(n29), .Y(N33) );
  AND2X1 U185 ( .A(\r418/carry[3] ), .B(num_part[3]), .Y(N32) );
  XOR2X1 U186 ( .A(num_part[3]), .B(\r418/carry[3] ), .Y(N31) );
  AND2X1 U187 ( .A(\r418/carry[2] ), .B(num_part[2]), .Y(\r418/carry[3] ) );
  XOR2X1 U188 ( .A(num_part[2]), .B(\r418/carry[2] ), .Y(N30) );
  AND2X1 U189 ( .A(N48), .B(N38), .Y(\r418/carry[1] ) );
  XOR2X1 U190 ( .A(N38), .B(N48), .Y(N28) );
  OR2X1 U191 ( .A(n29), .B(N38), .Y(\sub_0_root_sub_69/carry[1] ) );
  XNOR2X1 U192 ( .A(N38), .B(n29), .Y(N43) );
  CLKINVX1 U193 ( .A(N48), .Y(N100) );
  XNOR2X1 U194 ( .A(N48), .B(num_part[1]), .Y(N101) );
  CLKNAND2X2 U195 ( .A(N101), .B(N100), .Y(n25) );
  NOR2BX1 U196 ( .AN(N101), .B(N48), .Y(n24) );
  MXI2X1 U197 ( .A(n25), .B(n24), .S0(num_part[2]), .Y(N102) );
  NAND2BX1 U198 ( .AN(N142), .B(n26), .Y(N140) );
  NAND2BX1 U199 ( .AN(N117), .B(n27), .Y(N115) );
  XOR2X1 U200 ( .A(\r422/n1 ), .B(num_part[3]), .Y(N52) );
  NOR2X1 U201 ( .A(N29), .B(N28), .Y(n31) );
  AO21X1 U202 ( .A0(N28), .A1(N29), .B0(n31), .Y(N69) );
  CLKNAND2X2 U203 ( .A(n31), .B(n34), .Y(n32) );
  OAI21X1 U204 ( .A0(n31), .A1(n34), .B0(n32), .Y(N70) );
  XNOR2X1 U205 ( .A(N31), .B(n32), .Y(N71) );
  NOR2X1 U206 ( .A(N31), .B(n32), .Y(n33) );
  XOR2X1 U207 ( .A(N32), .B(n33), .Y(N72) );
  NOR2X1 U208 ( .A(N39), .B(N38), .Y(n35) );
  AO21X1 U209 ( .A0(N38), .A1(N39), .B0(n35), .Y(N79) );
  CLKNAND2X2 U210 ( .A(n35), .B(n38), .Y(n36) );
  OAI21X1 U211 ( .A0(n35), .A1(n38), .B0(n36), .Y(N80) );
  XNOR2X1 U212 ( .A(N41), .B(n36), .Y(N81) );
  NOR2X1 U213 ( .A(N41), .B(n36), .Y(n37) );
  XOR2X1 U214 ( .A(N42), .B(n37), .Y(N82) );
  NOR2X1 U215 ( .A(N54), .B(N53), .Y(n39) );
  AO21X1 U216 ( .A0(N53), .A1(N54), .B0(n39), .Y(N94) );
  CLKNAND2X2 U217 ( .A(n39), .B(n42), .Y(n40) );
  OAI21X1 U218 ( .A0(n39), .A1(n42), .B0(n40), .Y(N95) );
  XNOR2X1 U219 ( .A(N56), .B(n40), .Y(N96) );
  NOR2X1 U220 ( .A(N56), .B(n40), .Y(n41) );
  XOR2X1 U221 ( .A(N57), .B(n41), .Y(N97) );
  NOR2X1 U222 ( .A(i_match[3]), .B(\lte_41/B[5] ), .Y(n53) );
  AOI22XL U223 ( .A0(i_match_idx[14]), .A1(n54), .B0(\lte_41/B[5] ), .B1(
        i_match[3]), .Y(n52) );
  OAI21BX1 U224 ( .A0(i_match_idx[14]), .A1(n54), .B0N(n53), .Y(n51) );
  AND2X1 U225 ( .A(i_match_idx[18]), .B(n57), .Y(n46) );
  OAI32XL U226 ( .A0(n56), .A1(i_match_idx[17]), .A2(n46), .B0(i_match_idx[18]), .B1(n57), .Y(n49) );
  AO2B2X1 U227 ( .B0(n55), .B1(i_match_idx[16]), .A0(i_match_idx[15]), .A1N(
        i_match_idx[10]), .Y(n45) );
  OAI21X1 U228 ( .A0(i_match_idx[16]), .A1(n55), .B0(n45), .Y(n48) );
  AOI21X1 U229 ( .A0(i_match_idx[17]), .A1(n56), .B0(n46), .Y(n47) );
  OAI22X1 U230 ( .A0(n49), .A1(n48), .B0(n47), .B1(n49), .Y(n50) );
  OAI22X1 U231 ( .A0(n53), .A1(n52), .B0(n51), .B1(n50), .Y(N16) );
  NOR2X1 U232 ( .A(i_match[1]), .B(n98), .Y(n76) );
  AOI22XL U233 ( .A0(i_match_idx[4]), .A1(n80), .B0(n98), .B1(i_match[1]), .Y(
        n75) );
  OAI21BX1 U234 ( .A0(i_match_idx[4]), .A1(n80), .B0N(n76), .Y(n64) );
  AND2X1 U235 ( .A(i_match_idx[8]), .B(n79), .Y(n59) );
  OAI32XL U236 ( .A0(n78), .A1(i_match_idx[7]), .A2(n59), .B0(i_match_idx[8]), 
        .B1(n79), .Y(n62) );
  AO2B2X1 U237 ( .B0(n77), .B1(i_match_idx[6]), .A0(i_match_idx[5]), .A1N(
        i_match_idx[0]), .Y(n58) );
  OAI21X1 U238 ( .A0(i_match_idx[6]), .A1(n77), .B0(n58), .Y(n61) );
  AOI21X1 U239 ( .A0(i_match_idx[7]), .A1(n78), .B0(n59), .Y(n60) );
  OAI22X1 U240 ( .A0(n62), .A1(n61), .B0(n60), .B1(n62), .Y(n63) );
  OAI22X1 U241 ( .A0(n76), .A1(n75), .B0(n64), .B1(n63), .Y(N18) );
  NOR2X1 U242 ( .A(n18), .B(compare_1b[5]), .Y(n89) );
  AOI22XL U243 ( .A0(compare_1b[4]), .A1(n93), .B0(compare_1b[5]), .B1(n18), 
        .Y(n88) );
  OAI21BX1 U244 ( .A0(compare_1b[4]), .A1(n93), .B0N(n89), .Y(n87) );
  AND2X1 U245 ( .A(compare_1a[3]), .B(n92), .Y(n82) );
  OAI32XL U246 ( .A0(n91), .A1(compare_1a[2]), .A2(n82), .B0(compare_1a[3]), 
        .B1(n92), .Y(n85) );
  AO2B2X1 U247 ( .B0(n90), .B1(compare_1a[1]), .A0(compare_1a[0]), .A1N(
        compare_1b[0]), .Y(n81) );
  OAI21X1 U248 ( .A0(compare_1a[1]), .A1(n90), .B0(n81), .Y(n84) );
  AOI21X1 U249 ( .A0(compare_1a[2]), .A1(n91), .B0(n82), .Y(n83) );
  OAI22X1 U250 ( .A0(n85), .A1(n84), .B0(n83), .B1(n85), .Y(n86) );
  OAI22X1 U251 ( .A0(n89), .A1(n88), .B0(n87), .B1(n86), .Y(N20) );
endmodule


module DP_FailFunc ( clk, reset, i_valid, pattern, last_pat_idx, o_fail_func, 
        o_valid );
  input [63:0] pattern;
  input [2:0] last_pat_idx;
  output [23:0] o_fail_func;
  input clk, reset, i_valid;
  output o_valid;
  wire   N44, done_flag, N67, N68, N69, N70, n13, n14, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n174;
  wire   [2:0] current_st;
  wire   [2:0] next_st;
  wire   [2:0] process_idx;
  wire   [2:0] last_ff_map;

  TLATX1 \next_st_reg[0]  ( .G(N67), .D(N68), .QN(n1) );
  EDFFX2 done_flag_reg ( .D(n135), .E(n130), .CK(clk), .Q(done_flag) );
  DFFTRXL \current_st_reg[1]  ( .D(next_st[1]), .RN(n10), .CK(clk), .Q(
        current_st[1]), .QN(n14) );
  DFFTRXL \current_st_reg[2]  ( .D(next_st[2]), .RN(n10), .CK(clk), .Q(
        current_st[2]), .QN(n13) );
  TLATX1 \next_st_reg[2]  ( .G(N67), .D(N70), .Q(next_st[2]) );
  TLATX1 \next_st_reg[1]  ( .G(N67), .D(N69), .Q(next_st[1]) );
  DFFQXL \last_ff_map_reg[1]  ( .D(n168), .CK(clk), .Q(last_ff_map[1]) );
  DFFQXL \last_ff_map_reg[2]  ( .D(n167), .CK(clk), .Q(last_ff_map[2]) );
  DFFQXL \last_ff_map_reg[0]  ( .D(n169), .CK(clk), .Q(last_ff_map[0]) );
  DFFQXL \current_st_reg[0]  ( .D(N44), .CK(clk), .Q(current_st[0]) );
  DFFQXL o_valid_reg ( .D(n173), .CK(clk), .Q(o_valid) );
  DFFQXL \o_fail_func_reg[2]  ( .D(n164), .CK(clk), .Q(o_fail_func[2]) );
  DFFQXL \o_fail_func_reg[1]  ( .D(n165), .CK(clk), .Q(o_fail_func[1]) );
  DFFQXL \o_fail_func_reg[0]  ( .D(n166), .CK(clk), .Q(o_fail_func[0]) );
  DFFQXL \process_idx_reg[0]  ( .D(n171), .CK(clk), .Q(process_idx[0]) );
  DFFQXL \process_idx_reg[1]  ( .D(n172), .CK(clk), .Q(process_idx[1]) );
  DFFQXL \o_fail_func_reg[3]  ( .D(n163), .CK(clk), .Q(o_fail_func[3]) );
  DFFQXL \o_fail_func_reg[4]  ( .D(n162), .CK(clk), .Q(o_fail_func[4]) );
  DFFQXL \process_idx_reg[2]  ( .D(n170), .CK(clk), .Q(process_idx[2]) );
  DFFQXL \o_fail_func_reg[5]  ( .D(n161), .CK(clk), .Q(o_fail_func[5]) );
  DFFQXL \o_fail_func_reg[23]  ( .D(n143), .CK(clk), .Q(o_fail_func[23]) );
  DFFQXL \o_fail_func_reg[22]  ( .D(n144), .CK(clk), .Q(o_fail_func[22]) );
  DFFQXL \o_fail_func_reg[21]  ( .D(n145), .CK(clk), .Q(o_fail_func[21]) );
  DFFQXL \o_fail_func_reg[17]  ( .D(n149), .CK(clk), .Q(o_fail_func[17]) );
  DFFQXL \o_fail_func_reg[16]  ( .D(n150), .CK(clk), .Q(o_fail_func[16]) );
  DFFQXL \o_fail_func_reg[15]  ( .D(n151), .CK(clk), .Q(o_fail_func[15]) );
  DFFQXL \o_fail_func_reg[11]  ( .D(n155), .CK(clk), .Q(o_fail_func[11]) );
  DFFQXL \o_fail_func_reg[10]  ( .D(n156), .CK(clk), .Q(o_fail_func[10]) );
  DFFQXL \o_fail_func_reg[9]  ( .D(n157), .CK(clk), .Q(o_fail_func[9]) );
  DFFQXL \o_fail_func_reg[14]  ( .D(n152), .CK(clk), .Q(o_fail_func[14]) );
  DFFQXL \o_fail_func_reg[13]  ( .D(n153), .CK(clk), .Q(o_fail_func[13]) );
  DFFQXL \o_fail_func_reg[12]  ( .D(n154), .CK(clk), .Q(o_fail_func[12]) );
  DFFQXL \o_fail_func_reg[8]  ( .D(n158), .CK(clk), .Q(o_fail_func[8]) );
  DFFQXL \o_fail_func_reg[7]  ( .D(n159), .CK(clk), .Q(o_fail_func[7]) );
  DFFQXL \o_fail_func_reg[6]  ( .D(n160), .CK(clk), .Q(o_fail_func[6]) );
  DFFQXL \o_fail_func_reg[20]  ( .D(n146), .CK(clk), .Q(o_fail_func[20]) );
  DFFQXL \o_fail_func_reg[19]  ( .D(n147), .CK(clk), .Q(o_fail_func[19]) );
  DFFQXL \o_fail_func_reg[18]  ( .D(n148), .CK(clk), .Q(o_fail_func[18]) );
  XNOR2XL U3 ( .A(n2), .B(last_pat_idx[0]), .Y(n137) );
  AOI2BB1X2 U4 ( .A0N(n11), .A1N(n50), .B0(n9), .Y(n49) );
  AOI2BB1X2 U5 ( .A0N(n19), .A1N(n40), .B0(n9), .Y(n47) );
  AOI2BB1X2 U6 ( .A0N(n38), .A1N(n19), .B0(n9), .Y(n45) );
  AOI2BB1X2 U7 ( .A0N(n21), .A1N(n40), .B0(n9), .Y(n43) );
  AOI2BB1X2 U8 ( .A0N(n38), .A1N(n21), .B0(n9), .Y(n42) );
  AOI2BB1X2 U9 ( .A0N(n18), .A1N(n40), .B0(n9), .Y(n39) );
  AOI2BB1X2 U10 ( .A0N(n38), .A1N(n18), .B0(n9), .Y(n34) );
  INVX2 U11 ( .A(n131), .Y(n12) );
  INVX2 U12 ( .A(n10), .Y(n9) );
  OAI21X1 U13 ( .A0(n11), .A1(n52), .B0(n10), .Y(n51) );
  AOI21X1 U14 ( .A0(n22), .A1(n16), .B0(n131), .Y(n128) );
  INVX2 U15 ( .A(n130), .Y(n16) );
  INVX2 U16 ( .A(n8), .Y(n18) );
  NOR2X2 U17 ( .A(n15), .B(n46), .Y(n131) );
  OAI22X1 U18 ( .A0(n128), .A1(n23), .B0(n129), .B1(n130), .Y(n170) );
  AOI31X1 U19 ( .A0(n2), .A1(n12), .A2(n3), .B0(n4), .Y(n129) );
  OAI22X1 U20 ( .A0(n25), .A1(n12), .B0(n36), .B1(n53), .Y(n168) );
  OAI22X1 U21 ( .A0(n26), .A1(n12), .B0(n35), .B1(n53), .Y(n167) );
  OAI22X1 U22 ( .A0(n24), .A1(n12), .B0(n37), .B1(n53), .Y(n169) );
  NAND2X2 U23 ( .A(n55), .B(n24), .Y(n37) );
  INVX2 U24 ( .A(n135), .Y(n15) );
  AND4X2 U25 ( .A(n60), .B(n61), .C(n62), .D(n63), .Y(n55) );
  XNOR2X1 U26 ( .A(n121), .B(n122), .Y(n60) );
  XNOR2X1 U27 ( .A(n114), .B(n115), .Y(n61) );
  NOR4X2 U28 ( .A(n64), .B(n65), .C(n66), .D(n67), .Y(n63) );
  NAND3XL U29 ( .A(n12), .B(n52), .C(n59), .Y(n53) );
  NAND2X2 U30 ( .A(n46), .B(n22), .Y(n40) );
  INVX2 U31 ( .A(n46), .Y(n11) );
  NAND2X2 U32 ( .A(n2), .B(n46), .Y(n38) );
  INVX2 U33 ( .A(reset), .Y(n10) );
  NAND2X2 U34 ( .A(n135), .B(n59), .Y(n130) );
  NOR2X2 U35 ( .A(n26), .B(n25), .Y(n73) );
  NAND3XL U36 ( .A(n20), .B(n23), .C(n2), .Y(n50) );
  INVX2 U37 ( .A(n2), .Y(n22) );
  BUFX2 U38 ( .A(n41), .Y(n8) );
  NOR2X2 U39 ( .A(n23), .B(n20), .Y(n41) );
  NAND3XL U40 ( .A(n20), .B(n23), .C(n22), .Y(n52) );
  INVX2 U41 ( .A(n3), .Y(n19) );
  INVX2 U42 ( .A(n4), .Y(n21) );
  NOR4X2 U43 ( .A(n14), .B(current_st[0]), .C(current_st[2]), .D(n9), .Y(n135)
         );
  NOR2X2 U44 ( .A(n15), .B(done_flag), .Y(n46) );
  OAI32XL U45 ( .A0(n132), .A1(process_idx[1]), .A2(n131), .B0(n128), .B1(n20), 
        .Y(n172) );
  NAND2X2 U46 ( .A(n16), .B(n2), .Y(n132) );
  OAI32XL U47 ( .A0(n130), .A1(n2), .A2(n131), .B0(n22), .B1(n12), .Y(n171) );
  NOR3X1 U48 ( .A(n98), .B(n15), .C(n99), .Y(n62) );
  XOR2X1 U49 ( .A(n107), .B(n108), .Y(n98) );
  XOR2X1 U50 ( .A(n100), .B(n101), .Y(n99) );
  OAI22X1 U51 ( .A0(n109), .A1(n24), .B0(last_ff_map[0]), .B1(n110), .Y(n108)
         );
  NAND2BX2 U52 ( .AN(n54), .B(n55), .Y(n35) );
  AOI221XL U53 ( .A0(n7), .A1(last_ff_map[0]), .B0(n24), .B1(last_ff_map[2]), 
        .C0(n5), .Y(n54) );
  NAND2X2 U54 ( .A(n55), .B(n58), .Y(n36) );
  XNOR2X1 U55 ( .A(n25), .B(last_ff_map[0]), .Y(n58) );
  OAI2BB2X2 U56 ( .B0(n49), .B1(n36), .A0N(o_fail_func[4]), .A1N(n49), .Y(n162) );
  OAI2BB2X2 U57 ( .B0(n47), .B1(n36), .A0N(o_fail_func[7]), .A1N(n47), .Y(n159) );
  OAI2BB2X2 U58 ( .B0(n45), .B1(n36), .A0N(o_fail_func[10]), .A1N(n45), .Y(
        n156) );
  OAI2BB2X2 U59 ( .B0(n43), .B1(n36), .A0N(o_fail_func[13]), .A1N(n43), .Y(
        n153) );
  OAI2BB2X2 U60 ( .B0(n42), .B1(n36), .A0N(o_fail_func[16]), .A1N(n42), .Y(
        n150) );
  OAI2BB2X2 U61 ( .B0(n39), .B1(n36), .A0N(o_fail_func[19]), .A1N(n39), .Y(
        n147) );
  OAI2BB2X2 U62 ( .B0(n34), .B1(n36), .A0N(o_fail_func[22]), .A1N(n34), .Y(
        n144) );
  OAI2BB2X2 U63 ( .B0(n49), .B1(n35), .A0N(o_fail_func[5]), .A1N(n49), .Y(n161) );
  OAI2BB2X2 U64 ( .B0(n47), .B1(n35), .A0N(o_fail_func[8]), .A1N(n47), .Y(n158) );
  OAI2BB2X2 U65 ( .B0(n45), .B1(n35), .A0N(o_fail_func[11]), .A1N(n45), .Y(
        n155) );
  OAI2BB2X2 U66 ( .B0(n43), .B1(n35), .A0N(o_fail_func[14]), .A1N(n43), .Y(
        n152) );
  OAI2BB2X2 U67 ( .B0(n42), .B1(n35), .A0N(o_fail_func[17]), .A1N(n42), .Y(
        n149) );
  OAI2BB2X2 U68 ( .B0(n39), .B1(n35), .A0N(o_fail_func[20]), .A1N(n39), .Y(
        n146) );
  OAI2BB2X2 U69 ( .B0(n34), .B1(n35), .A0N(o_fail_func[23]), .A1N(n34), .Y(
        n143) );
  OAI2BB2X2 U70 ( .B0(n49), .B1(n37), .A0N(o_fail_func[3]), .A1N(n49), .Y(n163) );
  OAI2BB2X2 U71 ( .B0(n47), .B1(n37), .A0N(o_fail_func[6]), .A1N(n47), .Y(n160) );
  OAI2BB2X2 U72 ( .B0(n45), .B1(n37), .A0N(o_fail_func[9]), .A1N(n45), .Y(n157) );
  OAI2BB2X2 U73 ( .B0(n43), .B1(n37), .A0N(o_fail_func[12]), .A1N(n43), .Y(
        n154) );
  OAI2BB2X2 U74 ( .B0(n42), .B1(n37), .A0N(o_fail_func[15]), .A1N(n42), .Y(
        n151) );
  OAI2BB2X2 U75 ( .B0(n39), .B1(n37), .A0N(o_fail_func[18]), .A1N(n39), .Y(
        n148) );
  OAI2BB2X2 U76 ( .B0(n34), .B1(n37), .A0N(o_fail_func[21]), .A1N(n34), .Y(
        n145) );
  OAI2BB2X2 U77 ( .B0(n133), .B1(n134), .A0N(o_valid), .A1N(n133), .Y(n173) );
  NOR2X2 U78 ( .A(n134), .B(done_flag), .Y(n133) );
  NAND2X2 U79 ( .A(i_valid), .B(n10), .Y(n134) );
  NOR2BX1 U80 ( .AN(o_fail_func[0]), .B(n51), .Y(n166) );
  NOR2BX1 U81 ( .AN(o_fail_func[1]), .B(n51), .Y(n165) );
  NOR2BX1 U82 ( .AN(o_fail_func[2]), .B(n51), .Y(n164) );
  NAND2X2 U83 ( .A(n1), .B(n10), .Y(N44) );
  OAI222X1 U84 ( .A0(n105), .A1(n22), .B0(n2), .B1(n106), .C0(n50), .C1(n29), 
        .Y(n100) );
  INVX2 U85 ( .A(pattern[13]), .Y(n29) );
  AOI222XL U86 ( .A0(pattern[45]), .A1(n4), .B0(pattern[61]), .B1(n8), .C0(
        pattern[29]), .C1(n3), .Y(n105) );
  AOI222XL U87 ( .A0(pattern[37]), .A1(n4), .B0(pattern[53]), .B1(n8), .C0(
        pattern[21]), .C1(n3), .Y(n106) );
  OAI222X1 U88 ( .A0(n112), .A1(n22), .B0(n2), .B1(n113), .C0(n50), .C1(n30), 
        .Y(n107) );
  INVX2 U89 ( .A(pattern[12]), .Y(n30) );
  AOI222XL U90 ( .A0(pattern[44]), .A1(n4), .B0(pattern[60]), .B1(n8), .C0(
        pattern[28]), .C1(n3), .Y(n112) );
  AOI222XL U91 ( .A0(pattern[36]), .A1(n4), .B0(pattern[52]), .B1(n8), .C0(
        pattern[20]), .C1(n3), .Y(n113) );
  OAI222X1 U92 ( .A0(n116), .A1(n22), .B0(n2), .B1(n117), .C0(n50), .C1(n28), 
        .Y(n115) );
  INVX2 U93 ( .A(pattern[14]), .Y(n28) );
  AOI222XL U94 ( .A0(pattern[46]), .A1(n4), .B0(pattern[62]), .B1(n8), .C0(
        pattern[30]), .C1(n3), .Y(n116) );
  AOI222XL U95 ( .A0(pattern[38]), .A1(n4), .B0(pattern[54]), .B1(n8), .C0(
        pattern[22]), .C1(n3), .Y(n117) );
  OAI222X1 U96 ( .A0(n123), .A1(n22), .B0(n2), .B1(n124), .C0(n50), .C1(n27), 
        .Y(n122) );
  INVX2 U97 ( .A(pattern[15]), .Y(n27) );
  AOI222XL U98 ( .A0(pattern[47]), .A1(n4), .B0(pattern[63]), .B1(n8), .C0(
        pattern[31]), .C1(n3), .Y(n123) );
  AOI222XL U99 ( .A0(pattern[39]), .A1(n4), .B0(pattern[55]), .B1(n8), .C0(
        pattern[23]), .C1(n3), .Y(n124) );
  AOI222XL U100 ( .A0(pattern[43]), .A1(n4), .B0(pattern[59]), .B1(n8), .C0(
        pattern[27]), .C1(n3), .Y(n75) );
  AOI222XL U101 ( .A0(pattern[42]), .A1(n4), .B0(pattern[58]), .B1(n8), .C0(
        pattern[26]), .C1(n3), .Y(n82) );
  AOI222XL U102 ( .A0(pattern[41]), .A1(n4), .B0(pattern[57]), .B1(n8), .C0(
        pattern[25]), .C1(n3), .Y(n89) );
  AOI222XL U103 ( .A0(pattern[40]), .A1(n4), .B0(pattern[56]), .B1(n8), .C0(
        pattern[24]), .C1(n3), .Y(n96) );
  AOI222XL U104 ( .A0(pattern[44]), .A1(n5), .B0(pattern[12]), .B1(n6), .C0(
        pattern[28]), .C1(n7), .Y(n109) );
  AOI222XL U105 ( .A0(pattern[35]), .A1(n4), .B0(pattern[51]), .B1(n8), .C0(
        pattern[19]), .C1(n3), .Y(n76) );
  AOI222XL U106 ( .A0(pattern[34]), .A1(n4), .B0(pattern[50]), .B1(n8), .C0(
        pattern[18]), .C1(n3), .Y(n83) );
  AOI222XL U107 ( .A0(pattern[33]), .A1(n4), .B0(pattern[49]), .B1(n8), .C0(
        pattern[17]), .C1(n3), .Y(n90) );
  AOI222XL U108 ( .A0(pattern[32]), .A1(n4), .B0(pattern[48]), .B1(n8), .C0(
        pattern[16]), .C1(n3), .Y(n97) );
  OAI22X1 U109 ( .A0(n102), .A1(n24), .B0(last_ff_map[0]), .B1(n103), .Y(n101)
         );
  AOI222XL U110 ( .A0(n5), .A1(pattern[45]), .B0(n6), .B1(pattern[13]), .C0(n7), .C1(pattern[29]), .Y(n102) );
  AOI221XL U111 ( .A0(pattern[5]), .A1(n6), .B0(n73), .B1(pattern[53]), .C0(
        n104), .Y(n103) );
  AO22X2 U112 ( .A0(pattern[37]), .A1(n5), .B0(pattern[21]), .B1(n7), .Y(n104)
         );
  AOI221XL U113 ( .A0(pattern[4]), .A1(n6), .B0(pattern[52]), .B1(n73), .C0(
        n111), .Y(n110) );
  AO22X2 U114 ( .A0(n5), .A1(pattern[36]), .B0(n7), .B1(pattern[20]), .Y(n111)
         );
  AOI221XL U115 ( .A0(pattern[3]), .A1(n6), .B0(pattern[51]), .B1(n73), .C0(
        n74), .Y(n71) );
  AO22X2 U116 ( .A0(n5), .A1(pattern[35]), .B0(n7), .B1(pattern[19]), .Y(n74)
         );
  AOI221XL U117 ( .A0(pattern[2]), .A1(n6), .B0(pattern[50]), .B1(n73), .C0(
        n81), .Y(n80) );
  AO22X2 U118 ( .A0(n5), .A1(pattern[34]), .B0(n7), .B1(pattern[18]), .Y(n81)
         );
  AOI221XL U119 ( .A0(pattern[1]), .A1(n6), .B0(pattern[49]), .B1(n73), .C0(
        n88), .Y(n87) );
  AO22X2 U120 ( .A0(n5), .A1(pattern[33]), .B0(n7), .B1(pattern[17]), .Y(n88)
         );
  AOI221XL U121 ( .A0(pattern[0]), .A1(n6), .B0(pattern[48]), .B1(n73), .C0(
        n95), .Y(n94) );
  AO22X2 U122 ( .A0(n5), .A1(pattern[32]), .B0(n7), .B1(pattern[16]), .Y(n95)
         );
  OAI22X1 U123 ( .A0(n118), .A1(n24), .B0(last_ff_map[0]), .B1(n119), .Y(n114)
         );
  AOI222XL U124 ( .A0(pattern[46]), .A1(n5), .B0(pattern[14]), .B1(n6), .C0(
        pattern[30]), .C1(n7), .Y(n118) );
  AOI221XL U125 ( .A0(pattern[6]), .A1(n6), .B0(pattern[54]), .B1(n73), .C0(
        n120), .Y(n119) );
  AO22X2 U126 ( .A0(n5), .A1(pattern[38]), .B0(n7), .B1(pattern[22]), .Y(n120)
         );
  OAI22X1 U127 ( .A0(n125), .A1(n24), .B0(last_ff_map[0]), .B1(n126), .Y(n121)
         );
  AOI222XL U128 ( .A0(pattern[47]), .A1(n5), .B0(pattern[15]), .B1(n6), .C0(
        pattern[31]), .C1(n7), .Y(n125) );
  AOI221XL U129 ( .A0(pattern[7]), .A1(n6), .B0(pattern[55]), .B1(n73), .C0(
        n127), .Y(n126) );
  AO22X2 U130 ( .A0(n5), .A1(pattern[39]), .B0(n7), .B1(pattern[23]), .Y(n127)
         );
  NAND3XL U131 ( .A(n136), .B(n137), .C(n138), .Y(n59) );
  XNOR2X1 U132 ( .A(process_idx[1]), .B(last_pat_idx[1]), .Y(n136) );
  XNOR2X1 U133 ( .A(process_idx[2]), .B(last_pat_idx[2]), .Y(n138) );
  BUFX2 U134 ( .A(n72), .Y(n6) );
  NOR2X2 U135 ( .A(last_ff_map[1]), .B(last_ff_map[2]), .Y(n72) );
  BUFX2 U136 ( .A(n44), .Y(n4) );
  NOR2X2 U137 ( .A(n23), .B(process_idx[1]), .Y(n44) );
  INVX2 U138 ( .A(last_ff_map[0]), .Y(n24) );
  BUFX2 U139 ( .A(n48), .Y(n3) );
  NOR2X2 U140 ( .A(n20), .B(process_idx[2]), .Y(n48) );
  BUFX2 U141 ( .A(process_idx[0]), .Y(n2) );
  INVX2 U142 ( .A(process_idx[1]), .Y(n20) );
  INVX2 U143 ( .A(process_idx[2]), .Y(n23) );
  XOR2X1 U144 ( .A(n77), .B(n78), .Y(n66) );
  OAI22X1 U145 ( .A0(n79), .A1(n24), .B0(last_ff_map[0]), .B1(n80), .Y(n78) );
  OAI222X1 U146 ( .A0(n82), .A1(n22), .B0(n2), .B1(n83), .C0(n50), .C1(n32), 
        .Y(n77) );
  AOI222XL U147 ( .A0(pattern[42]), .A1(n5), .B0(pattern[10]), .B1(n6), .C0(
        pattern[26]), .C1(n7), .Y(n79) );
  XOR2X1 U148 ( .A(n84), .B(n85), .Y(n65) );
  OAI22X1 U149 ( .A0(n86), .A1(n24), .B0(last_ff_map[0]), .B1(n87), .Y(n85) );
  OAI222X1 U150 ( .A0(n89), .A1(n22), .B0(n2), .B1(n90), .C0(n50), .C1(n33), 
        .Y(n84) );
  AOI222XL U151 ( .A0(pattern[41]), .A1(n5), .B0(pattern[9]), .B1(n6), .C0(
        pattern[25]), .C1(n7), .Y(n86) );
  XOR2X1 U152 ( .A(n91), .B(n92), .Y(n64) );
  OAI22X1 U153 ( .A0(n93), .A1(n24), .B0(last_ff_map[0]), .B1(n94), .Y(n92) );
  OAI222X1 U154 ( .A0(n96), .A1(n22), .B0(n2), .B1(n97), .C0(n50), .C1(n174), 
        .Y(n91) );
  AOI222XL U155 ( .A0(pattern[40]), .A1(n5), .B0(pattern[8]), .B1(n6), .C0(
        pattern[24]), .C1(n7), .Y(n93) );
  XOR2X1 U156 ( .A(n68), .B(n69), .Y(n67) );
  OAI22X1 U157 ( .A0(n70), .A1(n24), .B0(last_ff_map[0]), .B1(n71), .Y(n69) );
  OAI222X1 U158 ( .A0(n75), .A1(n22), .B0(n2), .B1(n76), .C0(n50), .C1(n31), 
        .Y(n68) );
  AOI222XL U159 ( .A0(pattern[43]), .A1(n5), .B0(pattern[11]), .B1(n6), .C0(
        pattern[27]), .C1(n7), .Y(n70) );
  BUFX2 U160 ( .A(n57), .Y(n5) );
  NOR2X2 U161 ( .A(n26), .B(last_ff_map[1]), .Y(n57) );
  BUFX2 U162 ( .A(n56), .Y(n7) );
  NOR2X2 U163 ( .A(n25), .B(last_ff_map[2]), .Y(n56) );
  INVX2 U164 ( .A(last_ff_map[2]), .Y(n26) );
  INVX2 U165 ( .A(last_ff_map[1]), .Y(n25) );
  INVX2 U166 ( .A(pattern[11]), .Y(n31) );
  INVX2 U167 ( .A(pattern[10]), .Y(n32) );
  INVX2 U168 ( .A(pattern[9]), .Y(n33) );
  INVX2 U169 ( .A(pattern[8]), .Y(n174) );
  XNOR2X1 U170 ( .A(current_st[0]), .B(current_st[2]), .Y(n141) );
  OAI31X1 U171 ( .A0(n139), .A1(n134), .A2(n13), .B0(n12), .Y(N70) );
  NAND2X2 U172 ( .A(n17), .B(n14), .Y(n139) );
  OAI31X1 U173 ( .A0(n141), .A1(i_valid), .A2(current_st[1]), .B0(n10), .Y(N68) );
  OAI31X1 U174 ( .A0(n140), .A1(n134), .A2(n17), .B0(n11), .Y(N69) );
  NAND2X2 U175 ( .A(n14), .B(n13), .Y(n140) );
  OAI21X1 U176 ( .A0(current_st[1]), .A1(n141), .B0(n142), .Y(N67) );
  AOI31X1 U177 ( .A0(n17), .A1(n13), .A2(current_st[1]), .B0(n9), .Y(n142) );
  INVX2 U178 ( .A(current_st[0]), .Y(n17) );
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
  wire   n506, read_done, ff_valid, N63, N64, N65, N66, N145, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, \add_69_S2/carry[4] ,
         \add_69_S2/carry[3] , \add_69_S2/carry[2] , n1, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505;
  wire   [4:0] s_index;
  wire   [2:0] p_index;
  wire   [2:0] active;

  DP_FailFunc dp1 ( .clk(clk), .reset(n489), .i_valid(read_done), .pattern(
        pat_reg), .last_pat_idx(pat_last_idx), .o_fail_func(ff_result), 
        .o_valid(ff_valid) );
  EDFFX2 read_done_reg ( .D(n74), .E(n497), .CK(clk), .Q(read_done) );
  EDFFX2 valid_reg ( .D(n74), .E(n491), .CK(clk), .Q(valid) );
  DFFQXL \str_reg_reg[247]  ( .D(n107), .CK(clk), .Q(str_reg[247]) );
  DFFQXL \str_reg_reg[246]  ( .D(n108), .CK(clk), .Q(str_reg[246]) );
  DFFQXL \str_reg_reg[245]  ( .D(n109), .CK(clk), .Q(str_reg[245]) );
  DFFQXL \str_reg_reg[244]  ( .D(n110), .CK(clk), .Q(str_reg[244]) );
  DFFQXL \str_reg_reg[243]  ( .D(n111), .CK(clk), .Q(str_reg[243]) );
  DFFQXL \str_reg_reg[242]  ( .D(n112), .CK(clk), .Q(str_reg[242]) );
  DFFQXL \str_reg_reg[241]  ( .D(n113), .CK(clk), .Q(str_reg[241]) );
  DFFQXL \str_reg_reg[240]  ( .D(n114), .CK(clk), .Q(str_reg[240]) );
  DFFQXL \str_reg_reg[119]  ( .D(n235), .CK(clk), .Q(str_reg[119]) );
  DFFQXL \str_reg_reg[118]  ( .D(n236), .CK(clk), .Q(str_reg[118]) );
  DFFQXL \str_reg_reg[117]  ( .D(n237), .CK(clk), .Q(str_reg[117]) );
  DFFQXL \str_reg_reg[116]  ( .D(n238), .CK(clk), .Q(str_reg[116]) );
  DFFQXL \str_reg_reg[115]  ( .D(n239), .CK(clk), .Q(str_reg[115]) );
  DFFQXL \str_reg_reg[114]  ( .D(n240), .CK(clk), .Q(str_reg[114]) );
  DFFQXL \str_reg_reg[113]  ( .D(n241), .CK(clk), .Q(str_reg[113]) );
  DFFQXL \str_reg_reg[112]  ( .D(n242), .CK(clk), .Q(str_reg[112]) );
  DFFQXL \str_reg_reg[231]  ( .D(n123), .CK(clk), .Q(str_reg[231]) );
  DFFQXL \str_reg_reg[230]  ( .D(n124), .CK(clk), .Q(str_reg[230]) );
  DFFQXL \str_reg_reg[229]  ( .D(n125), .CK(clk), .Q(str_reg[229]) );
  DFFQXL \str_reg_reg[228]  ( .D(n126), .CK(clk), .Q(str_reg[228]) );
  DFFQXL \str_reg_reg[227]  ( .D(n127), .CK(clk), .Q(str_reg[227]) );
  DFFQXL \str_reg_reg[226]  ( .D(n128), .CK(clk), .Q(str_reg[226]) );
  DFFQXL \str_reg_reg[225]  ( .D(n129), .CK(clk), .Q(str_reg[225]) );
  DFFQXL \str_reg_reg[224]  ( .D(n130), .CK(clk), .Q(str_reg[224]) );
  DFFQXL \str_reg_reg[103]  ( .D(n251), .CK(clk), .Q(str_reg[103]) );
  DFFQXL \str_reg_reg[102]  ( .D(n252), .CK(clk), .Q(str_reg[102]) );
  DFFQXL \str_reg_reg[101]  ( .D(n253), .CK(clk), .Q(str_reg[101]) );
  DFFQXL \str_reg_reg[100]  ( .D(n254), .CK(clk), .Q(str_reg[100]) );
  DFFQXL \str_reg_reg[99]  ( .D(n255), .CK(clk), .Q(str_reg[99]) );
  DFFQXL \str_reg_reg[98]  ( .D(n256), .CK(clk), .Q(str_reg[98]) );
  DFFQXL \str_reg_reg[97]  ( .D(n257), .CK(clk), .Q(str_reg[97]) );
  DFFQXL \str_reg_reg[96]  ( .D(n258), .CK(clk), .Q(str_reg[96]) );
  DFFQXL \str_reg_reg[215]  ( .D(n139), .CK(clk), .Q(str_reg[215]) );
  DFFQXL \str_reg_reg[214]  ( .D(n140), .CK(clk), .Q(str_reg[214]) );
  DFFQXL \str_reg_reg[213]  ( .D(n141), .CK(clk), .Q(str_reg[213]) );
  DFFQXL \str_reg_reg[212]  ( .D(n142), .CK(clk), .Q(str_reg[212]) );
  DFFQXL \str_reg_reg[211]  ( .D(n143), .CK(clk), .Q(str_reg[211]) );
  DFFQXL \str_reg_reg[210]  ( .D(n144), .CK(clk), .Q(str_reg[210]) );
  DFFQXL \str_reg_reg[209]  ( .D(n145), .CK(clk), .Q(str_reg[209]) );
  DFFQXL \str_reg_reg[208]  ( .D(n146), .CK(clk), .Q(str_reg[208]) );
  DFFQXL \str_reg_reg[87]  ( .D(n267), .CK(clk), .Q(str_reg[87]) );
  DFFQXL \str_reg_reg[86]  ( .D(n268), .CK(clk), .Q(str_reg[86]) );
  DFFQXL \str_reg_reg[85]  ( .D(n269), .CK(clk), .Q(str_reg[85]) );
  DFFQXL \str_reg_reg[84]  ( .D(n270), .CK(clk), .Q(str_reg[84]) );
  DFFQXL \str_reg_reg[83]  ( .D(n271), .CK(clk), .Q(str_reg[83]) );
  DFFQXL \str_reg_reg[82]  ( .D(n272), .CK(clk), .Q(str_reg[82]) );
  DFFQXL \str_reg_reg[81]  ( .D(n273), .CK(clk), .Q(str_reg[81]) );
  DFFQXL \str_reg_reg[80]  ( .D(n274), .CK(clk), .Q(str_reg[80]) );
  DFFQXL \str_reg_reg[199]  ( .D(n155), .CK(clk), .Q(str_reg[199]) );
  DFFQXL \str_reg_reg[198]  ( .D(n156), .CK(clk), .Q(str_reg[198]) );
  DFFQXL \str_reg_reg[197]  ( .D(n157), .CK(clk), .Q(str_reg[197]) );
  DFFQXL \str_reg_reg[196]  ( .D(n158), .CK(clk), .Q(str_reg[196]) );
  DFFQXL \str_reg_reg[195]  ( .D(n159), .CK(clk), .Q(str_reg[195]) );
  DFFQXL \str_reg_reg[194]  ( .D(n160), .CK(clk), .Q(str_reg[194]) );
  DFFQXL \str_reg_reg[193]  ( .D(n161), .CK(clk), .Q(str_reg[193]) );
  DFFQXL \str_reg_reg[192]  ( .D(n162), .CK(clk), .Q(str_reg[192]) );
  DFFQXL \str_reg_reg[71]  ( .D(n283), .CK(clk), .Q(str_reg[71]) );
  DFFQXL \str_reg_reg[70]  ( .D(n284), .CK(clk), .Q(str_reg[70]) );
  DFFQXL \str_reg_reg[69]  ( .D(n285), .CK(clk), .Q(str_reg[69]) );
  DFFQXL \str_reg_reg[68]  ( .D(n286), .CK(clk), .Q(str_reg[68]) );
  DFFQXL \str_reg_reg[67]  ( .D(n287), .CK(clk), .Q(str_reg[67]) );
  DFFQXL \str_reg_reg[66]  ( .D(n288), .CK(clk), .Q(str_reg[66]) );
  DFFQXL \str_reg_reg[65]  ( .D(n289), .CK(clk), .Q(str_reg[65]) );
  DFFQXL \str_reg_reg[64]  ( .D(n290), .CK(clk), .Q(str_reg[64]) );
  DFFQXL \str_reg_reg[255]  ( .D(n99), .CK(clk), .Q(str_reg[255]) );
  DFFQXL \str_reg_reg[254]  ( .D(n100), .CK(clk), .Q(str_reg[254]) );
  DFFQXL \str_reg_reg[253]  ( .D(n101), .CK(clk), .Q(str_reg[253]) );
  DFFQXL \str_reg_reg[252]  ( .D(n102), .CK(clk), .Q(str_reg[252]) );
  DFFQXL \str_reg_reg[251]  ( .D(n103), .CK(clk), .Q(str_reg[251]) );
  DFFQXL \str_reg_reg[250]  ( .D(n104), .CK(clk), .Q(str_reg[250]) );
  DFFQXL \str_reg_reg[249]  ( .D(n105), .CK(clk), .Q(str_reg[249]) );
  DFFQXL \str_reg_reg[248]  ( .D(n106), .CK(clk), .Q(str_reg[248]) );
  DFFQXL \str_reg_reg[127]  ( .D(n227), .CK(clk), .Q(str_reg[127]) );
  DFFQXL \str_reg_reg[126]  ( .D(n228), .CK(clk), .Q(str_reg[126]) );
  DFFQXL \str_reg_reg[125]  ( .D(n229), .CK(clk), .Q(str_reg[125]) );
  DFFQXL \str_reg_reg[124]  ( .D(n230), .CK(clk), .Q(str_reg[124]) );
  DFFQXL \str_reg_reg[123]  ( .D(n231), .CK(clk), .Q(str_reg[123]) );
  DFFQXL \str_reg_reg[122]  ( .D(n232), .CK(clk), .Q(str_reg[122]) );
  DFFQXL \str_reg_reg[121]  ( .D(n233), .CK(clk), .Q(str_reg[121]) );
  DFFQXL \str_reg_reg[120]  ( .D(n234), .CK(clk), .Q(str_reg[120]) );
  DFFQXL \str_reg_reg[239]  ( .D(n115), .CK(clk), .Q(str_reg[239]) );
  DFFQXL \str_reg_reg[238]  ( .D(n116), .CK(clk), .Q(str_reg[238]) );
  DFFQXL \str_reg_reg[237]  ( .D(n117), .CK(clk), .Q(str_reg[237]) );
  DFFQXL \str_reg_reg[236]  ( .D(n118), .CK(clk), .Q(str_reg[236]) );
  DFFQXL \str_reg_reg[235]  ( .D(n119), .CK(clk), .Q(str_reg[235]) );
  DFFQXL \str_reg_reg[234]  ( .D(n120), .CK(clk), .Q(str_reg[234]) );
  DFFQXL \str_reg_reg[233]  ( .D(n121), .CK(clk), .Q(str_reg[233]) );
  DFFQXL \str_reg_reg[232]  ( .D(n122), .CK(clk), .Q(str_reg[232]) );
  DFFQXL \str_reg_reg[111]  ( .D(n243), .CK(clk), .Q(str_reg[111]) );
  DFFQXL \str_reg_reg[110]  ( .D(n244), .CK(clk), .Q(str_reg[110]) );
  DFFQXL \str_reg_reg[109]  ( .D(n245), .CK(clk), .Q(str_reg[109]) );
  DFFQXL \str_reg_reg[108]  ( .D(n246), .CK(clk), .Q(str_reg[108]) );
  DFFQXL \str_reg_reg[107]  ( .D(n247), .CK(clk), .Q(str_reg[107]) );
  DFFQXL \str_reg_reg[106]  ( .D(n248), .CK(clk), .Q(str_reg[106]) );
  DFFQXL \str_reg_reg[105]  ( .D(n249), .CK(clk), .Q(str_reg[105]) );
  DFFQXL \str_reg_reg[104]  ( .D(n250), .CK(clk), .Q(str_reg[104]) );
  DFFQXL \str_reg_reg[223]  ( .D(n131), .CK(clk), .Q(str_reg[223]) );
  DFFQXL \str_reg_reg[222]  ( .D(n132), .CK(clk), .Q(str_reg[222]) );
  DFFQXL \str_reg_reg[221]  ( .D(n133), .CK(clk), .Q(str_reg[221]) );
  DFFQXL \str_reg_reg[220]  ( .D(n134), .CK(clk), .Q(str_reg[220]) );
  DFFQXL \str_reg_reg[219]  ( .D(n135), .CK(clk), .Q(str_reg[219]) );
  DFFQXL \str_reg_reg[218]  ( .D(n136), .CK(clk), .Q(str_reg[218]) );
  DFFQXL \str_reg_reg[217]  ( .D(n137), .CK(clk), .Q(str_reg[217]) );
  DFFQXL \str_reg_reg[216]  ( .D(n138), .CK(clk), .Q(str_reg[216]) );
  DFFQXL \str_reg_reg[95]  ( .D(n259), .CK(clk), .Q(str_reg[95]) );
  DFFQXL \str_reg_reg[94]  ( .D(n260), .CK(clk), .Q(str_reg[94]) );
  DFFQXL \str_reg_reg[93]  ( .D(n261), .CK(clk), .Q(str_reg[93]) );
  DFFQXL \str_reg_reg[92]  ( .D(n262), .CK(clk), .Q(str_reg[92]) );
  DFFQXL \str_reg_reg[91]  ( .D(n263), .CK(clk), .Q(str_reg[91]) );
  DFFQXL \str_reg_reg[90]  ( .D(n264), .CK(clk), .Q(str_reg[90]) );
  DFFQXL \str_reg_reg[89]  ( .D(n265), .CK(clk), .Q(str_reg[89]) );
  DFFQXL \str_reg_reg[88]  ( .D(n266), .CK(clk), .Q(str_reg[88]) );
  DFFQXL \str_reg_reg[207]  ( .D(n147), .CK(clk), .Q(str_reg[207]) );
  DFFQXL \str_reg_reg[206]  ( .D(n148), .CK(clk), .Q(str_reg[206]) );
  DFFQXL \str_reg_reg[205]  ( .D(n149), .CK(clk), .Q(str_reg[205]) );
  DFFQXL \str_reg_reg[204]  ( .D(n150), .CK(clk), .Q(str_reg[204]) );
  DFFQXL \str_reg_reg[203]  ( .D(n151), .CK(clk), .Q(str_reg[203]) );
  DFFQXL \str_reg_reg[202]  ( .D(n152), .CK(clk), .Q(str_reg[202]) );
  DFFQXL \str_reg_reg[201]  ( .D(n153), .CK(clk), .Q(str_reg[201]) );
  DFFQXL \str_reg_reg[200]  ( .D(n154), .CK(clk), .Q(str_reg[200]) );
  DFFQXL \str_reg_reg[79]  ( .D(n275), .CK(clk), .Q(str_reg[79]) );
  DFFQXL \str_reg_reg[78]  ( .D(n276), .CK(clk), .Q(str_reg[78]) );
  DFFQXL \str_reg_reg[77]  ( .D(n277), .CK(clk), .Q(str_reg[77]) );
  DFFQXL \str_reg_reg[76]  ( .D(n278), .CK(clk), .Q(str_reg[76]) );
  DFFQXL \str_reg_reg[75]  ( .D(n279), .CK(clk), .Q(str_reg[75]) );
  DFFQXL \str_reg_reg[74]  ( .D(n280), .CK(clk), .Q(str_reg[74]) );
  DFFQXL \str_reg_reg[73]  ( .D(n281), .CK(clk), .Q(str_reg[73]) );
  DFFQXL \str_reg_reg[72]  ( .D(n282), .CK(clk), .Q(str_reg[72]) );
  DFFQXL \str_reg_reg[183]  ( .D(n171), .CK(clk), .Q(str_reg[183]) );
  DFFQXL \str_reg_reg[182]  ( .D(n172), .CK(clk), .Q(str_reg[182]) );
  DFFQXL \str_reg_reg[181]  ( .D(n173), .CK(clk), .Q(str_reg[181]) );
  DFFQXL \str_reg_reg[180]  ( .D(n174), .CK(clk), .Q(str_reg[180]) );
  DFFQXL \str_reg_reg[179]  ( .D(n175), .CK(clk), .Q(str_reg[179]) );
  DFFQXL \str_reg_reg[178]  ( .D(n176), .CK(clk), .Q(str_reg[178]) );
  DFFQXL \str_reg_reg[177]  ( .D(n177), .CK(clk), .Q(str_reg[177]) );
  DFFQXL \str_reg_reg[176]  ( .D(n178), .CK(clk), .Q(str_reg[176]) );
  DFFQXL \str_reg_reg[55]  ( .D(n299), .CK(clk), .Q(str_reg[55]) );
  DFFQXL \str_reg_reg[54]  ( .D(n300), .CK(clk), .Q(str_reg[54]) );
  DFFQXL \str_reg_reg[53]  ( .D(n301), .CK(clk), .Q(str_reg[53]) );
  DFFQXL \str_reg_reg[52]  ( .D(n302), .CK(clk), .Q(str_reg[52]) );
  DFFQXL \str_reg_reg[51]  ( .D(n303), .CK(clk), .Q(str_reg[51]) );
  DFFQXL \str_reg_reg[50]  ( .D(n304), .CK(clk), .Q(str_reg[50]) );
  DFFQXL \str_reg_reg[49]  ( .D(n305), .CK(clk), .Q(str_reg[49]) );
  DFFQXL \str_reg_reg[48]  ( .D(n306), .CK(clk), .Q(str_reg[48]) );
  DFFQXL \str_reg_reg[167]  ( .D(n187), .CK(clk), .Q(str_reg[167]) );
  DFFQXL \str_reg_reg[166]  ( .D(n188), .CK(clk), .Q(str_reg[166]) );
  DFFQXL \str_reg_reg[165]  ( .D(n189), .CK(clk), .Q(str_reg[165]) );
  DFFQXL \str_reg_reg[164]  ( .D(n190), .CK(clk), .Q(str_reg[164]) );
  DFFQXL \str_reg_reg[163]  ( .D(n191), .CK(clk), .Q(str_reg[163]) );
  DFFQXL \str_reg_reg[162]  ( .D(n192), .CK(clk), .Q(str_reg[162]) );
  DFFQXL \str_reg_reg[161]  ( .D(n193), .CK(clk), .Q(str_reg[161]) );
  DFFQXL \str_reg_reg[160]  ( .D(n194), .CK(clk), .Q(str_reg[160]) );
  DFFQXL \str_reg_reg[39]  ( .D(n315), .CK(clk), .Q(str_reg[39]) );
  DFFQXL \str_reg_reg[38]  ( .D(n316), .CK(clk), .Q(str_reg[38]) );
  DFFQXL \str_reg_reg[37]  ( .D(n317), .CK(clk), .Q(str_reg[37]) );
  DFFQXL \str_reg_reg[36]  ( .D(n318), .CK(clk), .Q(str_reg[36]) );
  DFFQXL \str_reg_reg[35]  ( .D(n319), .CK(clk), .Q(str_reg[35]) );
  DFFQXL \str_reg_reg[34]  ( .D(n320), .CK(clk), .Q(str_reg[34]) );
  DFFQXL \str_reg_reg[33]  ( .D(n321), .CK(clk), .Q(str_reg[33]) );
  DFFQXL \str_reg_reg[32]  ( .D(n322), .CK(clk), .Q(str_reg[32]) );
  DFFQXL \str_reg_reg[151]  ( .D(n203), .CK(clk), .Q(str_reg[151]) );
  DFFQXL \str_reg_reg[150]  ( .D(n204), .CK(clk), .Q(str_reg[150]) );
  DFFQXL \str_reg_reg[149]  ( .D(n205), .CK(clk), .Q(str_reg[149]) );
  DFFQXL \str_reg_reg[148]  ( .D(n206), .CK(clk), .Q(str_reg[148]) );
  DFFQXL \str_reg_reg[147]  ( .D(n207), .CK(clk), .Q(str_reg[147]) );
  DFFQXL \str_reg_reg[146]  ( .D(n208), .CK(clk), .Q(str_reg[146]) );
  DFFQXL \str_reg_reg[145]  ( .D(n209), .CK(clk), .Q(str_reg[145]) );
  DFFQXL \str_reg_reg[144]  ( .D(n210), .CK(clk), .Q(str_reg[144]) );
  DFFQXL \str_reg_reg[23]  ( .D(n331), .CK(clk), .Q(str_reg[23]) );
  DFFQXL \str_reg_reg[22]  ( .D(n332), .CK(clk), .Q(str_reg[22]) );
  DFFQXL \str_reg_reg[21]  ( .D(n333), .CK(clk), .Q(str_reg[21]) );
  DFFQXL \str_reg_reg[20]  ( .D(n334), .CK(clk), .Q(str_reg[20]) );
  DFFQXL \str_reg_reg[19]  ( .D(n335), .CK(clk), .Q(str_reg[19]) );
  DFFQXL \str_reg_reg[18]  ( .D(n336), .CK(clk), .Q(str_reg[18]) );
  DFFQXL \str_reg_reg[17]  ( .D(n337), .CK(clk), .Q(str_reg[17]) );
  DFFQXL \str_reg_reg[16]  ( .D(n338), .CK(clk), .Q(str_reg[16]) );
  DFFQXL \str_reg_reg[135]  ( .D(n219), .CK(clk), .Q(str_reg[135]) );
  DFFQXL \str_reg_reg[134]  ( .D(n220), .CK(clk), .Q(str_reg[134]) );
  DFFQXL \str_reg_reg[133]  ( .D(n221), .CK(clk), .Q(str_reg[133]) );
  DFFQXL \str_reg_reg[132]  ( .D(n222), .CK(clk), .Q(str_reg[132]) );
  DFFQXL \str_reg_reg[131]  ( .D(n223), .CK(clk), .Q(str_reg[131]) );
  DFFQXL \str_reg_reg[130]  ( .D(n224), .CK(clk), .Q(str_reg[130]) );
  DFFQXL \str_reg_reg[129]  ( .D(n225), .CK(clk), .Q(str_reg[129]) );
  DFFQXL \str_reg_reg[128]  ( .D(n226), .CK(clk), .Q(str_reg[128]) );
  DFFQXL \str_reg_reg[7]  ( .D(n347), .CK(clk), .Q(str_reg[7]) );
  DFFQXL \str_reg_reg[6]  ( .D(n348), .CK(clk), .Q(str_reg[6]) );
  DFFQXL \str_reg_reg[5]  ( .D(n349), .CK(clk), .Q(str_reg[5]) );
  DFFQXL \str_reg_reg[4]  ( .D(n350), .CK(clk), .Q(str_reg[4]) );
  DFFQXL \str_reg_reg[3]  ( .D(n351), .CK(clk), .Q(str_reg[3]) );
  DFFQXL \str_reg_reg[2]  ( .D(n352), .CK(clk), .Q(str_reg[2]) );
  DFFQXL \str_reg_reg[1]  ( .D(n353), .CK(clk), .Q(str_reg[1]) );
  DFFQXL \str_reg_reg[0]  ( .D(n354), .CK(clk), .Q(str_reg[0]) );
  DFFQXL \str_reg_reg[191]  ( .D(n163), .CK(clk), .Q(str_reg[191]) );
  DFFQXL \str_reg_reg[190]  ( .D(n164), .CK(clk), .Q(str_reg[190]) );
  DFFQXL \str_reg_reg[189]  ( .D(n165), .CK(clk), .Q(str_reg[189]) );
  DFFQXL \str_reg_reg[188]  ( .D(n166), .CK(clk), .Q(str_reg[188]) );
  DFFQXL \str_reg_reg[187]  ( .D(n167), .CK(clk), .Q(str_reg[187]) );
  DFFQXL \str_reg_reg[186]  ( .D(n168), .CK(clk), .Q(str_reg[186]) );
  DFFQXL \str_reg_reg[185]  ( .D(n169), .CK(clk), .Q(str_reg[185]) );
  DFFQXL \str_reg_reg[184]  ( .D(n170), .CK(clk), .Q(str_reg[184]) );
  DFFQXL \str_reg_reg[63]  ( .D(n291), .CK(clk), .Q(str_reg[63]) );
  DFFQXL \str_reg_reg[62]  ( .D(n292), .CK(clk), .Q(str_reg[62]) );
  DFFQXL \str_reg_reg[61]  ( .D(n293), .CK(clk), .Q(str_reg[61]) );
  DFFQXL \str_reg_reg[60]  ( .D(n294), .CK(clk), .Q(str_reg[60]) );
  DFFQXL \str_reg_reg[59]  ( .D(n295), .CK(clk), .Q(str_reg[59]) );
  DFFQXL \str_reg_reg[58]  ( .D(n296), .CK(clk), .Q(str_reg[58]) );
  DFFQXL \str_reg_reg[57]  ( .D(n297), .CK(clk), .Q(str_reg[57]) );
  DFFQXL \str_reg_reg[56]  ( .D(n298), .CK(clk), .Q(str_reg[56]) );
  DFFQXL \str_reg_reg[175]  ( .D(n179), .CK(clk), .Q(str_reg[175]) );
  DFFQXL \str_reg_reg[174]  ( .D(n180), .CK(clk), .Q(str_reg[174]) );
  DFFQXL \str_reg_reg[173]  ( .D(n181), .CK(clk), .Q(str_reg[173]) );
  DFFQXL \str_reg_reg[172]  ( .D(n182), .CK(clk), .Q(str_reg[172]) );
  DFFQXL \str_reg_reg[171]  ( .D(n183), .CK(clk), .Q(str_reg[171]) );
  DFFQXL \str_reg_reg[170]  ( .D(n184), .CK(clk), .Q(str_reg[170]) );
  DFFQXL \str_reg_reg[169]  ( .D(n185), .CK(clk), .Q(str_reg[169]) );
  DFFQXL \str_reg_reg[168]  ( .D(n186), .CK(clk), .Q(str_reg[168]) );
  DFFQXL \str_reg_reg[47]  ( .D(n307), .CK(clk), .Q(str_reg[47]) );
  DFFQXL \str_reg_reg[46]  ( .D(n308), .CK(clk), .Q(str_reg[46]) );
  DFFQXL \str_reg_reg[45]  ( .D(n309), .CK(clk), .Q(str_reg[45]) );
  DFFQXL \str_reg_reg[44]  ( .D(n310), .CK(clk), .Q(str_reg[44]) );
  DFFQXL \str_reg_reg[43]  ( .D(n311), .CK(clk), .Q(str_reg[43]) );
  DFFQXL \str_reg_reg[42]  ( .D(n312), .CK(clk), .Q(str_reg[42]) );
  DFFQXL \str_reg_reg[41]  ( .D(n313), .CK(clk), .Q(str_reg[41]) );
  DFFQXL \str_reg_reg[40]  ( .D(n314), .CK(clk), .Q(str_reg[40]) );
  DFFQXL \str_reg_reg[159]  ( .D(n195), .CK(clk), .Q(str_reg[159]) );
  DFFQXL \str_reg_reg[158]  ( .D(n196), .CK(clk), .Q(str_reg[158]) );
  DFFQXL \str_reg_reg[157]  ( .D(n197), .CK(clk), .Q(str_reg[157]) );
  DFFQXL \str_reg_reg[156]  ( .D(n198), .CK(clk), .Q(str_reg[156]) );
  DFFQXL \str_reg_reg[155]  ( .D(n199), .CK(clk), .Q(str_reg[155]) );
  DFFQXL \str_reg_reg[154]  ( .D(n200), .CK(clk), .Q(str_reg[154]) );
  DFFQXL \str_reg_reg[153]  ( .D(n201), .CK(clk), .Q(str_reg[153]) );
  DFFQXL \str_reg_reg[152]  ( .D(n202), .CK(clk), .Q(str_reg[152]) );
  DFFQXL \str_reg_reg[31]  ( .D(n323), .CK(clk), .Q(str_reg[31]) );
  DFFQXL \str_reg_reg[30]  ( .D(n324), .CK(clk), .Q(str_reg[30]) );
  DFFQXL \str_reg_reg[29]  ( .D(n325), .CK(clk), .Q(str_reg[29]) );
  DFFQXL \str_reg_reg[28]  ( .D(n326), .CK(clk), .Q(str_reg[28]) );
  DFFQXL \str_reg_reg[27]  ( .D(n327), .CK(clk), .Q(str_reg[27]) );
  DFFQXL \str_reg_reg[26]  ( .D(n328), .CK(clk), .Q(str_reg[26]) );
  DFFQXL \str_reg_reg[25]  ( .D(n329), .CK(clk), .Q(str_reg[25]) );
  DFFQXL \str_reg_reg[24]  ( .D(n330), .CK(clk), .Q(str_reg[24]) );
  DFFQXL \str_reg_reg[143]  ( .D(n211), .CK(clk), .Q(str_reg[143]) );
  DFFQXL \str_reg_reg[142]  ( .D(n212), .CK(clk), .Q(str_reg[142]) );
  DFFQXL \str_reg_reg[141]  ( .D(n213), .CK(clk), .Q(str_reg[141]) );
  DFFQXL \str_reg_reg[140]  ( .D(n214), .CK(clk), .Q(str_reg[140]) );
  DFFQXL \str_reg_reg[139]  ( .D(n215), .CK(clk), .Q(str_reg[139]) );
  DFFQXL \str_reg_reg[138]  ( .D(n216), .CK(clk), .Q(str_reg[138]) );
  DFFQXL \str_reg_reg[137]  ( .D(n217), .CK(clk), .Q(str_reg[137]) );
  DFFQXL \str_reg_reg[136]  ( .D(n218), .CK(clk), .Q(str_reg[136]) );
  DFFQXL \str_reg_reg[15]  ( .D(n339), .CK(clk), .Q(str_reg[15]) );
  DFFQXL \str_reg_reg[14]  ( .D(n340), .CK(clk), .Q(str_reg[14]) );
  DFFQXL \str_reg_reg[13]  ( .D(n341), .CK(clk), .Q(str_reg[13]) );
  DFFQXL \str_reg_reg[12]  ( .D(n342), .CK(clk), .Q(str_reg[12]) );
  DFFQXL \str_reg_reg[11]  ( .D(n343), .CK(clk), .Q(str_reg[11]) );
  DFFQXL \str_reg_reg[10]  ( .D(n344), .CK(clk), .Q(str_reg[10]) );
  DFFQXL \str_reg_reg[9]  ( .D(n345), .CK(clk), .Q(str_reg[9]) );
  DFFQXL \str_reg_reg[8]  ( .D(n346), .CK(clk), .Q(str_reg[8]) );
  DFFQXL \pat_reg_reg[7]  ( .D(n423), .CK(clk), .Q(pat_reg[7]) );
  DFFQXL \pat_reg_reg[6]  ( .D(n424), .CK(clk), .Q(pat_reg[6]) );
  DFFQXL \pat_reg_reg[5]  ( .D(n425), .CK(clk), .Q(pat_reg[5]) );
  DFFQXL \pat_reg_reg[4]  ( .D(n426), .CK(clk), .Q(pat_reg[4]) );
  DFFQXL \pat_reg_reg[3]  ( .D(n427), .CK(clk), .Q(pat_reg[3]) );
  DFFQXL \pat_reg_reg[2]  ( .D(n428), .CK(clk), .Q(pat_reg[2]) );
  DFFQXL \pat_reg_reg[1]  ( .D(n429), .CK(clk), .Q(pat_reg[1]) );
  DFFQXL \pat_reg_reg[0]  ( .D(n430), .CK(clk), .Q(pat_reg[0]) );
  DFFQXL \pat_reg_reg[20]  ( .D(n410), .CK(clk), .Q(pat_reg[20]) );
  DFFQXL \pat_reg_reg[19]  ( .D(n411), .CK(clk), .Q(pat_reg[19]) );
  DFFQXL \pat_reg_reg[18]  ( .D(n412), .CK(clk), .Q(pat_reg[18]) );
  DFFQXL \pat_reg_reg[17]  ( .D(n413), .CK(clk), .Q(pat_reg[17]) );
  DFFQXL \pat_reg_reg[16]  ( .D(n414), .CK(clk), .Q(pat_reg[16]) );
  DFFQXL \pat_reg_reg[39]  ( .D(n391), .CK(clk), .Q(pat_reg[39]) );
  DFFQXL \pat_reg_reg[38]  ( .D(n392), .CK(clk), .Q(pat_reg[38]) );
  DFFQXL \pat_reg_reg[36]  ( .D(n394), .CK(clk), .Q(pat_reg[36]) );
  DFFQXL \pat_reg_reg[35]  ( .D(n395), .CK(clk), .Q(pat_reg[35]) );
  DFFQXL \pat_reg_reg[34]  ( .D(n396), .CK(clk), .Q(pat_reg[34]) );
  DFFQXL \pat_reg_reg[33]  ( .D(n397), .CK(clk), .Q(pat_reg[33]) );
  DFFQXL \pat_reg_reg[32]  ( .D(n398), .CK(clk), .Q(pat_reg[32]) );
  DFFQXL \pat_reg_reg[37]  ( .D(n393), .CK(clk), .Q(pat_reg[37]) );
  DFFQXL \s_index_reg[4]  ( .D(n360), .CK(clk), .Q(s_index[4]) );
  DFFQXL \s_index_reg[3]  ( .D(n361), .CK(clk), .Q(s_index[3]) );
  DFFQXL \s_index_reg[0]  ( .D(n364), .CK(clk), .Q(s_index[0]) );
  DFFQXL \s_index_reg[1]  ( .D(n363), .CK(clk), .Q(s_index[1]) );
  DFFQXL \s_index_reg[2]  ( .D(n362), .CK(clk), .Q(s_index[2]) );
  DFFQXL \pat_reg_reg[55]  ( .D(n375), .CK(clk), .Q(pat_reg[55]) );
  DFFQXL \pat_reg_reg[54]  ( .D(n376), .CK(clk), .Q(pat_reg[54]) );
  DFFQXL \pat_reg_reg[52]  ( .D(n378), .CK(clk), .Q(pat_reg[52]) );
  DFFQXL \pat_reg_reg[51]  ( .D(n379), .CK(clk), .Q(pat_reg[51]) );
  DFFQXL \pat_reg_reg[50]  ( .D(n380), .CK(clk), .Q(pat_reg[50]) );
  DFFQXL \pat_reg_reg[49]  ( .D(n381), .CK(clk), .Q(pat_reg[49]) );
  DFFQXL \pat_reg_reg[48]  ( .D(n382), .CK(clk), .Q(pat_reg[48]) );
  DFFQXL \pat_reg_reg[53]  ( .D(n377), .CK(clk), .Q(pat_reg[53]) );
  DFFQXL \active_reg[0]  ( .D(n365), .CK(clk), .Q(active[0]) );
  DFFQXL \active_reg[1]  ( .D(n366), .CK(clk), .Q(active[1]) );
  DFFQXL \str_last_idx_reg[4]  ( .D(n355), .CK(clk), .Q(str_last_idx[4]) );
  DFFQXL \str_last_idx_reg[3]  ( .D(n356), .CK(clk), .Q(str_last_idx[3]) );
  DFFQXL \str_last_idx_reg[2]  ( .D(n357), .CK(clk), .Q(str_last_idx[2]) );
  DFFQXL \str_last_idx_reg[1]  ( .D(n358), .CK(clk), .Q(str_last_idx[1]) );
  DFFQXL \str_last_idx_reg[0]  ( .D(n359), .CK(clk), .Q(str_last_idx[0]) );
  DFFQXL \pat_last_idx_reg[2]  ( .D(n431), .CK(clk), .Q(pat_last_idx[2]) );
  DFFQXL \pat_last_idx_reg[1]  ( .D(n432), .CK(clk), .Q(n506) );
  DFFQXL \pat_last_idx_reg[0]  ( .D(n433), .CK(clk), .Q(pat_last_idx[0]) );
  DFFQXL \p_index_reg[1]  ( .D(n435), .CK(clk), .Q(p_index[1]) );
  DFFQXL \p_index_reg[0]  ( .D(n436), .CK(clk), .Q(p_index[0]) );
  DFFQXL \p_index_reg[2]  ( .D(n434), .CK(clk), .Q(p_index[2]) );
  DFFQXL \pat_reg_reg[47]  ( .D(n383), .CK(clk), .Q(pat_reg[47]) );
  DFFQXL \pat_reg_reg[46]  ( .D(n384), .CK(clk), .Q(pat_reg[46]) );
  DFFQXL \pat_reg_reg[45]  ( .D(n385), .CK(clk), .Q(pat_reg[45]) );
  DFFQXL \pat_reg_reg[44]  ( .D(n386), .CK(clk), .Q(pat_reg[44]) );
  DFFQXL \pat_reg_reg[43]  ( .D(n387), .CK(clk), .Q(pat_reg[43]) );
  DFFQXL \pat_reg_reg[42]  ( .D(n388), .CK(clk), .Q(pat_reg[42]) );
  DFFQXL \pat_reg_reg[41]  ( .D(n389), .CK(clk), .Q(pat_reg[41]) );
  DFFQXL \pat_reg_reg[40]  ( .D(n390), .CK(clk), .Q(pat_reg[40]) );
  DFFQXL \pat_reg_reg[31]  ( .D(n399), .CK(clk), .Q(pat_reg[31]) );
  DFFQXL \pat_reg_reg[30]  ( .D(n400), .CK(clk), .Q(pat_reg[30]) );
  DFFQXL \pat_reg_reg[29]  ( .D(n401), .CK(clk), .Q(pat_reg[29]) );
  DFFQXL \pat_reg_reg[28]  ( .D(n402), .CK(clk), .Q(pat_reg[28]) );
  DFFQXL \pat_reg_reg[27]  ( .D(n403), .CK(clk), .Q(pat_reg[27]) );
  DFFQXL \pat_reg_reg[26]  ( .D(n404), .CK(clk), .Q(pat_reg[26]) );
  DFFQXL \pat_reg_reg[25]  ( .D(n405), .CK(clk), .Q(pat_reg[25]) );
  DFFQXL \pat_reg_reg[24]  ( .D(n406), .CK(clk), .Q(pat_reg[24]) );
  DFFQXL \pat_reg_reg[15]  ( .D(n415), .CK(clk), .Q(pat_reg[15]) );
  DFFQXL \pat_reg_reg[14]  ( .D(n416), .CK(clk), .Q(pat_reg[14]) );
  DFFQXL \pat_reg_reg[13]  ( .D(n417), .CK(clk), .Q(pat_reg[13]) );
  DFFQXL \pat_reg_reg[12]  ( .D(n418), .CK(clk), .Q(pat_reg[12]) );
  DFFQXL \pat_reg_reg[11]  ( .D(n419), .CK(clk), .Q(pat_reg[11]) );
  DFFQXL \pat_reg_reg[10]  ( .D(n420), .CK(clk), .Q(pat_reg[10]) );
  DFFQXL \pat_reg_reg[9]  ( .D(n421), .CK(clk), .Q(pat_reg[9]) );
  DFFQXL \pat_reg_reg[8]  ( .D(n422), .CK(clk), .Q(pat_reg[8]) );
  DFFQXL \pat_reg_reg[63]  ( .D(n367), .CK(clk), .Q(pat_reg[63]) );
  DFFQXL \pat_reg_reg[62]  ( .D(n368), .CK(clk), .Q(pat_reg[62]) );
  DFFQXL \pat_reg_reg[61]  ( .D(n369), .CK(clk), .Q(pat_reg[61]) );
  DFFQXL \pat_reg_reg[60]  ( .D(n370), .CK(clk), .Q(pat_reg[60]) );
  DFFQXL \pat_reg_reg[59]  ( .D(n371), .CK(clk), .Q(pat_reg[59]) );
  DFFQXL \pat_reg_reg[58]  ( .D(n372), .CK(clk), .Q(pat_reg[58]) );
  DFFQXL \pat_reg_reg[57]  ( .D(n373), .CK(clk), .Q(pat_reg[57]) );
  DFFQXL \pat_reg_reg[56]  ( .D(n374), .CK(clk), .Q(pat_reg[56]) );
  DFFQXL \pat_reg_reg[23]  ( .D(n407), .CK(clk), .Q(pat_reg[23]) );
  DFFQXL \pat_reg_reg[22]  ( .D(n408), .CK(clk), .Q(pat_reg[22]) );
  DFFQXL \pat_reg_reg[21]  ( .D(n409), .CK(clk), .Q(pat_reg[21]) );
  INVXL U3 ( .A(n506), .Y(n1) );
  INVX2 U4 ( .A(n1), .Y(pat_last_idx[1]) );
  OAI2BB2X1 U5 ( .B0(n492), .B1(n93), .A0N(pat_last_idx[0]), .A1N(n94), .Y(
        n433) );
  INVX2 U6 ( .A(n490), .Y(n489) );
  NOR2X2 U7 ( .A(n504), .B(n72), .Y(n73) );
  NOR2X2 U8 ( .A(n69), .B(n74), .Y(n72) );
  NAND2X2 U9 ( .A(n94), .B(n505), .Y(n98) );
  NAND2X2 U10 ( .A(n3), .B(n69), .Y(n70) );
  INVX2 U11 ( .A(n77), .Y(n497) );
  INVX2 U12 ( .A(n3), .Y(n504) );
  INVX2 U13 ( .A(n74), .Y(n505) );
  NAND2X2 U14 ( .A(n3), .B(n98), .Y(n95) );
  OR2X2 U15 ( .A(n94), .B(n504), .Y(n93) );
  NAND2X2 U16 ( .A(n78), .B(n504), .Y(n365) );
  INVX2 U17 ( .A(n89), .Y(n494) );
  NOR3BX1 U18 ( .AN(n79), .B(n3), .C(n489), .Y(n77) );
  NOR2X2 U19 ( .A(n489), .B(write), .Y(n74) );
  BUFX2 U20 ( .A(n92), .Y(n4) );
  AOI31X1 U21 ( .A0(n494), .A1(n493), .A2(n492), .B0(n489), .Y(n92) );
  NOR2X2 U22 ( .A(n489), .B(n87), .Y(n94) );
  BUFX2 U23 ( .A(n68), .Y(n12) );
  AOI2BB1X2 U24 ( .A0N(n40), .A1N(n61), .B0(n489), .Y(n68) );
  BUFX2 U25 ( .A(n66), .Y(n14) );
  AOI2BB1X2 U26 ( .A0N(n36), .A1N(n61), .B0(n489), .Y(n66) );
  OAI211XL U27 ( .A0(n505), .A1(n79), .B0(N145), .C0(n78), .Y(n366) );
  OR2X2 U28 ( .A(n489), .B(n41), .Y(n69) );
  NAND3XL U29 ( .A(n502), .B(n503), .C(n41), .Y(n61) );
  NAND3XL U30 ( .A(n76), .B(N145), .C(n74), .Y(n78) );
  NAND2X2 U31 ( .A(n87), .B(n495), .Y(n89) );
  BUFX2 U32 ( .A(n71), .Y(n3) );
  NOR2BX1 U33 ( .AN(write), .B(n489), .Y(n71) );
  BUFX2 U34 ( .A(n24), .Y(n466) );
  BUFX2 U35 ( .A(n23), .Y(n469) );
  BUFX2 U36 ( .A(n22), .Y(n472) );
  BUFX2 U37 ( .A(n21), .Y(n475) );
  BUFX2 U38 ( .A(n20), .Y(n478) );
  BUFX2 U39 ( .A(n19), .Y(n481) );
  BUFX2 U40 ( .A(n18), .Y(n484) );
  BUFX2 U41 ( .A(n17), .Y(n487) );
  BUFX2 U42 ( .A(n24), .Y(n465) );
  BUFX2 U43 ( .A(n23), .Y(n468) );
  BUFX2 U44 ( .A(n22), .Y(n471) );
  BUFX2 U45 ( .A(n21), .Y(n474) );
  BUFX2 U46 ( .A(n20), .Y(n477) );
  BUFX2 U47 ( .A(n19), .Y(n480) );
  BUFX2 U48 ( .A(n18), .Y(n483) );
  BUFX2 U49 ( .A(n17), .Y(n486) );
  BUFX2 U50 ( .A(n24), .Y(n467) );
  BUFX2 U51 ( .A(n23), .Y(n470) );
  BUFX2 U52 ( .A(n22), .Y(n473) );
  BUFX2 U53 ( .A(n21), .Y(n476) );
  BUFX2 U54 ( .A(n20), .Y(n479) );
  BUFX2 U55 ( .A(n19), .Y(n482) );
  BUFX2 U56 ( .A(n18), .Y(n485) );
  BUFX2 U57 ( .A(n17), .Y(n488) );
  BUFX2 U58 ( .A(n86), .Y(n8) );
  AOI31X1 U59 ( .A0(n496), .A1(n493), .A2(n492), .B0(n489), .Y(n86) );
  BUFX2 U60 ( .A(n67), .Y(n13) );
  AOI2BB1X2 U61 ( .A0N(n38), .A1N(n61), .B0(n489), .Y(n67) );
  BUFX2 U62 ( .A(n58), .Y(n442) );
  AOI2BB1X2 U63 ( .A0N(n38), .A1N(n52), .B0(n489), .Y(n58) );
  BUFX2 U64 ( .A(n49), .Y(n450) );
  AOI2BB1X2 U65 ( .A0N(n38), .A1N(n43), .B0(n489), .Y(n49) );
  BUFX2 U66 ( .A(n37), .Y(n458) );
  AOI2BB1X2 U67 ( .A0N(n25), .A1N(n38), .B0(n489), .Y(n37) );
  BUFX2 U68 ( .A(n65), .Y(n15) );
  AOI2BB1X2 U69 ( .A0N(n34), .A1N(n61), .B0(n489), .Y(n65) );
  BUFX2 U70 ( .A(n56), .Y(n444) );
  AOI2BB1X2 U71 ( .A0N(n34), .A1N(n52), .B0(n489), .Y(n56) );
  BUFX2 U72 ( .A(n47), .Y(n452) );
  AOI2BB1X2 U73 ( .A0N(n34), .A1N(n43), .B0(n489), .Y(n47) );
  BUFX2 U74 ( .A(n33), .Y(n460) );
  AOI2BB1X2 U75 ( .A0N(n25), .A1N(n34), .B0(n489), .Y(n33) );
  BUFX2 U76 ( .A(n63), .Y(n438) );
  AOI2BB1X2 U77 ( .A0N(n30), .A1N(n61), .B0(n489), .Y(n63) );
  BUFX2 U78 ( .A(n54), .Y(n446) );
  AOI2BB1X2 U79 ( .A0N(n30), .A1N(n52), .B0(n489), .Y(n54) );
  BUFX2 U80 ( .A(n45), .Y(n454) );
  AOI2BB1X2 U81 ( .A0N(n30), .A1N(n43), .B0(n489), .Y(n45) );
  BUFX2 U82 ( .A(n29), .Y(n462) );
  AOI2BB1X2 U83 ( .A0N(n25), .A1N(n30), .B0(n489), .Y(n29) );
  BUFX2 U84 ( .A(n60), .Y(n440) );
  AOI2BB1X2 U85 ( .A0N(n26), .A1N(n61), .B0(n489), .Y(n60) );
  BUFX2 U86 ( .A(n51), .Y(n448) );
  AOI2BB1X2 U87 ( .A0N(n26), .A1N(n52), .B0(n489), .Y(n51) );
  BUFX2 U88 ( .A(n42), .Y(n456) );
  AOI2BB1X2 U89 ( .A0N(n26), .A1N(n43), .B0(n489), .Y(n42) );
  BUFX2 U90 ( .A(n16), .Y(n464) );
  AOI2BB1X2 U91 ( .A0N(n25), .A1N(n26), .B0(n489), .Y(n16) );
  BUFX2 U92 ( .A(n59), .Y(n441) );
  AOI2BB1X2 U93 ( .A0N(n40), .A1N(n52), .B0(n489), .Y(n59) );
  BUFX2 U94 ( .A(n50), .Y(n449) );
  AOI2BB1X2 U95 ( .A0N(n40), .A1N(n43), .B0(n489), .Y(n50) );
  BUFX2 U96 ( .A(n39), .Y(n457) );
  AOI2BB1X2 U97 ( .A0N(n25), .A1N(n40), .B0(n489), .Y(n39) );
  BUFX2 U98 ( .A(n57), .Y(n443) );
  AOI2BB1X2 U99 ( .A0N(n36), .A1N(n52), .B0(n489), .Y(n57) );
  BUFX2 U100 ( .A(n48), .Y(n451) );
  AOI2BB1X2 U101 ( .A0N(n36), .A1N(n43), .B0(n489), .Y(n48) );
  BUFX2 U102 ( .A(n35), .Y(n459) );
  AOI2BB1X2 U103 ( .A0N(n25), .A1N(n36), .B0(n489), .Y(n35) );
  BUFX2 U104 ( .A(n64), .Y(n437) );
  AOI2BB1X2 U105 ( .A0N(n32), .A1N(n61), .B0(n489), .Y(n64) );
  BUFX2 U106 ( .A(n55), .Y(n445) );
  AOI2BB1X2 U107 ( .A0N(n32), .A1N(n52), .B0(n489), .Y(n55) );
  BUFX2 U108 ( .A(n46), .Y(n453) );
  AOI2BB1X2 U109 ( .A0N(n32), .A1N(n43), .B0(n489), .Y(n46) );
  BUFX2 U110 ( .A(n31), .Y(n461) );
  AOI2BB1X2 U111 ( .A0N(n25), .A1N(n32), .B0(n489), .Y(n31) );
  BUFX2 U112 ( .A(n62), .Y(n439) );
  AOI2BB1X2 U113 ( .A0N(n28), .A1N(n61), .B0(n489), .Y(n62) );
  BUFX2 U114 ( .A(n53), .Y(n447) );
  AOI2BB1X2 U115 ( .A0N(n28), .A1N(n52), .B0(n489), .Y(n53) );
  BUFX2 U116 ( .A(n44), .Y(n455) );
  AOI2BB1X2 U117 ( .A0N(n28), .A1N(n43), .B0(n489), .Y(n44) );
  BUFX2 U118 ( .A(n27), .Y(n463) );
  AOI2BB1X2 U119 ( .A0N(n25), .A1N(n28), .B0(n489), .Y(n27) );
  BUFX2 U120 ( .A(n84), .Y(n9) );
  AOI2BB1X2 U121 ( .A0N(n82), .A1N(n85), .B0(n489), .Y(n84) );
  BUFX2 U122 ( .A(n80), .Y(n11) );
  AOI2BB1X2 U123 ( .A0N(n81), .A1N(n82), .B0(n489), .Y(n80) );
  BUFX2 U124 ( .A(n91), .Y(n5) );
  AOI2BB1X2 U125 ( .A0N(n85), .A1N(n89), .B0(n489), .Y(n91) );
  BUFX2 U126 ( .A(n88), .Y(n7) );
  AOI2BB1X2 U127 ( .A0N(n81), .A1N(n89), .B0(n489), .Y(n88) );
  INVX2 U128 ( .A(n82), .Y(n496) );
  NAND3XL U129 ( .A(n500), .B(n501), .C(n499), .Y(n40) );
  INVX2 U130 ( .A(reset), .Y(n490) );
  NOR2X2 U131 ( .A(n504), .B(w_sel), .Y(n41) );
  OAI32XL U132 ( .A0(n95), .A1(p_index[2]), .A2(n81), .B0(n96), .B1(n495), .Y(
        n434) );
  AOI21X1 U133 ( .A0(n3), .A1(n493), .B0(n97), .Y(n96) );
  NOR2BX1 U134 ( .AN(w_sel), .B(n504), .Y(n87) );
  NAND3BX2 U135 ( .AN(ff_valid), .B(n76), .C(n77), .Y(N145) );
  OAI2B2X1 U136 ( .A1N(str_last_idx[4]), .A0(n69), .B0(n503), .B1(n70), .Y(
        n355) );
  OAI2B2X1 U137 ( .A1N(str_last_idx[3]), .A0(n69), .B0(n502), .B1(n70), .Y(
        n356) );
  OAI2B2X1 U138 ( .A1N(str_last_idx[0]), .A0(n69), .B0(n499), .B1(n70), .Y(
        n359) );
  OAI2B2X1 U139 ( .A1N(str_last_idx[2]), .A0(n69), .B0(n501), .B1(n70), .Y(
        n357) );
  OAI2B2X1 U140 ( .A1N(str_last_idx[1]), .A0(n69), .B0(n500), .B1(n70), .Y(
        n358) );
  OAI22X1 U141 ( .A0(n492), .A1(n98), .B0(p_index[0]), .B1(n95), .Y(n436) );
  NAND2X2 U142 ( .A(w_data[0]), .B(n3), .Y(n24) );
  NAND2X2 U143 ( .A(w_data[1]), .B(n3), .Y(n23) );
  NAND2X2 U144 ( .A(w_data[2]), .B(n3), .Y(n22) );
  NAND2X2 U145 ( .A(w_data[3]), .B(n3), .Y(n21) );
  NAND2X2 U146 ( .A(w_data[4]), .B(n3), .Y(n20) );
  NAND2X2 U147 ( .A(w_data[5]), .B(n3), .Y(n19) );
  NAND2X2 U148 ( .A(w_data[6]), .B(n3), .Y(n18) );
  NAND2X2 U149 ( .A(w_data[7]), .B(n3), .Y(n17) );
  NAND3XL U150 ( .A(n41), .B(n503), .C(s_index[3]), .Y(n52) );
  NAND3XL U151 ( .A(n41), .B(n502), .C(s_index[4]), .Y(n43) );
  NAND3XL U152 ( .A(s_index[3]), .B(n41), .C(s_index[4]), .Y(n25) );
  OAI21X1 U153 ( .A0(p_index[0]), .A1(n504), .B0(n98), .Y(n97) );
  OAI2BB2X2 U154 ( .B0(n4), .B1(n466), .A0N(pat_reg[0]), .A1N(n4), .Y(n430) );
  OAI2BB2X2 U155 ( .B0(n4), .B1(n469), .A0N(pat_reg[1]), .A1N(n4), .Y(n429) );
  OAI2BB2X2 U156 ( .B0(n4), .B1(n472), .A0N(pat_reg[2]), .A1N(n4), .Y(n428) );
  OAI2BB2X2 U157 ( .B0(n4), .B1(n475), .A0N(pat_reg[3]), .A1N(n4), .Y(n427) );
  OAI2BB2X2 U158 ( .B0(n4), .B1(n478), .A0N(pat_reg[4]), .A1N(n4), .Y(n426) );
  OAI2BB2X2 U159 ( .B0(n4), .B1(n481), .A0N(pat_reg[5]), .A1N(n4), .Y(n425) );
  OAI2BB2X2 U160 ( .B0(n4), .B1(n484), .A0N(pat_reg[6]), .A1N(n4), .Y(n424) );
  OAI2BB2X2 U161 ( .B0(n4), .B1(n487), .A0N(pat_reg[7]), .A1N(n4), .Y(n423) );
  OAI2BB2X2 U162 ( .B0(n495), .B1(n93), .A0N(pat_last_idx[2]), .A1N(n94), .Y(
        n431) );
  OAI2BB2X2 U163 ( .B0(n493), .B1(n93), .A0N(pat_last_idx[1]), .A1N(n94), .Y(
        n432) );
  OAI2BB2X2 U164 ( .B0(n13), .B1(n467), .A0N(str_reg[8]), .A1N(n13), .Y(n346)
         );
  OAI2BB2X2 U165 ( .B0(n13), .B1(n470), .A0N(str_reg[9]), .A1N(n13), .Y(n345)
         );
  OAI2BB2X2 U166 ( .B0(n13), .B1(n473), .A0N(str_reg[10]), .A1N(n13), .Y(n344)
         );
  OAI2BB2X2 U167 ( .B0(n13), .B1(n476), .A0N(str_reg[11]), .A1N(n13), .Y(n343)
         );
  OAI2BB2X2 U168 ( .B0(n13), .B1(n479), .A0N(str_reg[12]), .A1N(n13), .Y(n342)
         );
  OAI2BB2X2 U169 ( .B0(n13), .B1(n482), .A0N(str_reg[13]), .A1N(n13), .Y(n341)
         );
  OAI2BB2X2 U170 ( .B0(n13), .B1(n485), .A0N(str_reg[14]), .A1N(n13), .Y(n340)
         );
  OAI2BB2X2 U171 ( .B0(n13), .B1(n488), .A0N(str_reg[15]), .A1N(n13), .Y(n339)
         );
  OAI2BB2X2 U172 ( .B0(n442), .B1(n466), .A0N(str_reg[72]), .A1N(n442), .Y(
        n282) );
  OAI2BB2X2 U173 ( .B0(n442), .B1(n469), .A0N(str_reg[73]), .A1N(n442), .Y(
        n281) );
  OAI2BB2X2 U174 ( .B0(n442), .B1(n472), .A0N(str_reg[74]), .A1N(n442), .Y(
        n280) );
  OAI2BB2X2 U175 ( .B0(n442), .B1(n475), .A0N(str_reg[75]), .A1N(n442), .Y(
        n279) );
  OAI2BB2X2 U176 ( .B0(n442), .B1(n478), .A0N(str_reg[76]), .A1N(n442), .Y(
        n278) );
  OAI2BB2X2 U177 ( .B0(n442), .B1(n481), .A0N(str_reg[77]), .A1N(n442), .Y(
        n277) );
  OAI2BB2X2 U178 ( .B0(n442), .B1(n484), .A0N(str_reg[78]), .A1N(n442), .Y(
        n276) );
  OAI2BB2X2 U179 ( .B0(n442), .B1(n487), .A0N(str_reg[79]), .A1N(n442), .Y(
        n275) );
  OAI2BB2X2 U180 ( .B0(n450), .B1(n466), .A0N(str_reg[136]), .A1N(n450), .Y(
        n218) );
  OAI2BB2X2 U181 ( .B0(n450), .B1(n469), .A0N(str_reg[137]), .A1N(n450), .Y(
        n217) );
  OAI2BB2X2 U182 ( .B0(n450), .B1(n472), .A0N(str_reg[138]), .A1N(n450), .Y(
        n216) );
  OAI2BB2X2 U183 ( .B0(n450), .B1(n475), .A0N(str_reg[139]), .A1N(n450), .Y(
        n215) );
  OAI2BB2X2 U184 ( .B0(n450), .B1(n478), .A0N(str_reg[140]), .A1N(n450), .Y(
        n214) );
  OAI2BB2X2 U185 ( .B0(n450), .B1(n481), .A0N(str_reg[141]), .A1N(n450), .Y(
        n213) );
  OAI2BB2X2 U186 ( .B0(n450), .B1(n484), .A0N(str_reg[142]), .A1N(n450), .Y(
        n212) );
  OAI2BB2X2 U187 ( .B0(n450), .B1(n487), .A0N(str_reg[143]), .A1N(n450), .Y(
        n211) );
  OAI2BB2X2 U188 ( .B0(n458), .B1(n465), .A0N(str_reg[200]), .A1N(n458), .Y(
        n154) );
  OAI2BB2X2 U189 ( .B0(n458), .B1(n468), .A0N(str_reg[201]), .A1N(n458), .Y(
        n153) );
  OAI2BB2X2 U190 ( .B0(n458), .B1(n471), .A0N(str_reg[202]), .A1N(n458), .Y(
        n152) );
  OAI2BB2X2 U191 ( .B0(n458), .B1(n474), .A0N(str_reg[203]), .A1N(n458), .Y(
        n151) );
  OAI2BB2X2 U192 ( .B0(n458), .B1(n477), .A0N(str_reg[204]), .A1N(n458), .Y(
        n150) );
  OAI2BB2X2 U193 ( .B0(n458), .B1(n480), .A0N(str_reg[205]), .A1N(n458), .Y(
        n149) );
  OAI2BB2X2 U194 ( .B0(n458), .B1(n483), .A0N(str_reg[206]), .A1N(n458), .Y(
        n148) );
  OAI2BB2X2 U195 ( .B0(n458), .B1(n486), .A0N(str_reg[207]), .A1N(n458), .Y(
        n147) );
  OAI2BB2X2 U196 ( .B0(n15), .B1(n467), .A0N(str_reg[24]), .A1N(n15), .Y(n330)
         );
  OAI2BB2X2 U197 ( .B0(n15), .B1(n470), .A0N(str_reg[25]), .A1N(n15), .Y(n329)
         );
  OAI2BB2X2 U198 ( .B0(n15), .B1(n473), .A0N(str_reg[26]), .A1N(n15), .Y(n328)
         );
  OAI2BB2X2 U199 ( .B0(n15), .B1(n476), .A0N(str_reg[27]), .A1N(n15), .Y(n327)
         );
  OAI2BB2X2 U200 ( .B0(n15), .B1(n479), .A0N(str_reg[28]), .A1N(n15), .Y(n326)
         );
  OAI2BB2X2 U201 ( .B0(n15), .B1(n482), .A0N(str_reg[29]), .A1N(n15), .Y(n325)
         );
  OAI2BB2X2 U202 ( .B0(n15), .B1(n485), .A0N(str_reg[30]), .A1N(n15), .Y(n324)
         );
  OAI2BB2X2 U203 ( .B0(n15), .B1(n488), .A0N(str_reg[31]), .A1N(n15), .Y(n323)
         );
  OAI2BB2X2 U204 ( .B0(n444), .B1(n466), .A0N(str_reg[88]), .A1N(n444), .Y(
        n266) );
  OAI2BB2X2 U205 ( .B0(n444), .B1(n469), .A0N(str_reg[89]), .A1N(n444), .Y(
        n265) );
  OAI2BB2X2 U206 ( .B0(n444), .B1(n472), .A0N(str_reg[90]), .A1N(n444), .Y(
        n264) );
  OAI2BB2X2 U207 ( .B0(n444), .B1(n475), .A0N(str_reg[91]), .A1N(n444), .Y(
        n263) );
  OAI2BB2X2 U208 ( .B0(n444), .B1(n478), .A0N(str_reg[92]), .A1N(n444), .Y(
        n262) );
  OAI2BB2X2 U209 ( .B0(n444), .B1(n481), .A0N(str_reg[93]), .A1N(n444), .Y(
        n261) );
  OAI2BB2X2 U210 ( .B0(n444), .B1(n484), .A0N(str_reg[94]), .A1N(n444), .Y(
        n260) );
  OAI2BB2X2 U211 ( .B0(n444), .B1(n487), .A0N(str_reg[95]), .A1N(n444), .Y(
        n259) );
  OAI2BB2X2 U212 ( .B0(n452), .B1(n465), .A0N(str_reg[152]), .A1N(n452), .Y(
        n202) );
  OAI2BB2X2 U213 ( .B0(n452), .B1(n468), .A0N(str_reg[153]), .A1N(n452), .Y(
        n201) );
  OAI2BB2X2 U214 ( .B0(n452), .B1(n471), .A0N(str_reg[154]), .A1N(n452), .Y(
        n200) );
  OAI2BB2X2 U215 ( .B0(n452), .B1(n474), .A0N(str_reg[155]), .A1N(n452), .Y(
        n199) );
  OAI2BB2X2 U216 ( .B0(n452), .B1(n477), .A0N(str_reg[156]), .A1N(n452), .Y(
        n198) );
  OAI2BB2X2 U217 ( .B0(n452), .B1(n480), .A0N(str_reg[157]), .A1N(n452), .Y(
        n197) );
  OAI2BB2X2 U218 ( .B0(n452), .B1(n483), .A0N(str_reg[158]), .A1N(n452), .Y(
        n196) );
  OAI2BB2X2 U219 ( .B0(n452), .B1(n486), .A0N(str_reg[159]), .A1N(n452), .Y(
        n195) );
  OAI2BB2X2 U220 ( .B0(n460), .B1(n465), .A0N(str_reg[216]), .A1N(n460), .Y(
        n138) );
  OAI2BB2X2 U221 ( .B0(n460), .B1(n468), .A0N(str_reg[217]), .A1N(n460), .Y(
        n137) );
  OAI2BB2X2 U222 ( .B0(n460), .B1(n471), .A0N(str_reg[218]), .A1N(n460), .Y(
        n136) );
  OAI2BB2X2 U223 ( .B0(n460), .B1(n474), .A0N(str_reg[219]), .A1N(n460), .Y(
        n135) );
  OAI2BB2X2 U224 ( .B0(n460), .B1(n477), .A0N(str_reg[220]), .A1N(n460), .Y(
        n134) );
  OAI2BB2X2 U225 ( .B0(n460), .B1(n480), .A0N(str_reg[221]), .A1N(n460), .Y(
        n133) );
  OAI2BB2X2 U226 ( .B0(n460), .B1(n483), .A0N(str_reg[222]), .A1N(n460), .Y(
        n132) );
  OAI2BB2X2 U227 ( .B0(n460), .B1(n486), .A0N(str_reg[223]), .A1N(n460), .Y(
        n131) );
  OAI2BB2X2 U228 ( .B0(n438), .B1(n467), .A0N(str_reg[40]), .A1N(n438), .Y(
        n314) );
  OAI2BB2X2 U229 ( .B0(n438), .B1(n470), .A0N(str_reg[41]), .A1N(n438), .Y(
        n313) );
  OAI2BB2X2 U230 ( .B0(n438), .B1(n473), .A0N(str_reg[42]), .A1N(n438), .Y(
        n312) );
  OAI2BB2X2 U231 ( .B0(n438), .B1(n476), .A0N(str_reg[43]), .A1N(n438), .Y(
        n311) );
  OAI2BB2X2 U232 ( .B0(n438), .B1(n479), .A0N(str_reg[44]), .A1N(n438), .Y(
        n310) );
  OAI2BB2X2 U233 ( .B0(n438), .B1(n482), .A0N(str_reg[45]), .A1N(n438), .Y(
        n309) );
  OAI2BB2X2 U234 ( .B0(n438), .B1(n485), .A0N(str_reg[46]), .A1N(n438), .Y(
        n308) );
  OAI2BB2X2 U235 ( .B0(n438), .B1(n488), .A0N(str_reg[47]), .A1N(n438), .Y(
        n307) );
  OAI2BB2X2 U236 ( .B0(n446), .B1(n466), .A0N(str_reg[104]), .A1N(n446), .Y(
        n250) );
  OAI2BB2X2 U237 ( .B0(n446), .B1(n469), .A0N(str_reg[105]), .A1N(n446), .Y(
        n249) );
  OAI2BB2X2 U238 ( .B0(n446), .B1(n472), .A0N(str_reg[106]), .A1N(n446), .Y(
        n248) );
  OAI2BB2X2 U239 ( .B0(n446), .B1(n475), .A0N(str_reg[107]), .A1N(n446), .Y(
        n247) );
  OAI2BB2X2 U240 ( .B0(n446), .B1(n478), .A0N(str_reg[108]), .A1N(n446), .Y(
        n246) );
  OAI2BB2X2 U241 ( .B0(n446), .B1(n481), .A0N(str_reg[109]), .A1N(n446), .Y(
        n245) );
  OAI2BB2X2 U242 ( .B0(n446), .B1(n484), .A0N(str_reg[110]), .A1N(n446), .Y(
        n244) );
  OAI2BB2X2 U243 ( .B0(n446), .B1(n487), .A0N(str_reg[111]), .A1N(n446), .Y(
        n243) );
  OAI2BB2X2 U244 ( .B0(n454), .B1(n465), .A0N(str_reg[168]), .A1N(n454), .Y(
        n186) );
  OAI2BB2X2 U245 ( .B0(n454), .B1(n468), .A0N(str_reg[169]), .A1N(n454), .Y(
        n185) );
  OAI2BB2X2 U246 ( .B0(n454), .B1(n471), .A0N(str_reg[170]), .A1N(n454), .Y(
        n184) );
  OAI2BB2X2 U247 ( .B0(n454), .B1(n474), .A0N(str_reg[171]), .A1N(n454), .Y(
        n183) );
  OAI2BB2X2 U248 ( .B0(n454), .B1(n477), .A0N(str_reg[172]), .A1N(n454), .Y(
        n182) );
  OAI2BB2X2 U249 ( .B0(n454), .B1(n480), .A0N(str_reg[173]), .A1N(n454), .Y(
        n181) );
  OAI2BB2X2 U250 ( .B0(n454), .B1(n483), .A0N(str_reg[174]), .A1N(n454), .Y(
        n180) );
  OAI2BB2X2 U251 ( .B0(n454), .B1(n486), .A0N(str_reg[175]), .A1N(n454), .Y(
        n179) );
  OAI2BB2X2 U252 ( .B0(n462), .B1(n465), .A0N(str_reg[232]), .A1N(n462), .Y(
        n122) );
  OAI2BB2X2 U253 ( .B0(n462), .B1(n468), .A0N(str_reg[233]), .A1N(n462), .Y(
        n121) );
  OAI2BB2X2 U254 ( .B0(n462), .B1(n471), .A0N(str_reg[234]), .A1N(n462), .Y(
        n120) );
  OAI2BB2X2 U255 ( .B0(n462), .B1(n474), .A0N(str_reg[235]), .A1N(n462), .Y(
        n119) );
  OAI2BB2X2 U256 ( .B0(n462), .B1(n477), .A0N(str_reg[236]), .A1N(n462), .Y(
        n118) );
  OAI2BB2X2 U257 ( .B0(n462), .B1(n480), .A0N(str_reg[237]), .A1N(n462), .Y(
        n117) );
  OAI2BB2X2 U258 ( .B0(n462), .B1(n483), .A0N(str_reg[238]), .A1N(n462), .Y(
        n116) );
  OAI2BB2X2 U259 ( .B0(n462), .B1(n486), .A0N(str_reg[239]), .A1N(n462), .Y(
        n115) );
  OAI2BB2X2 U260 ( .B0(n440), .B1(n466), .A0N(str_reg[56]), .A1N(n440), .Y(
        n298) );
  OAI2BB2X2 U261 ( .B0(n440), .B1(n469), .A0N(str_reg[57]), .A1N(n440), .Y(
        n297) );
  OAI2BB2X2 U262 ( .B0(n440), .B1(n472), .A0N(str_reg[58]), .A1N(n440), .Y(
        n296) );
  OAI2BB2X2 U263 ( .B0(n440), .B1(n475), .A0N(str_reg[59]), .A1N(n440), .Y(
        n295) );
  OAI2BB2X2 U264 ( .B0(n440), .B1(n478), .A0N(str_reg[60]), .A1N(n440), .Y(
        n294) );
  OAI2BB2X2 U265 ( .B0(n440), .B1(n481), .A0N(str_reg[61]), .A1N(n440), .Y(
        n293) );
  OAI2BB2X2 U266 ( .B0(n440), .B1(n484), .A0N(str_reg[62]), .A1N(n440), .Y(
        n292) );
  OAI2BB2X2 U267 ( .B0(n440), .B1(n487), .A0N(str_reg[63]), .A1N(n440), .Y(
        n291) );
  OAI2BB2X2 U268 ( .B0(n448), .B1(n466), .A0N(str_reg[120]), .A1N(n448), .Y(
        n234) );
  OAI2BB2X2 U269 ( .B0(n448), .B1(n469), .A0N(str_reg[121]), .A1N(n448), .Y(
        n233) );
  OAI2BB2X2 U270 ( .B0(n448), .B1(n472), .A0N(str_reg[122]), .A1N(n448), .Y(
        n232) );
  OAI2BB2X2 U271 ( .B0(n448), .B1(n475), .A0N(str_reg[123]), .A1N(n448), .Y(
        n231) );
  OAI2BB2X2 U272 ( .B0(n448), .B1(n478), .A0N(str_reg[124]), .A1N(n448), .Y(
        n230) );
  OAI2BB2X2 U273 ( .B0(n448), .B1(n481), .A0N(str_reg[125]), .A1N(n448), .Y(
        n229) );
  OAI2BB2X2 U274 ( .B0(n448), .B1(n484), .A0N(str_reg[126]), .A1N(n448), .Y(
        n228) );
  OAI2BB2X2 U275 ( .B0(n448), .B1(n487), .A0N(str_reg[127]), .A1N(n448), .Y(
        n227) );
  OAI2BB2X2 U276 ( .B0(n456), .B1(n465), .A0N(str_reg[184]), .A1N(n456), .Y(
        n170) );
  OAI2BB2X2 U277 ( .B0(n456), .B1(n468), .A0N(str_reg[185]), .A1N(n456), .Y(
        n169) );
  OAI2BB2X2 U278 ( .B0(n456), .B1(n471), .A0N(str_reg[186]), .A1N(n456), .Y(
        n168) );
  OAI2BB2X2 U279 ( .B0(n456), .B1(n474), .A0N(str_reg[187]), .A1N(n456), .Y(
        n167) );
  OAI2BB2X2 U280 ( .B0(n456), .B1(n477), .A0N(str_reg[188]), .A1N(n456), .Y(
        n166) );
  OAI2BB2X2 U281 ( .B0(n456), .B1(n480), .A0N(str_reg[189]), .A1N(n456), .Y(
        n165) );
  OAI2BB2X2 U282 ( .B0(n456), .B1(n483), .A0N(str_reg[190]), .A1N(n456), .Y(
        n164) );
  OAI2BB2X2 U283 ( .B0(n456), .B1(n486), .A0N(str_reg[191]), .A1N(n456), .Y(
        n163) );
  OAI2BB2X2 U284 ( .B0(n464), .B1(n465), .A0N(str_reg[248]), .A1N(n464), .Y(
        n106) );
  OAI2BB2X2 U285 ( .B0(n464), .B1(n468), .A0N(str_reg[249]), .A1N(n464), .Y(
        n105) );
  OAI2BB2X2 U286 ( .B0(n464), .B1(n471), .A0N(str_reg[250]), .A1N(n464), .Y(
        n104) );
  OAI2BB2X2 U287 ( .B0(n464), .B1(n474), .A0N(str_reg[251]), .A1N(n464), .Y(
        n103) );
  OAI2BB2X2 U288 ( .B0(n464), .B1(n477), .A0N(str_reg[252]), .A1N(n464), .Y(
        n102) );
  OAI2BB2X2 U289 ( .B0(n464), .B1(n480), .A0N(str_reg[253]), .A1N(n464), .Y(
        n101) );
  OAI2BB2X2 U290 ( .B0(n464), .B1(n483), .A0N(str_reg[254]), .A1N(n464), .Y(
        n100) );
  OAI2BB2X2 U291 ( .B0(n464), .B1(n486), .A0N(str_reg[255]), .A1N(n464), .Y(
        n99) );
  OAI2BB2X2 U292 ( .B0(n12), .B1(n467), .A0N(str_reg[0]), .A1N(n12), .Y(n354)
         );
  OAI2BB2X2 U293 ( .B0(n12), .B1(n470), .A0N(str_reg[1]), .A1N(n12), .Y(n353)
         );
  OAI2BB2X2 U294 ( .B0(n12), .B1(n473), .A0N(str_reg[2]), .A1N(n12), .Y(n352)
         );
  OAI2BB2X2 U295 ( .B0(n12), .B1(n476), .A0N(str_reg[3]), .A1N(n12), .Y(n351)
         );
  OAI2BB2X2 U296 ( .B0(n12), .B1(n479), .A0N(str_reg[4]), .A1N(n12), .Y(n350)
         );
  OAI2BB2X2 U297 ( .B0(n12), .B1(n482), .A0N(str_reg[5]), .A1N(n12), .Y(n349)
         );
  OAI2BB2X2 U298 ( .B0(n12), .B1(n485), .A0N(str_reg[6]), .A1N(n12), .Y(n348)
         );
  OAI2BB2X2 U299 ( .B0(n12), .B1(n488), .A0N(str_reg[7]), .A1N(n12), .Y(n347)
         );
  OAI2BB2X2 U300 ( .B0(n441), .B1(n466), .A0N(str_reg[64]), .A1N(n441), .Y(
        n290) );
  OAI2BB2X2 U301 ( .B0(n441), .B1(n469), .A0N(str_reg[65]), .A1N(n441), .Y(
        n289) );
  OAI2BB2X2 U302 ( .B0(n441), .B1(n472), .A0N(str_reg[66]), .A1N(n441), .Y(
        n288) );
  OAI2BB2X2 U303 ( .B0(n441), .B1(n475), .A0N(str_reg[67]), .A1N(n441), .Y(
        n287) );
  OAI2BB2X2 U304 ( .B0(n441), .B1(n478), .A0N(str_reg[68]), .A1N(n441), .Y(
        n286) );
  OAI2BB2X2 U305 ( .B0(n441), .B1(n481), .A0N(str_reg[69]), .A1N(n441), .Y(
        n285) );
  OAI2BB2X2 U306 ( .B0(n441), .B1(n484), .A0N(str_reg[70]), .A1N(n441), .Y(
        n284) );
  OAI2BB2X2 U307 ( .B0(n441), .B1(n487), .A0N(str_reg[71]), .A1N(n441), .Y(
        n283) );
  OAI2BB2X2 U308 ( .B0(n449), .B1(n466), .A0N(str_reg[128]), .A1N(n449), .Y(
        n226) );
  OAI2BB2X2 U309 ( .B0(n449), .B1(n469), .A0N(str_reg[129]), .A1N(n449), .Y(
        n225) );
  OAI2BB2X2 U310 ( .B0(n449), .B1(n472), .A0N(str_reg[130]), .A1N(n449), .Y(
        n224) );
  OAI2BB2X2 U311 ( .B0(n449), .B1(n475), .A0N(str_reg[131]), .A1N(n449), .Y(
        n223) );
  OAI2BB2X2 U312 ( .B0(n449), .B1(n478), .A0N(str_reg[132]), .A1N(n449), .Y(
        n222) );
  OAI2BB2X2 U313 ( .B0(n449), .B1(n481), .A0N(str_reg[133]), .A1N(n449), .Y(
        n221) );
  OAI2BB2X2 U314 ( .B0(n449), .B1(n484), .A0N(str_reg[134]), .A1N(n449), .Y(
        n220) );
  OAI2BB2X2 U315 ( .B0(n449), .B1(n487), .A0N(str_reg[135]), .A1N(n449), .Y(
        n219) );
  OAI2BB2X2 U316 ( .B0(n457), .B1(n465), .A0N(str_reg[192]), .A1N(n457), .Y(
        n162) );
  OAI2BB2X2 U317 ( .B0(n457), .B1(n468), .A0N(str_reg[193]), .A1N(n457), .Y(
        n161) );
  OAI2BB2X2 U318 ( .B0(n457), .B1(n471), .A0N(str_reg[194]), .A1N(n457), .Y(
        n160) );
  OAI2BB2X2 U319 ( .B0(n457), .B1(n474), .A0N(str_reg[195]), .A1N(n457), .Y(
        n159) );
  OAI2BB2X2 U320 ( .B0(n457), .B1(n477), .A0N(str_reg[196]), .A1N(n457), .Y(
        n158) );
  OAI2BB2X2 U321 ( .B0(n457), .B1(n480), .A0N(str_reg[197]), .A1N(n457), .Y(
        n157) );
  OAI2BB2X2 U322 ( .B0(n457), .B1(n483), .A0N(str_reg[198]), .A1N(n457), .Y(
        n156) );
  OAI2BB2X2 U323 ( .B0(n457), .B1(n486), .A0N(str_reg[199]), .A1N(n457), .Y(
        n155) );
  OAI2BB2X2 U324 ( .B0(n14), .B1(n467), .A0N(str_reg[16]), .A1N(n14), .Y(n338)
         );
  OAI2BB2X2 U325 ( .B0(n14), .B1(n470), .A0N(str_reg[17]), .A1N(n14), .Y(n337)
         );
  OAI2BB2X2 U326 ( .B0(n14), .B1(n473), .A0N(str_reg[18]), .A1N(n14), .Y(n336)
         );
  OAI2BB2X2 U327 ( .B0(n14), .B1(n476), .A0N(str_reg[19]), .A1N(n14), .Y(n335)
         );
  OAI2BB2X2 U328 ( .B0(n14), .B1(n479), .A0N(str_reg[20]), .A1N(n14), .Y(n334)
         );
  OAI2BB2X2 U329 ( .B0(n14), .B1(n482), .A0N(str_reg[21]), .A1N(n14), .Y(n333)
         );
  OAI2BB2X2 U330 ( .B0(n14), .B1(n485), .A0N(str_reg[22]), .A1N(n14), .Y(n332)
         );
  OAI2BB2X2 U331 ( .B0(n14), .B1(n488), .A0N(str_reg[23]), .A1N(n14), .Y(n331)
         );
  OAI2BB2X2 U332 ( .B0(n443), .B1(n466), .A0N(str_reg[80]), .A1N(n443), .Y(
        n274) );
  OAI2BB2X2 U333 ( .B0(n443), .B1(n469), .A0N(str_reg[81]), .A1N(n443), .Y(
        n273) );
  OAI2BB2X2 U334 ( .B0(n443), .B1(n472), .A0N(str_reg[82]), .A1N(n443), .Y(
        n272) );
  OAI2BB2X2 U335 ( .B0(n443), .B1(n475), .A0N(str_reg[83]), .A1N(n443), .Y(
        n271) );
  OAI2BB2X2 U336 ( .B0(n443), .B1(n478), .A0N(str_reg[84]), .A1N(n443), .Y(
        n270) );
  OAI2BB2X2 U337 ( .B0(n443), .B1(n481), .A0N(str_reg[85]), .A1N(n443), .Y(
        n269) );
  OAI2BB2X2 U338 ( .B0(n443), .B1(n484), .A0N(str_reg[86]), .A1N(n443), .Y(
        n268) );
  OAI2BB2X2 U339 ( .B0(n443), .B1(n487), .A0N(str_reg[87]), .A1N(n443), .Y(
        n267) );
  OAI2BB2X2 U340 ( .B0(n451), .B1(n466), .A0N(str_reg[144]), .A1N(n451), .Y(
        n210) );
  OAI2BB2X2 U341 ( .B0(n451), .B1(n469), .A0N(str_reg[145]), .A1N(n451), .Y(
        n209) );
  OAI2BB2X2 U342 ( .B0(n451), .B1(n472), .A0N(str_reg[146]), .A1N(n451), .Y(
        n208) );
  OAI2BB2X2 U343 ( .B0(n451), .B1(n475), .A0N(str_reg[147]), .A1N(n451), .Y(
        n207) );
  OAI2BB2X2 U344 ( .B0(n451), .B1(n478), .A0N(str_reg[148]), .A1N(n451), .Y(
        n206) );
  OAI2BB2X2 U345 ( .B0(n451), .B1(n481), .A0N(str_reg[149]), .A1N(n451), .Y(
        n205) );
  OAI2BB2X2 U346 ( .B0(n451), .B1(n484), .A0N(str_reg[150]), .A1N(n451), .Y(
        n204) );
  OAI2BB2X2 U347 ( .B0(n451), .B1(n487), .A0N(str_reg[151]), .A1N(n451), .Y(
        n203) );
  OAI2BB2X2 U348 ( .B0(n459), .B1(n465), .A0N(str_reg[208]), .A1N(n459), .Y(
        n146) );
  OAI2BB2X2 U349 ( .B0(n459), .B1(n468), .A0N(str_reg[209]), .A1N(n459), .Y(
        n145) );
  OAI2BB2X2 U350 ( .B0(n459), .B1(n471), .A0N(str_reg[210]), .A1N(n459), .Y(
        n144) );
  OAI2BB2X2 U351 ( .B0(n459), .B1(n474), .A0N(str_reg[211]), .A1N(n459), .Y(
        n143) );
  OAI2BB2X2 U352 ( .B0(n459), .B1(n477), .A0N(str_reg[212]), .A1N(n459), .Y(
        n142) );
  OAI2BB2X2 U353 ( .B0(n459), .B1(n480), .A0N(str_reg[213]), .A1N(n459), .Y(
        n141) );
  OAI2BB2X2 U354 ( .B0(n459), .B1(n483), .A0N(str_reg[214]), .A1N(n459), .Y(
        n140) );
  OAI2BB2X2 U355 ( .B0(n459), .B1(n486), .A0N(str_reg[215]), .A1N(n459), .Y(
        n139) );
  OAI2BB2X2 U356 ( .B0(n437), .B1(n467), .A0N(str_reg[32]), .A1N(n437), .Y(
        n322) );
  OAI2BB2X2 U357 ( .B0(n437), .B1(n470), .A0N(str_reg[33]), .A1N(n437), .Y(
        n321) );
  OAI2BB2X2 U358 ( .B0(n437), .B1(n473), .A0N(str_reg[34]), .A1N(n437), .Y(
        n320) );
  OAI2BB2X2 U359 ( .B0(n437), .B1(n476), .A0N(str_reg[35]), .A1N(n437), .Y(
        n319) );
  OAI2BB2X2 U360 ( .B0(n437), .B1(n479), .A0N(str_reg[36]), .A1N(n437), .Y(
        n318) );
  OAI2BB2X2 U361 ( .B0(n437), .B1(n482), .A0N(str_reg[37]), .A1N(n437), .Y(
        n317) );
  OAI2BB2X2 U362 ( .B0(n437), .B1(n485), .A0N(str_reg[38]), .A1N(n437), .Y(
        n316) );
  OAI2BB2X2 U363 ( .B0(n437), .B1(n488), .A0N(str_reg[39]), .A1N(n437), .Y(
        n315) );
  OAI2BB2X2 U364 ( .B0(n445), .B1(n466), .A0N(str_reg[96]), .A1N(n445), .Y(
        n258) );
  OAI2BB2X2 U365 ( .B0(n445), .B1(n469), .A0N(str_reg[97]), .A1N(n445), .Y(
        n257) );
  OAI2BB2X2 U366 ( .B0(n445), .B1(n472), .A0N(str_reg[98]), .A1N(n445), .Y(
        n256) );
  OAI2BB2X2 U367 ( .B0(n445), .B1(n475), .A0N(str_reg[99]), .A1N(n445), .Y(
        n255) );
  OAI2BB2X2 U368 ( .B0(n445), .B1(n478), .A0N(str_reg[100]), .A1N(n445), .Y(
        n254) );
  OAI2BB2X2 U369 ( .B0(n445), .B1(n481), .A0N(str_reg[101]), .A1N(n445), .Y(
        n253) );
  OAI2BB2X2 U370 ( .B0(n445), .B1(n484), .A0N(str_reg[102]), .A1N(n445), .Y(
        n252) );
  OAI2BB2X2 U371 ( .B0(n445), .B1(n487), .A0N(str_reg[103]), .A1N(n445), .Y(
        n251) );
  OAI2BB2X2 U372 ( .B0(n453), .B1(n465), .A0N(str_reg[160]), .A1N(n453), .Y(
        n194) );
  OAI2BB2X2 U373 ( .B0(n453), .B1(n468), .A0N(str_reg[161]), .A1N(n453), .Y(
        n193) );
  OAI2BB2X2 U374 ( .B0(n453), .B1(n471), .A0N(str_reg[162]), .A1N(n453), .Y(
        n192) );
  OAI2BB2X2 U375 ( .B0(n453), .B1(n474), .A0N(str_reg[163]), .A1N(n453), .Y(
        n191) );
  OAI2BB2X2 U376 ( .B0(n453), .B1(n477), .A0N(str_reg[164]), .A1N(n453), .Y(
        n190) );
  OAI2BB2X2 U377 ( .B0(n453), .B1(n480), .A0N(str_reg[165]), .A1N(n453), .Y(
        n189) );
  OAI2BB2X2 U378 ( .B0(n453), .B1(n483), .A0N(str_reg[166]), .A1N(n453), .Y(
        n188) );
  OAI2BB2X2 U379 ( .B0(n453), .B1(n486), .A0N(str_reg[167]), .A1N(n453), .Y(
        n187) );
  OAI2BB2X2 U380 ( .B0(n461), .B1(n465), .A0N(str_reg[224]), .A1N(n461), .Y(
        n130) );
  OAI2BB2X2 U381 ( .B0(n461), .B1(n468), .A0N(str_reg[225]), .A1N(n461), .Y(
        n129) );
  OAI2BB2X2 U382 ( .B0(n461), .B1(n471), .A0N(str_reg[226]), .A1N(n461), .Y(
        n128) );
  OAI2BB2X2 U383 ( .B0(n461), .B1(n474), .A0N(str_reg[227]), .A1N(n461), .Y(
        n127) );
  OAI2BB2X2 U384 ( .B0(n461), .B1(n477), .A0N(str_reg[228]), .A1N(n461), .Y(
        n126) );
  OAI2BB2X2 U385 ( .B0(n461), .B1(n480), .A0N(str_reg[229]), .A1N(n461), .Y(
        n125) );
  OAI2BB2X2 U386 ( .B0(n461), .B1(n483), .A0N(str_reg[230]), .A1N(n461), .Y(
        n124) );
  OAI2BB2X2 U387 ( .B0(n461), .B1(n486), .A0N(str_reg[231]), .A1N(n461), .Y(
        n123) );
  OAI2BB2X2 U388 ( .B0(n439), .B1(n466), .A0N(str_reg[48]), .A1N(n439), .Y(
        n306) );
  OAI2BB2X2 U389 ( .B0(n439), .B1(n469), .A0N(str_reg[49]), .A1N(n439), .Y(
        n305) );
  OAI2BB2X2 U390 ( .B0(n439), .B1(n472), .A0N(str_reg[50]), .A1N(n439), .Y(
        n304) );
  OAI2BB2X2 U391 ( .B0(n439), .B1(n475), .A0N(str_reg[51]), .A1N(n439), .Y(
        n303) );
  OAI2BB2X2 U392 ( .B0(n439), .B1(n478), .A0N(str_reg[52]), .A1N(n439), .Y(
        n302) );
  OAI2BB2X2 U393 ( .B0(n439), .B1(n481), .A0N(str_reg[53]), .A1N(n439), .Y(
        n301) );
  OAI2BB2X2 U394 ( .B0(n439), .B1(n484), .A0N(str_reg[54]), .A1N(n439), .Y(
        n300) );
  OAI2BB2X2 U395 ( .B0(n439), .B1(n487), .A0N(str_reg[55]), .A1N(n439), .Y(
        n299) );
  OAI2BB2X2 U396 ( .B0(n447), .B1(n466), .A0N(str_reg[112]), .A1N(n447), .Y(
        n242) );
  OAI2BB2X2 U397 ( .B0(n447), .B1(n469), .A0N(str_reg[113]), .A1N(n447), .Y(
        n241) );
  OAI2BB2X2 U398 ( .B0(n447), .B1(n472), .A0N(str_reg[114]), .A1N(n447), .Y(
        n240) );
  OAI2BB2X2 U399 ( .B0(n447), .B1(n475), .A0N(str_reg[115]), .A1N(n447), .Y(
        n239) );
  OAI2BB2X2 U400 ( .B0(n447), .B1(n478), .A0N(str_reg[116]), .A1N(n447), .Y(
        n238) );
  OAI2BB2X2 U401 ( .B0(n447), .B1(n481), .A0N(str_reg[117]), .A1N(n447), .Y(
        n237) );
  OAI2BB2X2 U402 ( .B0(n447), .B1(n484), .A0N(str_reg[118]), .A1N(n447), .Y(
        n236) );
  OAI2BB2X2 U403 ( .B0(n447), .B1(n487), .A0N(str_reg[119]), .A1N(n447), .Y(
        n235) );
  OAI2BB2X2 U404 ( .B0(n455), .B1(n465), .A0N(str_reg[176]), .A1N(n455), .Y(
        n178) );
  OAI2BB2X2 U405 ( .B0(n455), .B1(n468), .A0N(str_reg[177]), .A1N(n455), .Y(
        n177) );
  OAI2BB2X2 U406 ( .B0(n455), .B1(n471), .A0N(str_reg[178]), .A1N(n455), .Y(
        n176) );
  OAI2BB2X2 U407 ( .B0(n455), .B1(n474), .A0N(str_reg[179]), .A1N(n455), .Y(
        n175) );
  OAI2BB2X2 U408 ( .B0(n455), .B1(n477), .A0N(str_reg[180]), .A1N(n455), .Y(
        n174) );
  OAI2BB2X2 U409 ( .B0(n455), .B1(n480), .A0N(str_reg[181]), .A1N(n455), .Y(
        n173) );
  OAI2BB2X2 U410 ( .B0(n455), .B1(n483), .A0N(str_reg[182]), .A1N(n455), .Y(
        n172) );
  OAI2BB2X2 U411 ( .B0(n455), .B1(n486), .A0N(str_reg[183]), .A1N(n455), .Y(
        n171) );
  OAI2BB2X2 U412 ( .B0(n463), .B1(n465), .A0N(str_reg[240]), .A1N(n463), .Y(
        n114) );
  OAI2BB2X2 U413 ( .B0(n463), .B1(n468), .A0N(str_reg[241]), .A1N(n463), .Y(
        n113) );
  OAI2BB2X2 U414 ( .B0(n463), .B1(n471), .A0N(str_reg[242]), .A1N(n463), .Y(
        n112) );
  OAI2BB2X2 U415 ( .B0(n463), .B1(n474), .A0N(str_reg[243]), .A1N(n463), .Y(
        n111) );
  OAI2BB2X2 U416 ( .B0(n463), .B1(n477), .A0N(str_reg[244]), .A1N(n463), .Y(
        n110) );
  OAI2BB2X2 U417 ( .B0(n463), .B1(n480), .A0N(str_reg[245]), .A1N(n463), .Y(
        n109) );
  OAI2BB2X2 U418 ( .B0(n463), .B1(n483), .A0N(str_reg[246]), .A1N(n463), .Y(
        n108) );
  OAI2BB2X2 U419 ( .B0(n463), .B1(n486), .A0N(str_reg[247]), .A1N(n463), .Y(
        n107) );
  OAI2BB2X2 U420 ( .B0(n9), .B1(n467), .A0N(pat_reg[40]), .A1N(n9), .Y(n390)
         );
  OAI2BB2X2 U421 ( .B0(n9), .B1(n470), .A0N(pat_reg[41]), .A1N(n9), .Y(n389)
         );
  OAI2BB2X2 U422 ( .B0(n9), .B1(n473), .A0N(pat_reg[42]), .A1N(n9), .Y(n388)
         );
  OAI2BB2X2 U423 ( .B0(n9), .B1(n476), .A0N(pat_reg[43]), .A1N(n9), .Y(n387)
         );
  OAI2BB2X2 U424 ( .B0(n9), .B1(n479), .A0N(pat_reg[44]), .A1N(n9), .Y(n386)
         );
  OAI2BB2X2 U425 ( .B0(n9), .B1(n482), .A0N(pat_reg[45]), .A1N(n9), .Y(n385)
         );
  OAI2BB2X2 U426 ( .B0(n9), .B1(n485), .A0N(pat_reg[46]), .A1N(n9), .Y(n384)
         );
  OAI2BB2X2 U427 ( .B0(n9), .B1(n488), .A0N(pat_reg[47]), .A1N(n9), .Y(n383)
         );
  OAI2BB2X2 U428 ( .B0(n11), .B1(n467), .A0N(pat_reg[56]), .A1N(n11), .Y(n374)
         );
  OAI2BB2X2 U429 ( .B0(n11), .B1(n470), .A0N(pat_reg[57]), .A1N(n11), .Y(n373)
         );
  OAI2BB2X2 U430 ( .B0(n11), .B1(n473), .A0N(pat_reg[58]), .A1N(n11), .Y(n372)
         );
  OAI2BB2X2 U431 ( .B0(n11), .B1(n476), .A0N(pat_reg[59]), .A1N(n11), .Y(n371)
         );
  OAI2BB2X2 U432 ( .B0(n11), .B1(n479), .A0N(pat_reg[60]), .A1N(n11), .Y(n370)
         );
  OAI2BB2X2 U433 ( .B0(n11), .B1(n482), .A0N(pat_reg[61]), .A1N(n11), .Y(n369)
         );
  OAI2BB2X2 U434 ( .B0(n11), .B1(n485), .A0N(pat_reg[62]), .A1N(n11), .Y(n368)
         );
  OAI2BB2X2 U435 ( .B0(n11), .B1(n488), .A0N(pat_reg[63]), .A1N(n11), .Y(n367)
         );
  OAI2BB2X2 U436 ( .B0(n8), .B1(n467), .A0N(pat_reg[32]), .A1N(n8), .Y(n398)
         );
  OAI2BB2X2 U437 ( .B0(n8), .B1(n470), .A0N(pat_reg[33]), .A1N(n8), .Y(n397)
         );
  OAI2BB2X2 U438 ( .B0(n8), .B1(n473), .A0N(pat_reg[34]), .A1N(n8), .Y(n396)
         );
  OAI2BB2X2 U439 ( .B0(n8), .B1(n476), .A0N(pat_reg[35]), .A1N(n8), .Y(n395)
         );
  OAI2BB2X2 U440 ( .B0(n8), .B1(n479), .A0N(pat_reg[36]), .A1N(n8), .Y(n394)
         );
  OAI2BB2X2 U441 ( .B0(n8), .B1(n482), .A0N(pat_reg[37]), .A1N(n8), .Y(n393)
         );
  OAI2BB2X2 U442 ( .B0(n8), .B1(n485), .A0N(pat_reg[38]), .A1N(n8), .Y(n392)
         );
  OAI2BB2X2 U443 ( .B0(n8), .B1(n488), .A0N(pat_reg[39]), .A1N(n8), .Y(n391)
         );
  OAI2BB2X2 U444 ( .B0(n10), .B1(n467), .A0N(pat_reg[48]), .A1N(n10), .Y(n382)
         );
  OAI2BB2X2 U445 ( .B0(n10), .B1(n470), .A0N(pat_reg[49]), .A1N(n10), .Y(n381)
         );
  OAI2BB2X2 U446 ( .B0(n10), .B1(n473), .A0N(pat_reg[50]), .A1N(n10), .Y(n380)
         );
  OAI2BB2X2 U447 ( .B0(n10), .B1(n476), .A0N(pat_reg[51]), .A1N(n10), .Y(n379)
         );
  OAI2BB2X2 U448 ( .B0(n10), .B1(n479), .A0N(pat_reg[52]), .A1N(n10), .Y(n378)
         );
  OAI2BB2X2 U449 ( .B0(n10), .B1(n482), .A0N(pat_reg[53]), .A1N(n10), .Y(n377)
         );
  OAI2BB2X2 U450 ( .B0(n10), .B1(n485), .A0N(pat_reg[54]), .A1N(n10), .Y(n376)
         );
  OAI2BB2X2 U451 ( .B0(n10), .B1(n488), .A0N(pat_reg[55]), .A1N(n10), .Y(n375)
         );
  OAI2BB2X2 U452 ( .B0(n5), .B1(n467), .A0N(pat_reg[8]), .A1N(n5), .Y(n422) );
  OAI2BB2X2 U453 ( .B0(n5), .B1(n470), .A0N(pat_reg[9]), .A1N(n5), .Y(n421) );
  OAI2BB2X2 U454 ( .B0(n5), .B1(n473), .A0N(pat_reg[10]), .A1N(n5), .Y(n420)
         );
  OAI2BB2X2 U455 ( .B0(n5), .B1(n476), .A0N(pat_reg[11]), .A1N(n5), .Y(n419)
         );
  OAI2BB2X2 U456 ( .B0(n5), .B1(n479), .A0N(pat_reg[12]), .A1N(n5), .Y(n418)
         );
  OAI2BB2X2 U457 ( .B0(n5), .B1(n482), .A0N(pat_reg[13]), .A1N(n5), .Y(n417)
         );
  OAI2BB2X2 U458 ( .B0(n5), .B1(n485), .A0N(pat_reg[14]), .A1N(n5), .Y(n416)
         );
  OAI2BB2X2 U459 ( .B0(n5), .B1(n488), .A0N(pat_reg[15]), .A1N(n5), .Y(n415)
         );
  OAI2BB2X2 U460 ( .B0(n7), .B1(n467), .A0N(pat_reg[24]), .A1N(n7), .Y(n406)
         );
  OAI2BB2X2 U461 ( .B0(n7), .B1(n470), .A0N(pat_reg[25]), .A1N(n7), .Y(n405)
         );
  OAI2BB2X2 U462 ( .B0(n7), .B1(n473), .A0N(pat_reg[26]), .A1N(n7), .Y(n404)
         );
  OAI2BB2X2 U463 ( .B0(n7), .B1(n476), .A0N(pat_reg[27]), .A1N(n7), .Y(n403)
         );
  OAI2BB2X2 U464 ( .B0(n7), .B1(n479), .A0N(pat_reg[28]), .A1N(n7), .Y(n402)
         );
  OAI2BB2X2 U465 ( .B0(n7), .B1(n482), .A0N(pat_reg[29]), .A1N(n7), .Y(n401)
         );
  OAI2BB2X2 U466 ( .B0(n7), .B1(n485), .A0N(pat_reg[30]), .A1N(n7), .Y(n400)
         );
  OAI2BB2X2 U467 ( .B0(n7), .B1(n488), .A0N(pat_reg[31]), .A1N(n7), .Y(n399)
         );
  OAI2BB2X2 U468 ( .B0(n6), .B1(n467), .A0N(pat_reg[16]), .A1N(n6), .Y(n414)
         );
  OAI2BB2X2 U469 ( .B0(n6), .B1(n470), .A0N(pat_reg[17]), .A1N(n6), .Y(n413)
         );
  OAI2BB2X2 U470 ( .B0(n6), .B1(n473), .A0N(pat_reg[18]), .A1N(n6), .Y(n412)
         );
  OAI2BB2X2 U471 ( .B0(n6), .B1(n476), .A0N(pat_reg[19]), .A1N(n6), .Y(n411)
         );
  OAI2BB2X2 U472 ( .B0(n6), .B1(n479), .A0N(pat_reg[20]), .A1N(n6), .Y(n410)
         );
  OAI2BB2X2 U473 ( .B0(n6), .B1(n482), .A0N(pat_reg[21]), .A1N(n6), .Y(n409)
         );
  OAI2BB2X2 U474 ( .B0(n6), .B1(n485), .A0N(pat_reg[22]), .A1N(n6), .Y(n408)
         );
  OAI2BB2X2 U475 ( .B0(n6), .B1(n488), .A0N(pat_reg[23]), .A1N(n6), .Y(n407)
         );
  OAI2BB2X2 U476 ( .B0(n85), .B1(n95), .A0N(n97), .A1N(p_index[1]), .Y(n435)
         );
  NAND2X2 U477 ( .A(p_index[2]), .B(n87), .Y(n82) );
  INVX2 U478 ( .A(n75), .Y(n491) );
  AOI211X2 U479 ( .A0(n76), .A1(ff_valid), .B0(n3), .C0(n489), .Y(n75) );
  BUFX2 U480 ( .A(n83), .Y(n10) );
  AOI31X1 U481 ( .A0(n496), .A1(n492), .A2(p_index[1]), .B0(n489), .Y(n83) );
  BUFX2 U482 ( .A(n90), .Y(n6) );
  AOI31X1 U483 ( .A0(n494), .A1(n492), .A2(p_index[1]), .B0(n489), .Y(n90) );
  AO22X2 U484 ( .A0(n72), .A1(s_index[4]), .B0(N66), .B1(n73), .Y(n360) );
  AO22X2 U485 ( .A0(n72), .A1(s_index[3]), .B0(N65), .B1(n73), .Y(n361) );
  AO22X2 U486 ( .A0(n72), .A1(s_index[2]), .B0(N64), .B1(n73), .Y(n362) );
  AO22X2 U487 ( .A0(n72), .A1(s_index[1]), .B0(N63), .B1(n73), .Y(n363) );
  AO22X2 U488 ( .A0(n72), .A1(s_index[0]), .B0(n499), .B1(n73), .Y(n364) );
  NOR2X2 U489 ( .A(active[0]), .B(n498), .Y(n76) );
  NAND3XL U490 ( .A(s_index[1]), .B(s_index[0]), .C(s_index[2]), .Y(n26) );
  NAND3XL U491 ( .A(s_index[1]), .B(n499), .C(s_index[2]), .Y(n28) );
  NAND3XL U492 ( .A(s_index[0]), .B(n501), .C(s_index[1]), .Y(n34) );
  NAND3XL U493 ( .A(s_index[0]), .B(n500), .C(s_index[2]), .Y(n30) );
  NAND3XL U494 ( .A(n499), .B(n500), .C(s_index[2]), .Y(n32) );
  NAND3XL U495 ( .A(n499), .B(n501), .C(s_index[1]), .Y(n36) );
  NAND3XL U496 ( .A(n500), .B(n501), .C(s_index[0]), .Y(n38) );
  INVX2 U497 ( .A(s_index[2]), .Y(n501) );
  INVX2 U498 ( .A(s_index[1]), .Y(n500) );
  INVX2 U499 ( .A(s_index[0]), .Y(n499) );
  NAND2X2 U500 ( .A(p_index[0]), .B(n493), .Y(n85) );
  INVX2 U501 ( .A(p_index[0]), .Y(n492) );
  NAND2X2 U502 ( .A(p_index[1]), .B(p_index[0]), .Y(n81) );
  INVX2 U503 ( .A(p_index[1]), .Y(n493) );
  INVX2 U504 ( .A(s_index[3]), .Y(n502) );
  INVX2 U505 ( .A(s_index[4]), .Y(n503) );
  ADDHX1 U506 ( .A(s_index[1]), .B(s_index[0]), .CO(\add_69_S2/carry[2] ), .S(
        N63) );
  ADDHX1 U507 ( .A(s_index[2]), .B(\add_69_S2/carry[2] ), .CO(
        \add_69_S2/carry[3] ), .S(N64) );
  NAND2X2 U508 ( .A(n498), .B(active[0]), .Y(n79) );
  INVX2 U509 ( .A(p_index[2]), .Y(n495) );
  ADDHX1 U510 ( .A(s_index[3]), .B(\add_69_S2/carry[3] ), .CO(
        \add_69_S2/carry[4] ), .S(N65) );
  INVX2 U511 ( .A(active[1]), .Y(n498) );
  XOR2X1 U512 ( .A(\add_69_S2/carry[4] ), .B(s_index[4]), .Y(N66) );
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
  wire   N33, done, N65, N66, N67, N68, N69, N398, N399, N400, N401, N402,
         N447, N448, N449, N450, n18, n22, n23, n36, n37, n38, n39, n40, n41,
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
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349,
         \sub_83/carry[4] , \sub_83/carry[3] , \sub_83/carry[2] ,
         \sub_83/carry[1] , \r342/carry[4] , \r342/carry[3] , \r342/carry[2] ,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n20, n21, n24, n25, n26, n27, n28;
  wire   [3:0] current_st;
  wire   [3:0] next_st;
  wire   [4:0] str_pro_idx;
  wire   [2:0] pat_pro_idx;

  TLATX1 \next_st_reg[0]  ( .G(N65), .D(N66), .Q(next_st[0]) );
  DFFTRXL \current_st_reg[3]  ( .D(next_st[3]), .RN(n7), .CK(clk), .Q(
        current_st[3]), .QN(n18) );
  DFFTRXL \current_st_reg[2]  ( .D(next_st[2]), .RN(n7), .CK(clk), .Q(
        current_st[2]), .QN(n22) );
  DFFTRXL \current_st_reg[1]  ( .D(next_st[1]), .RN(n7), .CK(clk), .Q(
        current_st[1]), .QN(n23) );
  TLATX1 \next_st_reg[2]  ( .G(N65), .D(N68), .Q(next_st[2]) );
  TLATX1 \next_st_reg[3]  ( .G(N65), .D(N69), .Q(next_st[3]) );
  TLATX1 \next_st_reg[1]  ( .G(N65), .D(N67), .Q(next_st[1]) );
  DFFQXL \current_st_reg[0]  ( .D(N33), .CK(clk), .Q(current_st[0]) );
  DFFQXL output_valid_reg ( .D(n340), .CK(clk), .Q(output_valid) );
  DFFQXL done_reg ( .D(n349), .CK(clk), .Q(done) );
  DFFQXL match_reg ( .D(n339), .CK(clk), .Q(match) );
  DFFQXL \match_idx_reg[4]  ( .D(n338), .CK(clk), .Q(match_idx[4]) );
  DFFQXL \match_idx_reg[3]  ( .D(n337), .CK(clk), .Q(match_idx[3]) );
  DFFQXL \match_idx_reg[2]  ( .D(n336), .CK(clk), .Q(match_idx[2]) );
  DFFQXL \match_idx_reg[1]  ( .D(n335), .CK(clk), .Q(match_idx[1]) );
  DFFQXL \match_idx_reg[0]  ( .D(n334), .CK(clk), .Q(match_idx[0]) );
  DFFQXL \pat_pro_idx_reg[0]  ( .D(n342), .CK(clk), .Q(pat_pro_idx[0]) );
  DFFQXL \pat_pro_idx_reg[2]  ( .D(n341), .CK(clk), .Q(pat_pro_idx[2]) );
  DFFQXL \pat_pro_idx_reg[1]  ( .D(n348), .CK(clk), .Q(pat_pro_idx[1]) );
  DFFQXL \str_pro_idx_reg[4]  ( .D(n343), .CK(clk), .Q(str_pro_idx[4]) );
  DFFQXL \str_pro_idx_reg[3]  ( .D(n344), .CK(clk), .Q(str_pro_idx[3]) );
  DFFQXL \str_pro_idx_reg[2]  ( .D(n345), .CK(clk), .Q(str_pro_idx[2]) );
  DFFQXL \str_pro_idx_reg[1]  ( .D(n347), .CK(clk), .Q(str_pro_idx[1]) );
  DFFQXL \str_pro_idx_reg[0]  ( .D(n346), .CK(clk), .Q(str_pro_idx[0]) );
  INVXL U3 ( .A(pat_last_idx[0]), .Y(n10) );
  XOR2XL U4 ( .A(n27), .B(pat_last_idx[0]), .Y(n328) );
  NOR4X2 U5 ( .A(n22), .B(current_st[0]), .C(current_st[1]), .D(current_st[3]), 
        .Y(n46) );
  NAND2X2 U6 ( .A(n13), .B(n48), .Y(n50) );
  NOR2BX1 U7 ( .AN(n69), .B(n39), .Y(n71) );
  AO21X2 U8 ( .A0(n13), .A1(n52), .B0(n69), .Y(n48) );
  INVX2 U9 ( .A(n85), .Y(n14) );
  INVX2 U10 ( .A(n39), .Y(n13) );
  INVX2 U11 ( .A(n37), .Y(n15) );
  NOR2BX1 U12 ( .AN(n2), .B(n27), .Y(n58) );
  INVX2 U13 ( .A(n62), .Y(n24) );
  NAND3XL U14 ( .A(n43), .B(n12), .C(n333), .Y(N65) );
  OAI31X1 U15 ( .A0(n39), .A1(n82), .A2(n83), .B0(n84), .Y(n69) );
  AOI22XL U16 ( .A0(n6), .A1(n37), .B0(n15), .B1(n38), .Y(n83) );
  NOR2X2 U17 ( .A(reset), .B(n14), .Y(n84) );
  NAND2X2 U18 ( .A(n43), .B(n46), .Y(n39) );
  NOR2X2 U19 ( .A(n47), .B(reset), .Y(n43) );
  OAI22X1 U20 ( .A0(n28), .A1(n48), .B0(n49), .B1(n50), .Y(n341) );
  AOI22XL U21 ( .A0(n15), .A1(n51), .B0(n52), .B1(n53), .Y(n49) );
  OAI211XL U22 ( .A0(n1), .A1(n28), .B0(n62), .C0(n63), .Y(n51) );
  OAI211XL U23 ( .A0(n1), .A1(n54), .B0(n55), .C0(n56), .Y(n53) );
  NOR3X1 U24 ( .A(n37), .B(n38), .C(n39), .Y(n36) );
  NAND2X2 U25 ( .A(n47), .B(n7), .Y(n85) );
  NAND3XL U26 ( .A(n12), .B(n44), .C(n43), .Y(n42) );
  INVX2 U27 ( .A(n40), .Y(n11) );
  OAI211XL U28 ( .A0(n41), .A1(n39), .B0(n42), .C0(n7), .Y(n40) );
  NAND2X2 U29 ( .A(n93), .B(n94), .Y(n37) );
  NOR4X2 U30 ( .A(n215), .B(n216), .C(n217), .D(n218), .Y(n93) );
  NOR4X2 U31 ( .A(n95), .B(n96), .C(n97), .D(n98), .Y(n94) );
  XNOR2X1 U32 ( .A(n297), .B(n298), .Y(n215) );
  AOI221XL U33 ( .A0(n104), .A1(n302), .B0(n106), .B1(n303), .C0(n304), .Y(
        n297) );
  NAND4X2 U34 ( .A(n319), .B(n320), .C(n321), .D(n322), .Y(n302) );
  NAND4X2 U35 ( .A(n315), .B(n316), .C(n317), .D(n318), .Y(n303) );
  AO22X2 U36 ( .A0(n109), .A1(n305), .B0(n111), .B1(n306), .Y(n304) );
  NOR2BX1 U37 ( .AN(n323), .B(n19), .Y(n122) );
  NOR2BX1 U38 ( .AN(n324), .B(n19), .Y(n121) );
  NOR2BX1 U39 ( .AN(n325), .B(n19), .Y(n124) );
  NOR2BX1 U40 ( .AN(n326), .B(n19), .Y(n123) );
  NOR2X2 U41 ( .A(n21), .B(n20), .Y(n325) );
  NOR2X2 U42 ( .A(n16), .B(n17), .Y(n106) );
  AOI2BB1X2 U43 ( .A0N(n38), .A1N(n37), .B0(n82), .Y(n41) );
  INVX2 U44 ( .A(n46), .Y(n12) );
  NOR2X2 U45 ( .A(n15), .B(n82), .Y(n52) );
  NAND2X2 U46 ( .A(n3), .B(n1), .Y(n62) );
  INVX2 U47 ( .A(n63), .Y(n25) );
  INVX2 U48 ( .A(n1), .Y(n27) );
  BUFX2 U49 ( .A(n60), .Y(n2) );
  NOR2X2 U50 ( .A(n28), .B(n26), .Y(n60) );
  BUFX2 U51 ( .A(n59), .Y(n4) );
  NOR2X2 U52 ( .A(n63), .B(n27), .Y(n59) );
  NOR2BX1 U53 ( .AN(n332), .B(n331), .Y(n333) );
  OAI22X1 U54 ( .A0(n27), .A1(n48), .B0(n64), .B1(n50), .Y(n342) );
  AOI22XL U55 ( .A0(n52), .A1(n65), .B0(n15), .B1(n27), .Y(n64) );
  OAI211XL U56 ( .A0(n1), .A1(n66), .B0(n67), .C0(n68), .Y(n65) );
  AOI22XL U57 ( .A0(ff_result[6]), .A1(n24), .B0(ff_result[0]), .B1(n5), .Y(
        n68) );
  OAI22X1 U58 ( .A0(n26), .A1(n48), .B0(n76), .B1(n50), .Y(n348) );
  AOI22XL U59 ( .A0(n15), .A1(n77), .B0(n52), .B1(n78), .Y(n76) );
  XOR2X1 U60 ( .A(pat_pro_idx[1]), .B(n1), .Y(n77) );
  OAI211XL U61 ( .A0(n1), .A1(n79), .B0(n80), .C0(n81), .Y(n78) );
  OAI21X1 U62 ( .A0(n21), .A1(n69), .B0(n70), .Y(n343) );
  AOI22XL U63 ( .A0(start_idx[4]), .A1(n14), .B0(N450), .B1(n71), .Y(n70) );
  OAI21X1 U64 ( .A0(n20), .A1(n69), .B0(n72), .Y(n344) );
  AOI22XL U65 ( .A0(start_idx[3]), .A1(n14), .B0(N449), .B1(n71), .Y(n72) );
  OAI21X1 U66 ( .A0(n19), .A1(n69), .B0(n73), .Y(n345) );
  AOI22XL U67 ( .A0(start_idx[2]), .A1(n14), .B0(N448), .B1(n71), .Y(n73) );
  OAI21X1 U68 ( .A0(n17), .A1(n69), .B0(n74), .Y(n346) );
  AOI22XL U69 ( .A0(start_idx[0]), .A1(n14), .B0(n17), .B1(n71), .Y(n74) );
  OAI21X1 U70 ( .A0(n16), .A1(n69), .B0(n75), .Y(n347) );
  AOI22XL U71 ( .A0(start_idx[1]), .A1(n14), .B0(N447), .B1(n71), .Y(n75) );
  INVX2 U72 ( .A(reset), .Y(n7) );
  OAI2BB2X2 U73 ( .B0(n41), .B1(n39), .A0N(n42), .A1N(done), .Y(n349) );
  OAI2B1X1 U74 ( .A1N(n43), .A0(n44), .B0(n45), .Y(n340) );
  OAI211XL U75 ( .A0(n46), .A1(n47), .B0(n7), .C0(output_valid), .Y(n45) );
  AO22X2 U76 ( .A0(match_idx[0]), .A1(n11), .B0(N398), .B1(n36), .Y(n334) );
  AO22X2 U77 ( .A0(match_idx[1]), .A1(n11), .B0(N399), .B1(n36), .Y(n335) );
  AO22X2 U78 ( .A0(match_idx[2]), .A1(n11), .B0(N400), .B1(n36), .Y(n336) );
  AO22X2 U79 ( .A0(match_idx[3]), .A1(n11), .B0(N401), .B1(n36), .Y(n337) );
  AO22X2 U80 ( .A0(match_idx[4]), .A1(n11), .B0(N402), .B1(n36), .Y(n338) );
  AO21X2 U81 ( .A0(match), .A1(n11), .B0(n36), .Y(n339) );
  OR2X2 U82 ( .A(next_st[0]), .B(reset), .Y(N33) );
  XNOR2X1 U83 ( .A(n189), .B(n190), .Y(n95) );
  OAI211XL U84 ( .A0(n1), .A1(n191), .B0(n192), .C0(n193), .Y(n190) );
  AOI221XL U85 ( .A0(n104), .A1(n194), .B0(n106), .B1(n195), .C0(n196), .Y(
        n189) );
  AOI222XL U86 ( .A0(pat_input[36]), .A1(n25), .B0(pat_input[52]), .B1(n2), 
        .C0(pat_input[20]), .C1(n3), .Y(n191) );
  XNOR2X1 U87 ( .A(n99), .B(n100), .Y(n98) );
  OAI211XL U88 ( .A0(n1), .A1(n101), .B0(n102), .C0(n103), .Y(n100) );
  AOI221XL U89 ( .A0(n104), .A1(n105), .B0(n106), .B1(n107), .C0(n108), .Y(n99) );
  AOI222XL U90 ( .A0(pat_input[39]), .A1(n25), .B0(pat_input[55]), .B1(n2), 
        .C0(pat_input[23]), .C1(n3), .Y(n101) );
  XNOR2X1 U91 ( .A(n219), .B(n220), .Y(n218) );
  OAI211XL U92 ( .A0(n1), .A1(n221), .B0(n222), .C0(n223), .Y(n220) );
  AOI221XL U93 ( .A0(n104), .A1(n224), .B0(n106), .B1(n225), .C0(n226), .Y(
        n219) );
  AOI222XL U94 ( .A0(pat_input[35]), .A1(n25), .B0(pat_input[51]), .B1(n2), 
        .C0(pat_input[19]), .C1(n3), .Y(n221) );
  AOI22XL U95 ( .A0(str_input[167]), .A1(n123), .B0(str_input[231]), .B1(n124), 
        .Y(n113) );
  AOI22XL U96 ( .A0(str_input[166]), .A1(n123), .B0(str_input[230]), .B1(n124), 
        .Y(n147) );
  AOI22XL U97 ( .A0(str_input[165]), .A1(n123), .B0(str_input[229]), .B1(n124), 
        .Y(n173) );
  AOI22XL U98 ( .A0(str_input[164]), .A1(n123), .B0(str_input[228]), .B1(n124), 
        .Y(n199) );
  AOI22XL U99 ( .A0(str_input[163]), .A1(n123), .B0(str_input[227]), .B1(n124), 
        .Y(n229) );
  AOI22XL U100 ( .A0(str_input[162]), .A1(n123), .B0(str_input[226]), .B1(n124), .Y(n255) );
  AOI22XL U101 ( .A0(str_input[161]), .A1(n123), .B0(str_input[225]), .B1(n124), .Y(n281) );
  AOI22XL U102 ( .A0(str_input[0]), .A1(n117), .B0(str_input[64]), .B1(n118), 
        .Y(n310) );
  AOI22XL U103 ( .A0(str_input[8]), .A1(n117), .B0(str_input[72]), .B1(n118), 
        .Y(n314) );
  AOI22XL U104 ( .A0(str_input[25]), .A1(n117), .B0(str_input[89]), .B1(n118), 
        .Y(n292) );
  AOI22XL U105 ( .A0(str_input[17]), .A1(n117), .B0(str_input[81]), .B1(n118), 
        .Y(n296) );
  AOI22XL U106 ( .A0(str_input[7]), .A1(n117), .B0(str_input[71]), .B1(n118), 
        .Y(n116) );
  AOI22XL U107 ( .A0(str_input[15]), .A1(n117), .B0(str_input[79]), .B1(n118), 
        .Y(n128) );
  AOI22XL U108 ( .A0(str_input[6]), .A1(n117), .B0(str_input[70]), .B1(n118), 
        .Y(n150) );
  AOI22XL U109 ( .A0(str_input[14]), .A1(n117), .B0(str_input[78]), .B1(n118), 
        .Y(n154) );
  AOI22XL U110 ( .A0(str_input[5]), .A1(n117), .B0(str_input[69]), .B1(n118), 
        .Y(n176) );
  AOI22XL U111 ( .A0(str_input[13]), .A1(n117), .B0(str_input[77]), .B1(n118), 
        .Y(n180) );
  AOI22XL U112 ( .A0(str_input[4]), .A1(n117), .B0(str_input[68]), .B1(n118), 
        .Y(n202) );
  AOI22XL U113 ( .A0(str_input[12]), .A1(n117), .B0(str_input[76]), .B1(n118), 
        .Y(n206) );
  AOI22XL U114 ( .A0(str_input[3]), .A1(n117), .B0(str_input[67]), .B1(n118), 
        .Y(n232) );
  AOI22XL U115 ( .A0(str_input[11]), .A1(n117), .B0(str_input[75]), .B1(n118), 
        .Y(n236) );
  AOI22XL U116 ( .A0(str_input[2]), .A1(n117), .B0(str_input[66]), .B1(n118), 
        .Y(n258) );
  AOI22XL U117 ( .A0(str_input[10]), .A1(n117), .B0(str_input[74]), .B1(n118), 
        .Y(n262) );
  AOI22XL U118 ( .A0(str_input[1]), .A1(n117), .B0(str_input[65]), .B1(n118), 
        .Y(n284) );
  AOI22XL U119 ( .A0(str_input[9]), .A1(n117), .B0(str_input[73]), .B1(n118), 
        .Y(n288) );
  AOI22XL U120 ( .A0(str_input[31]), .A1(n117), .B0(str_input[95]), .B1(n118), 
        .Y(n132) );
  AOI22XL U121 ( .A0(str_input[23]), .A1(n117), .B0(str_input[87]), .B1(n118), 
        .Y(n136) );
  AOI22XL U122 ( .A0(str_input[30]), .A1(n117), .B0(str_input[94]), .B1(n118), 
        .Y(n158) );
  AOI22XL U123 ( .A0(str_input[22]), .A1(n117), .B0(str_input[86]), .B1(n118), 
        .Y(n162) );
  AOI22XL U124 ( .A0(str_input[29]), .A1(n117), .B0(str_input[93]), .B1(n118), 
        .Y(n184) );
  AOI22XL U125 ( .A0(str_input[21]), .A1(n117), .B0(str_input[85]), .B1(n118), 
        .Y(n188) );
  AOI22XL U126 ( .A0(str_input[28]), .A1(n117), .B0(str_input[92]), .B1(n118), 
        .Y(n210) );
  AOI22XL U127 ( .A0(str_input[27]), .A1(n117), .B0(str_input[91]), .B1(n118), 
        .Y(n240) );
  AOI22XL U128 ( .A0(str_input[19]), .A1(n117), .B0(str_input[83]), .B1(n118), 
        .Y(n244) );
  AOI22XL U129 ( .A0(str_input[26]), .A1(n117), .B0(str_input[90]), .B1(n118), 
        .Y(n266) );
  AOI22XL U130 ( .A0(str_input[18]), .A1(n117), .B0(str_input[82]), .B1(n118), 
        .Y(n270) );
  AOI22XL U131 ( .A0(str_input[39]), .A1(n121), .B0(str_input[103]), .B1(n122), 
        .Y(n114) );
  AOI22XL U132 ( .A0(str_input[47]), .A1(n121), .B0(str_input[111]), .B1(n122), 
        .Y(n126) );
  AOI22XL U133 ( .A0(str_input[38]), .A1(n121), .B0(str_input[102]), .B1(n122), 
        .Y(n148) );
  AOI22XL U134 ( .A0(str_input[46]), .A1(n121), .B0(str_input[110]), .B1(n122), 
        .Y(n152) );
  AOI22XL U135 ( .A0(str_input[37]), .A1(n121), .B0(str_input[101]), .B1(n122), 
        .Y(n174) );
  AOI22XL U136 ( .A0(str_input[45]), .A1(n121), .B0(str_input[109]), .B1(n122), 
        .Y(n178) );
  AOI22XL U137 ( .A0(str_input[36]), .A1(n121), .B0(str_input[100]), .B1(n122), 
        .Y(n200) );
  AOI22XL U138 ( .A0(str_input[44]), .A1(n121), .B0(str_input[108]), .B1(n122), 
        .Y(n204) );
  AOI22XL U139 ( .A0(str_input[35]), .A1(n121), .B0(str_input[99]), .B1(n122), 
        .Y(n230) );
  AOI22XL U140 ( .A0(str_input[43]), .A1(n121), .B0(str_input[107]), .B1(n122), 
        .Y(n234) );
  AOI22XL U141 ( .A0(str_input[34]), .A1(n121), .B0(str_input[98]), .B1(n122), 
        .Y(n256) );
  AOI22XL U142 ( .A0(str_input[42]), .A1(n121), .B0(str_input[106]), .B1(n122), 
        .Y(n260) );
  AOI22XL U143 ( .A0(str_input[33]), .A1(n121), .B0(str_input[97]), .B1(n122), 
        .Y(n282) );
  AOI22XL U144 ( .A0(str_input[41]), .A1(n121), .B0(str_input[105]), .B1(n122), 
        .Y(n286) );
  AOI22XL U145 ( .A0(str_input[135]), .A1(n119), .B0(str_input[199]), .B1(n120), .Y(n115) );
  AOI22XL U146 ( .A0(str_input[143]), .A1(n119), .B0(str_input[207]), .B1(n120), .Y(n127) );
  AOI22XL U147 ( .A0(str_input[134]), .A1(n119), .B0(str_input[198]), .B1(n120), .Y(n149) );
  AOI22XL U148 ( .A0(str_input[142]), .A1(n119), .B0(str_input[206]), .B1(n120), .Y(n153) );
  AOI22XL U149 ( .A0(str_input[133]), .A1(n119), .B0(str_input[197]), .B1(n120), .Y(n175) );
  AOI22XL U150 ( .A0(str_input[141]), .A1(n119), .B0(str_input[205]), .B1(n120), .Y(n179) );
  AOI22XL U151 ( .A0(str_input[132]), .A1(n119), .B0(str_input[196]), .B1(n120), .Y(n201) );
  AOI22XL U152 ( .A0(str_input[140]), .A1(n119), .B0(str_input[204]), .B1(n120), .Y(n205) );
  AOI22XL U153 ( .A0(str_input[131]), .A1(n119), .B0(str_input[195]), .B1(n120), .Y(n231) );
  AOI22XL U154 ( .A0(str_input[139]), .A1(n119), .B0(str_input[203]), .B1(n120), .Y(n235) );
  AOI22XL U155 ( .A0(str_input[130]), .A1(n119), .B0(str_input[194]), .B1(n120), .Y(n257) );
  AOI22XL U156 ( .A0(str_input[138]), .A1(n119), .B0(str_input[202]), .B1(n120), .Y(n261) );
  AOI22XL U157 ( .A0(str_input[129]), .A1(n119), .B0(str_input[193]), .B1(n120), .Y(n283) );
  AOI22XL U158 ( .A0(str_input[137]), .A1(n119), .B0(str_input[201]), .B1(n120), .Y(n287) );
  XNOR2X1 U159 ( .A(n137), .B(n138), .Y(n97) );
  OAI211XL U160 ( .A0(n1), .A1(n139), .B0(n140), .C0(n141), .Y(n138) );
  AOI221XL U161 ( .A0(n104), .A1(n142), .B0(n106), .B1(n143), .C0(n144), .Y(
        n137) );
  AOI222XL U162 ( .A0(pat_input[38]), .A1(n25), .B0(pat_input[54]), .B1(n2), 
        .C0(pat_input[22]), .C1(n3), .Y(n139) );
  XNOR2X1 U163 ( .A(n163), .B(n164), .Y(n96) );
  OAI211XL U164 ( .A0(n1), .A1(n165), .B0(n166), .C0(n167), .Y(n164) );
  AOI221XL U165 ( .A0(n104), .A1(n168), .B0(n106), .B1(n169), .C0(n170), .Y(
        n163) );
  AOI222XL U166 ( .A0(pat_input[37]), .A1(n25), .B0(pat_input[53]), .B1(n2), 
        .C0(pat_input[21]), .C1(n3), .Y(n165) );
  XNOR2X1 U167 ( .A(n245), .B(n246), .Y(n217) );
  OAI211XL U168 ( .A0(n1), .A1(n247), .B0(n248), .C0(n249), .Y(n246) );
  AOI221XL U169 ( .A0(n104), .A1(n250), .B0(n106), .B1(n251), .C0(n252), .Y(
        n245) );
  AOI222XL U170 ( .A0(pat_input[34]), .A1(n25), .B0(pat_input[50]), .B1(n2), 
        .C0(pat_input[18]), .C1(n3), .Y(n247) );
  XNOR2X1 U171 ( .A(n271), .B(n272), .Y(n216) );
  OAI211XL U172 ( .A0(n1), .A1(n273), .B0(n274), .C0(n275), .Y(n272) );
  AOI221XL U173 ( .A0(n104), .A1(n276), .B0(n106), .B1(n277), .C0(n278), .Y(
        n271) );
  AOI222XL U174 ( .A0(pat_input[33]), .A1(n25), .B0(pat_input[49]), .B1(n2), 
        .C0(pat_input[17]), .C1(n3), .Y(n273) );
  NAND4X2 U175 ( .A(n289), .B(n290), .C(n291), .D(n292), .Y(n277) );
  AOI22XL U176 ( .A0(str_input[185]), .A1(n123), .B0(str_input[249]), .B1(n124), .Y(n289) );
  AOI22XL U177 ( .A0(str_input[57]), .A1(n121), .B0(str_input[121]), .B1(n122), 
        .Y(n290) );
  AOI22XL U178 ( .A0(str_input[153]), .A1(n119), .B0(str_input[217]), .B1(n120), .Y(n291) );
  NAND4X2 U179 ( .A(n129), .B(n130), .C(n131), .D(n132), .Y(n107) );
  AOI22XL U180 ( .A0(str_input[191]), .A1(n123), .B0(str_input[255]), .B1(n124), .Y(n129) );
  AOI22XL U181 ( .A0(str_input[63]), .A1(n121), .B0(str_input[127]), .B1(n122), 
        .Y(n130) );
  AOI22XL U182 ( .A0(str_input[159]), .A1(n119), .B0(str_input[223]), .B1(n120), .Y(n131) );
  NAND4X2 U183 ( .A(n155), .B(n156), .C(n157), .D(n158), .Y(n143) );
  AOI22XL U184 ( .A0(str_input[190]), .A1(n123), .B0(str_input[254]), .B1(n124), .Y(n155) );
  AOI22XL U185 ( .A0(str_input[62]), .A1(n121), .B0(str_input[126]), .B1(n122), 
        .Y(n156) );
  AOI22XL U186 ( .A0(str_input[158]), .A1(n119), .B0(str_input[222]), .B1(n120), .Y(n157) );
  NAND4X2 U187 ( .A(n181), .B(n182), .C(n183), .D(n184), .Y(n169) );
  AOI22XL U188 ( .A0(str_input[189]), .A1(n123), .B0(str_input[253]), .B1(n124), .Y(n181) );
  AOI22XL U189 ( .A0(str_input[61]), .A1(n121), .B0(str_input[125]), .B1(n122), 
        .Y(n182) );
  AOI22XL U190 ( .A0(str_input[157]), .A1(n119), .B0(str_input[221]), .B1(n120), .Y(n183) );
  NAND4X2 U191 ( .A(n207), .B(n208), .C(n209), .D(n210), .Y(n195) );
  AOI22XL U192 ( .A0(str_input[188]), .A1(n123), .B0(str_input[252]), .B1(n124), .Y(n207) );
  AOI22XL U193 ( .A0(str_input[60]), .A1(n121), .B0(str_input[124]), .B1(n122), 
        .Y(n208) );
  AOI22XL U194 ( .A0(str_input[156]), .A1(n119), .B0(str_input[220]), .B1(n120), .Y(n209) );
  NAND4X2 U195 ( .A(n237), .B(n238), .C(n239), .D(n240), .Y(n225) );
  AOI22XL U196 ( .A0(str_input[187]), .A1(n123), .B0(str_input[251]), .B1(n124), .Y(n237) );
  AOI22XL U197 ( .A0(str_input[59]), .A1(n121), .B0(str_input[123]), .B1(n122), 
        .Y(n238) );
  AOI22XL U198 ( .A0(str_input[155]), .A1(n119), .B0(str_input[219]), .B1(n120), .Y(n239) );
  NAND4X2 U199 ( .A(n263), .B(n264), .C(n265), .D(n266), .Y(n251) );
  AOI22XL U200 ( .A0(str_input[186]), .A1(n123), .B0(str_input[250]), .B1(n124), .Y(n263) );
  AOI22XL U201 ( .A0(str_input[58]), .A1(n121), .B0(str_input[122]), .B1(n122), 
        .Y(n264) );
  AOI22XL U202 ( .A0(str_input[154]), .A1(n119), .B0(str_input[218]), .B1(n120), .Y(n265) );
  NAND4X2 U203 ( .A(n293), .B(n294), .C(n295), .D(n296), .Y(n276) );
  AOI22XL U204 ( .A0(str_input[177]), .A1(n123), .B0(str_input[241]), .B1(n124), .Y(n293) );
  AOI22XL U205 ( .A0(str_input[49]), .A1(n121), .B0(str_input[113]), .B1(n122), 
        .Y(n294) );
  AOI22XL U206 ( .A0(str_input[145]), .A1(n119), .B0(str_input[209]), .B1(n120), .Y(n295) );
  NAND4X2 U207 ( .A(n133), .B(n134), .C(n135), .D(n136), .Y(n105) );
  AOI22XL U208 ( .A0(str_input[183]), .A1(n123), .B0(str_input[247]), .B1(n124), .Y(n133) );
  AOI22XL U209 ( .A0(str_input[55]), .A1(n121), .B0(str_input[119]), .B1(n122), 
        .Y(n134) );
  AOI22XL U210 ( .A0(str_input[151]), .A1(n119), .B0(str_input[215]), .B1(n120), .Y(n135) );
  NAND4X2 U211 ( .A(n159), .B(n160), .C(n161), .D(n162), .Y(n142) );
  AOI22XL U212 ( .A0(str_input[182]), .A1(n123), .B0(str_input[246]), .B1(n124), .Y(n159) );
  AOI22XL U213 ( .A0(str_input[54]), .A1(n121), .B0(str_input[118]), .B1(n122), 
        .Y(n160) );
  AOI22XL U214 ( .A0(str_input[150]), .A1(n119), .B0(str_input[214]), .B1(n120), .Y(n161) );
  NAND4X2 U215 ( .A(n185), .B(n186), .C(n187), .D(n188), .Y(n168) );
  AOI22XL U216 ( .A0(str_input[181]), .A1(n123), .B0(str_input[245]), .B1(n124), .Y(n185) );
  AOI22XL U217 ( .A0(str_input[53]), .A1(n121), .B0(str_input[117]), .B1(n122), 
        .Y(n186) );
  AOI22XL U218 ( .A0(str_input[149]), .A1(n119), .B0(str_input[213]), .B1(n120), .Y(n187) );
  NAND4X2 U219 ( .A(n241), .B(n242), .C(n243), .D(n244), .Y(n224) );
  AOI22XL U220 ( .A0(str_input[179]), .A1(n123), .B0(str_input[243]), .B1(n124), .Y(n241) );
  AOI22XL U221 ( .A0(str_input[51]), .A1(n121), .B0(str_input[115]), .B1(n122), 
        .Y(n242) );
  AOI22XL U222 ( .A0(str_input[147]), .A1(n119), .B0(str_input[211]), .B1(n120), .Y(n243) );
  NAND4X2 U223 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(n250) );
  AOI22XL U224 ( .A0(str_input[178]), .A1(n123), .B0(str_input[242]), .B1(n124), .Y(n267) );
  AOI22XL U225 ( .A0(str_input[50]), .A1(n121), .B0(str_input[114]), .B1(n122), 
        .Y(n268) );
  AOI22XL U226 ( .A0(str_input[146]), .A1(n119), .B0(str_input[210]), .B1(n120), .Y(n269) );
  NAND4X2 U227 ( .A(n311), .B(n312), .C(n313), .D(n314), .Y(n305) );
  AOI22XL U228 ( .A0(str_input[168]), .A1(n123), .B0(str_input[232]), .B1(n124), .Y(n311) );
  AOI22XL U229 ( .A0(str_input[40]), .A1(n121), .B0(str_input[104]), .B1(n122), 
        .Y(n312) );
  AOI22XL U230 ( .A0(str_input[136]), .A1(n119), .B0(str_input[200]), .B1(n120), .Y(n313) );
  NAND4X2 U231 ( .A(n307), .B(n308), .C(n309), .D(n310), .Y(n306) );
  AOI22XL U232 ( .A0(str_input[160]), .A1(n123), .B0(str_input[224]), .B1(n124), .Y(n307) );
  AOI22XL U233 ( .A0(str_input[32]), .A1(n121), .B0(str_input[96]), .B1(n122), 
        .Y(n308) );
  AOI22XL U234 ( .A0(str_input[128]), .A1(n119), .B0(str_input[192]), .B1(n120), .Y(n309) );
  INVX2 U235 ( .A(str_pro_idx[2]), .Y(n19) );
  NOR2BX1 U236 ( .AN(n324), .B(str_pro_idx[2]), .Y(n117) );
  NOR2BX1 U237 ( .AN(n323), .B(str_pro_idx[2]), .Y(n118) );
  NOR2BX1 U238 ( .AN(n325), .B(str_pro_idx[2]), .Y(n120) );
  NOR2BX1 U239 ( .AN(n326), .B(str_pro_idx[2]), .Y(n119) );
  NOR2X2 U240 ( .A(str_pro_idx[3]), .B(str_pro_idx[4]), .Y(n324) );
  NOR2X2 U241 ( .A(n21), .B(str_pro_idx[3]), .Y(n326) );
  NOR2X2 U242 ( .A(n20), .B(str_pro_idx[4]), .Y(n323) );
  INVX2 U243 ( .A(str_pro_idx[3]), .Y(n20) );
  AO22X2 U244 ( .A0(n109), .A1(n110), .B0(n111), .B1(n112), .Y(n108) );
  NAND4X2 U245 ( .A(n125), .B(n126), .C(n127), .D(n128), .Y(n110) );
  NAND4X2 U246 ( .A(n113), .B(n114), .C(n115), .D(n116), .Y(n112) );
  AOI22XL U247 ( .A0(str_input[175]), .A1(n123), .B0(str_input[239]), .B1(n124), .Y(n125) );
  AO22X2 U248 ( .A0(n109), .A1(n145), .B0(n111), .B1(n146), .Y(n144) );
  NAND4X2 U249 ( .A(n151), .B(n152), .C(n153), .D(n154), .Y(n145) );
  NAND4X2 U250 ( .A(n147), .B(n148), .C(n149), .D(n150), .Y(n146) );
  AOI22XL U251 ( .A0(str_input[174]), .A1(n123), .B0(str_input[238]), .B1(n124), .Y(n151) );
  AO22X2 U252 ( .A0(n109), .A1(n171), .B0(n111), .B1(n172), .Y(n170) );
  NAND4X2 U253 ( .A(n177), .B(n178), .C(n179), .D(n180), .Y(n171) );
  NAND4X2 U254 ( .A(n173), .B(n174), .C(n175), .D(n176), .Y(n172) );
  AOI22XL U255 ( .A0(str_input[173]), .A1(n123), .B0(str_input[237]), .B1(n124), .Y(n177) );
  AO22X2 U256 ( .A0(n109), .A1(n197), .B0(n111), .B1(n198), .Y(n196) );
  NAND4X2 U257 ( .A(n203), .B(n204), .C(n205), .D(n206), .Y(n197) );
  NAND4X2 U258 ( .A(n199), .B(n200), .C(n201), .D(n202), .Y(n198) );
  AOI22XL U259 ( .A0(str_input[172]), .A1(n123), .B0(str_input[236]), .B1(n124), .Y(n203) );
  AO22X2 U260 ( .A0(n109), .A1(n227), .B0(n111), .B1(n228), .Y(n226) );
  NAND4X2 U261 ( .A(n233), .B(n234), .C(n235), .D(n236), .Y(n227) );
  NAND4X2 U262 ( .A(n229), .B(n230), .C(n231), .D(n232), .Y(n228) );
  AOI22XL U263 ( .A0(str_input[171]), .A1(n123), .B0(str_input[235]), .B1(n124), .Y(n233) );
  AO22X2 U264 ( .A0(n109), .A1(n253), .B0(n111), .B1(n254), .Y(n252) );
  NAND4X2 U265 ( .A(n259), .B(n260), .C(n261), .D(n262), .Y(n253) );
  NAND4X2 U266 ( .A(n255), .B(n256), .C(n257), .D(n258), .Y(n254) );
  AOI22XL U267 ( .A0(str_input[170]), .A1(n123), .B0(str_input[234]), .B1(n124), .Y(n259) );
  AO22X2 U268 ( .A0(n109), .A1(n279), .B0(n111), .B1(n280), .Y(n278) );
  NAND4X2 U269 ( .A(n285), .B(n286), .C(n287), .D(n288), .Y(n279) );
  NAND4X2 U270 ( .A(n281), .B(n282), .C(n283), .D(n284), .Y(n280) );
  AOI22XL U271 ( .A0(str_input[169]), .A1(n123), .B0(str_input[233]), .B1(n124), .Y(n285) );
  INVX2 U272 ( .A(str_pro_idx[4]), .Y(n21) );
  NOR4X2 U273 ( .A(n23), .B(current_st[0]), .C(current_st[2]), .D(
        current_st[3]), .Y(n47) );
  AOI222XL U274 ( .A0(pat_input[15]), .A1(n5), .B0(pat_input[31]), .B1(n24), 
        .C0(pat_input[7]), .C1(n6), .Y(n103) );
  AOI222XL U275 ( .A0(pat_input[14]), .A1(n5), .B0(pat_input[30]), .B1(n24), 
        .C0(pat_input[6]), .C1(n6), .Y(n141) );
  AOI222XL U276 ( .A0(pat_input[13]), .A1(n5), .B0(pat_input[29]), .B1(n24), 
        .C0(pat_input[5]), .C1(n6), .Y(n167) );
  AOI222XL U277 ( .A0(pat_input[12]), .A1(n5), .B0(pat_input[28]), .B1(n24), 
        .C0(pat_input[4]), .C1(n6), .Y(n193) );
  AOI222XL U278 ( .A0(pat_input[11]), .A1(n5), .B0(pat_input[27]), .B1(n24), 
        .C0(pat_input[3]), .C1(n6), .Y(n223) );
  AOI222XL U279 ( .A0(pat_input[10]), .A1(n5), .B0(pat_input[26]), .B1(n24), 
        .C0(pat_input[2]), .C1(n6), .Y(n249) );
  AOI222XL U280 ( .A0(pat_input[9]), .A1(n5), .B0(pat_input[25]), .B1(n24), 
        .C0(pat_input[1]), .C1(n6), .Y(n275) );
  NOR2X2 U281 ( .A(n16), .B(str_pro_idx[0]), .Y(n104) );
  AOI22XL U282 ( .A0(str_input[184]), .A1(n123), .B0(str_input[248]), .B1(n124), .Y(n315) );
  AOI22XL U283 ( .A0(str_input[176]), .A1(n123), .B0(str_input[240]), .B1(n124), .Y(n319) );
  AOI22XL U284 ( .A0(str_input[24]), .A1(n117), .B0(str_input[88]), .B1(n118), 
        .Y(n318) );
  AOI22XL U285 ( .A0(str_input[16]), .A1(n117), .B0(str_input[80]), .B1(n118), 
        .Y(n322) );
  AOI22XL U286 ( .A0(str_input[20]), .A1(n117), .B0(str_input[84]), .B1(n118), 
        .Y(n214) );
  AOI22XL U287 ( .A0(str_input[56]), .A1(n121), .B0(str_input[120]), .B1(n122), 
        .Y(n316) );
  AOI22XL U288 ( .A0(str_input[48]), .A1(n121), .B0(str_input[112]), .B1(n122), 
        .Y(n320) );
  AOI22XL U289 ( .A0(str_input[152]), .A1(n119), .B0(str_input[216]), .B1(n120), .Y(n317) );
  AOI22XL U290 ( .A0(str_input[144]), .A1(n119), .B0(str_input[208]), .B1(n120), .Y(n321) );
  OAI211XL U291 ( .A0(n1), .A1(n299), .B0(n300), .C0(n301), .Y(n298) );
  AOI222XL U292 ( .A0(pat_input[32]), .A1(n25), .B0(pat_input[48]), .B1(n2), 
        .C0(pat_input[16]), .C1(n3), .Y(n299) );
  AOI22XL U293 ( .A0(pat_input[56]), .A1(n58), .B0(pat_input[40]), .B1(n4), 
        .Y(n300) );
  AOI222XL U294 ( .A0(pat_input[8]), .A1(n5), .B0(pat_input[24]), .B1(n24), 
        .C0(pat_input[0]), .C1(n6), .Y(n301) );
  NOR2X2 U295 ( .A(n17), .B(str_pro_idx[1]), .Y(n109) );
  NOR2X2 U296 ( .A(str_pro_idx[0]), .B(str_pro_idx[1]), .Y(n111) );
  AOI22XL U297 ( .A0(pat_input[63]), .A1(n58), .B0(pat_input[47]), .B1(n4), 
        .Y(n102) );
  AOI22XL U298 ( .A0(pat_input[62]), .A1(n58), .B0(pat_input[46]), .B1(n4), 
        .Y(n140) );
  AOI22XL U299 ( .A0(pat_input[61]), .A1(n58), .B0(pat_input[45]), .B1(n4), 
        .Y(n166) );
  AOI22XL U300 ( .A0(pat_input[60]), .A1(n58), .B0(pat_input[44]), .B1(n4), 
        .Y(n192) );
  AOI22XL U301 ( .A0(pat_input[59]), .A1(n58), .B0(pat_input[43]), .B1(n4), 
        .Y(n222) );
  AOI22XL U302 ( .A0(pat_input[58]), .A1(n58), .B0(pat_input[42]), .B1(n4), 
        .Y(n248) );
  AOI22XL U303 ( .A0(pat_input[57]), .A1(n58), .B0(pat_input[41]), .B1(n4), 
        .Y(n274) );
  NAND4X2 U304 ( .A(n211), .B(n212), .C(n213), .D(n214), .Y(n194) );
  AOI22XL U305 ( .A0(str_input[180]), .A1(n123), .B0(str_input[244]), .B1(n124), .Y(n211) );
  AOI22XL U306 ( .A0(str_input[52]), .A1(n121), .B0(str_input[116]), .B1(n122), 
        .Y(n212) );
  AOI22XL U307 ( .A0(str_input[148]), .A1(n119), .B0(str_input[212]), .B1(n120), .Y(n213) );
  NAND2X2 U308 ( .A(pat_pro_idx[2]), .B(n26), .Y(n63) );
  NAND3XL U309 ( .A(n327), .B(n328), .C(n329), .Y(n38) );
  XOR2X1 U310 ( .A(n26), .B(pat_last_idx[1]), .Y(n327) );
  XOR2X1 U311 ( .A(n28), .B(pat_last_idx[2]), .Y(n329) );
  BUFX2 U312 ( .A(pat_pro_idx[0]), .Y(n1) );
  AND3X2 U313 ( .A(n87), .B(n88), .C(n89), .Y(n82) );
  XOR2X1 U314 ( .A(n17), .B(process_2idx[0]), .Y(n87) );
  NOR3X1 U315 ( .A(n90), .B(n91), .C(n92), .Y(n89) );
  XOR2X1 U316 ( .A(n19), .B(process_2idx[2]), .Y(n88) );
  INVX2 U317 ( .A(str_pro_idx[1]), .Y(n16) );
  INVX2 U318 ( .A(pat_pro_idx[1]), .Y(n26) );
  INVX2 U319 ( .A(str_pro_idx[0]), .Y(n17) );
  INVX2 U320 ( .A(pat_pro_idx[2]), .Y(n28) );
  XOR2X1 U321 ( .A(str_pro_idx[4]), .B(process_2idx[4]), .Y(n92) );
  XOR2X1 U322 ( .A(str_pro_idx[3]), .B(process_2idx[3]), .Y(n90) );
  XOR2X1 U323 ( .A(str_pro_idx[1]), .B(process_2idx[1]), .Y(n91) );
  BUFX2 U324 ( .A(n61), .Y(n3) );
  NOR2X2 U325 ( .A(n26), .B(pat_pro_idx[2]), .Y(n61) );
  ADDFX1 U326 ( .A(str_pro_idx[1]), .B(n9), .CI(\sub_83/carry[1] ), .CO(
        \sub_83/carry[2] ), .S(N399) );
  INVX2 U327 ( .A(pat_last_idx[1]), .Y(n9) );
  BUFX2 U328 ( .A(n57), .Y(n5) );
  NOR3X1 U329 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n27), .Y(n57) );
  ADDFX1 U330 ( .A(str_pro_idx[2]), .B(n8), .CI(\sub_83/carry[2] ), .CO(
        \sub_83/carry[3] ), .S(N400) );
  INVX2 U331 ( .A(pat_last_idx[2]), .Y(n8) );
  BUFX2 U332 ( .A(n86), .Y(n6) );
  NOR3X1 U333 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n1), .Y(n86) );
  NOR4X2 U334 ( .A(n18), .B(current_st[0]), .C(current_st[1]), .D(
        current_st[2]), .Y(n331) );
  AOI222XL U335 ( .A0(ff_result[11]), .A1(n25), .B0(ff_result[17]), .B1(n2), 
        .C0(ff_result[5]), .C1(n3), .Y(n54) );
  AOI222XL U336 ( .A0(ff_result[9]), .A1(n25), .B0(ff_result[15]), .B1(n2), 
        .C0(ff_result[3]), .C1(n3), .Y(n66) );
  AOI222XL U337 ( .A0(ff_result[10]), .A1(n25), .B0(ff_result[16]), .B1(n2), 
        .C0(ff_result[4]), .C1(n3), .Y(n79) );
  NAND2X2 U338 ( .A(input_valid), .B(n331), .Y(n44) );
  AOI22XL U339 ( .A0(ff_result[8]), .A1(n24), .B0(ff_result[2]), .B1(n5), .Y(
        n56) );
  AOI22XL U340 ( .A0(ff_result[7]), .A1(n24), .B0(ff_result[1]), .B1(n5), .Y(
        n81) );
  AOI22XL U341 ( .A0(ff_result[20]), .A1(n58), .B0(ff_result[14]), .B1(n4), 
        .Y(n55) );
  AOI22XL U342 ( .A0(ff_result[18]), .A1(n58), .B0(ff_result[12]), .B1(n4), 
        .Y(n67) );
  AOI22XL U343 ( .A0(ff_result[19]), .A1(n58), .B0(ff_result[13]), .B1(n4), 
        .Y(n80) );
  ADDHX1 U344 ( .A(str_pro_idx[2]), .B(\r342/carry[2] ), .CO(\r342/carry[3] ), 
        .S(N448) );
  ADDHX1 U345 ( .A(str_pro_idx[1]), .B(str_pro_idx[0]), .CO(\r342/carry[2] ), 
        .S(N447) );
  ADDHX1 U346 ( .A(str_pro_idx[3]), .B(\r342/carry[3] ), .CO(\r342/carry[4] ), 
        .S(N449) );
  OAI31X1 U347 ( .A0(n12), .A1(reset), .A2(done), .B0(n85), .Y(N68) );
  NOR3BX1 U348 ( .AN(input_valid), .B(n332), .C(reset), .Y(N67) );
  OAI21X1 U349 ( .A0(input_valid), .A1(n333), .B0(n7), .Y(N66) );
  NAND4X2 U350 ( .A(current_st[0]), .B(n23), .C(n22), .D(n18), .Y(n332) );
  AOI21X1 U351 ( .A0(n44), .A1(n330), .B0(reset), .Y(N69) );
  NAND2X2 U352 ( .A(done), .B(n46), .Y(n330) );
  XNOR2X1 U353 ( .A(str_pro_idx[4]), .B(\sub_83/carry[4] ), .Y(N402) );
  OR2X1 U354 ( .A(str_pro_idx[3]), .B(\sub_83/carry[3] ), .Y(\sub_83/carry[4] ) );
  XNOR2X1 U355 ( .A(\sub_83/carry[3] ), .B(str_pro_idx[3]), .Y(N401) );
  OR2X1 U356 ( .A(n10), .B(str_pro_idx[0]), .Y(\sub_83/carry[1] ) );
  XNOR2X1 U357 ( .A(str_pro_idx[0]), .B(n10), .Y(N398) );
  XOR2X1 U358 ( .A(\r342/carry[4] ), .B(str_pro_idx[4]), .Y(N450) );
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
  wire   N33, done, N65, N66, N67, N68, N69, N398, N399, N400, N401, N402,
         N447, N448, N449, N450, \sub_83/carry[4] , \sub_83/carry[3] ,
         \sub_83/carry[2] , \sub_83/carry[1] , \r342/carry[4] ,
         \r342/carry[3] , \r342/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n19, n20, n21, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654;
  wire   [3:0] current_st;
  wire   [3:0] next_st;
  wire   [4:0] str_pro_idx;
  wire   [2:0] pat_pro_idx;

  TLATX1 \next_st_reg[0]  ( .G(N65), .D(N66), .Q(next_st[0]) );
  DFFQXL output_valid_reg ( .D(n347), .CK(clk), .Q(output_valid) );
  DFFQXL done_reg ( .D(n30), .CK(clk), .Q(done) );
  DFFQXL \pat_pro_idx_reg[0]  ( .D(n345), .CK(clk), .Q(pat_pro_idx[0]) );
  DFFTRXL \current_st_reg[3]  ( .D(next_st[3]), .RN(n8), .CK(clk), .Q(
        current_st[3]), .QN(n654) );
  DFFTRXL \current_st_reg[2]  ( .D(next_st[2]), .RN(n8), .CK(clk), .Q(
        current_st[2]), .QN(n653) );
  DFFTRXL \current_st_reg[1]  ( .D(next_st[1]), .RN(n8), .CK(clk), .Q(
        current_st[1]), .QN(n652) );
  DFFQXL \match_idx_reg[0]  ( .D(n353), .CK(clk), .Q(match_idx[0]) );
  DFFQXL \match_idx_reg[4]  ( .D(n349), .CK(clk), .Q(match_idx[4]) );
  DFFQXL \match_idx_reg[3]  ( .D(n350), .CK(clk), .Q(match_idx[3]) );
  DFFQXL \match_idx_reg[2]  ( .D(n351), .CK(clk), .Q(match_idx[2]) );
  DFFQXL \match_idx_reg[1]  ( .D(n352), .CK(clk), .Q(match_idx[1]) );
  TLATX1 \next_st_reg[2]  ( .G(N65), .D(N68), .Q(next_st[2]) );
  TLATX1 \next_st_reg[3]  ( .G(N65), .D(N69), .Q(next_st[3]) );
  TLATX1 \next_st_reg[1]  ( .G(N65), .D(N67), .Q(next_st[1]) );
  DFFQXL \current_st_reg[0]  ( .D(N33), .CK(clk), .Q(current_st[0]) );
  DFFQXL \str_pro_idx_reg[0]  ( .D(n33), .CK(clk), .Q(str_pro_idx[0]) );
  DFFQXL \pat_pro_idx_reg[1]  ( .D(n31), .CK(clk), .Q(pat_pro_idx[1]) );
  DFFQXL \str_pro_idx_reg[1]  ( .D(n32), .CK(clk), .Q(str_pro_idx[1]) );
  DFFQXL \str_pro_idx_reg[4]  ( .D(n344), .CK(clk), .Q(str_pro_idx[4]) );
  DFFQXL \str_pro_idx_reg[3]  ( .D(n35), .CK(clk), .Q(str_pro_idx[3]) );
  DFFQXL \str_pro_idx_reg[2]  ( .D(n34), .CK(clk), .Q(str_pro_idx[2]) );
  DFFQXL match_reg ( .D(n348), .CK(clk), .Q(match) );
  DFFQXL \pat_pro_idx_reg[2]  ( .D(n346), .CK(clk), .Q(pat_pro_idx[2]) );
  INVXL U3 ( .A(pat_last_idx[0]), .Y(n11) );
  XOR2XL U4 ( .A(n28), .B(pat_last_idx[0]), .Y(n359) );
  NOR4X2 U5 ( .A(n653), .B(current_st[0]), .C(current_st[1]), .D(current_st[3]), .Y(n641) );
  NAND2X2 U6 ( .A(n14), .B(n639), .Y(n637) );
  NOR2BX1 U7 ( .AN(n618), .B(n648), .Y(n616) );
  AO21X2 U8 ( .A0(n14), .A1(n635), .B0(n618), .Y(n639) );
  INVX2 U9 ( .A(n602), .Y(n15) );
  INVX2 U10 ( .A(n648), .Y(n14) );
  INVX2 U11 ( .A(n650), .Y(n16) );
  NOR2BX1 U12 ( .AN(n2), .B(n28), .Y(n629) );
  INVX2 U13 ( .A(n625), .Y(n25) );
  NAND3XL U14 ( .A(n644), .B(n13), .C(n354), .Y(N65) );
  OAI31X1 U15 ( .A0(n648), .A1(n605), .A2(n604), .B0(n603), .Y(n618) );
  AOI22XL U16 ( .A0(n6), .A1(n650), .B0(n16), .B1(n649), .Y(n604) );
  NOR2X2 U17 ( .A(n7), .B(n15), .Y(n603) );
  NAND2X2 U18 ( .A(n644), .B(n641), .Y(n648) );
  NOR2X2 U19 ( .A(n640), .B(n7), .Y(n644) );
  OAI22X1 U20 ( .A0(n29), .A1(n639), .B0(n638), .B1(n637), .Y(n346) );
  AOI22XL U21 ( .A0(n16), .A1(n636), .B0(n635), .B1(n634), .Y(n638) );
  OAI211XL U22 ( .A0(n1), .A1(n29), .B0(n625), .C0(n624), .Y(n636) );
  OAI211XL U23 ( .A0(n1), .A1(n633), .B0(n632), .C0(n631), .Y(n634) );
  INVX2 U24 ( .A(n8), .Y(n7) );
  NOR3X1 U25 ( .A(n650), .B(n649), .C(n648), .Y(n651) );
  NAND2X2 U26 ( .A(n640), .B(n8), .Y(n602) );
  NAND3XL U27 ( .A(n13), .B(n643), .C(n644), .Y(n645) );
  INVX2 U28 ( .A(n647), .Y(n12) );
  OAI211XL U29 ( .A0(n646), .A1(n648), .B0(n645), .C0(n8), .Y(n647) );
  NAND2X2 U30 ( .A(n594), .B(n593), .Y(n650) );
  NOR4X2 U31 ( .A(n472), .B(n471), .C(n470), .D(n469), .Y(n594) );
  NOR4X2 U32 ( .A(n592), .B(n591), .C(n590), .D(n589), .Y(n593) );
  XNOR2X1 U33 ( .A(n390), .B(n389), .Y(n472) );
  AOI221XL U34 ( .A0(n583), .A1(n385), .B0(n581), .B1(n384), .C0(n383), .Y(
        n390) );
  NAND4X2 U35 ( .A(n368), .B(n367), .C(n366), .D(n365), .Y(n385) );
  NAND4X2 U36 ( .A(n372), .B(n371), .C(n370), .D(n369), .Y(n384) );
  AO22X2 U37 ( .A0(n578), .A1(n382), .B0(n576), .B1(n381), .Y(n383) );
  NOR2BX1 U38 ( .AN(n364), .B(n20), .Y(n565) );
  NOR2BX1 U39 ( .AN(n363), .B(n20), .Y(n566) );
  NOR2BX1 U40 ( .AN(n362), .B(n20), .Y(n563) );
  NOR2BX1 U41 ( .AN(n361), .B(n20), .Y(n564) );
  NOR2X2 U42 ( .A(n24), .B(n21), .Y(n362) );
  NOR2X2 U43 ( .A(n17), .B(n19), .Y(n581) );
  AOI2BB1X2 U44 ( .A0N(n649), .A1N(n650), .B0(n605), .Y(n646) );
  INVX2 U45 ( .A(n641), .Y(n13) );
  NOR2X2 U46 ( .A(n16), .B(n605), .Y(n635) );
  NAND2X2 U47 ( .A(n3), .B(n1), .Y(n625) );
  INVX2 U48 ( .A(n624), .Y(n26) );
  INVX2 U49 ( .A(n1), .Y(n28) );
  BUFX2 U50 ( .A(n627), .Y(n2) );
  NOR2X2 U51 ( .A(n29), .B(n27), .Y(n627) );
  BUFX2 U52 ( .A(n628), .Y(n4) );
  NOR2X2 U53 ( .A(n624), .B(n28), .Y(n628) );
  NOR2BX1 U54 ( .AN(n355), .B(n356), .Y(n354) );
  OAI22X1 U55 ( .A0(n28), .A1(n639), .B0(n623), .B1(n637), .Y(n345) );
  AOI22XL U56 ( .A0(n635), .A1(n622), .B0(n16), .B1(n28), .Y(n623) );
  OAI211XL U57 ( .A0(n1), .A1(n621), .B0(n620), .C0(n619), .Y(n622) );
  AOI22XL U58 ( .A0(ff_result[6]), .A1(n25), .B0(ff_result[0]), .B1(n5), .Y(
        n619) );
  OAI22X1 U59 ( .A0(n27), .A1(n639), .B0(n611), .B1(n637), .Y(n31) );
  AOI22XL U60 ( .A0(n16), .A1(n610), .B0(n635), .B1(n609), .Y(n611) );
  XOR2X1 U61 ( .A(pat_pro_idx[1]), .B(n1), .Y(n610) );
  OAI211XL U62 ( .A0(n1), .A1(n608), .B0(n607), .C0(n606), .Y(n609) );
  OAI21X1 U63 ( .A0(n24), .A1(n618), .B0(n617), .Y(n344) );
  AOI22XL U64 ( .A0(start_idx[4]), .A1(n15), .B0(N450), .B1(n616), .Y(n617) );
  OAI21X1 U65 ( .A0(n21), .A1(n618), .B0(n615), .Y(n35) );
  AOI22XL U66 ( .A0(start_idx[3]), .A1(n15), .B0(N449), .B1(n616), .Y(n615) );
  OAI21X1 U67 ( .A0(n20), .A1(n618), .B0(n614), .Y(n34) );
  AOI22XL U68 ( .A0(start_idx[2]), .A1(n15), .B0(N448), .B1(n616), .Y(n614) );
  OAI21X1 U69 ( .A0(n19), .A1(n618), .B0(n613), .Y(n33) );
  AOI22XL U70 ( .A0(start_idx[0]), .A1(n15), .B0(n19), .B1(n616), .Y(n613) );
  OAI21X1 U71 ( .A0(n17), .A1(n618), .B0(n612), .Y(n32) );
  AOI22XL U72 ( .A0(start_idx[1]), .A1(n15), .B0(N447), .B1(n616), .Y(n612) );
  INVX2 U73 ( .A(reset), .Y(n8) );
  OAI2BB2X2 U74 ( .B0(n646), .B1(n648), .A0N(n645), .A1N(done), .Y(n30) );
  OAI2B1X1 U75 ( .A1N(n644), .A0(n643), .B0(n642), .Y(n347) );
  OAI211XL U76 ( .A0(n641), .A1(n640), .B0(n8), .C0(output_valid), .Y(n642) );
  AO22X2 U77 ( .A0(match_idx[0]), .A1(n12), .B0(N398), .B1(n651), .Y(n353) );
  AO22X2 U78 ( .A0(match_idx[1]), .A1(n12), .B0(N399), .B1(n651), .Y(n352) );
  AO22X2 U79 ( .A0(match_idx[2]), .A1(n12), .B0(N400), .B1(n651), .Y(n351) );
  AO22X2 U80 ( .A0(match_idx[3]), .A1(n12), .B0(N401), .B1(n651), .Y(n350) );
  AO22X2 U81 ( .A0(match_idx[4]), .A1(n12), .B0(N402), .B1(n651), .Y(n349) );
  AO21X2 U82 ( .A0(match), .A1(n12), .B0(n651), .Y(n348) );
  OR2X2 U83 ( .A(next_st[0]), .B(n7), .Y(N33) );
  XNOR2X1 U84 ( .A(n498), .B(n497), .Y(n592) );
  OAI211XL U85 ( .A0(n1), .A1(n496), .B0(n495), .C0(n494), .Y(n497) );
  AOI221XL U86 ( .A0(n583), .A1(n493), .B0(n581), .B1(n492), .C0(n491), .Y(
        n498) );
  AOI222XL U87 ( .A0(pat_input[36]), .A1(n26), .B0(pat_input[52]), .B1(n2), 
        .C0(pat_input[20]), .C1(n3), .Y(n496) );
  XNOR2X1 U88 ( .A(n588), .B(n587), .Y(n589) );
  OAI211XL U89 ( .A0(n1), .A1(n586), .B0(n585), .C0(n584), .Y(n587) );
  AOI221XL U90 ( .A0(n583), .A1(n582), .B0(n581), .B1(n580), .C0(n579), .Y(
        n588) );
  AOI222XL U91 ( .A0(pat_input[39]), .A1(n26), .B0(pat_input[55]), .B1(n2), 
        .C0(pat_input[23]), .C1(n3), .Y(n586) );
  XNOR2X1 U92 ( .A(n468), .B(n467), .Y(n469) );
  OAI211XL U93 ( .A0(n1), .A1(n466), .B0(n465), .C0(n464), .Y(n467) );
  AOI221XL U94 ( .A0(n583), .A1(n463), .B0(n581), .B1(n462), .C0(n461), .Y(
        n468) );
  AOI222XL U95 ( .A0(pat_input[35]), .A1(n26), .B0(pat_input[51]), .B1(n2), 
        .C0(pat_input[19]), .C1(n3), .Y(n466) );
  AOI22XL U96 ( .A0(str_input[167]), .A1(n564), .B0(str_input[231]), .B1(n563), 
        .Y(n574) );
  AOI22XL U97 ( .A0(str_input[166]), .A1(n564), .B0(str_input[230]), .B1(n563), 
        .Y(n540) );
  AOI22XL U98 ( .A0(str_input[165]), .A1(n564), .B0(str_input[229]), .B1(n563), 
        .Y(n514) );
  AOI22XL U99 ( .A0(str_input[164]), .A1(n564), .B0(str_input[228]), .B1(n563), 
        .Y(n488) );
  AOI22XL U100 ( .A0(str_input[163]), .A1(n564), .B0(str_input[227]), .B1(n563), .Y(n458) );
  AOI22XL U101 ( .A0(str_input[162]), .A1(n564), .B0(str_input[226]), .B1(n563), .Y(n432) );
  AOI22XL U102 ( .A0(str_input[161]), .A1(n564), .B0(str_input[225]), .B1(n563), .Y(n406) );
  AOI22XL U103 ( .A0(str_input[0]), .A1(n570), .B0(str_input[64]), .B1(n569), 
        .Y(n377) );
  AOI22XL U104 ( .A0(str_input[8]), .A1(n570), .B0(str_input[72]), .B1(n569), 
        .Y(n373) );
  AOI22XL U105 ( .A0(str_input[25]), .A1(n570), .B0(str_input[89]), .B1(n569), 
        .Y(n395) );
  AOI22XL U106 ( .A0(str_input[17]), .A1(n570), .B0(str_input[81]), .B1(n569), 
        .Y(n391) );
  AOI22XL U107 ( .A0(str_input[7]), .A1(n570), .B0(str_input[71]), .B1(n569), 
        .Y(n571) );
  AOI22XL U108 ( .A0(str_input[15]), .A1(n570), .B0(str_input[79]), .B1(n569), 
        .Y(n559) );
  AOI22XL U109 ( .A0(str_input[6]), .A1(n570), .B0(str_input[70]), .B1(n569), 
        .Y(n537) );
  AOI22XL U110 ( .A0(str_input[14]), .A1(n570), .B0(str_input[78]), .B1(n569), 
        .Y(n533) );
  AOI22XL U111 ( .A0(str_input[5]), .A1(n570), .B0(str_input[69]), .B1(n569), 
        .Y(n511) );
  AOI22XL U112 ( .A0(str_input[13]), .A1(n570), .B0(str_input[77]), .B1(n569), 
        .Y(n507) );
  AOI22XL U113 ( .A0(str_input[4]), .A1(n570), .B0(str_input[68]), .B1(n569), 
        .Y(n485) );
  AOI22XL U114 ( .A0(str_input[12]), .A1(n570), .B0(str_input[76]), .B1(n569), 
        .Y(n481) );
  AOI22XL U115 ( .A0(str_input[3]), .A1(n570), .B0(str_input[67]), .B1(n569), 
        .Y(n455) );
  AOI22XL U116 ( .A0(str_input[11]), .A1(n570), .B0(str_input[75]), .B1(n569), 
        .Y(n451) );
  AOI22XL U117 ( .A0(str_input[2]), .A1(n570), .B0(str_input[66]), .B1(n569), 
        .Y(n429) );
  AOI22XL U118 ( .A0(str_input[10]), .A1(n570), .B0(str_input[74]), .B1(n569), 
        .Y(n425) );
  AOI22XL U119 ( .A0(str_input[1]), .A1(n570), .B0(str_input[65]), .B1(n569), 
        .Y(n403) );
  AOI22XL U120 ( .A0(str_input[9]), .A1(n570), .B0(str_input[73]), .B1(n569), 
        .Y(n399) );
  AOI22XL U121 ( .A0(str_input[31]), .A1(n570), .B0(str_input[95]), .B1(n569), 
        .Y(n555) );
  AOI22XL U122 ( .A0(str_input[23]), .A1(n570), .B0(str_input[87]), .B1(n569), 
        .Y(n551) );
  AOI22XL U123 ( .A0(str_input[30]), .A1(n570), .B0(str_input[94]), .B1(n569), 
        .Y(n529) );
  AOI22XL U124 ( .A0(str_input[22]), .A1(n570), .B0(str_input[86]), .B1(n569), 
        .Y(n525) );
  AOI22XL U125 ( .A0(str_input[29]), .A1(n570), .B0(str_input[93]), .B1(n569), 
        .Y(n503) );
  AOI22XL U126 ( .A0(str_input[21]), .A1(n570), .B0(str_input[85]), .B1(n569), 
        .Y(n499) );
  AOI22XL U127 ( .A0(str_input[28]), .A1(n570), .B0(str_input[92]), .B1(n569), 
        .Y(n477) );
  AOI22XL U128 ( .A0(str_input[27]), .A1(n570), .B0(str_input[91]), .B1(n569), 
        .Y(n447) );
  AOI22XL U129 ( .A0(str_input[19]), .A1(n570), .B0(str_input[83]), .B1(n569), 
        .Y(n443) );
  AOI22XL U130 ( .A0(str_input[26]), .A1(n570), .B0(str_input[90]), .B1(n569), 
        .Y(n421) );
  AOI22XL U131 ( .A0(str_input[18]), .A1(n570), .B0(str_input[82]), .B1(n569), 
        .Y(n417) );
  AOI22XL U132 ( .A0(str_input[39]), .A1(n566), .B0(str_input[103]), .B1(n565), 
        .Y(n573) );
  AOI22XL U133 ( .A0(str_input[47]), .A1(n566), .B0(str_input[111]), .B1(n565), 
        .Y(n561) );
  AOI22XL U134 ( .A0(str_input[38]), .A1(n566), .B0(str_input[102]), .B1(n565), 
        .Y(n539) );
  AOI22XL U135 ( .A0(str_input[46]), .A1(n566), .B0(str_input[110]), .B1(n565), 
        .Y(n535) );
  AOI22XL U136 ( .A0(str_input[37]), .A1(n566), .B0(str_input[101]), .B1(n565), 
        .Y(n513) );
  AOI22XL U137 ( .A0(str_input[45]), .A1(n566), .B0(str_input[109]), .B1(n565), 
        .Y(n509) );
  AOI22XL U138 ( .A0(str_input[36]), .A1(n566), .B0(str_input[100]), .B1(n565), 
        .Y(n487) );
  AOI22XL U139 ( .A0(str_input[44]), .A1(n566), .B0(str_input[108]), .B1(n565), 
        .Y(n483) );
  AOI22XL U140 ( .A0(str_input[35]), .A1(n566), .B0(str_input[99]), .B1(n565), 
        .Y(n457) );
  AOI22XL U141 ( .A0(str_input[43]), .A1(n566), .B0(str_input[107]), .B1(n565), 
        .Y(n453) );
  AOI22XL U142 ( .A0(str_input[34]), .A1(n566), .B0(str_input[98]), .B1(n565), 
        .Y(n431) );
  AOI22XL U143 ( .A0(str_input[42]), .A1(n566), .B0(str_input[106]), .B1(n565), 
        .Y(n427) );
  AOI22XL U144 ( .A0(str_input[33]), .A1(n566), .B0(str_input[97]), .B1(n565), 
        .Y(n405) );
  AOI22XL U145 ( .A0(str_input[41]), .A1(n566), .B0(str_input[105]), .B1(n565), 
        .Y(n401) );
  AOI22XL U146 ( .A0(str_input[135]), .A1(n568), .B0(str_input[199]), .B1(n567), .Y(n572) );
  AOI22XL U147 ( .A0(str_input[143]), .A1(n568), .B0(str_input[207]), .B1(n567), .Y(n560) );
  AOI22XL U148 ( .A0(str_input[134]), .A1(n568), .B0(str_input[198]), .B1(n567), .Y(n538) );
  AOI22XL U149 ( .A0(str_input[142]), .A1(n568), .B0(str_input[206]), .B1(n567), .Y(n534) );
  AOI22XL U150 ( .A0(str_input[133]), .A1(n568), .B0(str_input[197]), .B1(n567), .Y(n512) );
  AOI22XL U151 ( .A0(str_input[141]), .A1(n568), .B0(str_input[205]), .B1(n567), .Y(n508) );
  AOI22XL U152 ( .A0(str_input[132]), .A1(n568), .B0(str_input[196]), .B1(n567), .Y(n486) );
  AOI22XL U153 ( .A0(str_input[140]), .A1(n568), .B0(str_input[204]), .B1(n567), .Y(n482) );
  AOI22XL U154 ( .A0(str_input[131]), .A1(n568), .B0(str_input[195]), .B1(n567), .Y(n456) );
  AOI22XL U155 ( .A0(str_input[139]), .A1(n568), .B0(str_input[203]), .B1(n567), .Y(n452) );
  AOI22XL U156 ( .A0(str_input[130]), .A1(n568), .B0(str_input[194]), .B1(n567), .Y(n430) );
  AOI22XL U157 ( .A0(str_input[138]), .A1(n568), .B0(str_input[202]), .B1(n567), .Y(n426) );
  AOI22XL U158 ( .A0(str_input[129]), .A1(n568), .B0(str_input[193]), .B1(n567), .Y(n404) );
  AOI22XL U159 ( .A0(str_input[137]), .A1(n568), .B0(str_input[201]), .B1(n567), .Y(n400) );
  XNOR2X1 U160 ( .A(n550), .B(n549), .Y(n590) );
  OAI211XL U161 ( .A0(n1), .A1(n548), .B0(n547), .C0(n546), .Y(n549) );
  AOI221XL U162 ( .A0(n583), .A1(n545), .B0(n581), .B1(n544), .C0(n543), .Y(
        n550) );
  AOI222XL U163 ( .A0(pat_input[38]), .A1(n26), .B0(pat_input[54]), .B1(n2), 
        .C0(pat_input[22]), .C1(n3), .Y(n548) );
  XNOR2X1 U164 ( .A(n524), .B(n523), .Y(n591) );
  OAI211XL U165 ( .A0(n1), .A1(n522), .B0(n521), .C0(n520), .Y(n523) );
  AOI221XL U166 ( .A0(n583), .A1(n519), .B0(n581), .B1(n518), .C0(n517), .Y(
        n524) );
  AOI222XL U167 ( .A0(pat_input[37]), .A1(n26), .B0(pat_input[53]), .B1(n2), 
        .C0(pat_input[21]), .C1(n3), .Y(n522) );
  XNOR2X1 U168 ( .A(n442), .B(n441), .Y(n470) );
  OAI211XL U169 ( .A0(n1), .A1(n440), .B0(n439), .C0(n438), .Y(n441) );
  AOI221XL U170 ( .A0(n583), .A1(n437), .B0(n581), .B1(n436), .C0(n435), .Y(
        n442) );
  AOI222XL U171 ( .A0(pat_input[34]), .A1(n26), .B0(pat_input[50]), .B1(n2), 
        .C0(pat_input[18]), .C1(n3), .Y(n440) );
  XNOR2X1 U172 ( .A(n416), .B(n415), .Y(n471) );
  OAI211XL U173 ( .A0(n1), .A1(n414), .B0(n413), .C0(n412), .Y(n415) );
  AOI221XL U174 ( .A0(n583), .A1(n411), .B0(n581), .B1(n410), .C0(n409), .Y(
        n416) );
  AOI222XL U175 ( .A0(pat_input[33]), .A1(n26), .B0(pat_input[49]), .B1(n2), 
        .C0(pat_input[17]), .C1(n3), .Y(n414) );
  NAND4X2 U176 ( .A(n398), .B(n397), .C(n396), .D(n395), .Y(n410) );
  AOI22XL U177 ( .A0(str_input[185]), .A1(n564), .B0(str_input[249]), .B1(n563), .Y(n398) );
  AOI22XL U178 ( .A0(str_input[57]), .A1(n566), .B0(str_input[121]), .B1(n565), 
        .Y(n397) );
  AOI22XL U179 ( .A0(str_input[153]), .A1(n568), .B0(str_input[217]), .B1(n567), .Y(n396) );
  NAND4X2 U180 ( .A(n558), .B(n557), .C(n556), .D(n555), .Y(n580) );
  AOI22XL U181 ( .A0(str_input[191]), .A1(n564), .B0(str_input[255]), .B1(n563), .Y(n558) );
  AOI22XL U182 ( .A0(str_input[63]), .A1(n566), .B0(str_input[127]), .B1(n565), 
        .Y(n557) );
  AOI22XL U183 ( .A0(str_input[159]), .A1(n568), .B0(str_input[223]), .B1(n567), .Y(n556) );
  NAND4X2 U184 ( .A(n532), .B(n531), .C(n530), .D(n529), .Y(n544) );
  AOI22XL U185 ( .A0(str_input[190]), .A1(n564), .B0(str_input[254]), .B1(n563), .Y(n532) );
  AOI22XL U186 ( .A0(str_input[62]), .A1(n566), .B0(str_input[126]), .B1(n565), 
        .Y(n531) );
  AOI22XL U187 ( .A0(str_input[158]), .A1(n568), .B0(str_input[222]), .B1(n567), .Y(n530) );
  NAND4X2 U188 ( .A(n506), .B(n505), .C(n504), .D(n503), .Y(n518) );
  AOI22XL U189 ( .A0(str_input[189]), .A1(n564), .B0(str_input[253]), .B1(n563), .Y(n506) );
  AOI22XL U190 ( .A0(str_input[61]), .A1(n566), .B0(str_input[125]), .B1(n565), 
        .Y(n505) );
  AOI22XL U191 ( .A0(str_input[157]), .A1(n568), .B0(str_input[221]), .B1(n567), .Y(n504) );
  NAND4X2 U192 ( .A(n480), .B(n479), .C(n478), .D(n477), .Y(n492) );
  AOI22XL U193 ( .A0(str_input[188]), .A1(n564), .B0(str_input[252]), .B1(n563), .Y(n480) );
  AOI22XL U194 ( .A0(str_input[60]), .A1(n566), .B0(str_input[124]), .B1(n565), 
        .Y(n479) );
  AOI22XL U195 ( .A0(str_input[156]), .A1(n568), .B0(str_input[220]), .B1(n567), .Y(n478) );
  NAND4X2 U196 ( .A(n450), .B(n449), .C(n448), .D(n447), .Y(n462) );
  AOI22XL U197 ( .A0(str_input[187]), .A1(n564), .B0(str_input[251]), .B1(n563), .Y(n450) );
  AOI22XL U198 ( .A0(str_input[59]), .A1(n566), .B0(str_input[123]), .B1(n565), 
        .Y(n449) );
  AOI22XL U199 ( .A0(str_input[155]), .A1(n568), .B0(str_input[219]), .B1(n567), .Y(n448) );
  NAND4X2 U200 ( .A(n424), .B(n423), .C(n422), .D(n421), .Y(n436) );
  AOI22XL U201 ( .A0(str_input[186]), .A1(n564), .B0(str_input[250]), .B1(n563), .Y(n424) );
  AOI22XL U202 ( .A0(str_input[58]), .A1(n566), .B0(str_input[122]), .B1(n565), 
        .Y(n423) );
  AOI22XL U203 ( .A0(str_input[154]), .A1(n568), .B0(str_input[218]), .B1(n567), .Y(n422) );
  NAND4X2 U204 ( .A(n394), .B(n393), .C(n392), .D(n391), .Y(n411) );
  AOI22XL U205 ( .A0(str_input[177]), .A1(n564), .B0(str_input[241]), .B1(n563), .Y(n394) );
  AOI22XL U206 ( .A0(str_input[49]), .A1(n566), .B0(str_input[113]), .B1(n565), 
        .Y(n393) );
  AOI22XL U207 ( .A0(str_input[145]), .A1(n568), .B0(str_input[209]), .B1(n567), .Y(n392) );
  NAND4X2 U208 ( .A(n554), .B(n553), .C(n552), .D(n551), .Y(n582) );
  AOI22XL U209 ( .A0(str_input[183]), .A1(n564), .B0(str_input[247]), .B1(n563), .Y(n554) );
  AOI22XL U210 ( .A0(str_input[55]), .A1(n566), .B0(str_input[119]), .B1(n565), 
        .Y(n553) );
  AOI22XL U211 ( .A0(str_input[151]), .A1(n568), .B0(str_input[215]), .B1(n567), .Y(n552) );
  NAND4X2 U212 ( .A(n528), .B(n527), .C(n526), .D(n525), .Y(n545) );
  AOI22XL U213 ( .A0(str_input[182]), .A1(n564), .B0(str_input[246]), .B1(n563), .Y(n528) );
  AOI22XL U214 ( .A0(str_input[54]), .A1(n566), .B0(str_input[118]), .B1(n565), 
        .Y(n527) );
  AOI22XL U215 ( .A0(str_input[150]), .A1(n568), .B0(str_input[214]), .B1(n567), .Y(n526) );
  NAND4X2 U216 ( .A(n502), .B(n501), .C(n500), .D(n499), .Y(n519) );
  AOI22XL U217 ( .A0(str_input[181]), .A1(n564), .B0(str_input[245]), .B1(n563), .Y(n502) );
  AOI22XL U218 ( .A0(str_input[53]), .A1(n566), .B0(str_input[117]), .B1(n565), 
        .Y(n501) );
  AOI22XL U219 ( .A0(str_input[149]), .A1(n568), .B0(str_input[213]), .B1(n567), .Y(n500) );
  NAND4X2 U220 ( .A(n446), .B(n445), .C(n444), .D(n443), .Y(n463) );
  AOI22XL U221 ( .A0(str_input[179]), .A1(n564), .B0(str_input[243]), .B1(n563), .Y(n446) );
  AOI22XL U222 ( .A0(str_input[51]), .A1(n566), .B0(str_input[115]), .B1(n565), 
        .Y(n445) );
  AOI22XL U223 ( .A0(str_input[147]), .A1(n568), .B0(str_input[211]), .B1(n567), .Y(n444) );
  NAND4X2 U224 ( .A(n420), .B(n419), .C(n418), .D(n417), .Y(n437) );
  AOI22XL U225 ( .A0(str_input[178]), .A1(n564), .B0(str_input[242]), .B1(n563), .Y(n420) );
  AOI22XL U226 ( .A0(str_input[50]), .A1(n566), .B0(str_input[114]), .B1(n565), 
        .Y(n419) );
  AOI22XL U227 ( .A0(str_input[146]), .A1(n568), .B0(str_input[210]), .B1(n567), .Y(n418) );
  NAND4X2 U228 ( .A(n376), .B(n375), .C(n374), .D(n373), .Y(n382) );
  AOI22XL U229 ( .A0(str_input[168]), .A1(n564), .B0(str_input[232]), .B1(n563), .Y(n376) );
  AOI22XL U230 ( .A0(str_input[40]), .A1(n566), .B0(str_input[104]), .B1(n565), 
        .Y(n375) );
  AOI22XL U231 ( .A0(str_input[136]), .A1(n568), .B0(str_input[200]), .B1(n567), .Y(n374) );
  NAND4X2 U232 ( .A(n380), .B(n379), .C(n378), .D(n377), .Y(n381) );
  AOI22XL U233 ( .A0(str_input[160]), .A1(n564), .B0(str_input[224]), .B1(n563), .Y(n380) );
  AOI22XL U234 ( .A0(str_input[32]), .A1(n566), .B0(str_input[96]), .B1(n565), 
        .Y(n379) );
  AOI22XL U235 ( .A0(str_input[128]), .A1(n568), .B0(str_input[192]), .B1(n567), .Y(n378) );
  INVX2 U236 ( .A(str_pro_idx[2]), .Y(n20) );
  NOR2BX1 U237 ( .AN(n363), .B(str_pro_idx[2]), .Y(n570) );
  NOR2BX1 U238 ( .AN(n364), .B(str_pro_idx[2]), .Y(n569) );
  NOR2BX1 U239 ( .AN(n362), .B(str_pro_idx[2]), .Y(n567) );
  NOR2BX1 U240 ( .AN(n361), .B(str_pro_idx[2]), .Y(n568) );
  NOR2X2 U241 ( .A(str_pro_idx[3]), .B(str_pro_idx[4]), .Y(n363) );
  NOR2X2 U242 ( .A(n24), .B(str_pro_idx[3]), .Y(n361) );
  NOR2X2 U243 ( .A(n21), .B(str_pro_idx[4]), .Y(n364) );
  INVX2 U244 ( .A(str_pro_idx[3]), .Y(n21) );
  AO22X2 U245 ( .A0(n578), .A1(n577), .B0(n576), .B1(n575), .Y(n579) );
  NAND4X2 U246 ( .A(n562), .B(n561), .C(n560), .D(n559), .Y(n577) );
  NAND4X2 U247 ( .A(n574), .B(n573), .C(n572), .D(n571), .Y(n575) );
  AOI22XL U248 ( .A0(str_input[175]), .A1(n564), .B0(str_input[239]), .B1(n563), .Y(n562) );
  AO22X2 U249 ( .A0(n578), .A1(n542), .B0(n576), .B1(n541), .Y(n543) );
  NAND4X2 U250 ( .A(n536), .B(n535), .C(n534), .D(n533), .Y(n542) );
  NAND4X2 U251 ( .A(n540), .B(n539), .C(n538), .D(n537), .Y(n541) );
  AOI22XL U252 ( .A0(str_input[174]), .A1(n564), .B0(str_input[238]), .B1(n563), .Y(n536) );
  AO22X2 U253 ( .A0(n578), .A1(n516), .B0(n576), .B1(n515), .Y(n517) );
  NAND4X2 U254 ( .A(n510), .B(n509), .C(n508), .D(n507), .Y(n516) );
  NAND4X2 U255 ( .A(n514), .B(n513), .C(n512), .D(n511), .Y(n515) );
  AOI22XL U256 ( .A0(str_input[173]), .A1(n564), .B0(str_input[237]), .B1(n563), .Y(n510) );
  AO22X2 U257 ( .A0(n578), .A1(n490), .B0(n576), .B1(n489), .Y(n491) );
  NAND4X2 U258 ( .A(n484), .B(n483), .C(n482), .D(n481), .Y(n490) );
  NAND4X2 U259 ( .A(n488), .B(n487), .C(n486), .D(n485), .Y(n489) );
  AOI22XL U260 ( .A0(str_input[172]), .A1(n564), .B0(str_input[236]), .B1(n563), .Y(n484) );
  AO22X2 U261 ( .A0(n578), .A1(n460), .B0(n576), .B1(n459), .Y(n461) );
  NAND4X2 U262 ( .A(n454), .B(n453), .C(n452), .D(n451), .Y(n460) );
  NAND4X2 U263 ( .A(n458), .B(n457), .C(n456), .D(n455), .Y(n459) );
  AOI22XL U264 ( .A0(str_input[171]), .A1(n564), .B0(str_input[235]), .B1(n563), .Y(n454) );
  AO22X2 U265 ( .A0(n578), .A1(n434), .B0(n576), .B1(n433), .Y(n435) );
  NAND4X2 U266 ( .A(n428), .B(n427), .C(n426), .D(n425), .Y(n434) );
  NAND4X2 U267 ( .A(n432), .B(n431), .C(n430), .D(n429), .Y(n433) );
  AOI22XL U268 ( .A0(str_input[170]), .A1(n564), .B0(str_input[234]), .B1(n563), .Y(n428) );
  AO22X2 U269 ( .A0(n578), .A1(n408), .B0(n576), .B1(n407), .Y(n409) );
  NAND4X2 U270 ( .A(n402), .B(n401), .C(n400), .D(n399), .Y(n408) );
  NAND4X2 U271 ( .A(n406), .B(n405), .C(n404), .D(n403), .Y(n407) );
  AOI22XL U272 ( .A0(str_input[169]), .A1(n564), .B0(str_input[233]), .B1(n563), .Y(n402) );
  INVX2 U273 ( .A(str_pro_idx[4]), .Y(n24) );
  NOR4X2 U274 ( .A(n652), .B(current_st[0]), .C(current_st[2]), .D(
        current_st[3]), .Y(n640) );
  AOI222XL U275 ( .A0(pat_input[15]), .A1(n5), .B0(pat_input[31]), .B1(n25), 
        .C0(pat_input[7]), .C1(n6), .Y(n584) );
  AOI222XL U276 ( .A0(pat_input[14]), .A1(n5), .B0(pat_input[30]), .B1(n25), 
        .C0(pat_input[6]), .C1(n6), .Y(n546) );
  AOI222XL U277 ( .A0(pat_input[13]), .A1(n5), .B0(pat_input[29]), .B1(n25), 
        .C0(pat_input[5]), .C1(n6), .Y(n520) );
  AOI222XL U278 ( .A0(pat_input[12]), .A1(n5), .B0(pat_input[28]), .B1(n25), 
        .C0(pat_input[4]), .C1(n6), .Y(n494) );
  AOI222XL U279 ( .A0(pat_input[11]), .A1(n5), .B0(pat_input[27]), .B1(n25), 
        .C0(pat_input[3]), .C1(n6), .Y(n464) );
  AOI222XL U280 ( .A0(pat_input[10]), .A1(n5), .B0(pat_input[26]), .B1(n25), 
        .C0(pat_input[2]), .C1(n6), .Y(n438) );
  AOI222XL U281 ( .A0(pat_input[9]), .A1(n5), .B0(pat_input[25]), .B1(n25), 
        .C0(pat_input[1]), .C1(n6), .Y(n412) );
  NOR2X2 U282 ( .A(n17), .B(str_pro_idx[0]), .Y(n583) );
  AOI22XL U283 ( .A0(str_input[184]), .A1(n564), .B0(str_input[248]), .B1(n563), .Y(n372) );
  AOI22XL U284 ( .A0(str_input[176]), .A1(n564), .B0(str_input[240]), .B1(n563), .Y(n368) );
  AOI22XL U285 ( .A0(str_input[24]), .A1(n570), .B0(str_input[88]), .B1(n569), 
        .Y(n369) );
  AOI22XL U286 ( .A0(str_input[16]), .A1(n570), .B0(str_input[80]), .B1(n569), 
        .Y(n365) );
  AOI22XL U287 ( .A0(str_input[20]), .A1(n570), .B0(str_input[84]), .B1(n569), 
        .Y(n473) );
  AOI22XL U288 ( .A0(str_input[56]), .A1(n566), .B0(str_input[120]), .B1(n565), 
        .Y(n371) );
  AOI22XL U289 ( .A0(str_input[48]), .A1(n566), .B0(str_input[112]), .B1(n565), 
        .Y(n367) );
  AOI22XL U290 ( .A0(str_input[152]), .A1(n568), .B0(str_input[216]), .B1(n567), .Y(n370) );
  AOI22XL U291 ( .A0(str_input[144]), .A1(n568), .B0(str_input[208]), .B1(n567), .Y(n366) );
  OAI211XL U292 ( .A0(n1), .A1(n388), .B0(n387), .C0(n386), .Y(n389) );
  AOI222XL U293 ( .A0(pat_input[32]), .A1(n26), .B0(pat_input[48]), .B1(n2), 
        .C0(pat_input[16]), .C1(n3), .Y(n388) );
  AOI22XL U294 ( .A0(pat_input[56]), .A1(n629), .B0(pat_input[40]), .B1(n4), 
        .Y(n387) );
  AOI222XL U295 ( .A0(pat_input[8]), .A1(n5), .B0(pat_input[24]), .B1(n25), 
        .C0(pat_input[0]), .C1(n6), .Y(n386) );
  NOR2X2 U296 ( .A(n19), .B(str_pro_idx[1]), .Y(n578) );
  NOR2X2 U297 ( .A(str_pro_idx[0]), .B(str_pro_idx[1]), .Y(n576) );
  AOI22XL U298 ( .A0(pat_input[63]), .A1(n629), .B0(pat_input[47]), .B1(n4), 
        .Y(n585) );
  AOI22XL U299 ( .A0(pat_input[62]), .A1(n629), .B0(pat_input[46]), .B1(n4), 
        .Y(n547) );
  AOI22XL U300 ( .A0(pat_input[61]), .A1(n629), .B0(pat_input[45]), .B1(n4), 
        .Y(n521) );
  AOI22XL U301 ( .A0(pat_input[60]), .A1(n629), .B0(pat_input[44]), .B1(n4), 
        .Y(n495) );
  AOI22XL U302 ( .A0(pat_input[59]), .A1(n629), .B0(pat_input[43]), .B1(n4), 
        .Y(n465) );
  AOI22XL U303 ( .A0(pat_input[58]), .A1(n629), .B0(pat_input[42]), .B1(n4), 
        .Y(n439) );
  AOI22XL U304 ( .A0(pat_input[57]), .A1(n629), .B0(pat_input[41]), .B1(n4), 
        .Y(n413) );
  NAND4X2 U305 ( .A(n476), .B(n475), .C(n474), .D(n473), .Y(n493) );
  AOI22XL U306 ( .A0(str_input[180]), .A1(n564), .B0(str_input[244]), .B1(n563), .Y(n476) );
  AOI22XL U307 ( .A0(str_input[52]), .A1(n566), .B0(str_input[116]), .B1(n565), 
        .Y(n475) );
  AOI22XL U308 ( .A0(str_input[148]), .A1(n568), .B0(str_input[212]), .B1(n567), .Y(n474) );
  NAND2X2 U309 ( .A(pat_pro_idx[2]), .B(n27), .Y(n624) );
  NAND3XL U310 ( .A(n360), .B(n359), .C(n358), .Y(n649) );
  XOR2X1 U311 ( .A(n27), .B(pat_last_idx[1]), .Y(n360) );
  XOR2X1 U312 ( .A(n29), .B(pat_last_idx[2]), .Y(n358) );
  BUFX2 U313 ( .A(pat_pro_idx[0]), .Y(n1) );
  AND3X2 U314 ( .A(n600), .B(n599), .C(n598), .Y(n605) );
  XOR2X1 U315 ( .A(n19), .B(process_2idx[0]), .Y(n600) );
  NOR3X1 U316 ( .A(n597), .B(n596), .C(n595), .Y(n598) );
  XOR2X1 U317 ( .A(n20), .B(process_2idx[2]), .Y(n599) );
  INVX2 U318 ( .A(str_pro_idx[1]), .Y(n17) );
  INVX2 U319 ( .A(pat_pro_idx[1]), .Y(n27) );
  INVX2 U320 ( .A(str_pro_idx[0]), .Y(n19) );
  INVX2 U321 ( .A(pat_pro_idx[2]), .Y(n29) );
  XOR2X1 U322 ( .A(str_pro_idx[4]), .B(process_2idx[4]), .Y(n595) );
  XOR2X1 U323 ( .A(str_pro_idx[3]), .B(process_2idx[3]), .Y(n597) );
  XOR2X1 U324 ( .A(str_pro_idx[1]), .B(process_2idx[1]), .Y(n596) );
  BUFX2 U325 ( .A(n626), .Y(n3) );
  NOR2X2 U326 ( .A(n27), .B(pat_pro_idx[2]), .Y(n626) );
  ADDFX1 U327 ( .A(str_pro_idx[1]), .B(n10), .CI(\sub_83/carry[1] ), .CO(
        \sub_83/carry[2] ), .S(N399) );
  INVX2 U328 ( .A(pat_last_idx[1]), .Y(n10) );
  BUFX2 U329 ( .A(n630), .Y(n5) );
  NOR3X1 U330 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n28), .Y(n630) );
  ADDFX1 U331 ( .A(str_pro_idx[2]), .B(n9), .CI(\sub_83/carry[2] ), .CO(
        \sub_83/carry[3] ), .S(N400) );
  INVX2 U332 ( .A(pat_last_idx[2]), .Y(n9) );
  BUFX2 U333 ( .A(n601), .Y(n6) );
  NOR3X1 U334 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n1), .Y(n601) );
  NOR4X2 U335 ( .A(n654), .B(current_st[0]), .C(current_st[1]), .D(
        current_st[2]), .Y(n356) );
  AOI222XL U336 ( .A0(ff_result[11]), .A1(n26), .B0(ff_result[17]), .B1(n2), 
        .C0(ff_result[5]), .C1(n3), .Y(n633) );
  AOI222XL U337 ( .A0(ff_result[9]), .A1(n26), .B0(ff_result[15]), .B1(n2), 
        .C0(ff_result[3]), .C1(n3), .Y(n621) );
  AOI222XL U338 ( .A0(ff_result[10]), .A1(n26), .B0(ff_result[16]), .B1(n2), 
        .C0(ff_result[4]), .C1(n3), .Y(n608) );
  NAND2X2 U339 ( .A(input_valid), .B(n356), .Y(n643) );
  AOI22XL U340 ( .A0(ff_result[8]), .A1(n25), .B0(ff_result[2]), .B1(n5), .Y(
        n631) );
  AOI22XL U341 ( .A0(ff_result[7]), .A1(n25), .B0(ff_result[1]), .B1(n5), .Y(
        n606) );
  AOI22XL U342 ( .A0(ff_result[20]), .A1(n629), .B0(ff_result[14]), .B1(n4), 
        .Y(n632) );
  AOI22XL U343 ( .A0(ff_result[18]), .A1(n629), .B0(ff_result[12]), .B1(n4), 
        .Y(n620) );
  AOI22XL U344 ( .A0(ff_result[19]), .A1(n629), .B0(ff_result[13]), .B1(n4), 
        .Y(n607) );
  ADDHX1 U345 ( .A(str_pro_idx[2]), .B(\r342/carry[2] ), .CO(\r342/carry[3] ), 
        .S(N448) );
  ADDHX1 U346 ( .A(str_pro_idx[1]), .B(str_pro_idx[0]), .CO(\r342/carry[2] ), 
        .S(N447) );
  ADDHX1 U347 ( .A(str_pro_idx[3]), .B(\r342/carry[3] ), .CO(\r342/carry[4] ), 
        .S(N449) );
  OAI31X1 U348 ( .A0(n13), .A1(n7), .A2(done), .B0(n602), .Y(N68) );
  NOR3BX1 U349 ( .AN(input_valid), .B(n355), .C(n7), .Y(N67) );
  OAI21X1 U350 ( .A0(input_valid), .A1(n354), .B0(n8), .Y(N66) );
  NAND4X2 U351 ( .A(current_st[0]), .B(n652), .C(n653), .D(n654), .Y(n355) );
  AOI21X1 U352 ( .A0(n643), .A1(n357), .B0(n7), .Y(N69) );
  NAND2X2 U353 ( .A(done), .B(n641), .Y(n357) );
  XNOR2X1 U354 ( .A(str_pro_idx[4]), .B(\sub_83/carry[4] ), .Y(N402) );
  OR2X1 U355 ( .A(str_pro_idx[3]), .B(\sub_83/carry[3] ), .Y(\sub_83/carry[4] ) );
  XNOR2X1 U356 ( .A(\sub_83/carry[3] ), .B(str_pro_idx[3]), .Y(N401) );
  OR2X1 U357 ( .A(n11), .B(str_pro_idx[0]), .Y(\sub_83/carry[1] ) );
  XNOR2X1 U358 ( .A(str_pro_idx[0]), .B(n11), .Y(N398) );
  XOR2X1 U359 ( .A(\r342/carry[4] ), .B(str_pro_idx[4]), .Y(N450) );
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
  wire   N33, done, N65, N66, N67, N68, N69, N398, N399, N400, N401, N402,
         N447, N448, N449, N450, \sub_83/carry[4] , \sub_83/carry[3] ,
         \sub_83/carry[2] , \sub_83/carry[1] , \r342/carry[4] ,
         \r342/carry[3] , \r342/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n19, n20, n21, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654;
  wire   [3:0] current_st;
  wire   [3:0] next_st;
  wire   [4:0] str_pro_idx;
  wire   [2:0] pat_pro_idx;

  TLATX1 \next_st_reg[0]  ( .G(N65), .D(N66), .Q(next_st[0]) );
  DFFQXL output_valid_reg ( .D(n347), .CK(clk), .Q(output_valid) );
  DFFQXL done_reg ( .D(n30), .CK(clk), .Q(done) );
  DFFQXL \pat_pro_idx_reg[0]  ( .D(n345), .CK(clk), .Q(pat_pro_idx[0]) );
  DFFTRXL \current_st_reg[3]  ( .D(next_st[3]), .RN(n8), .CK(clk), .Q(
        current_st[3]), .QN(n654) );
  DFFTRXL \current_st_reg[2]  ( .D(next_st[2]), .RN(n8), .CK(clk), .Q(
        current_st[2]), .QN(n653) );
  DFFTRXL \current_st_reg[1]  ( .D(next_st[1]), .RN(n8), .CK(clk), .Q(
        current_st[1]), .QN(n652) );
  DFFQXL \match_idx_reg[0]  ( .D(n353), .CK(clk), .Q(match_idx[0]) );
  DFFQXL \match_idx_reg[3]  ( .D(n350), .CK(clk), .Q(match_idx[3]) );
  DFFQXL \match_idx_reg[1]  ( .D(n352), .CK(clk), .Q(match_idx[1]) );
  DFFQXL \match_idx_reg[2]  ( .D(n351), .CK(clk), .Q(match_idx[2]) );
  DFFQXL \match_idx_reg[4]  ( .D(n349), .CK(clk), .Q(match_idx[4]) );
  TLATX1 \next_st_reg[2]  ( .G(N65), .D(N68), .Q(next_st[2]) );
  TLATX1 \next_st_reg[3]  ( .G(N65), .D(N69), .Q(next_st[3]) );
  TLATX1 \next_st_reg[1]  ( .G(N65), .D(N67), .Q(next_st[1]) );
  DFFQXL \current_st_reg[0]  ( .D(N33), .CK(clk), .Q(current_st[0]) );
  DFFQXL \str_pro_idx_reg[0]  ( .D(n33), .CK(clk), .Q(str_pro_idx[0]) );
  DFFQXL \pat_pro_idx_reg[1]  ( .D(n31), .CK(clk), .Q(pat_pro_idx[1]) );
  DFFQXL \str_pro_idx_reg[1]  ( .D(n32), .CK(clk), .Q(str_pro_idx[1]) );
  DFFQXL \str_pro_idx_reg[4]  ( .D(n344), .CK(clk), .Q(str_pro_idx[4]) );
  DFFQXL \str_pro_idx_reg[3]  ( .D(n35), .CK(clk), .Q(str_pro_idx[3]) );
  DFFQXL \str_pro_idx_reg[2]  ( .D(n34), .CK(clk), .Q(str_pro_idx[2]) );
  DFFQXL match_reg ( .D(n348), .CK(clk), .Q(match) );
  DFFQXL \pat_pro_idx_reg[2]  ( .D(n346), .CK(clk), .Q(pat_pro_idx[2]) );
  INVXL U3 ( .A(pat_last_idx[0]), .Y(n11) );
  XOR2XL U4 ( .A(n28), .B(pat_last_idx[0]), .Y(n359) );
  NOR4X2 U5 ( .A(n653), .B(current_st[0]), .C(current_st[1]), .D(current_st[3]), .Y(n641) );
  NAND2X2 U6 ( .A(n14), .B(n639), .Y(n637) );
  NOR2BX1 U7 ( .AN(n618), .B(n648), .Y(n616) );
  AO21X2 U8 ( .A0(n14), .A1(n635), .B0(n618), .Y(n639) );
  INVX2 U9 ( .A(n602), .Y(n15) );
  INVX2 U10 ( .A(n648), .Y(n14) );
  INVX2 U11 ( .A(n650), .Y(n16) );
  NOR2BX1 U12 ( .AN(n2), .B(n28), .Y(n629) );
  INVX2 U13 ( .A(n625), .Y(n25) );
  NAND3XL U14 ( .A(n644), .B(n13), .C(n354), .Y(N65) );
  OAI31X1 U15 ( .A0(n648), .A1(n605), .A2(n604), .B0(n603), .Y(n618) );
  AOI22XL U16 ( .A0(n6), .A1(n650), .B0(n16), .B1(n649), .Y(n604) );
  NOR2X2 U17 ( .A(n7), .B(n15), .Y(n603) );
  NAND2X2 U18 ( .A(n644), .B(n641), .Y(n648) );
  NOR2X2 U19 ( .A(n640), .B(n7), .Y(n644) );
  OAI22X1 U20 ( .A0(n29), .A1(n639), .B0(n638), .B1(n637), .Y(n346) );
  AOI22XL U21 ( .A0(n16), .A1(n636), .B0(n635), .B1(n634), .Y(n638) );
  OAI211XL U22 ( .A0(n1), .A1(n29), .B0(n625), .C0(n624), .Y(n636) );
  OAI211XL U23 ( .A0(n1), .A1(n633), .B0(n632), .C0(n631), .Y(n634) );
  INVX2 U24 ( .A(n8), .Y(n7) );
  NOR3X1 U25 ( .A(n650), .B(n649), .C(n648), .Y(n651) );
  NAND2X2 U26 ( .A(n640), .B(n8), .Y(n602) );
  NAND3XL U27 ( .A(n13), .B(n643), .C(n644), .Y(n645) );
  INVX2 U28 ( .A(n647), .Y(n12) );
  OAI211XL U29 ( .A0(n646), .A1(n648), .B0(n645), .C0(n8), .Y(n647) );
  NAND2X2 U30 ( .A(n594), .B(n593), .Y(n650) );
  NOR4X2 U31 ( .A(n472), .B(n471), .C(n470), .D(n469), .Y(n594) );
  NOR4X2 U32 ( .A(n592), .B(n591), .C(n590), .D(n589), .Y(n593) );
  XNOR2X1 U33 ( .A(n390), .B(n389), .Y(n472) );
  AOI221XL U34 ( .A0(n583), .A1(n385), .B0(n581), .B1(n384), .C0(n383), .Y(
        n390) );
  NAND4X2 U35 ( .A(n368), .B(n367), .C(n366), .D(n365), .Y(n385) );
  NAND4X2 U36 ( .A(n372), .B(n371), .C(n370), .D(n369), .Y(n384) );
  AO22X2 U37 ( .A0(n578), .A1(n382), .B0(n576), .B1(n381), .Y(n383) );
  NOR2BX1 U38 ( .AN(n364), .B(n20), .Y(n565) );
  NOR2BX1 U39 ( .AN(n363), .B(n20), .Y(n566) );
  NOR2BX1 U40 ( .AN(n362), .B(n20), .Y(n563) );
  NOR2BX1 U41 ( .AN(n361), .B(n20), .Y(n564) );
  NOR2X2 U42 ( .A(n24), .B(n21), .Y(n362) );
  NOR2X2 U43 ( .A(n17), .B(n19), .Y(n581) );
  AOI2BB1X2 U44 ( .A0N(n649), .A1N(n650), .B0(n605), .Y(n646) );
  INVX2 U45 ( .A(n641), .Y(n13) );
  NOR2X2 U46 ( .A(n16), .B(n605), .Y(n635) );
  NAND2X2 U47 ( .A(n3), .B(n1), .Y(n625) );
  INVX2 U48 ( .A(n624), .Y(n26) );
  INVX2 U49 ( .A(n1), .Y(n28) );
  BUFX2 U50 ( .A(n627), .Y(n2) );
  NOR2X2 U51 ( .A(n29), .B(n27), .Y(n627) );
  BUFX2 U52 ( .A(n628), .Y(n4) );
  NOR2X2 U53 ( .A(n624), .B(n28), .Y(n628) );
  NOR2BX1 U54 ( .AN(n355), .B(n356), .Y(n354) );
  OAI22X1 U55 ( .A0(n28), .A1(n639), .B0(n623), .B1(n637), .Y(n345) );
  AOI22XL U56 ( .A0(n635), .A1(n622), .B0(n16), .B1(n28), .Y(n623) );
  OAI211XL U57 ( .A0(n1), .A1(n621), .B0(n620), .C0(n619), .Y(n622) );
  AOI22XL U58 ( .A0(ff_result[6]), .A1(n25), .B0(ff_result[0]), .B1(n5), .Y(
        n619) );
  OAI22X1 U59 ( .A0(n27), .A1(n639), .B0(n611), .B1(n637), .Y(n31) );
  AOI22XL U60 ( .A0(n16), .A1(n610), .B0(n635), .B1(n609), .Y(n611) );
  XOR2X1 U61 ( .A(pat_pro_idx[1]), .B(n1), .Y(n610) );
  OAI211XL U62 ( .A0(n1), .A1(n608), .B0(n607), .C0(n606), .Y(n609) );
  OAI21X1 U63 ( .A0(n24), .A1(n618), .B0(n617), .Y(n344) );
  AOI22XL U64 ( .A0(start_idx[4]), .A1(n15), .B0(N450), .B1(n616), .Y(n617) );
  OAI21X1 U65 ( .A0(n21), .A1(n618), .B0(n615), .Y(n35) );
  AOI22XL U66 ( .A0(start_idx[3]), .A1(n15), .B0(N449), .B1(n616), .Y(n615) );
  OAI21X1 U67 ( .A0(n20), .A1(n618), .B0(n614), .Y(n34) );
  AOI22XL U68 ( .A0(start_idx[2]), .A1(n15), .B0(N448), .B1(n616), .Y(n614) );
  OAI21X1 U69 ( .A0(n19), .A1(n618), .B0(n613), .Y(n33) );
  AOI22XL U70 ( .A0(start_idx[0]), .A1(n15), .B0(n19), .B1(n616), .Y(n613) );
  OAI21X1 U71 ( .A0(n17), .A1(n618), .B0(n612), .Y(n32) );
  AOI22XL U72 ( .A0(start_idx[1]), .A1(n15), .B0(N447), .B1(n616), .Y(n612) );
  INVX2 U73 ( .A(reset), .Y(n8) );
  OAI2BB2X2 U74 ( .B0(n646), .B1(n648), .A0N(n645), .A1N(done), .Y(n30) );
  OAI2B1X1 U75 ( .A1N(n644), .A0(n643), .B0(n642), .Y(n347) );
  OAI211XL U76 ( .A0(n641), .A1(n640), .B0(n8), .C0(output_valid), .Y(n642) );
  AO22X2 U77 ( .A0(match_idx[0]), .A1(n12), .B0(N398), .B1(n651), .Y(n353) );
  AO22X2 U78 ( .A0(match_idx[1]), .A1(n12), .B0(N399), .B1(n651), .Y(n352) );
  AO22X2 U79 ( .A0(match_idx[2]), .A1(n12), .B0(N400), .B1(n651), .Y(n351) );
  AO22X2 U80 ( .A0(match_idx[3]), .A1(n12), .B0(N401), .B1(n651), .Y(n350) );
  AO22X2 U81 ( .A0(match_idx[4]), .A1(n12), .B0(N402), .B1(n651), .Y(n349) );
  AO21X2 U82 ( .A0(match), .A1(n12), .B0(n651), .Y(n348) );
  OR2X2 U83 ( .A(next_st[0]), .B(n7), .Y(N33) );
  XNOR2X1 U84 ( .A(n498), .B(n497), .Y(n592) );
  OAI211XL U85 ( .A0(n1), .A1(n496), .B0(n495), .C0(n494), .Y(n497) );
  AOI221XL U86 ( .A0(n583), .A1(n493), .B0(n581), .B1(n492), .C0(n491), .Y(
        n498) );
  AOI222XL U87 ( .A0(pat_input[36]), .A1(n26), .B0(pat_input[52]), .B1(n2), 
        .C0(pat_input[20]), .C1(n3), .Y(n496) );
  XNOR2X1 U88 ( .A(n588), .B(n587), .Y(n589) );
  OAI211XL U89 ( .A0(n1), .A1(n586), .B0(n585), .C0(n584), .Y(n587) );
  AOI221XL U90 ( .A0(n583), .A1(n582), .B0(n581), .B1(n580), .C0(n579), .Y(
        n588) );
  AOI222XL U91 ( .A0(pat_input[39]), .A1(n26), .B0(pat_input[55]), .B1(n2), 
        .C0(pat_input[23]), .C1(n3), .Y(n586) );
  XNOR2X1 U92 ( .A(n468), .B(n467), .Y(n469) );
  OAI211XL U93 ( .A0(n1), .A1(n466), .B0(n465), .C0(n464), .Y(n467) );
  AOI221XL U94 ( .A0(n583), .A1(n463), .B0(n581), .B1(n462), .C0(n461), .Y(
        n468) );
  AOI222XL U95 ( .A0(pat_input[35]), .A1(n26), .B0(pat_input[51]), .B1(n2), 
        .C0(pat_input[19]), .C1(n3), .Y(n466) );
  AOI22XL U96 ( .A0(str_input[167]), .A1(n564), .B0(str_input[231]), .B1(n563), 
        .Y(n574) );
  AOI22XL U97 ( .A0(str_input[166]), .A1(n564), .B0(str_input[230]), .B1(n563), 
        .Y(n540) );
  AOI22XL U98 ( .A0(str_input[165]), .A1(n564), .B0(str_input[229]), .B1(n563), 
        .Y(n514) );
  AOI22XL U99 ( .A0(str_input[164]), .A1(n564), .B0(str_input[228]), .B1(n563), 
        .Y(n488) );
  AOI22XL U100 ( .A0(str_input[163]), .A1(n564), .B0(str_input[227]), .B1(n563), .Y(n458) );
  AOI22XL U101 ( .A0(str_input[162]), .A1(n564), .B0(str_input[226]), .B1(n563), .Y(n432) );
  AOI22XL U102 ( .A0(str_input[161]), .A1(n564), .B0(str_input[225]), .B1(n563), .Y(n406) );
  AOI22XL U103 ( .A0(str_input[0]), .A1(n570), .B0(str_input[64]), .B1(n569), 
        .Y(n377) );
  AOI22XL U104 ( .A0(str_input[8]), .A1(n570), .B0(str_input[72]), .B1(n569), 
        .Y(n373) );
  AOI22XL U105 ( .A0(str_input[25]), .A1(n570), .B0(str_input[89]), .B1(n569), 
        .Y(n395) );
  AOI22XL U106 ( .A0(str_input[17]), .A1(n570), .B0(str_input[81]), .B1(n569), 
        .Y(n391) );
  AOI22XL U107 ( .A0(str_input[7]), .A1(n570), .B0(str_input[71]), .B1(n569), 
        .Y(n571) );
  AOI22XL U108 ( .A0(str_input[15]), .A1(n570), .B0(str_input[79]), .B1(n569), 
        .Y(n559) );
  AOI22XL U109 ( .A0(str_input[6]), .A1(n570), .B0(str_input[70]), .B1(n569), 
        .Y(n537) );
  AOI22XL U110 ( .A0(str_input[14]), .A1(n570), .B0(str_input[78]), .B1(n569), 
        .Y(n533) );
  AOI22XL U111 ( .A0(str_input[5]), .A1(n570), .B0(str_input[69]), .B1(n569), 
        .Y(n511) );
  AOI22XL U112 ( .A0(str_input[13]), .A1(n570), .B0(str_input[77]), .B1(n569), 
        .Y(n507) );
  AOI22XL U113 ( .A0(str_input[4]), .A1(n570), .B0(str_input[68]), .B1(n569), 
        .Y(n485) );
  AOI22XL U114 ( .A0(str_input[12]), .A1(n570), .B0(str_input[76]), .B1(n569), 
        .Y(n481) );
  AOI22XL U115 ( .A0(str_input[3]), .A1(n570), .B0(str_input[67]), .B1(n569), 
        .Y(n455) );
  AOI22XL U116 ( .A0(str_input[11]), .A1(n570), .B0(str_input[75]), .B1(n569), 
        .Y(n451) );
  AOI22XL U117 ( .A0(str_input[2]), .A1(n570), .B0(str_input[66]), .B1(n569), 
        .Y(n429) );
  AOI22XL U118 ( .A0(str_input[10]), .A1(n570), .B0(str_input[74]), .B1(n569), 
        .Y(n425) );
  AOI22XL U119 ( .A0(str_input[1]), .A1(n570), .B0(str_input[65]), .B1(n569), 
        .Y(n403) );
  AOI22XL U120 ( .A0(str_input[9]), .A1(n570), .B0(str_input[73]), .B1(n569), 
        .Y(n399) );
  AOI22XL U121 ( .A0(str_input[31]), .A1(n570), .B0(str_input[95]), .B1(n569), 
        .Y(n555) );
  AOI22XL U122 ( .A0(str_input[23]), .A1(n570), .B0(str_input[87]), .B1(n569), 
        .Y(n551) );
  AOI22XL U123 ( .A0(str_input[30]), .A1(n570), .B0(str_input[94]), .B1(n569), 
        .Y(n529) );
  AOI22XL U124 ( .A0(str_input[22]), .A1(n570), .B0(str_input[86]), .B1(n569), 
        .Y(n525) );
  AOI22XL U125 ( .A0(str_input[29]), .A1(n570), .B0(str_input[93]), .B1(n569), 
        .Y(n503) );
  AOI22XL U126 ( .A0(str_input[21]), .A1(n570), .B0(str_input[85]), .B1(n569), 
        .Y(n499) );
  AOI22XL U127 ( .A0(str_input[28]), .A1(n570), .B0(str_input[92]), .B1(n569), 
        .Y(n477) );
  AOI22XL U128 ( .A0(str_input[27]), .A1(n570), .B0(str_input[91]), .B1(n569), 
        .Y(n447) );
  AOI22XL U129 ( .A0(str_input[19]), .A1(n570), .B0(str_input[83]), .B1(n569), 
        .Y(n443) );
  AOI22XL U130 ( .A0(str_input[26]), .A1(n570), .B0(str_input[90]), .B1(n569), 
        .Y(n421) );
  AOI22XL U131 ( .A0(str_input[18]), .A1(n570), .B0(str_input[82]), .B1(n569), 
        .Y(n417) );
  AOI22XL U132 ( .A0(str_input[39]), .A1(n566), .B0(str_input[103]), .B1(n565), 
        .Y(n573) );
  AOI22XL U133 ( .A0(str_input[47]), .A1(n566), .B0(str_input[111]), .B1(n565), 
        .Y(n561) );
  AOI22XL U134 ( .A0(str_input[38]), .A1(n566), .B0(str_input[102]), .B1(n565), 
        .Y(n539) );
  AOI22XL U135 ( .A0(str_input[46]), .A1(n566), .B0(str_input[110]), .B1(n565), 
        .Y(n535) );
  AOI22XL U136 ( .A0(str_input[37]), .A1(n566), .B0(str_input[101]), .B1(n565), 
        .Y(n513) );
  AOI22XL U137 ( .A0(str_input[45]), .A1(n566), .B0(str_input[109]), .B1(n565), 
        .Y(n509) );
  AOI22XL U138 ( .A0(str_input[36]), .A1(n566), .B0(str_input[100]), .B1(n565), 
        .Y(n487) );
  AOI22XL U139 ( .A0(str_input[44]), .A1(n566), .B0(str_input[108]), .B1(n565), 
        .Y(n483) );
  AOI22XL U140 ( .A0(str_input[35]), .A1(n566), .B0(str_input[99]), .B1(n565), 
        .Y(n457) );
  AOI22XL U141 ( .A0(str_input[43]), .A1(n566), .B0(str_input[107]), .B1(n565), 
        .Y(n453) );
  AOI22XL U142 ( .A0(str_input[34]), .A1(n566), .B0(str_input[98]), .B1(n565), 
        .Y(n431) );
  AOI22XL U143 ( .A0(str_input[42]), .A1(n566), .B0(str_input[106]), .B1(n565), 
        .Y(n427) );
  AOI22XL U144 ( .A0(str_input[33]), .A1(n566), .B0(str_input[97]), .B1(n565), 
        .Y(n405) );
  AOI22XL U145 ( .A0(str_input[41]), .A1(n566), .B0(str_input[105]), .B1(n565), 
        .Y(n401) );
  AOI22XL U146 ( .A0(str_input[135]), .A1(n568), .B0(str_input[199]), .B1(n567), .Y(n572) );
  AOI22XL U147 ( .A0(str_input[143]), .A1(n568), .B0(str_input[207]), .B1(n567), .Y(n560) );
  AOI22XL U148 ( .A0(str_input[134]), .A1(n568), .B0(str_input[198]), .B1(n567), .Y(n538) );
  AOI22XL U149 ( .A0(str_input[142]), .A1(n568), .B0(str_input[206]), .B1(n567), .Y(n534) );
  AOI22XL U150 ( .A0(str_input[133]), .A1(n568), .B0(str_input[197]), .B1(n567), .Y(n512) );
  AOI22XL U151 ( .A0(str_input[141]), .A1(n568), .B0(str_input[205]), .B1(n567), .Y(n508) );
  AOI22XL U152 ( .A0(str_input[132]), .A1(n568), .B0(str_input[196]), .B1(n567), .Y(n486) );
  AOI22XL U153 ( .A0(str_input[140]), .A1(n568), .B0(str_input[204]), .B1(n567), .Y(n482) );
  AOI22XL U154 ( .A0(str_input[131]), .A1(n568), .B0(str_input[195]), .B1(n567), .Y(n456) );
  AOI22XL U155 ( .A0(str_input[139]), .A1(n568), .B0(str_input[203]), .B1(n567), .Y(n452) );
  AOI22XL U156 ( .A0(str_input[130]), .A1(n568), .B0(str_input[194]), .B1(n567), .Y(n430) );
  AOI22XL U157 ( .A0(str_input[138]), .A1(n568), .B0(str_input[202]), .B1(n567), .Y(n426) );
  AOI22XL U158 ( .A0(str_input[129]), .A1(n568), .B0(str_input[193]), .B1(n567), .Y(n404) );
  AOI22XL U159 ( .A0(str_input[137]), .A1(n568), .B0(str_input[201]), .B1(n567), .Y(n400) );
  XNOR2X1 U160 ( .A(n550), .B(n549), .Y(n590) );
  OAI211XL U161 ( .A0(n1), .A1(n548), .B0(n547), .C0(n546), .Y(n549) );
  AOI221XL U162 ( .A0(n583), .A1(n545), .B0(n581), .B1(n544), .C0(n543), .Y(
        n550) );
  AOI222XL U163 ( .A0(pat_input[38]), .A1(n26), .B0(pat_input[54]), .B1(n2), 
        .C0(pat_input[22]), .C1(n3), .Y(n548) );
  XNOR2X1 U164 ( .A(n524), .B(n523), .Y(n591) );
  OAI211XL U165 ( .A0(n1), .A1(n522), .B0(n521), .C0(n520), .Y(n523) );
  AOI221XL U166 ( .A0(n583), .A1(n519), .B0(n581), .B1(n518), .C0(n517), .Y(
        n524) );
  AOI222XL U167 ( .A0(pat_input[37]), .A1(n26), .B0(pat_input[53]), .B1(n2), 
        .C0(pat_input[21]), .C1(n3), .Y(n522) );
  XNOR2X1 U168 ( .A(n442), .B(n441), .Y(n470) );
  OAI211XL U169 ( .A0(n1), .A1(n440), .B0(n439), .C0(n438), .Y(n441) );
  AOI221XL U170 ( .A0(n583), .A1(n437), .B0(n581), .B1(n436), .C0(n435), .Y(
        n442) );
  AOI222XL U171 ( .A0(pat_input[34]), .A1(n26), .B0(pat_input[50]), .B1(n2), 
        .C0(pat_input[18]), .C1(n3), .Y(n440) );
  XNOR2X1 U172 ( .A(n416), .B(n415), .Y(n471) );
  OAI211XL U173 ( .A0(n1), .A1(n414), .B0(n413), .C0(n412), .Y(n415) );
  AOI221XL U174 ( .A0(n583), .A1(n411), .B0(n581), .B1(n410), .C0(n409), .Y(
        n416) );
  AOI222XL U175 ( .A0(pat_input[33]), .A1(n26), .B0(pat_input[49]), .B1(n2), 
        .C0(pat_input[17]), .C1(n3), .Y(n414) );
  NAND4X2 U176 ( .A(n398), .B(n397), .C(n396), .D(n395), .Y(n410) );
  AOI22XL U177 ( .A0(str_input[185]), .A1(n564), .B0(str_input[249]), .B1(n563), .Y(n398) );
  AOI22XL U178 ( .A0(str_input[57]), .A1(n566), .B0(str_input[121]), .B1(n565), 
        .Y(n397) );
  AOI22XL U179 ( .A0(str_input[153]), .A1(n568), .B0(str_input[217]), .B1(n567), .Y(n396) );
  NAND4X2 U180 ( .A(n558), .B(n557), .C(n556), .D(n555), .Y(n580) );
  AOI22XL U181 ( .A0(str_input[191]), .A1(n564), .B0(str_input[255]), .B1(n563), .Y(n558) );
  AOI22XL U182 ( .A0(str_input[63]), .A1(n566), .B0(str_input[127]), .B1(n565), 
        .Y(n557) );
  AOI22XL U183 ( .A0(str_input[159]), .A1(n568), .B0(str_input[223]), .B1(n567), .Y(n556) );
  NAND4X2 U184 ( .A(n532), .B(n531), .C(n530), .D(n529), .Y(n544) );
  AOI22XL U185 ( .A0(str_input[190]), .A1(n564), .B0(str_input[254]), .B1(n563), .Y(n532) );
  AOI22XL U186 ( .A0(str_input[62]), .A1(n566), .B0(str_input[126]), .B1(n565), 
        .Y(n531) );
  AOI22XL U187 ( .A0(str_input[158]), .A1(n568), .B0(str_input[222]), .B1(n567), .Y(n530) );
  NAND4X2 U188 ( .A(n506), .B(n505), .C(n504), .D(n503), .Y(n518) );
  AOI22XL U189 ( .A0(str_input[189]), .A1(n564), .B0(str_input[253]), .B1(n563), .Y(n506) );
  AOI22XL U190 ( .A0(str_input[61]), .A1(n566), .B0(str_input[125]), .B1(n565), 
        .Y(n505) );
  AOI22XL U191 ( .A0(str_input[157]), .A1(n568), .B0(str_input[221]), .B1(n567), .Y(n504) );
  NAND4X2 U192 ( .A(n480), .B(n479), .C(n478), .D(n477), .Y(n492) );
  AOI22XL U193 ( .A0(str_input[188]), .A1(n564), .B0(str_input[252]), .B1(n563), .Y(n480) );
  AOI22XL U194 ( .A0(str_input[60]), .A1(n566), .B0(str_input[124]), .B1(n565), 
        .Y(n479) );
  AOI22XL U195 ( .A0(str_input[156]), .A1(n568), .B0(str_input[220]), .B1(n567), .Y(n478) );
  NAND4X2 U196 ( .A(n450), .B(n449), .C(n448), .D(n447), .Y(n462) );
  AOI22XL U197 ( .A0(str_input[187]), .A1(n564), .B0(str_input[251]), .B1(n563), .Y(n450) );
  AOI22XL U198 ( .A0(str_input[59]), .A1(n566), .B0(str_input[123]), .B1(n565), 
        .Y(n449) );
  AOI22XL U199 ( .A0(str_input[155]), .A1(n568), .B0(str_input[219]), .B1(n567), .Y(n448) );
  NAND4X2 U200 ( .A(n424), .B(n423), .C(n422), .D(n421), .Y(n436) );
  AOI22XL U201 ( .A0(str_input[186]), .A1(n564), .B0(str_input[250]), .B1(n563), .Y(n424) );
  AOI22XL U202 ( .A0(str_input[58]), .A1(n566), .B0(str_input[122]), .B1(n565), 
        .Y(n423) );
  AOI22XL U203 ( .A0(str_input[154]), .A1(n568), .B0(str_input[218]), .B1(n567), .Y(n422) );
  NAND4X2 U204 ( .A(n394), .B(n393), .C(n392), .D(n391), .Y(n411) );
  AOI22XL U205 ( .A0(str_input[177]), .A1(n564), .B0(str_input[241]), .B1(n563), .Y(n394) );
  AOI22XL U206 ( .A0(str_input[49]), .A1(n566), .B0(str_input[113]), .B1(n565), 
        .Y(n393) );
  AOI22XL U207 ( .A0(str_input[145]), .A1(n568), .B0(str_input[209]), .B1(n567), .Y(n392) );
  NAND4X2 U208 ( .A(n554), .B(n553), .C(n552), .D(n551), .Y(n582) );
  AOI22XL U209 ( .A0(str_input[183]), .A1(n564), .B0(str_input[247]), .B1(n563), .Y(n554) );
  AOI22XL U210 ( .A0(str_input[55]), .A1(n566), .B0(str_input[119]), .B1(n565), 
        .Y(n553) );
  AOI22XL U211 ( .A0(str_input[151]), .A1(n568), .B0(str_input[215]), .B1(n567), .Y(n552) );
  NAND4X2 U212 ( .A(n528), .B(n527), .C(n526), .D(n525), .Y(n545) );
  AOI22XL U213 ( .A0(str_input[182]), .A1(n564), .B0(str_input[246]), .B1(n563), .Y(n528) );
  AOI22XL U214 ( .A0(str_input[54]), .A1(n566), .B0(str_input[118]), .B1(n565), 
        .Y(n527) );
  AOI22XL U215 ( .A0(str_input[150]), .A1(n568), .B0(str_input[214]), .B1(n567), .Y(n526) );
  NAND4X2 U216 ( .A(n502), .B(n501), .C(n500), .D(n499), .Y(n519) );
  AOI22XL U217 ( .A0(str_input[181]), .A1(n564), .B0(str_input[245]), .B1(n563), .Y(n502) );
  AOI22XL U218 ( .A0(str_input[53]), .A1(n566), .B0(str_input[117]), .B1(n565), 
        .Y(n501) );
  AOI22XL U219 ( .A0(str_input[149]), .A1(n568), .B0(str_input[213]), .B1(n567), .Y(n500) );
  NAND4X2 U220 ( .A(n446), .B(n445), .C(n444), .D(n443), .Y(n463) );
  AOI22XL U221 ( .A0(str_input[179]), .A1(n564), .B0(str_input[243]), .B1(n563), .Y(n446) );
  AOI22XL U222 ( .A0(str_input[51]), .A1(n566), .B0(str_input[115]), .B1(n565), 
        .Y(n445) );
  AOI22XL U223 ( .A0(str_input[147]), .A1(n568), .B0(str_input[211]), .B1(n567), .Y(n444) );
  NAND4X2 U224 ( .A(n420), .B(n419), .C(n418), .D(n417), .Y(n437) );
  AOI22XL U225 ( .A0(str_input[178]), .A1(n564), .B0(str_input[242]), .B1(n563), .Y(n420) );
  AOI22XL U226 ( .A0(str_input[50]), .A1(n566), .B0(str_input[114]), .B1(n565), 
        .Y(n419) );
  AOI22XL U227 ( .A0(str_input[146]), .A1(n568), .B0(str_input[210]), .B1(n567), .Y(n418) );
  NAND4X2 U228 ( .A(n376), .B(n375), .C(n374), .D(n373), .Y(n382) );
  AOI22XL U229 ( .A0(str_input[168]), .A1(n564), .B0(str_input[232]), .B1(n563), .Y(n376) );
  AOI22XL U230 ( .A0(str_input[40]), .A1(n566), .B0(str_input[104]), .B1(n565), 
        .Y(n375) );
  AOI22XL U231 ( .A0(str_input[136]), .A1(n568), .B0(str_input[200]), .B1(n567), .Y(n374) );
  NAND4X2 U232 ( .A(n380), .B(n379), .C(n378), .D(n377), .Y(n381) );
  AOI22XL U233 ( .A0(str_input[160]), .A1(n564), .B0(str_input[224]), .B1(n563), .Y(n380) );
  AOI22XL U234 ( .A0(str_input[32]), .A1(n566), .B0(str_input[96]), .B1(n565), 
        .Y(n379) );
  AOI22XL U235 ( .A0(str_input[128]), .A1(n568), .B0(str_input[192]), .B1(n567), .Y(n378) );
  INVX2 U236 ( .A(str_pro_idx[2]), .Y(n20) );
  NOR2BX1 U237 ( .AN(n363), .B(str_pro_idx[2]), .Y(n570) );
  NOR2BX1 U238 ( .AN(n364), .B(str_pro_idx[2]), .Y(n569) );
  NOR2BX1 U239 ( .AN(n362), .B(str_pro_idx[2]), .Y(n567) );
  NOR2BX1 U240 ( .AN(n361), .B(str_pro_idx[2]), .Y(n568) );
  NOR2X2 U241 ( .A(str_pro_idx[3]), .B(str_pro_idx[4]), .Y(n363) );
  NOR2X2 U242 ( .A(n24), .B(str_pro_idx[3]), .Y(n361) );
  NOR2X2 U243 ( .A(n21), .B(str_pro_idx[4]), .Y(n364) );
  INVX2 U244 ( .A(str_pro_idx[3]), .Y(n21) );
  AO22X2 U245 ( .A0(n578), .A1(n577), .B0(n576), .B1(n575), .Y(n579) );
  NAND4X2 U246 ( .A(n562), .B(n561), .C(n560), .D(n559), .Y(n577) );
  NAND4X2 U247 ( .A(n574), .B(n573), .C(n572), .D(n571), .Y(n575) );
  AOI22XL U248 ( .A0(str_input[175]), .A1(n564), .B0(str_input[239]), .B1(n563), .Y(n562) );
  AO22X2 U249 ( .A0(n578), .A1(n542), .B0(n576), .B1(n541), .Y(n543) );
  NAND4X2 U250 ( .A(n536), .B(n535), .C(n534), .D(n533), .Y(n542) );
  NAND4X2 U251 ( .A(n540), .B(n539), .C(n538), .D(n537), .Y(n541) );
  AOI22XL U252 ( .A0(str_input[174]), .A1(n564), .B0(str_input[238]), .B1(n563), .Y(n536) );
  AO22X2 U253 ( .A0(n578), .A1(n516), .B0(n576), .B1(n515), .Y(n517) );
  NAND4X2 U254 ( .A(n510), .B(n509), .C(n508), .D(n507), .Y(n516) );
  NAND4X2 U255 ( .A(n514), .B(n513), .C(n512), .D(n511), .Y(n515) );
  AOI22XL U256 ( .A0(str_input[173]), .A1(n564), .B0(str_input[237]), .B1(n563), .Y(n510) );
  AO22X2 U257 ( .A0(n578), .A1(n490), .B0(n576), .B1(n489), .Y(n491) );
  NAND4X2 U258 ( .A(n484), .B(n483), .C(n482), .D(n481), .Y(n490) );
  NAND4X2 U259 ( .A(n488), .B(n487), .C(n486), .D(n485), .Y(n489) );
  AOI22XL U260 ( .A0(str_input[172]), .A1(n564), .B0(str_input[236]), .B1(n563), .Y(n484) );
  AO22X2 U261 ( .A0(n578), .A1(n460), .B0(n576), .B1(n459), .Y(n461) );
  NAND4X2 U262 ( .A(n454), .B(n453), .C(n452), .D(n451), .Y(n460) );
  NAND4X2 U263 ( .A(n458), .B(n457), .C(n456), .D(n455), .Y(n459) );
  AOI22XL U264 ( .A0(str_input[171]), .A1(n564), .B0(str_input[235]), .B1(n563), .Y(n454) );
  AO22X2 U265 ( .A0(n578), .A1(n434), .B0(n576), .B1(n433), .Y(n435) );
  NAND4X2 U266 ( .A(n428), .B(n427), .C(n426), .D(n425), .Y(n434) );
  NAND4X2 U267 ( .A(n432), .B(n431), .C(n430), .D(n429), .Y(n433) );
  AOI22XL U268 ( .A0(str_input[170]), .A1(n564), .B0(str_input[234]), .B1(n563), .Y(n428) );
  AO22X2 U269 ( .A0(n578), .A1(n408), .B0(n576), .B1(n407), .Y(n409) );
  NAND4X2 U270 ( .A(n402), .B(n401), .C(n400), .D(n399), .Y(n408) );
  NAND4X2 U271 ( .A(n406), .B(n405), .C(n404), .D(n403), .Y(n407) );
  AOI22XL U272 ( .A0(str_input[169]), .A1(n564), .B0(str_input[233]), .B1(n563), .Y(n402) );
  INVX2 U273 ( .A(str_pro_idx[4]), .Y(n24) );
  NOR4X2 U274 ( .A(n652), .B(current_st[0]), .C(current_st[2]), .D(
        current_st[3]), .Y(n640) );
  AOI222XL U275 ( .A0(pat_input[15]), .A1(n5), .B0(pat_input[31]), .B1(n25), 
        .C0(pat_input[7]), .C1(n6), .Y(n584) );
  AOI222XL U276 ( .A0(pat_input[14]), .A1(n5), .B0(pat_input[30]), .B1(n25), 
        .C0(pat_input[6]), .C1(n6), .Y(n546) );
  AOI222XL U277 ( .A0(pat_input[13]), .A1(n5), .B0(pat_input[29]), .B1(n25), 
        .C0(pat_input[5]), .C1(n6), .Y(n520) );
  AOI222XL U278 ( .A0(pat_input[12]), .A1(n5), .B0(pat_input[28]), .B1(n25), 
        .C0(pat_input[4]), .C1(n6), .Y(n494) );
  AOI222XL U279 ( .A0(pat_input[11]), .A1(n5), .B0(pat_input[27]), .B1(n25), 
        .C0(pat_input[3]), .C1(n6), .Y(n464) );
  AOI222XL U280 ( .A0(pat_input[10]), .A1(n5), .B0(pat_input[26]), .B1(n25), 
        .C0(pat_input[2]), .C1(n6), .Y(n438) );
  AOI222XL U281 ( .A0(pat_input[9]), .A1(n5), .B0(pat_input[25]), .B1(n25), 
        .C0(pat_input[1]), .C1(n6), .Y(n412) );
  NOR2X2 U282 ( .A(n17), .B(str_pro_idx[0]), .Y(n583) );
  AOI22XL U283 ( .A0(str_input[184]), .A1(n564), .B0(str_input[248]), .B1(n563), .Y(n372) );
  AOI22XL U284 ( .A0(str_input[176]), .A1(n564), .B0(str_input[240]), .B1(n563), .Y(n368) );
  AOI22XL U285 ( .A0(str_input[24]), .A1(n570), .B0(str_input[88]), .B1(n569), 
        .Y(n369) );
  AOI22XL U286 ( .A0(str_input[16]), .A1(n570), .B0(str_input[80]), .B1(n569), 
        .Y(n365) );
  AOI22XL U287 ( .A0(str_input[20]), .A1(n570), .B0(str_input[84]), .B1(n569), 
        .Y(n473) );
  AOI22XL U288 ( .A0(str_input[56]), .A1(n566), .B0(str_input[120]), .B1(n565), 
        .Y(n371) );
  AOI22XL U289 ( .A0(str_input[48]), .A1(n566), .B0(str_input[112]), .B1(n565), 
        .Y(n367) );
  AOI22XL U290 ( .A0(str_input[152]), .A1(n568), .B0(str_input[216]), .B1(n567), .Y(n370) );
  AOI22XL U291 ( .A0(str_input[144]), .A1(n568), .B0(str_input[208]), .B1(n567), .Y(n366) );
  OAI211XL U292 ( .A0(n1), .A1(n388), .B0(n387), .C0(n386), .Y(n389) );
  AOI222XL U293 ( .A0(pat_input[32]), .A1(n26), .B0(pat_input[48]), .B1(n2), 
        .C0(pat_input[16]), .C1(n3), .Y(n388) );
  AOI22XL U294 ( .A0(pat_input[56]), .A1(n629), .B0(pat_input[40]), .B1(n4), 
        .Y(n387) );
  AOI222XL U295 ( .A0(pat_input[8]), .A1(n5), .B0(pat_input[24]), .B1(n25), 
        .C0(pat_input[0]), .C1(n6), .Y(n386) );
  NOR2X2 U296 ( .A(n19), .B(str_pro_idx[1]), .Y(n578) );
  NOR2X2 U297 ( .A(str_pro_idx[0]), .B(str_pro_idx[1]), .Y(n576) );
  AOI22XL U298 ( .A0(pat_input[63]), .A1(n629), .B0(pat_input[47]), .B1(n4), 
        .Y(n585) );
  AOI22XL U299 ( .A0(pat_input[62]), .A1(n629), .B0(pat_input[46]), .B1(n4), 
        .Y(n547) );
  AOI22XL U300 ( .A0(pat_input[61]), .A1(n629), .B0(pat_input[45]), .B1(n4), 
        .Y(n521) );
  AOI22XL U301 ( .A0(pat_input[60]), .A1(n629), .B0(pat_input[44]), .B1(n4), 
        .Y(n495) );
  AOI22XL U302 ( .A0(pat_input[59]), .A1(n629), .B0(pat_input[43]), .B1(n4), 
        .Y(n465) );
  AOI22XL U303 ( .A0(pat_input[58]), .A1(n629), .B0(pat_input[42]), .B1(n4), 
        .Y(n439) );
  AOI22XL U304 ( .A0(pat_input[57]), .A1(n629), .B0(pat_input[41]), .B1(n4), 
        .Y(n413) );
  NAND4X2 U305 ( .A(n476), .B(n475), .C(n474), .D(n473), .Y(n493) );
  AOI22XL U306 ( .A0(str_input[180]), .A1(n564), .B0(str_input[244]), .B1(n563), .Y(n476) );
  AOI22XL U307 ( .A0(str_input[52]), .A1(n566), .B0(str_input[116]), .B1(n565), 
        .Y(n475) );
  AOI22XL U308 ( .A0(str_input[148]), .A1(n568), .B0(str_input[212]), .B1(n567), .Y(n474) );
  NAND2X2 U309 ( .A(pat_pro_idx[2]), .B(n27), .Y(n624) );
  NAND3XL U310 ( .A(n360), .B(n359), .C(n358), .Y(n649) );
  XOR2X1 U311 ( .A(n27), .B(pat_last_idx[1]), .Y(n360) );
  XOR2X1 U312 ( .A(n29), .B(pat_last_idx[2]), .Y(n358) );
  BUFX2 U313 ( .A(pat_pro_idx[0]), .Y(n1) );
  AND3X2 U314 ( .A(n600), .B(n599), .C(n598), .Y(n605) );
  XOR2X1 U315 ( .A(n19), .B(process_2idx[0]), .Y(n600) );
  NOR3X1 U316 ( .A(n597), .B(n596), .C(n595), .Y(n598) );
  XOR2X1 U317 ( .A(n20), .B(process_2idx[2]), .Y(n599) );
  INVX2 U318 ( .A(str_pro_idx[1]), .Y(n17) );
  INVX2 U319 ( .A(pat_pro_idx[1]), .Y(n27) );
  INVX2 U320 ( .A(str_pro_idx[0]), .Y(n19) );
  INVX2 U321 ( .A(pat_pro_idx[2]), .Y(n29) );
  XOR2X1 U322 ( .A(str_pro_idx[4]), .B(process_2idx[4]), .Y(n595) );
  XOR2X1 U323 ( .A(str_pro_idx[3]), .B(process_2idx[3]), .Y(n597) );
  XOR2X1 U324 ( .A(str_pro_idx[1]), .B(process_2idx[1]), .Y(n596) );
  BUFX2 U325 ( .A(n626), .Y(n3) );
  NOR2X2 U326 ( .A(n27), .B(pat_pro_idx[2]), .Y(n626) );
  ADDFX1 U327 ( .A(str_pro_idx[1]), .B(n10), .CI(\sub_83/carry[1] ), .CO(
        \sub_83/carry[2] ), .S(N399) );
  INVX2 U328 ( .A(pat_last_idx[1]), .Y(n10) );
  BUFX2 U329 ( .A(n630), .Y(n5) );
  NOR3X1 U330 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n28), .Y(n630) );
  ADDFX1 U331 ( .A(str_pro_idx[2]), .B(n9), .CI(\sub_83/carry[2] ), .CO(
        \sub_83/carry[3] ), .S(N400) );
  INVX2 U332 ( .A(pat_last_idx[2]), .Y(n9) );
  BUFX2 U333 ( .A(n601), .Y(n6) );
  NOR3X1 U334 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n1), .Y(n601) );
  NOR4X2 U335 ( .A(n654), .B(current_st[0]), .C(current_st[1]), .D(
        current_st[2]), .Y(n356) );
  AOI222XL U336 ( .A0(ff_result[11]), .A1(n26), .B0(ff_result[17]), .B1(n2), 
        .C0(ff_result[5]), .C1(n3), .Y(n633) );
  AOI222XL U337 ( .A0(ff_result[9]), .A1(n26), .B0(ff_result[15]), .B1(n2), 
        .C0(ff_result[3]), .C1(n3), .Y(n621) );
  AOI222XL U338 ( .A0(ff_result[10]), .A1(n26), .B0(ff_result[16]), .B1(n2), 
        .C0(ff_result[4]), .C1(n3), .Y(n608) );
  NAND2X2 U339 ( .A(input_valid), .B(n356), .Y(n643) );
  AOI22XL U340 ( .A0(ff_result[8]), .A1(n25), .B0(ff_result[2]), .B1(n5), .Y(
        n631) );
  AOI22XL U341 ( .A0(ff_result[7]), .A1(n25), .B0(ff_result[1]), .B1(n5), .Y(
        n606) );
  AOI22XL U342 ( .A0(ff_result[20]), .A1(n629), .B0(ff_result[14]), .B1(n4), 
        .Y(n632) );
  AOI22XL U343 ( .A0(ff_result[18]), .A1(n629), .B0(ff_result[12]), .B1(n4), 
        .Y(n620) );
  AOI22XL U344 ( .A0(ff_result[19]), .A1(n629), .B0(ff_result[13]), .B1(n4), 
        .Y(n607) );
  ADDHX1 U345 ( .A(str_pro_idx[2]), .B(\r342/carry[2] ), .CO(\r342/carry[3] ), 
        .S(N448) );
  ADDHX1 U346 ( .A(str_pro_idx[1]), .B(str_pro_idx[0]), .CO(\r342/carry[2] ), 
        .S(N447) );
  ADDHX1 U347 ( .A(str_pro_idx[3]), .B(\r342/carry[3] ), .CO(\r342/carry[4] ), 
        .S(N449) );
  OAI31X1 U348 ( .A0(n13), .A1(n7), .A2(done), .B0(n602), .Y(N68) );
  NOR3BX1 U349 ( .AN(input_valid), .B(n355), .C(n7), .Y(N67) );
  OAI21X1 U350 ( .A0(input_valid), .A1(n354), .B0(n8), .Y(N66) );
  NAND4X2 U351 ( .A(current_st[0]), .B(n652), .C(n653), .D(n654), .Y(n355) );
  AOI21X1 U352 ( .A0(n643), .A1(n357), .B0(n7), .Y(N69) );
  NAND2X2 U353 ( .A(done), .B(n641), .Y(n357) );
  XNOR2X1 U354 ( .A(str_pro_idx[4]), .B(\sub_83/carry[4] ), .Y(N402) );
  OR2X1 U355 ( .A(str_pro_idx[3]), .B(\sub_83/carry[3] ), .Y(\sub_83/carry[4] ) );
  XNOR2X1 U356 ( .A(\sub_83/carry[3] ), .B(str_pro_idx[3]), .Y(N401) );
  OR2X1 U357 ( .A(n11), .B(str_pro_idx[0]), .Y(\sub_83/carry[1] ) );
  XNOR2X1 U358 ( .A(str_pro_idx[0]), .B(n11), .Y(N398) );
  XOR2X1 U359 ( .A(\r342/carry[4] ), .B(str_pro_idx[4]), .Y(N450) );
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
  wire   N33, done, N65, N66, N67, N68, N69, N398, N399, N400, N401, N402,
         N447, N448, N449, N450, \sub_83/carry[4] , \sub_83/carry[3] ,
         \sub_83/carry[2] , \sub_83/carry[1] , \r342/carry[4] ,
         \r342/carry[3] , \r342/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n19, n20, n21, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652;
  wire   [3:0] current_st;
  wire   [3:0] next_st;
  wire   [4:0] str_pro_idx;
  wire   [2:0] pat_pro_idx;

  TLATX1 \next_st_reg[0]  ( .G(N65), .D(N66), .Q(next_st[0]) );
  DFFQXL output_valid_reg ( .D(n345), .CK(clk), .Q(output_valid) );
  DFFQXL done_reg ( .D(n29), .CK(clk), .Q(done) );
  DFFQXL \pat_pro_idx_reg[0]  ( .D(n343), .CK(clk), .Q(pat_pro_idx[0]) );
  DFFTRXL \current_st_reg[3]  ( .D(next_st[3]), .RN(n7), .CK(clk), .Q(
        current_st[3]), .QN(n652) );
  DFFTRXL \current_st_reg[2]  ( .D(next_st[2]), .RN(n7), .CK(clk), .Q(
        current_st[2]), .QN(n651) );
  DFFTRXL \current_st_reg[1]  ( .D(next_st[1]), .RN(n7), .CK(clk), .Q(
        current_st[1]), .QN(n650) );
  DFFQXL \match_idx_reg[0]  ( .D(n351), .CK(clk), .Q(match_idx[0]) );
  DFFQXL \match_idx_reg[4]  ( .D(n347), .CK(clk), .Q(match_idx[4]) );
  DFFQXL \match_idx_reg[3]  ( .D(n348), .CK(clk), .Q(match_idx[3]) );
  DFFQXL \match_idx_reg[2]  ( .D(n349), .CK(clk), .Q(match_idx[2]) );
  DFFQXL \match_idx_reg[1]  ( .D(n350), .CK(clk), .Q(match_idx[1]) );
  TLATX1 \next_st_reg[2]  ( .G(N65), .D(N68), .Q(next_st[2]) );
  TLATX1 \next_st_reg[3]  ( .G(N65), .D(N69), .Q(next_st[3]) );
  TLATX1 \next_st_reg[1]  ( .G(N65), .D(N67), .Q(next_st[1]) );
  DFFQXL \current_st_reg[0]  ( .D(N33), .CK(clk), .Q(current_st[0]) );
  DFFQXL \str_pro_idx_reg[0]  ( .D(n32), .CK(clk), .Q(str_pro_idx[0]) );
  DFFQXL \pat_pro_idx_reg[1]  ( .D(n30), .CK(clk), .Q(pat_pro_idx[1]) );
  DFFQXL \str_pro_idx_reg[1]  ( .D(n31), .CK(clk), .Q(str_pro_idx[1]) );
  DFFQXL \str_pro_idx_reg[4]  ( .D(n35), .CK(clk), .Q(str_pro_idx[4]) );
  DFFQXL \str_pro_idx_reg[3]  ( .D(n34), .CK(clk), .Q(str_pro_idx[3]) );
  DFFQXL \str_pro_idx_reg[2]  ( .D(n33), .CK(clk), .Q(str_pro_idx[2]) );
  DFFQXL match_reg ( .D(n346), .CK(clk), .Q(match) );
  DFFQXL \pat_pro_idx_reg[2]  ( .D(n344), .CK(clk), .Q(pat_pro_idx[2]) );
  INVXL U3 ( .A(pat_last_idx[0]), .Y(n10) );
  XOR2XL U4 ( .A(n27), .B(pat_last_idx[0]), .Y(n357) );
  NOR4X2 U5 ( .A(n651), .B(current_st[0]), .C(current_st[1]), .D(current_st[3]), .Y(n639) );
  NAND2X2 U6 ( .A(n13), .B(n637), .Y(n635) );
  NOR2BX1 U7 ( .AN(n616), .B(n646), .Y(n614) );
  AO21X2 U8 ( .A0(n13), .A1(n633), .B0(n616), .Y(n637) );
  INVX2 U9 ( .A(n600), .Y(n14) );
  INVX2 U10 ( .A(n646), .Y(n13) );
  INVX2 U11 ( .A(n648), .Y(n15) );
  NOR2BX1 U12 ( .AN(n2), .B(n27), .Y(n627) );
  INVX2 U13 ( .A(n623), .Y(n24) );
  NAND3XL U14 ( .A(n642), .B(n12), .C(n352), .Y(N65) );
  OAI31X1 U15 ( .A0(n646), .A1(n603), .A2(n602), .B0(n601), .Y(n616) );
  AOI22XL U16 ( .A0(n6), .A1(n648), .B0(n15), .B1(n647), .Y(n602) );
  NOR2X2 U17 ( .A(reset), .B(n14), .Y(n601) );
  NAND2X2 U18 ( .A(n642), .B(n639), .Y(n646) );
  NOR2X2 U19 ( .A(n638), .B(reset), .Y(n642) );
  OAI22X1 U20 ( .A0(n28), .A1(n637), .B0(n636), .B1(n635), .Y(n344) );
  AOI22XL U21 ( .A0(n15), .A1(n634), .B0(n633), .B1(n632), .Y(n636) );
  OAI211XL U22 ( .A0(n1), .A1(n28), .B0(n623), .C0(n622), .Y(n634) );
  OAI211XL U23 ( .A0(n1), .A1(n631), .B0(n630), .C0(n629), .Y(n632) );
  NOR3X1 U24 ( .A(n648), .B(n647), .C(n646), .Y(n649) );
  NAND2X2 U25 ( .A(n638), .B(n7), .Y(n600) );
  NAND3XL U26 ( .A(n12), .B(n641), .C(n642), .Y(n643) );
  INVX2 U27 ( .A(n645), .Y(n11) );
  OAI211XL U28 ( .A0(n644), .A1(n646), .B0(n643), .C0(n7), .Y(n645) );
  NAND2X2 U29 ( .A(n592), .B(n591), .Y(n648) );
  NOR4X2 U30 ( .A(n470), .B(n469), .C(n468), .D(n467), .Y(n592) );
  NOR4X2 U31 ( .A(n590), .B(n589), .C(n588), .D(n587), .Y(n591) );
  XNOR2X1 U32 ( .A(n388), .B(n387), .Y(n470) );
  AOI221XL U33 ( .A0(n581), .A1(n383), .B0(n579), .B1(n382), .C0(n381), .Y(
        n388) );
  NAND4X2 U34 ( .A(n366), .B(n365), .C(n364), .D(n363), .Y(n383) );
  NAND4X2 U35 ( .A(n370), .B(n369), .C(n368), .D(n367), .Y(n382) );
  AO22X2 U36 ( .A0(n576), .A1(n380), .B0(n574), .B1(n379), .Y(n381) );
  NOR2BX1 U37 ( .AN(n362), .B(n19), .Y(n563) );
  NOR2BX1 U38 ( .AN(n361), .B(n19), .Y(n564) );
  NOR2BX1 U39 ( .AN(n360), .B(n19), .Y(n561) );
  NOR2BX1 U40 ( .AN(n359), .B(n19), .Y(n562) );
  NOR2X2 U41 ( .A(n21), .B(n20), .Y(n360) );
  NOR2X2 U42 ( .A(n16), .B(n17), .Y(n579) );
  AOI2BB1X2 U43 ( .A0N(n647), .A1N(n648), .B0(n603), .Y(n644) );
  INVX2 U44 ( .A(n639), .Y(n12) );
  NOR2X2 U45 ( .A(n15), .B(n603), .Y(n633) );
  NAND2X2 U46 ( .A(n3), .B(n1), .Y(n623) );
  INVX2 U47 ( .A(n622), .Y(n25) );
  INVX2 U48 ( .A(n1), .Y(n27) );
  BUFX2 U49 ( .A(n625), .Y(n2) );
  NOR2X2 U50 ( .A(n28), .B(n26), .Y(n625) );
  BUFX2 U51 ( .A(n626), .Y(n4) );
  NOR2X2 U52 ( .A(n622), .B(n27), .Y(n626) );
  NOR2BX1 U53 ( .AN(n353), .B(n354), .Y(n352) );
  OAI22X1 U54 ( .A0(n27), .A1(n637), .B0(n621), .B1(n635), .Y(n343) );
  AOI22XL U55 ( .A0(n633), .A1(n620), .B0(n15), .B1(n27), .Y(n621) );
  OAI211XL U56 ( .A0(n1), .A1(n619), .B0(n618), .C0(n617), .Y(n620) );
  AOI22XL U57 ( .A0(ff_result[6]), .A1(n24), .B0(ff_result[0]), .B1(n5), .Y(
        n617) );
  OAI22X1 U58 ( .A0(n26), .A1(n637), .B0(n609), .B1(n635), .Y(n30) );
  AOI22XL U59 ( .A0(n15), .A1(n608), .B0(n633), .B1(n607), .Y(n609) );
  XOR2X1 U60 ( .A(pat_pro_idx[1]), .B(n1), .Y(n608) );
  OAI211XL U61 ( .A0(n1), .A1(n606), .B0(n605), .C0(n604), .Y(n607) );
  OAI21X1 U62 ( .A0(n21), .A1(n616), .B0(n615), .Y(n35) );
  AOI22XL U63 ( .A0(start_idx[4]), .A1(n14), .B0(N450), .B1(n614), .Y(n615) );
  OAI21X1 U64 ( .A0(n20), .A1(n616), .B0(n613), .Y(n34) );
  AOI22XL U65 ( .A0(start_idx[3]), .A1(n14), .B0(N449), .B1(n614), .Y(n613) );
  OAI21X1 U66 ( .A0(n19), .A1(n616), .B0(n612), .Y(n33) );
  AOI22XL U67 ( .A0(start_idx[2]), .A1(n14), .B0(N448), .B1(n614), .Y(n612) );
  OAI21X1 U68 ( .A0(n17), .A1(n616), .B0(n611), .Y(n32) );
  AOI22XL U69 ( .A0(start_idx[0]), .A1(n14), .B0(n17), .B1(n614), .Y(n611) );
  OAI21X1 U70 ( .A0(n16), .A1(n616), .B0(n610), .Y(n31) );
  AOI22XL U71 ( .A0(start_idx[1]), .A1(n14), .B0(N447), .B1(n614), .Y(n610) );
  INVX2 U72 ( .A(reset), .Y(n7) );
  OAI2BB2X2 U73 ( .B0(n644), .B1(n646), .A0N(n643), .A1N(done), .Y(n29) );
  OAI2B1X1 U74 ( .A1N(n642), .A0(n641), .B0(n640), .Y(n345) );
  OAI211XL U75 ( .A0(n639), .A1(n638), .B0(n7), .C0(output_valid), .Y(n640) );
  AO22X2 U76 ( .A0(match_idx[0]), .A1(n11), .B0(N398), .B1(n649), .Y(n351) );
  AO22X2 U77 ( .A0(match_idx[1]), .A1(n11), .B0(N399), .B1(n649), .Y(n350) );
  AO22X2 U78 ( .A0(match_idx[2]), .A1(n11), .B0(N400), .B1(n649), .Y(n349) );
  AO22X2 U79 ( .A0(match_idx[3]), .A1(n11), .B0(N401), .B1(n649), .Y(n348) );
  AO22X2 U80 ( .A0(match_idx[4]), .A1(n11), .B0(N402), .B1(n649), .Y(n347) );
  AO21X2 U81 ( .A0(match), .A1(n11), .B0(n649), .Y(n346) );
  OR2X2 U82 ( .A(next_st[0]), .B(reset), .Y(N33) );
  XNOR2X1 U83 ( .A(n496), .B(n495), .Y(n590) );
  OAI211XL U84 ( .A0(n1), .A1(n494), .B0(n493), .C0(n492), .Y(n495) );
  AOI221XL U85 ( .A0(n581), .A1(n491), .B0(n579), .B1(n490), .C0(n489), .Y(
        n496) );
  AOI222XL U86 ( .A0(pat_input[36]), .A1(n25), .B0(pat_input[52]), .B1(n2), 
        .C0(pat_input[20]), .C1(n3), .Y(n494) );
  XNOR2X1 U87 ( .A(n586), .B(n585), .Y(n587) );
  OAI211XL U88 ( .A0(n1), .A1(n584), .B0(n583), .C0(n582), .Y(n585) );
  AOI221XL U89 ( .A0(n581), .A1(n580), .B0(n579), .B1(n578), .C0(n577), .Y(
        n586) );
  AOI222XL U90 ( .A0(pat_input[39]), .A1(n25), .B0(pat_input[55]), .B1(n2), 
        .C0(pat_input[23]), .C1(n3), .Y(n584) );
  XNOR2X1 U91 ( .A(n466), .B(n465), .Y(n467) );
  OAI211XL U92 ( .A0(n1), .A1(n464), .B0(n463), .C0(n462), .Y(n465) );
  AOI221XL U93 ( .A0(n581), .A1(n461), .B0(n579), .B1(n460), .C0(n459), .Y(
        n466) );
  AOI222XL U94 ( .A0(pat_input[35]), .A1(n25), .B0(pat_input[51]), .B1(n2), 
        .C0(pat_input[19]), .C1(n3), .Y(n464) );
  AOI22XL U95 ( .A0(str_input[167]), .A1(n562), .B0(str_input[231]), .B1(n561), 
        .Y(n572) );
  AOI22XL U96 ( .A0(str_input[166]), .A1(n562), .B0(str_input[230]), .B1(n561), 
        .Y(n538) );
  AOI22XL U97 ( .A0(str_input[165]), .A1(n562), .B0(str_input[229]), .B1(n561), 
        .Y(n512) );
  AOI22XL U98 ( .A0(str_input[164]), .A1(n562), .B0(str_input[228]), .B1(n561), 
        .Y(n486) );
  AOI22XL U99 ( .A0(str_input[163]), .A1(n562), .B0(str_input[227]), .B1(n561), 
        .Y(n456) );
  AOI22XL U100 ( .A0(str_input[162]), .A1(n562), .B0(str_input[226]), .B1(n561), .Y(n430) );
  AOI22XL U101 ( .A0(str_input[161]), .A1(n562), .B0(str_input[225]), .B1(n561), .Y(n404) );
  AOI22XL U102 ( .A0(str_input[0]), .A1(n568), .B0(str_input[64]), .B1(n567), 
        .Y(n375) );
  AOI22XL U103 ( .A0(str_input[8]), .A1(n568), .B0(str_input[72]), .B1(n567), 
        .Y(n371) );
  AOI22XL U104 ( .A0(str_input[25]), .A1(n568), .B0(str_input[89]), .B1(n567), 
        .Y(n393) );
  AOI22XL U105 ( .A0(str_input[17]), .A1(n568), .B0(str_input[81]), .B1(n567), 
        .Y(n389) );
  AOI22XL U106 ( .A0(str_input[7]), .A1(n568), .B0(str_input[71]), .B1(n567), 
        .Y(n569) );
  AOI22XL U107 ( .A0(str_input[15]), .A1(n568), .B0(str_input[79]), .B1(n567), 
        .Y(n557) );
  AOI22XL U108 ( .A0(str_input[6]), .A1(n568), .B0(str_input[70]), .B1(n567), 
        .Y(n535) );
  AOI22XL U109 ( .A0(str_input[14]), .A1(n568), .B0(str_input[78]), .B1(n567), 
        .Y(n531) );
  AOI22XL U110 ( .A0(str_input[5]), .A1(n568), .B0(str_input[69]), .B1(n567), 
        .Y(n509) );
  AOI22XL U111 ( .A0(str_input[13]), .A1(n568), .B0(str_input[77]), .B1(n567), 
        .Y(n505) );
  AOI22XL U112 ( .A0(str_input[4]), .A1(n568), .B0(str_input[68]), .B1(n567), 
        .Y(n483) );
  AOI22XL U113 ( .A0(str_input[12]), .A1(n568), .B0(str_input[76]), .B1(n567), 
        .Y(n479) );
  AOI22XL U114 ( .A0(str_input[3]), .A1(n568), .B0(str_input[67]), .B1(n567), 
        .Y(n453) );
  AOI22XL U115 ( .A0(str_input[11]), .A1(n568), .B0(str_input[75]), .B1(n567), 
        .Y(n449) );
  AOI22XL U116 ( .A0(str_input[2]), .A1(n568), .B0(str_input[66]), .B1(n567), 
        .Y(n427) );
  AOI22XL U117 ( .A0(str_input[10]), .A1(n568), .B0(str_input[74]), .B1(n567), 
        .Y(n423) );
  AOI22XL U118 ( .A0(str_input[1]), .A1(n568), .B0(str_input[65]), .B1(n567), 
        .Y(n401) );
  AOI22XL U119 ( .A0(str_input[9]), .A1(n568), .B0(str_input[73]), .B1(n567), 
        .Y(n397) );
  AOI22XL U120 ( .A0(str_input[31]), .A1(n568), .B0(str_input[95]), .B1(n567), 
        .Y(n553) );
  AOI22XL U121 ( .A0(str_input[23]), .A1(n568), .B0(str_input[87]), .B1(n567), 
        .Y(n549) );
  AOI22XL U122 ( .A0(str_input[30]), .A1(n568), .B0(str_input[94]), .B1(n567), 
        .Y(n527) );
  AOI22XL U123 ( .A0(str_input[22]), .A1(n568), .B0(str_input[86]), .B1(n567), 
        .Y(n523) );
  AOI22XL U124 ( .A0(str_input[29]), .A1(n568), .B0(str_input[93]), .B1(n567), 
        .Y(n501) );
  AOI22XL U125 ( .A0(str_input[21]), .A1(n568), .B0(str_input[85]), .B1(n567), 
        .Y(n497) );
  AOI22XL U126 ( .A0(str_input[28]), .A1(n568), .B0(str_input[92]), .B1(n567), 
        .Y(n475) );
  AOI22XL U127 ( .A0(str_input[27]), .A1(n568), .B0(str_input[91]), .B1(n567), 
        .Y(n445) );
  AOI22XL U128 ( .A0(str_input[19]), .A1(n568), .B0(str_input[83]), .B1(n567), 
        .Y(n441) );
  AOI22XL U129 ( .A0(str_input[26]), .A1(n568), .B0(str_input[90]), .B1(n567), 
        .Y(n419) );
  AOI22XL U130 ( .A0(str_input[18]), .A1(n568), .B0(str_input[82]), .B1(n567), 
        .Y(n415) );
  AOI22XL U131 ( .A0(str_input[39]), .A1(n564), .B0(str_input[103]), .B1(n563), 
        .Y(n571) );
  AOI22XL U132 ( .A0(str_input[47]), .A1(n564), .B0(str_input[111]), .B1(n563), 
        .Y(n559) );
  AOI22XL U133 ( .A0(str_input[38]), .A1(n564), .B0(str_input[102]), .B1(n563), 
        .Y(n537) );
  AOI22XL U134 ( .A0(str_input[46]), .A1(n564), .B0(str_input[110]), .B1(n563), 
        .Y(n533) );
  AOI22XL U135 ( .A0(str_input[37]), .A1(n564), .B0(str_input[101]), .B1(n563), 
        .Y(n511) );
  AOI22XL U136 ( .A0(str_input[45]), .A1(n564), .B0(str_input[109]), .B1(n563), 
        .Y(n507) );
  AOI22XL U137 ( .A0(str_input[36]), .A1(n564), .B0(str_input[100]), .B1(n563), 
        .Y(n485) );
  AOI22XL U138 ( .A0(str_input[44]), .A1(n564), .B0(str_input[108]), .B1(n563), 
        .Y(n481) );
  AOI22XL U139 ( .A0(str_input[35]), .A1(n564), .B0(str_input[99]), .B1(n563), 
        .Y(n455) );
  AOI22XL U140 ( .A0(str_input[43]), .A1(n564), .B0(str_input[107]), .B1(n563), 
        .Y(n451) );
  AOI22XL U141 ( .A0(str_input[34]), .A1(n564), .B0(str_input[98]), .B1(n563), 
        .Y(n429) );
  AOI22XL U142 ( .A0(str_input[42]), .A1(n564), .B0(str_input[106]), .B1(n563), 
        .Y(n425) );
  AOI22XL U143 ( .A0(str_input[33]), .A1(n564), .B0(str_input[97]), .B1(n563), 
        .Y(n403) );
  AOI22XL U144 ( .A0(str_input[41]), .A1(n564), .B0(str_input[105]), .B1(n563), 
        .Y(n399) );
  AOI22XL U145 ( .A0(str_input[135]), .A1(n566), .B0(str_input[199]), .B1(n565), .Y(n570) );
  AOI22XL U146 ( .A0(str_input[143]), .A1(n566), .B0(str_input[207]), .B1(n565), .Y(n558) );
  AOI22XL U147 ( .A0(str_input[134]), .A1(n566), .B0(str_input[198]), .B1(n565), .Y(n536) );
  AOI22XL U148 ( .A0(str_input[142]), .A1(n566), .B0(str_input[206]), .B1(n565), .Y(n532) );
  AOI22XL U149 ( .A0(str_input[133]), .A1(n566), .B0(str_input[197]), .B1(n565), .Y(n510) );
  AOI22XL U150 ( .A0(str_input[141]), .A1(n566), .B0(str_input[205]), .B1(n565), .Y(n506) );
  AOI22XL U151 ( .A0(str_input[132]), .A1(n566), .B0(str_input[196]), .B1(n565), .Y(n484) );
  AOI22XL U152 ( .A0(str_input[140]), .A1(n566), .B0(str_input[204]), .B1(n565), .Y(n480) );
  AOI22XL U153 ( .A0(str_input[131]), .A1(n566), .B0(str_input[195]), .B1(n565), .Y(n454) );
  AOI22XL U154 ( .A0(str_input[139]), .A1(n566), .B0(str_input[203]), .B1(n565), .Y(n450) );
  AOI22XL U155 ( .A0(str_input[130]), .A1(n566), .B0(str_input[194]), .B1(n565), .Y(n428) );
  AOI22XL U156 ( .A0(str_input[138]), .A1(n566), .B0(str_input[202]), .B1(n565), .Y(n424) );
  AOI22XL U157 ( .A0(str_input[129]), .A1(n566), .B0(str_input[193]), .B1(n565), .Y(n402) );
  AOI22XL U158 ( .A0(str_input[137]), .A1(n566), .B0(str_input[201]), .B1(n565), .Y(n398) );
  XNOR2X1 U159 ( .A(n548), .B(n547), .Y(n588) );
  OAI211XL U160 ( .A0(n1), .A1(n546), .B0(n545), .C0(n544), .Y(n547) );
  AOI221XL U161 ( .A0(n581), .A1(n543), .B0(n579), .B1(n542), .C0(n541), .Y(
        n548) );
  AOI222XL U162 ( .A0(pat_input[38]), .A1(n25), .B0(pat_input[54]), .B1(n2), 
        .C0(pat_input[22]), .C1(n3), .Y(n546) );
  XNOR2X1 U163 ( .A(n522), .B(n521), .Y(n589) );
  OAI211XL U164 ( .A0(n1), .A1(n520), .B0(n519), .C0(n518), .Y(n521) );
  AOI221XL U165 ( .A0(n581), .A1(n517), .B0(n579), .B1(n516), .C0(n515), .Y(
        n522) );
  AOI222XL U166 ( .A0(pat_input[37]), .A1(n25), .B0(pat_input[53]), .B1(n2), 
        .C0(pat_input[21]), .C1(n3), .Y(n520) );
  XNOR2X1 U167 ( .A(n440), .B(n439), .Y(n468) );
  OAI211XL U168 ( .A0(n1), .A1(n438), .B0(n437), .C0(n436), .Y(n439) );
  AOI221XL U169 ( .A0(n581), .A1(n435), .B0(n579), .B1(n434), .C0(n433), .Y(
        n440) );
  AOI222XL U170 ( .A0(pat_input[34]), .A1(n25), .B0(pat_input[50]), .B1(n2), 
        .C0(pat_input[18]), .C1(n3), .Y(n438) );
  XNOR2X1 U171 ( .A(n414), .B(n413), .Y(n469) );
  OAI211XL U172 ( .A0(n1), .A1(n412), .B0(n411), .C0(n410), .Y(n413) );
  AOI221XL U173 ( .A0(n581), .A1(n409), .B0(n579), .B1(n408), .C0(n407), .Y(
        n414) );
  AOI222XL U174 ( .A0(pat_input[33]), .A1(n25), .B0(pat_input[49]), .B1(n2), 
        .C0(pat_input[17]), .C1(n3), .Y(n412) );
  NAND4X2 U175 ( .A(n396), .B(n395), .C(n394), .D(n393), .Y(n408) );
  AOI22XL U176 ( .A0(str_input[185]), .A1(n562), .B0(str_input[249]), .B1(n561), .Y(n396) );
  AOI22XL U177 ( .A0(str_input[57]), .A1(n564), .B0(str_input[121]), .B1(n563), 
        .Y(n395) );
  AOI22XL U178 ( .A0(str_input[153]), .A1(n566), .B0(str_input[217]), .B1(n565), .Y(n394) );
  NAND4X2 U179 ( .A(n556), .B(n555), .C(n554), .D(n553), .Y(n578) );
  AOI22XL U180 ( .A0(str_input[191]), .A1(n562), .B0(str_input[255]), .B1(n561), .Y(n556) );
  AOI22XL U181 ( .A0(str_input[63]), .A1(n564), .B0(str_input[127]), .B1(n563), 
        .Y(n555) );
  AOI22XL U182 ( .A0(str_input[159]), .A1(n566), .B0(str_input[223]), .B1(n565), .Y(n554) );
  NAND4X2 U183 ( .A(n530), .B(n529), .C(n528), .D(n527), .Y(n542) );
  AOI22XL U184 ( .A0(str_input[190]), .A1(n562), .B0(str_input[254]), .B1(n561), .Y(n530) );
  AOI22XL U185 ( .A0(str_input[62]), .A1(n564), .B0(str_input[126]), .B1(n563), 
        .Y(n529) );
  AOI22XL U186 ( .A0(str_input[158]), .A1(n566), .B0(str_input[222]), .B1(n565), .Y(n528) );
  NAND4X2 U187 ( .A(n504), .B(n503), .C(n502), .D(n501), .Y(n516) );
  AOI22XL U188 ( .A0(str_input[189]), .A1(n562), .B0(str_input[253]), .B1(n561), .Y(n504) );
  AOI22XL U189 ( .A0(str_input[61]), .A1(n564), .B0(str_input[125]), .B1(n563), 
        .Y(n503) );
  AOI22XL U190 ( .A0(str_input[157]), .A1(n566), .B0(str_input[221]), .B1(n565), .Y(n502) );
  NAND4X2 U191 ( .A(n478), .B(n477), .C(n476), .D(n475), .Y(n490) );
  AOI22XL U192 ( .A0(str_input[188]), .A1(n562), .B0(str_input[252]), .B1(n561), .Y(n478) );
  AOI22XL U193 ( .A0(str_input[60]), .A1(n564), .B0(str_input[124]), .B1(n563), 
        .Y(n477) );
  AOI22XL U194 ( .A0(str_input[156]), .A1(n566), .B0(str_input[220]), .B1(n565), .Y(n476) );
  NAND4X2 U195 ( .A(n448), .B(n447), .C(n446), .D(n445), .Y(n460) );
  AOI22XL U196 ( .A0(str_input[187]), .A1(n562), .B0(str_input[251]), .B1(n561), .Y(n448) );
  AOI22XL U197 ( .A0(str_input[59]), .A1(n564), .B0(str_input[123]), .B1(n563), 
        .Y(n447) );
  AOI22XL U198 ( .A0(str_input[155]), .A1(n566), .B0(str_input[219]), .B1(n565), .Y(n446) );
  NAND4X2 U199 ( .A(n422), .B(n421), .C(n420), .D(n419), .Y(n434) );
  AOI22XL U200 ( .A0(str_input[186]), .A1(n562), .B0(str_input[250]), .B1(n561), .Y(n422) );
  AOI22XL U201 ( .A0(str_input[58]), .A1(n564), .B0(str_input[122]), .B1(n563), 
        .Y(n421) );
  AOI22XL U202 ( .A0(str_input[154]), .A1(n566), .B0(str_input[218]), .B1(n565), .Y(n420) );
  NAND4X2 U203 ( .A(n392), .B(n391), .C(n390), .D(n389), .Y(n409) );
  AOI22XL U204 ( .A0(str_input[177]), .A1(n562), .B0(str_input[241]), .B1(n561), .Y(n392) );
  AOI22XL U205 ( .A0(str_input[49]), .A1(n564), .B0(str_input[113]), .B1(n563), 
        .Y(n391) );
  AOI22XL U206 ( .A0(str_input[145]), .A1(n566), .B0(str_input[209]), .B1(n565), .Y(n390) );
  NAND4X2 U207 ( .A(n552), .B(n551), .C(n550), .D(n549), .Y(n580) );
  AOI22XL U208 ( .A0(str_input[183]), .A1(n562), .B0(str_input[247]), .B1(n561), .Y(n552) );
  AOI22XL U209 ( .A0(str_input[55]), .A1(n564), .B0(str_input[119]), .B1(n563), 
        .Y(n551) );
  AOI22XL U210 ( .A0(str_input[151]), .A1(n566), .B0(str_input[215]), .B1(n565), .Y(n550) );
  NAND4X2 U211 ( .A(n526), .B(n525), .C(n524), .D(n523), .Y(n543) );
  AOI22XL U212 ( .A0(str_input[182]), .A1(n562), .B0(str_input[246]), .B1(n561), .Y(n526) );
  AOI22XL U213 ( .A0(str_input[54]), .A1(n564), .B0(str_input[118]), .B1(n563), 
        .Y(n525) );
  AOI22XL U214 ( .A0(str_input[150]), .A1(n566), .B0(str_input[214]), .B1(n565), .Y(n524) );
  NAND4X2 U215 ( .A(n500), .B(n499), .C(n498), .D(n497), .Y(n517) );
  AOI22XL U216 ( .A0(str_input[181]), .A1(n562), .B0(str_input[245]), .B1(n561), .Y(n500) );
  AOI22XL U217 ( .A0(str_input[53]), .A1(n564), .B0(str_input[117]), .B1(n563), 
        .Y(n499) );
  AOI22XL U218 ( .A0(str_input[149]), .A1(n566), .B0(str_input[213]), .B1(n565), .Y(n498) );
  NAND4X2 U219 ( .A(n444), .B(n443), .C(n442), .D(n441), .Y(n461) );
  AOI22XL U220 ( .A0(str_input[179]), .A1(n562), .B0(str_input[243]), .B1(n561), .Y(n444) );
  AOI22XL U221 ( .A0(str_input[51]), .A1(n564), .B0(str_input[115]), .B1(n563), 
        .Y(n443) );
  AOI22XL U222 ( .A0(str_input[147]), .A1(n566), .B0(str_input[211]), .B1(n565), .Y(n442) );
  NAND4X2 U223 ( .A(n418), .B(n417), .C(n416), .D(n415), .Y(n435) );
  AOI22XL U224 ( .A0(str_input[178]), .A1(n562), .B0(str_input[242]), .B1(n561), .Y(n418) );
  AOI22XL U225 ( .A0(str_input[50]), .A1(n564), .B0(str_input[114]), .B1(n563), 
        .Y(n417) );
  AOI22XL U226 ( .A0(str_input[146]), .A1(n566), .B0(str_input[210]), .B1(n565), .Y(n416) );
  NAND4X2 U227 ( .A(n374), .B(n373), .C(n372), .D(n371), .Y(n380) );
  AOI22XL U228 ( .A0(str_input[168]), .A1(n562), .B0(str_input[232]), .B1(n561), .Y(n374) );
  AOI22XL U229 ( .A0(str_input[40]), .A1(n564), .B0(str_input[104]), .B1(n563), 
        .Y(n373) );
  AOI22XL U230 ( .A0(str_input[136]), .A1(n566), .B0(str_input[200]), .B1(n565), .Y(n372) );
  NAND4X2 U231 ( .A(n378), .B(n377), .C(n376), .D(n375), .Y(n379) );
  AOI22XL U232 ( .A0(str_input[160]), .A1(n562), .B0(str_input[224]), .B1(n561), .Y(n378) );
  AOI22XL U233 ( .A0(str_input[32]), .A1(n564), .B0(str_input[96]), .B1(n563), 
        .Y(n377) );
  AOI22XL U234 ( .A0(str_input[128]), .A1(n566), .B0(str_input[192]), .B1(n565), .Y(n376) );
  INVX2 U235 ( .A(str_pro_idx[2]), .Y(n19) );
  NOR2BX1 U236 ( .AN(n361), .B(str_pro_idx[2]), .Y(n568) );
  NOR2BX1 U237 ( .AN(n362), .B(str_pro_idx[2]), .Y(n567) );
  NOR2BX1 U238 ( .AN(n360), .B(str_pro_idx[2]), .Y(n565) );
  NOR2BX1 U239 ( .AN(n359), .B(str_pro_idx[2]), .Y(n566) );
  NOR2X2 U240 ( .A(str_pro_idx[3]), .B(str_pro_idx[4]), .Y(n361) );
  NOR2X2 U241 ( .A(n21), .B(str_pro_idx[3]), .Y(n359) );
  NOR2X2 U242 ( .A(n20), .B(str_pro_idx[4]), .Y(n362) );
  INVX2 U243 ( .A(str_pro_idx[3]), .Y(n20) );
  AO22X2 U244 ( .A0(n576), .A1(n575), .B0(n574), .B1(n573), .Y(n577) );
  NAND4X2 U245 ( .A(n560), .B(n559), .C(n558), .D(n557), .Y(n575) );
  NAND4X2 U246 ( .A(n572), .B(n571), .C(n570), .D(n569), .Y(n573) );
  AOI22XL U247 ( .A0(str_input[175]), .A1(n562), .B0(str_input[239]), .B1(n561), .Y(n560) );
  AO22X2 U248 ( .A0(n576), .A1(n540), .B0(n574), .B1(n539), .Y(n541) );
  NAND4X2 U249 ( .A(n534), .B(n533), .C(n532), .D(n531), .Y(n540) );
  NAND4X2 U250 ( .A(n538), .B(n537), .C(n536), .D(n535), .Y(n539) );
  AOI22XL U251 ( .A0(str_input[174]), .A1(n562), .B0(str_input[238]), .B1(n561), .Y(n534) );
  AO22X2 U252 ( .A0(n576), .A1(n514), .B0(n574), .B1(n513), .Y(n515) );
  NAND4X2 U253 ( .A(n508), .B(n507), .C(n506), .D(n505), .Y(n514) );
  NAND4X2 U254 ( .A(n512), .B(n511), .C(n510), .D(n509), .Y(n513) );
  AOI22XL U255 ( .A0(str_input[173]), .A1(n562), .B0(str_input[237]), .B1(n561), .Y(n508) );
  AO22X2 U256 ( .A0(n576), .A1(n488), .B0(n574), .B1(n487), .Y(n489) );
  NAND4X2 U257 ( .A(n482), .B(n481), .C(n480), .D(n479), .Y(n488) );
  NAND4X2 U258 ( .A(n486), .B(n485), .C(n484), .D(n483), .Y(n487) );
  AOI22XL U259 ( .A0(str_input[172]), .A1(n562), .B0(str_input[236]), .B1(n561), .Y(n482) );
  AO22X2 U260 ( .A0(n576), .A1(n458), .B0(n574), .B1(n457), .Y(n459) );
  NAND4X2 U261 ( .A(n452), .B(n451), .C(n450), .D(n449), .Y(n458) );
  NAND4X2 U262 ( .A(n456), .B(n455), .C(n454), .D(n453), .Y(n457) );
  AOI22XL U263 ( .A0(str_input[171]), .A1(n562), .B0(str_input[235]), .B1(n561), .Y(n452) );
  AO22X2 U264 ( .A0(n576), .A1(n432), .B0(n574), .B1(n431), .Y(n433) );
  NAND4X2 U265 ( .A(n426), .B(n425), .C(n424), .D(n423), .Y(n432) );
  NAND4X2 U266 ( .A(n430), .B(n429), .C(n428), .D(n427), .Y(n431) );
  AOI22XL U267 ( .A0(str_input[170]), .A1(n562), .B0(str_input[234]), .B1(n561), .Y(n426) );
  AO22X2 U268 ( .A0(n576), .A1(n406), .B0(n574), .B1(n405), .Y(n407) );
  NAND4X2 U269 ( .A(n400), .B(n399), .C(n398), .D(n397), .Y(n406) );
  NAND4X2 U270 ( .A(n404), .B(n403), .C(n402), .D(n401), .Y(n405) );
  AOI22XL U271 ( .A0(str_input[169]), .A1(n562), .B0(str_input[233]), .B1(n561), .Y(n400) );
  INVX2 U272 ( .A(str_pro_idx[4]), .Y(n21) );
  NOR4X2 U273 ( .A(n650), .B(current_st[0]), .C(current_st[2]), .D(
        current_st[3]), .Y(n638) );
  AOI222XL U274 ( .A0(pat_input[15]), .A1(n5), .B0(pat_input[31]), .B1(n24), 
        .C0(pat_input[7]), .C1(n6), .Y(n582) );
  AOI222XL U275 ( .A0(pat_input[14]), .A1(n5), .B0(pat_input[30]), .B1(n24), 
        .C0(pat_input[6]), .C1(n6), .Y(n544) );
  AOI222XL U276 ( .A0(pat_input[13]), .A1(n5), .B0(pat_input[29]), .B1(n24), 
        .C0(pat_input[5]), .C1(n6), .Y(n518) );
  AOI222XL U277 ( .A0(pat_input[12]), .A1(n5), .B0(pat_input[28]), .B1(n24), 
        .C0(pat_input[4]), .C1(n6), .Y(n492) );
  AOI222XL U278 ( .A0(pat_input[11]), .A1(n5), .B0(pat_input[27]), .B1(n24), 
        .C0(pat_input[3]), .C1(n6), .Y(n462) );
  AOI222XL U279 ( .A0(pat_input[10]), .A1(n5), .B0(pat_input[26]), .B1(n24), 
        .C0(pat_input[2]), .C1(n6), .Y(n436) );
  AOI222XL U280 ( .A0(pat_input[9]), .A1(n5), .B0(pat_input[25]), .B1(n24), 
        .C0(pat_input[1]), .C1(n6), .Y(n410) );
  NOR2X2 U281 ( .A(n16), .B(str_pro_idx[0]), .Y(n581) );
  AOI22XL U282 ( .A0(str_input[184]), .A1(n562), .B0(str_input[248]), .B1(n561), .Y(n370) );
  AOI22XL U283 ( .A0(str_input[176]), .A1(n562), .B0(str_input[240]), .B1(n561), .Y(n366) );
  AOI22XL U284 ( .A0(str_input[24]), .A1(n568), .B0(str_input[88]), .B1(n567), 
        .Y(n367) );
  AOI22XL U285 ( .A0(str_input[16]), .A1(n568), .B0(str_input[80]), .B1(n567), 
        .Y(n363) );
  AOI22XL U286 ( .A0(str_input[20]), .A1(n568), .B0(str_input[84]), .B1(n567), 
        .Y(n471) );
  AOI22XL U287 ( .A0(str_input[56]), .A1(n564), .B0(str_input[120]), .B1(n563), 
        .Y(n369) );
  AOI22XL U288 ( .A0(str_input[48]), .A1(n564), .B0(str_input[112]), .B1(n563), 
        .Y(n365) );
  AOI22XL U289 ( .A0(str_input[152]), .A1(n566), .B0(str_input[216]), .B1(n565), .Y(n368) );
  AOI22XL U290 ( .A0(str_input[144]), .A1(n566), .B0(str_input[208]), .B1(n565), .Y(n364) );
  OAI211XL U291 ( .A0(n1), .A1(n386), .B0(n385), .C0(n384), .Y(n387) );
  AOI222XL U292 ( .A0(pat_input[32]), .A1(n25), .B0(pat_input[48]), .B1(n2), 
        .C0(pat_input[16]), .C1(n3), .Y(n386) );
  AOI22XL U293 ( .A0(pat_input[56]), .A1(n627), .B0(pat_input[40]), .B1(n4), 
        .Y(n385) );
  AOI222XL U294 ( .A0(pat_input[8]), .A1(n5), .B0(pat_input[24]), .B1(n24), 
        .C0(pat_input[0]), .C1(n6), .Y(n384) );
  NOR2X2 U295 ( .A(n17), .B(str_pro_idx[1]), .Y(n576) );
  NOR2X2 U296 ( .A(str_pro_idx[0]), .B(str_pro_idx[1]), .Y(n574) );
  AOI22XL U297 ( .A0(pat_input[63]), .A1(n627), .B0(pat_input[47]), .B1(n4), 
        .Y(n583) );
  AOI22XL U298 ( .A0(pat_input[62]), .A1(n627), .B0(pat_input[46]), .B1(n4), 
        .Y(n545) );
  AOI22XL U299 ( .A0(pat_input[61]), .A1(n627), .B0(pat_input[45]), .B1(n4), 
        .Y(n519) );
  AOI22XL U300 ( .A0(pat_input[60]), .A1(n627), .B0(pat_input[44]), .B1(n4), 
        .Y(n493) );
  AOI22XL U301 ( .A0(pat_input[59]), .A1(n627), .B0(pat_input[43]), .B1(n4), 
        .Y(n463) );
  AOI22XL U302 ( .A0(pat_input[58]), .A1(n627), .B0(pat_input[42]), .B1(n4), 
        .Y(n437) );
  AOI22XL U303 ( .A0(pat_input[57]), .A1(n627), .B0(pat_input[41]), .B1(n4), 
        .Y(n411) );
  NAND4X2 U304 ( .A(n474), .B(n473), .C(n472), .D(n471), .Y(n491) );
  AOI22XL U305 ( .A0(str_input[180]), .A1(n562), .B0(str_input[244]), .B1(n561), .Y(n474) );
  AOI22XL U306 ( .A0(str_input[52]), .A1(n564), .B0(str_input[116]), .B1(n563), 
        .Y(n473) );
  AOI22XL U307 ( .A0(str_input[148]), .A1(n566), .B0(str_input[212]), .B1(n565), .Y(n472) );
  NAND2X2 U308 ( .A(pat_pro_idx[2]), .B(n26), .Y(n622) );
  NAND3XL U309 ( .A(n358), .B(n357), .C(n356), .Y(n647) );
  XOR2X1 U310 ( .A(n26), .B(pat_last_idx[1]), .Y(n358) );
  XOR2X1 U311 ( .A(n28), .B(pat_last_idx[2]), .Y(n356) );
  BUFX2 U312 ( .A(pat_pro_idx[0]), .Y(n1) );
  AND3X2 U313 ( .A(n598), .B(n597), .C(n596), .Y(n603) );
  XOR2X1 U314 ( .A(n17), .B(process_2idx[0]), .Y(n598) );
  NOR3X1 U315 ( .A(n595), .B(n594), .C(n593), .Y(n596) );
  XOR2X1 U316 ( .A(n19), .B(process_2idx[2]), .Y(n597) );
  INVX2 U317 ( .A(str_pro_idx[1]), .Y(n16) );
  INVX2 U318 ( .A(pat_pro_idx[1]), .Y(n26) );
  INVX2 U319 ( .A(str_pro_idx[0]), .Y(n17) );
  INVX2 U320 ( .A(pat_pro_idx[2]), .Y(n28) );
  XOR2X1 U321 ( .A(str_pro_idx[4]), .B(process_2idx[4]), .Y(n593) );
  XOR2X1 U322 ( .A(str_pro_idx[3]), .B(process_2idx[3]), .Y(n595) );
  XOR2X1 U323 ( .A(str_pro_idx[1]), .B(process_2idx[1]), .Y(n594) );
  BUFX2 U324 ( .A(n624), .Y(n3) );
  NOR2X2 U325 ( .A(n26), .B(pat_pro_idx[2]), .Y(n624) );
  ADDFX1 U326 ( .A(str_pro_idx[1]), .B(n9), .CI(\sub_83/carry[1] ), .CO(
        \sub_83/carry[2] ), .S(N399) );
  INVX2 U327 ( .A(pat_last_idx[1]), .Y(n9) );
  BUFX2 U328 ( .A(n628), .Y(n5) );
  NOR3X1 U329 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n27), .Y(n628) );
  ADDFX1 U330 ( .A(str_pro_idx[2]), .B(n8), .CI(\sub_83/carry[2] ), .CO(
        \sub_83/carry[3] ), .S(N400) );
  INVX2 U331 ( .A(pat_last_idx[2]), .Y(n8) );
  BUFX2 U332 ( .A(n599), .Y(n6) );
  NOR3X1 U333 ( .A(pat_pro_idx[1]), .B(pat_pro_idx[2]), .C(n1), .Y(n599) );
  NOR4X2 U334 ( .A(n652), .B(current_st[0]), .C(current_st[1]), .D(
        current_st[2]), .Y(n354) );
  AOI222XL U335 ( .A0(ff_result[11]), .A1(n25), .B0(ff_result[17]), .B1(n2), 
        .C0(ff_result[5]), .C1(n3), .Y(n631) );
  AOI222XL U336 ( .A0(ff_result[9]), .A1(n25), .B0(ff_result[15]), .B1(n2), 
        .C0(ff_result[3]), .C1(n3), .Y(n619) );
  AOI222XL U337 ( .A0(ff_result[10]), .A1(n25), .B0(ff_result[16]), .B1(n2), 
        .C0(ff_result[4]), .C1(n3), .Y(n606) );
  NAND2X2 U338 ( .A(input_valid), .B(n354), .Y(n641) );
  AOI22XL U339 ( .A0(ff_result[8]), .A1(n24), .B0(ff_result[2]), .B1(n5), .Y(
        n629) );
  AOI22XL U340 ( .A0(ff_result[7]), .A1(n24), .B0(ff_result[1]), .B1(n5), .Y(
        n604) );
  AOI22XL U341 ( .A0(ff_result[20]), .A1(n627), .B0(ff_result[14]), .B1(n4), 
        .Y(n630) );
  AOI22XL U342 ( .A0(ff_result[18]), .A1(n627), .B0(ff_result[12]), .B1(n4), 
        .Y(n618) );
  AOI22XL U343 ( .A0(ff_result[19]), .A1(n627), .B0(ff_result[13]), .B1(n4), 
        .Y(n605) );
  ADDHX1 U344 ( .A(str_pro_idx[2]), .B(\r342/carry[2] ), .CO(\r342/carry[3] ), 
        .S(N448) );
  ADDHX1 U345 ( .A(str_pro_idx[1]), .B(str_pro_idx[0]), .CO(\r342/carry[2] ), 
        .S(N447) );
  ADDHX1 U346 ( .A(str_pro_idx[3]), .B(\r342/carry[3] ), .CO(\r342/carry[4] ), 
        .S(N449) );
  OAI31X1 U347 ( .A0(n12), .A1(reset), .A2(done), .B0(n600), .Y(N68) );
  NOR3BX1 U348 ( .AN(input_valid), .B(n353), .C(reset), .Y(N67) );
  OAI21X1 U349 ( .A0(input_valid), .A1(n352), .B0(n7), .Y(N66) );
  NAND4X2 U350 ( .A(current_st[0]), .B(n650), .C(n651), .D(n652), .Y(n353) );
  AOI21X1 U351 ( .A0(n641), .A1(n355), .B0(reset), .Y(N69) );
  NAND2X2 U352 ( .A(done), .B(n639), .Y(n355) );
  XNOR2X1 U353 ( .A(str_pro_idx[4]), .B(\sub_83/carry[4] ), .Y(N402) );
  OR2X1 U354 ( .A(str_pro_idx[3]), .B(\sub_83/carry[3] ), .Y(\sub_83/carry[4] ) );
  XNOR2X1 U355 ( .A(\sub_83/carry[3] ), .B(str_pro_idx[3]), .Y(N401) );
  OR2X1 U356 ( .A(n10), .B(str_pro_idx[0]), .Y(\sub_83/carry[1] ) );
  XNOR2X1 U357 ( .A(str_pro_idx[0]), .B(n10), .Y(N398) );
  XOR2X1 U358 ( .A(\r342/carry[4] ), .B(str_pro_idx[4]), .Y(N450) );
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
  OR2X2 U2 ( .A(ispattern), .B(isstring), .Y(N0) );
endmodule

