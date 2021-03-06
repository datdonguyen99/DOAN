
// Generated by Cadence Genus(TM) Synthesis Solution 19.13-s073_1
// Generated on: Jun 30 2021 16:23:16 +07 (Jun 30 2021 09:23:16 UTC)

// Verification Directory fv/bound_flasher 

module bound_flasher(clk, rst_n, flick, LED);
  input clk, rst_n, flick;
  output [15:0] LED;
  wire clk, rst_n, flick;
  wire [15:0] LED;
  wire [2:0] state;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2,
       UNCONNECTED3, UNCONNECTED4, n_1, n_3;
  wire n_4, n_5, n_6, n_7, n_8, n_9, n_10, n_11;
  wire n_12, n_13, n_15, n_16, n_17, n_18, n_19, n_20;
  wire n_21, n_22, n_23, n_24, n_25, n_26, n_27, n_30;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_56, n_57, n_58, n_59, n_60, n_62, n_63, n_64;
  wire n_65, n_66, n_68, n_70, n_72, n_73, n_74, n_75;
  wire n_76, n_77, n_78, n_79, n_82, n_84, n_85, n_86;
  wire n_87, n_89, n_90, n_91, n_92, n_93, n_94, n_96;
  wire n_98, n_99, n_100, n_101, n_102, n_103, n_104, n_105;
  wire n_108, n_109, n_113, n_114, n_115, n_116, n_117, n_118;
  wire n_119, n_120, n_121;
  DFFRHQX8 \state_reg[1] (.RN (rst_n), .CK (clk), .D (n_109), .Q
       (state[1]));
  DFFRHQX8 \state_reg[0] (.RN (rst_n), .CK (clk), .D (n_108), .Q
       (state[0]));
  DFFRHQX8 \state_reg[2] (.RN (rst_n), .CK (clk), .D (n_115), .Q
       (state[2]));
  NAND3X4 g3155__2398(.A (n_103), .B (n_100), .C (n_120), .Y (n_109));
  OAI221X4 g3157__5107(.A0 (n_75), .A1 (n_101), .B0 (n_25), .B1
       (n_104), .C0 (n_102), .Y (n_108));
  OAI21X4 g3160__8428(.A0 (state[0]), .A1 (n_104), .B0 (state[2]), .Y
       (n_105));
  CLKAND2X3 g3161__5526(.A (n_91), .B (n_99), .Y (n_103));
  AND2X4 g3163__6783(.A (n_84), .B (n_94), .Y (n_102));
  NOR2X4 g3164__3680(.A (n_118), .B (n_116), .Y (n_101));
  NAND2X2 g3166__1617(.A (n_19), .B (n_92), .Y (n_100));
  NOR3X6 g3162__2802(.A (n_93), .B (n_96), .C (n_86), .Y (n_98));
  AOI31X4 g3177__8246(.A0 (state[0]), .A1 (n_93), .A2 (n_89), .B0
       (n_114), .Y (n_94));
  INVX2 g3170(.A (n_92), .Y (n_104));
  AOI22X4 g3167__7098(.A0 (n_30), .A1 (n_64), .B0 (n_24), .B1 (n_121),
       .Y (n_91));
  NOR2X6 g3172__6131(.A (n_89), .B (n_82), .Y (n_90));
  NOR2X6 g3175__5115(.A (n_89), .B (n_74), .Y (n_92));
  OAI21X4 g3171__7482(.A0 (state[0]), .A1 (n_73), .B0 (n_85), .Y
       (n_87));
  AOI21X4 g3173__4733(.A0 (flick), .A1 (n_85), .B0 (n_66), .Y (n_86));
  OAI21X2 g3174__6161(.A0 (state[2]), .A1 (n_77), .B0 (n_26), .Y
       (n_84));
  NAND2X6 g3180__9315(.A (n_72), .B (n_113), .Y (n_96));
  CLKINVX4 g3188(.A (n_113), .Y (n_82));
  NAND2X1 g3190__2883(.A (state[1]), .B (n_85), .Y (n_79));
  NOR2X4 g3195__2346(.A (n_77), .B (n_27), .Y (n_78));
  OAI21X2 g3178__1666(.A0 (n_75), .A1 (n_70), .B0 (n_20), .Y (n_76));
  NAND2X6 g3181__7410(.A (n_73), .B (n_63), .Y (n_74));
  NOR2X4 g3194__6417(.A (n_9), .B (n_68), .Y (n_72));
  INVX2 g3197(.A (n_63), .Y (n_64));
  CLKINVX8 g3206(.A (n_85), .Y (n_89));
  NAND2X6 g3203__6260(.A (n_11), .B (n_57), .Y (n_65));
  CLKAND2X6 g3202__4319(.A (n_42), .B (n_62), .Y (n_63));
  CLKAND2X6 g3204__8428(.A (n_6), .B (n_55), .Y (n_73));
  DFFRHQX4 \LED_reg[2] (.RN (rst_n), .CK (clk), .D (n_46), .Q (LED[2]));
  CLKAND2X12 g3213__5526(.A (n_56), .B (n_4), .Y (n_85));
  NAND2X6 g3200__3680(.A (n_13), .B (n_60), .Y (n_68));
  OAI22X1 g3211__1617(.A0 (n_54), .A1 (n_33), .B0 (n_58), .B1 (n_48),
       .Y (n_59));
  NOR2X6 g3212__2802(.A (n_5), .B (n_45), .Y (n_70));
  NOR2X6 g3219__1705(.A (n_44), .B (n_7), .Y (n_57));
  NOR3X4 g3217__5122(.A (LED[12]), .B (LED[11]), .C (LED[13]), .Y
       (n_56));
  NOR3X4 g3215__8246(.A (LED[3]), .B (LED[1]), .C (LED[5]), .Y (n_55));
  CLKAND2X6 g3220__7098(.A (n_54), .B (n_8), .Y (n_62));
  AO22X1 g3208__6131(.A0 (LED[11]), .A1 (n_50), .B0 (LED[9]), .B1
       (n_51), .Y (n_53));
  AO22X1 g3207__1881(.A0 (LED[11]), .A1 (n_51), .B0 (LED[13]), .B1
       (n_50), .Y (n_52));
  OAI2BB1X1 g3199__5115(.A0N (LED[1]), .A1N (n_22), .B0 (n_48), .Y
       (n_49));
  AO22X1 g3209__7482(.A0 (LED[8]), .A1 (n_51), .B0 (LED[10]), .B1
       (n_50), .Y (n_47));
  AO22X1 g3210__4733(.A0 (LED[1]), .A1 (n_51), .B0 (LED[3]), .B1
       (n_50), .Y (n_46));
  CLKAND2X6 g3216__6161(.A (LED[8]), .B (LED[9]), .Y (n_60));
  DFFRX2 \LED_reg[14] (.RN (rst_n), .CK (clk), .D (n_43), .Q (LED[14]),
       .QN (UNCONNECTED));
  AO22X1 g3218__9315(.A0 (LED[15]), .A1 (n_50), .B0 (LED[13]), .B1
       (n_51), .Y (n_43));
  DFFRHQX4 \LED_reg[4] (.RN (rst_n), .CK (clk), .D (n_36), .Q (LED[4]));
  DFFRHQX4 \LED_reg[3] (.RN (rst_n), .CK (clk), .D (n_39), .Q (LED[3]));
  DFFRHQX4 \LED_reg[5] (.RN (rst_n), .CK (clk), .D (n_34), .Q (LED[5]));
  AO22X1 g3232__9945(.A0 (LED[12]), .A1 (n_51), .B0 (LED[14]), .B1
       (n_50), .Y (n_41));
  AO22X1 g3233__2883(.A0 (LED[10]), .A1 (n_51), .B0 (LED[12]), .B1
       (n_50), .Y (n_40));
  AO22X1 g3234__2346(.A0 (LED[2]), .A1 (n_51), .B0 (LED[4]), .B1
       (n_50), .Y (n_39));
  AO22X1 g3239__1666(.A0 (LED[5]), .A1 (n_51), .B0 (LED[7]), .B1
       (n_50), .Y (n_38));
  AO22X1 g3238__7410(.A0 (LED[0]), .A1 (n_51), .B0 (LED[2]), .B1
       (n_50), .Y (n_37));
  AO22X1 g3237__6417(.A0 (LED[3]), .A1 (n_51), .B0 (LED[5]), .B1
       (n_50), .Y (n_36));
  AO22X1 g3240__5477(.A0 (LED[7]), .A1 (n_51), .B0 (LED[9]), .B1
       (n_50), .Y (n_35));
  OAI22X1 g3236__2398(.A0 (n_1), .A1 (n_48), .B0 (n_58), .B1 (n_33), .Y
       (n_34));
  AND2X1 g3241__5107(.A (LED[14]), .B (n_51), .Y (n_32));
  CLKINVX8 g3243(.A (n_33), .Y (n_50));
  NOR2X6 g3246__4319(.A (n_30), .B (n_23), .Y (n_33));
  OAI21X4 g3257__6783(.A0 (n_93), .A1 (flick), .B0 (n_26), .Y (n_27));
  NAND2X8 g3249__3680(.A (n_18), .B (n_16), .Y (n_51));
  ADDHX1 g3244__1617(.A (state[1]), .B (n_93), .CO (n_24), .S (n_25));
  CLKAND2X3 g3252__2802(.A (n_75), .B (n_22), .Y (n_23));
  NAND2X2 g3253__1705(.A (n_15), .B (n_20), .Y (n_21));
  NOR3X1 g3254__5122(.A (state[1]), .B (n_93), .C (state[0]), .Y
       (n_19));
  NAND2X2 g3251__8246(.A (state[0]), .B (n_12), .Y (n_18));
  AOI21X4 g3255__7098(.A0 (LED[5]), .A1 (n_93), .B0 (state[1]), .Y
       (n_17));
  NAND2X6 g3250__6131(.A (n_15), .B (flick), .Y (n_16));
  INVX2 g3259(.A (n_15), .Y (n_22));
  NAND2X8 g3264__5115(.A (state[0]), .B (n_3), .Y (n_20));
  CLKAND2X2 g3263__7482(.A (LED[12]), .B (LED[14]), .Y (n_11));
  CLKAND2X2 g3262__4733(.A (LED[0]), .B (state[0]), .Y (n_10));
  NAND2X2 g3261__6161(.A (LED[5]), .B (state[0]), .Y (n_9));
  NOR2X4 g3267__9315(.A (LED[9]), .B (LED[7]), .Y (n_8));
  CLKAND2X6 g3271__9945(.A (LED[6]), .B (LED[7]), .Y (n_13));
  NOR2X4 g3269__2883(.A (LED[14]), .B (LED[10]), .Y (n_4));
  NAND2X4 g3272__2346(.A (state[2]), .B (state[1]), .Y (n_12));
  NOR2X6 g3265__1666(.A (state[1]), .B (state[2]), .Y (n_15));
  INVX1 g3278(.A (LED[4]), .Y (n_1));
  INVX2 g3280(.A (state[0]), .Y (n_75));
  CLKINVX6 g3277(.A (state[2]), .Y (n_93));
  DFFRX4 \LED_reg[13] (.RN (rst_n), .CK (clk), .D (n_41), .Q (LED[13]),
       .QN (UNCONNECTED0));
  DFFRHQX2 \LED_reg[10] (.RN (rst_n), .CK (clk), .D (n_53), .Q
       (LED[10]));
  DFFRX4 \LED_reg[12] (.RN (rst_n), .CK (clk), .D (n_52), .Q (LED[12]),
       .QN (UNCONNECTED1));
  CLKINVX4 g3318(.A (n_20), .Y (n_26));
  DFFRX4 \LED_reg[11] (.RN (rst_n), .CK (clk), .D (n_40), .Q (LED[11]),
       .QN (n_44));
  DFFRX4 \LED_reg[9] (.RN (rst_n), .CK (clk), .D (n_47), .Q (LED[9]),
       .QN (UNCONNECTED2));
  DFFRX4 \LED_reg[7] (.RN (rst_n), .CK (clk), .D (n_59), .Q (LED[7]),
       .QN (UNCONNECTED3));
  DFFRHQX4 \LED_reg[1] (.RN (rst_n), .CK (clk), .D (n_37), .Q (LED[1]));
  CLKINVX6 g3336(.A (LED[5]), .Y (n_3));
  NAND2X6 g3338__6417(.A (LED[13]), .B (LED[10]), .Y (n_7));
  NAND2X6 g3340__5477(.A (n_90), .B (n_78), .Y (n_99));
  NOR2X2 g3342__2398(.A (LED[2]), .B (LED[4]), .Y (n_6));
  NOR2X2 g3348__5107(.A (LED[6]), .B (LED[15]), .Y (n_42));
  NAND2X6 g3356__4319(.A (LED[2]), .B (LED[4]), .Y (n_5));
  CLKINVX4 g3360(.A (n_51), .Y (n_48));
  CLKAND2X6 g3193__3361(.A (LED[0]), .B (n_70), .Y (n_113));
  DFFRX4 \LED_reg[8] (.RN (rst_n), .CK (clk), .D (n_35), .Q (LED[8]),
       .QN (n_54));
  DFFRX4 \LED_reg[6] (.RN (rst_n), .CK (clk), .D (n_38), .Q (LED[6]),
       .QN (n_58));
  NOR2BX2 g2(.AN (flick), .B (n_21), .Y (n_114));
  OAI21X2 g3366(.A0 (n_79), .A1 (n_96), .B0 (n_105), .Y (n_115));
  OAI2BB1X4 g3367(.A0N (state[2]), .A1N (n_65), .B0 (n_113), .Y
       (n_116));
  AOI2BB1X4 g3368(.A0N (n_17), .A1N (flick), .B0 (n_30), .Y (n_117));
  OAI2BB1X4 g3369(.A0N (LED[5]), .A1N (n_68), .B0 (n_117), .Y (n_118));
  NOR2X4 g3370(.A (n_119), .B (n_98), .Y (n_120));
  OA21X4 g3(.A0 (n_76), .A1 (n_87), .B0 (state[1]), .Y (n_119));
  NAND2X4 g3358__3372(.A (LED[3]), .B (LED[1]), .Y (n_45));
  DFFRHQX1 \LED_reg[15] (.RN (rst_n), .CK (clk), .D (n_32), .Q
       (LED[15]));
  NAND2X4 g3354__3376(.A (n_58), .B (n_62), .Y (n_77));
  INVX3 g3378(.A (n_12), .Y (n_30));
  INVX3 g3380(.A (n_65), .Y (n_66));
  NAND4X8 g3381(.A (n_60), .B (flick), .C (n_10), .D (n_13), .Y
       (n_121));
  DFFRX2 \LED_reg[0] (.RN (rst_n), .CK (clk), .D (n_49), .Q (LED[0]),
       .QN (UNCONNECTED4));
endmodule

