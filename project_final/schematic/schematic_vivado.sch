# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new top work:top:NOFILE -nosplit
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol bin_to_BCD work:bin_to_BCD:NOFILE HIERBOX pin BTNC_IBUF input.left pin CLK100MHZ_IBUF_BUFG input.left pin FSM_onehot_state_reg[0]_0 output.right pinBus D output.right [3:0] pinBus Q input.left [7:0] pinBus binary_reg[0]_0 input.left [0:0] pinBus binary_reg[5]_0 input.left [4:0] pinBus sig_cnt_2bit input.left [1:0] pinBus sig_state__0 input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol bin_to_BCD__parameterized0 work:bin_to_BCD__parameterized0:NOFILE HIERBOX pin BTNC_IBUF input.left pin CLK100MHZ_IBUF_BUFG input.left pinBus Q output.right [7:0] pinBus binary_reg[3]_0 input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol driver_7seg_4digits_for_timer work:driver_7seg_4digits_for_timer:NOFILE HIERBOX pin BTNC_IBUF input.left pin CA_OBUF output.right pin CB_OBUF output.right pin CC_OBUF output.right pin CD_OBUF output.right pin CE_OBUF output.right pin CF_OBUF output.right pin CG_OBUF output.right pin CLK100MHZ_IBUF_BUFG input.left pinBus D input.left [3:0] pinBus Q output.right [3:0] pinBus sig_cnt_2bit output.right [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol statemachine work:statemachine:NOFILE HIERBOX pin BTNC_IBUF input.left pin CLK100MHZ_IBUF_BUFG input.left pin binary_reg[0] input.left pinBus FSM_sequential_sig_state_reg[1]_0 output.right [0:0] pinBus Q output.right [4:0] pinBus SW_IBUF input.left [15:0] pinBus sig_cnt_round_reg[3]_0 output.right [3:0] pinBus sig_state__0 output.right [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol FDPE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin PRE input.left fillcolor 1
load symbol FDCE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin CLR input.left pin D input.left fillcolor 1
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load port BTNC input -pg 1 -lvl 0 -x -410 -y 670
load port CA output -pg 1 -lvl 7 -x 1970 -y -60
load port CB output -pg 1 -lvl 7:w -x 1970 -y 10
load port CC output -pg 1 -lvl 7:w -x 1970 -y 80
load port CD output -pg 1 -lvl 7:w -x 1970 -y 150
load port CE output -pg 1 -lvl 7:w -x 1970 -y 220
load port CF output -pg 1 -lvl 7:w -x 1970 -y 290
load port CG output -pg 1 -lvl 7:w -x 1970 -y 360
load port CLK100MHZ input -pg 1 -lvl 0 -x -410 -y 740
load portBus AN output [7:0] -attr @name AN[7:0] -pg 1 -lvl 7:w -x 1970 -y 590
load portBus SW input [15:0] -attr @name SW[15:0] -pg 1 -lvl 0 -x -410 -y 780
load inst AN_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 590
load inst AN_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 660
load inst AN_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 730
load inst AN_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 800
load inst AN_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 880
load inst AN_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 950
load inst AN_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 1020
load inst AN_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 1090
load inst BTNC_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 670
load inst CA_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y -60
load inst CB_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 10
load inst CC_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 80
load inst CD_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 150
load inst CE_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 220
load inst CF_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 290
load inst CG_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 1800 -y 360
load inst CLK100MHZ_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -x -140 -y 740
load inst CLK100MHZ_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x -370 -y 740
load inst SW_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 40
load inst SW_IBUF[10]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 880
load inst SW_IBUF[11]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 950
load inst SW_IBUF[12]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 1020
load inst SW_IBUF[13]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 1090
load inst SW_IBUF[14]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 1160
load inst SW_IBUF[15]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 1230
load inst SW_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 110
load inst SW_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 180
load inst SW_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 250
load inst SW_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 320
load inst SW_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 390
load inst SW_IBUF[6]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 460
load inst SW_IBUF[7]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 530
load inst SW_IBUF[8]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 600
load inst SW_IBUF[9]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x -140 -y 810
load inst bcd_converter0 bin_to_BCD work:bin_to_BCD:NOFILE -attr @cell(#000000) bin_to_BCD -pinBusAttr D @name D[3:0] -pinBusAttr Q @name Q[7:0] -pinBusAttr binary_reg[0]_0 @name binary_reg[0]_0 -pinBusAttr binary_reg[5]_0 @name binary_reg[5]_0[4:0] -pinBusAttr sig_cnt_2bit @name sig_cnt_2bit[1:0] -pinBusAttr sig_state__0 @name sig_state__0[1:0] -pg 1 -lvl 4 -x 950 -y 500
load inst bcd_converter1 bin_to_BCD__parameterized0 work:bin_to_BCD__parameterized0:NOFILE -fold -attr @cell(#000000) bin_to_BCD__parameterized0 -pinBusAttr Q @name Q[7:0] -pinBusAttr binary_reg[3]_0 @name binary_reg[3]_0[3:0] -pg 1 -lvl 4 -x 950 -y 350
load inst drv_7seg driver_7seg_4digits_for_timer work:driver_7seg_4digits_for_timer:NOFILE -attr @cell(#000000) driver_7seg_4digits_for_timer -pinBusAttr D @name D[3:0] -pinBusAttr Q @name Q[3:0] -pinBusAttr sig_cnt_2bit @name sig_cnt_2bit[1:0] -pg 1 -lvl 5 -x 1420 -y 440
load inst statemachine statemachine work:statemachine:NOFILE -attr @cell(#000000) statemachine -pinBusAttr FSM_sequential_sig_state_reg[1]_0 @name FSM_sequential_sig_state_reg[1]_0 -pinBusAttr Q @name Q[4:0] -pinBusAttr SW_IBUF @name SW_IBUF[15:0] -pinBusAttr sig_cnt_round_reg[3]_0 @name sig_cnt_round_reg[3]_0[3:0] -pinBusAttr sig_state__0 @name sig_state__0[1:0] -pg 1 -lvl 3 -x 340 -y 330
load inst bcd_converter1|FSM_onehot_state[1]_i_1__0 LUT6 hdi_primitives -hier bcd_converter1 -attr @name FSM_onehot_state[1]_i_1__0 -attr @cell(#000000) LUT6 -pg 1 -lvl 7 -x 2360 -y 798
load inst bcd_converter1|FSM_onehot_state[2]_i_1__0 LUT6 hdi_primitives -hier bcd_converter1 -attr @name FSM_onehot_state[2]_i_1__0 -attr @cell(#000000) LUT6 -pg 1 -lvl 9 -x 2970 -y 818
load inst bcd_converter1|FSM_onehot_state_reg[0] FDPE hdi_primitives -hier bcd_converter1 -attr @name FSM_onehot_state_reg[0] -attr @cell(#000000) FDPE -pg 1 -lvl 11 -x 3540 -y 818
load inst bcd_converter1|FSM_onehot_state_reg[1] FDCE hdi_primitives -hier bcd_converter1 -attr @name FSM_onehot_state_reg[1] -attr @cell(#000000) FDCE -pg 1 -lvl 8 -x 2640 -y 818
load inst bcd_converter1|FSM_onehot_state_reg[2] FDCE hdi_primitives -hier bcd_converter1 -attr @name FSM_onehot_state_reg[2] -attr @cell(#000000) FDCE -pg 1 -lvl 10 -x 3250 -y 838
load inst bcd_converter1|bcds[0]_i_1 LUT2 hdi_primitives -hier bcd_converter1 -attr @name bcds[0]_i_1 -attr @cell(#000000) LUT2 -pg 1 -lvl 20 -x 5350 -y 858
load inst bcd_converter1|bcds[1]_i_1 LUT5 hdi_primitives -hier bcd_converter1 -attr @name bcds[1]_i_1 -attr @cell(#000000) LUT5 -pg 1 -lvl 24 -x 6130 -y 888
load inst bcd_converter1|bcds[2]_i_1__0 LUT5 hdi_primitives -hier bcd_converter1 -attr @name bcds[2]_i_1__0 -attr @cell(#000000) LUT5 -pg 1 -lvl 26 -x 6550 -y 1008
load inst bcd_converter1|bcds[3]_i_1 LUT5 hdi_primitives -hier bcd_converter1 -attr @name bcds[3]_i_1 -attr @cell(#000000) LUT5 -pg 1 -lvl 22 -x 5740 -y 748
load inst bcd_converter1|bcds[4]_i_1 LUT5 hdi_primitives -hier bcd_converter1 -attr @name bcds[4]_i_1 -attr @cell(#000000) LUT5 -pg 1 -lvl 28 -x 6970 -y 1228
load inst bcd_converter1|bcds[5]_i_1 LUT5 hdi_primitives -hier bcd_converter1 -attr @name bcds[5]_i_1 -attr @cell(#000000) LUT5 -pg 1 -lvl 34 -x 8160 -y 1368
load inst bcd_converter1|bcds[6]_i_1__0 LUT5 hdi_primitives -hier bcd_converter1 -attr @name bcds[6]_i_1__0 -attr @cell(#000000) LUT5 -pg 1 -lvl 32 -x 7780 -y 1408
load inst bcd_converter1|bcds[7]_i_1 LUT5 hdi_primitives -hier bcd_converter1 -attr @name bcds[7]_i_1 -attr @cell(#000000) LUT5 -pg 1 -lvl 30 -x 7400 -y 1318
load inst bcd_converter1|bcds_out_reg_reg[0] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_out_reg_reg[0] -attr @cell(#000000) FDCE -pg 1 -lvl 36 -x 8550 -y 708
load inst bcd_converter1|bcds_out_reg_reg[1] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_out_reg_reg[1] -attr @cell(#000000) FDCE -pg 1 -lvl 36 -x 8550 -y 858
load inst bcd_converter1|bcds_out_reg_reg[2] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_out_reg_reg[2] -attr @cell(#000000) FDCE -pg 1 -lvl 36 -x 8550 -y 1008
load inst bcd_converter1|bcds_out_reg_reg[3] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_out_reg_reg[3] -attr @cell(#000000) FDCE -pg 1 -lvl 36 -x 8550 -y 1158
load inst bcd_converter1|bcds_out_reg_reg[4] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_out_reg_reg[4] -attr @cell(#000000) FDCE -pg 1 -lvl 36 -x 8550 -y 1308
load inst bcd_converter1|bcds_out_reg_reg[5] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_out_reg_reg[5] -attr @cell(#000000) FDCE -pg 1 -lvl 36 -x 8550 -y 1458
load inst bcd_converter1|bcds_out_reg_reg[6] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_out_reg_reg[6] -attr @cell(#000000) FDCE -pg 1 -lvl 36 -x 8550 -y 1608
load inst bcd_converter1|bcds_out_reg_reg[7] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_out_reg_reg[7] -attr @cell(#000000) FDCE -pg 1 -lvl 36 -x 8550 -y 1758
load inst bcd_converter1|bcds_reg[0] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_reg[0] -attr @cell(#000000) FDCE -pg 1 -lvl 21 -x 5520 -y 798
load inst bcd_converter1|bcds_reg[1] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_reg[1] -attr @cell(#000000) FDCE -pg 1 -lvl 25 -x 6300 -y 978
load inst bcd_converter1|bcds_reg[2] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_reg[2] -attr @cell(#000000) FDCE -pg 1 -lvl 27 -x 6750 -y 1038
load inst bcd_converter1|bcds_reg[3] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_reg[3] -attr @cell(#000000) FDCE -pg 1 -lvl 23 -x 5910 -y 838
load inst bcd_converter1|bcds_reg[4] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_reg[4] -attr @cell(#000000) FDCE -pg 1 -lvl 29 -x 7160 -y 1278
load inst bcd_converter1|bcds_reg[5] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_reg[5] -attr @cell(#000000) FDCE -pg 1 -lvl 35 -x 8310 -y 1258
load inst bcd_converter1|bcds_reg[6] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_reg[6] -attr @cell(#000000) FDCE -pg 1 -lvl 33 -x 7940 -y 1278
load inst bcd_converter1|bcds_reg[7] FDCE hdi_primitives -hier bcd_converter1 -attr @name bcds_reg[7] -attr @cell(#000000) FDCE -pg 1 -lvl 31 -x 7550 -y 1278
load inst bcd_converter1|binary[0]_i_1 LUT2 hdi_primitives -hier bcd_converter1 -attr @name binary[0]_i_1 -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -x 3800 -y 688
load inst bcd_converter1|binary[1]_i_1 LUT4 hdi_primitives -hier bcd_converter1 -attr @name binary[1]_i_1 -attr @cell(#000000) LUT4 -pg 1 -lvl 14 -x 4220 -y 588
load inst bcd_converter1|binary[2]_i_1 LUT4 hdi_primitives -hier bcd_converter1 -attr @name binary[2]_i_1 -attr @cell(#000000) LUT4 -pg 1 -lvl 16 -x 4630 -y 708
load inst bcd_converter1|binary[3]_i_1__0 LUT5 hdi_primitives -hier bcd_converter1 -attr @name binary[3]_i_1__0 -attr @cell(#000000) LUT5 -pg 1 -lvl 12 -x 3800 -y 918
load inst bcd_converter1|binary[3]_i_2 LUT4 hdi_primitives -hier bcd_converter1 -attr @name binary[3]_i_2 -attr @cell(#000000) LUT4 -pg 1 -lvl 18 -x 5020 -y 888
load inst bcd_converter1|binary_reg[0] FDCE hdi_primitives -hier bcd_converter1 -attr @name binary_reg[0] -attr @cell(#000000) FDCE -pg 1 -lvl 13 -x 4010 -y 618
load inst bcd_converter1|binary_reg[1] FDCE hdi_primitives -hier bcd_converter1 -attr @name binary_reg[1] -attr @cell(#000000) FDCE -pg 1 -lvl 15 -x 4420 -y 678
load inst bcd_converter1|binary_reg[2] FDCE hdi_primitives -hier bcd_converter1 -attr @name binary_reg[2] -attr @cell(#000000) FDCE -pg 1 -lvl 17 -x 4830 -y 758
load inst bcd_converter1|binary_reg[3] FDCE hdi_primitives -hier bcd_converter1 -attr @name binary_reg[3] -attr @cell(#000000) FDCE -pg 1 -lvl 19 -x 5200 -y 888
load inst bcd_converter1|shift_counter[0]_i_1__0 LUT2 hdi_primitives -hier bcd_converter1 -attr @name shift_counter[0]_i_1__0 -attr @cell(#000000) LUT2 -pg 1 -lvl 1 -x 790 -y 808
load inst bcd_converter1|shift_counter[1]_i_1 LUT3 hdi_primitives -hier bcd_converter1 -attr @name shift_counter[1]_i_1 -attr @cell(#000000) LUT3 -pg 1 -lvl 3 -x 1280 -y 748
load inst bcd_converter1|shift_counter[2]_i_1 LUT4 hdi_primitives -hier bcd_converter1 -attr @name shift_counter[2]_i_1 -attr @cell(#000000) LUT4 -pg 1 -lvl 5 -x 1770 -y 768
load inst bcd_converter1|shift_counter_reg[0] FDCE hdi_primitives -hier bcd_converter1 -attr @name shift_counter_reg[0] -attr @cell(#000000) FDCE -pg 1 -lvl 2 -x 1050 -y 798
load inst bcd_converter1|shift_counter_reg[1] FDCE hdi_primitives -hier bcd_converter1 -attr @name shift_counter_reg[1] -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1520 -y 578
load inst bcd_converter1|shift_counter_reg[2] FDCE hdi_primitives -hier bcd_converter1 -attr @name shift_counter_reg[2] -attr @cell(#000000) FDCE -pg 1 -lvl 6 -x 2010 -y 638
load net <const1> -power -pin AN_OBUF[4]_inst I -pin AN_OBUF[5]_inst I -pin AN_OBUF[6]_inst I -pin AN_OBUF[7]_inst I
load net AN[0] -attr @rip(#000000) 0 -port AN[0] -pin AN_OBUF[0]_inst O
load net AN[1] -attr @rip(#000000) 1 -port AN[1] -pin AN_OBUF[1]_inst O
load net AN[2] -attr @rip(#000000) 2 -port AN[2] -pin AN_OBUF[2]_inst O
load net AN[3] -attr @rip(#000000) 3 -port AN[3] -pin AN_OBUF[3]_inst O
load net AN[4] -attr @rip(#000000) 4 -port AN[4] -pin AN_OBUF[4]_inst O
load net AN[5] -attr @rip(#000000) 5 -port AN[5] -pin AN_OBUF[5]_inst O
load net AN[6] -attr @rip(#000000) 6 -port AN[6] -pin AN_OBUF[6]_inst O
load net AN[7] -attr @rip(#000000) 7 -port AN[7] -pin AN_OBUF[7]_inst O
load net AN_OBUF[0] -attr @rip(#000000) Q[0] -pin AN_OBUF[0]_inst I -pin drv_7seg Q[0]
load net AN_OBUF[1] -attr @rip(#000000) Q[1] -pin AN_OBUF[1]_inst I -pin drv_7seg Q[1]
load net AN_OBUF[2] -attr @rip(#000000) Q[2] -pin AN_OBUF[2]_inst I -pin drv_7seg Q[2]
load net AN_OBUF[3] -attr @rip(#000000) Q[3] -pin AN_OBUF[3]_inst I -pin drv_7seg Q[3]
load net BTNC -port BTNC -pin BTNC_IBUF_inst I
netloc BTNC 1 0 2 NJ 670 NJ
load net BTNC_IBUF -pin BTNC_IBUF_inst O -pin bcd_converter0 BTNC_IBUF -pin bcd_converter1 BTNC_IBUF -pin drv_7seg BTNC_IBUF -pin statemachine BTNC_IBUF
netloc BTNC_IBUF 1 2 3 140 780 670 780 1220
load net CA -port CA -pin CA_OBUF_inst O
netloc CA 1 6 1 N -60
load net CA_OBUF -pin CA_OBUF_inst I -pin drv_7seg CA_OBUF
netloc CA_OBUF 1 5 1 1620 -60n
load net CB -port CB -pin CB_OBUF_inst O
netloc CB 1 6 1 N 10
load net CB_OBUF -pin CB_OBUF_inst I -pin drv_7seg CB_OBUF
netloc CB_OBUF 1 5 1 1640 10n
load net CC -port CC -pin CC_OBUF_inst O
netloc CC 1 6 1 N 80
load net CC_OBUF -pin CC_OBUF_inst I -pin drv_7seg CC_OBUF
netloc CC_OBUF 1 5 1 1660 80n
load net CD -port CD -pin CD_OBUF_inst O
netloc CD 1 6 1 N 150
load net CD_OBUF -pin CD_OBUF_inst I -pin drv_7seg CD_OBUF
netloc CD_OBUF 1 5 1 1680 150n
load net CE -port CE -pin CE_OBUF_inst O
netloc CE 1 6 1 N 220
load net CE_OBUF -pin CE_OBUF_inst I -pin drv_7seg CE_OBUF
netloc CE_OBUF 1 5 1 1700 220n
load net CF -port CF -pin CF_OBUF_inst O
netloc CF 1 6 1 N 290
load net CF_OBUF -pin CF_OBUF_inst I -pin drv_7seg CF_OBUF
netloc CF_OBUF 1 5 1 1720 290n
load net CG -port CG -pin CG_OBUF_inst O
netloc CG 1 6 1 N 360
load net CG_OBUF -pin CG_OBUF_inst I -pin drv_7seg CG_OBUF
netloc CG_OBUF 1 5 1 1740 360n
load net CLK100MHZ -port CLK100MHZ -pin CLK100MHZ_IBUF_inst I
netloc CLK100MHZ 1 0 1 NJ 740
load net CLK100MHZ_IBUF -pin CLK100MHZ_IBUF_BUFG_inst I -pin CLK100MHZ_IBUF_inst O
netloc CLK100MHZ_IBUF 1 1 1 NJ 740
load net CLK100MHZ_IBUF_BUFG -pin CLK100MHZ_IBUF_BUFG_inst O -pin bcd_converter0 CLK100MHZ_IBUF_BUFG -pin bcd_converter1 CLK100MHZ_IBUF_BUFG -pin drv_7seg CLK100MHZ_IBUF_BUFG -pin statemachine CLK100MHZ_IBUF_BUFG
netloc CLK100MHZ_IBUF_BUFG 1 2 3 120 620 710 740 1240
load net SW[0] -attr @rip(#000000) SW[0] -port SW[0] -pin SW_IBUF[0]_inst I
load net SW[10] -attr @rip(#000000) SW[10] -port SW[10] -pin SW_IBUF[10]_inst I
load net SW[11] -attr @rip(#000000) SW[11] -port SW[11] -pin SW_IBUF[11]_inst I
load net SW[12] -attr @rip(#000000) SW[12] -port SW[12] -pin SW_IBUF[12]_inst I
load net SW[13] -attr @rip(#000000) SW[13] -port SW[13] -pin SW_IBUF[13]_inst I
load net SW[14] -attr @rip(#000000) SW[14] -port SW[14] -pin SW_IBUF[14]_inst I
load net SW[15] -attr @rip(#000000) SW[15] -port SW[15] -pin SW_IBUF[15]_inst I
load net SW[1] -attr @rip(#000000) SW[1] -port SW[1] -pin SW_IBUF[1]_inst I
load net SW[2] -attr @rip(#000000) SW[2] -port SW[2] -pin SW_IBUF[2]_inst I
load net SW[3] -attr @rip(#000000) SW[3] -port SW[3] -pin SW_IBUF[3]_inst I
load net SW[4] -attr @rip(#000000) SW[4] -port SW[4] -pin SW_IBUF[4]_inst I
load net SW[5] -attr @rip(#000000) SW[5] -port SW[5] -pin SW_IBUF[5]_inst I
load net SW[6] -attr @rip(#000000) SW[6] -port SW[6] -pin SW_IBUF[6]_inst I
load net SW[7] -attr @rip(#000000) SW[7] -port SW[7] -pin SW_IBUF[7]_inst I
load net SW[8] -attr @rip(#000000) SW[8] -port SW[8] -pin SW_IBUF[8]_inst I
load net SW[9] -attr @rip(#000000) SW[9] -port SW[9] -pin SW_IBUF[9]_inst I
load net SW_IBUF[0] -attr @rip(#000000) 0 -pin SW_IBUF[0]_inst O -pin statemachine SW_IBUF[0]
load net SW_IBUF[10] -attr @rip(#000000) 10 -pin SW_IBUF[10]_inst O -pin statemachine SW_IBUF[10]
load net SW_IBUF[11] -attr @rip(#000000) 11 -pin SW_IBUF[11]_inst O -pin statemachine SW_IBUF[11]
load net SW_IBUF[12] -attr @rip(#000000) 12 -pin SW_IBUF[12]_inst O -pin statemachine SW_IBUF[12]
load net SW_IBUF[13] -attr @rip(#000000) 13 -pin SW_IBUF[13]_inst O -pin statemachine SW_IBUF[13]
load net SW_IBUF[14] -attr @rip(#000000) 14 -pin SW_IBUF[14]_inst O -pin statemachine SW_IBUF[14]
load net SW_IBUF[15] -attr @rip(#000000) 15 -pin SW_IBUF[15]_inst O -pin statemachine SW_IBUF[15]
load net SW_IBUF[1] -attr @rip(#000000) 1 -pin SW_IBUF[1]_inst O -pin statemachine SW_IBUF[1]
load net SW_IBUF[2] -attr @rip(#000000) 2 -pin SW_IBUF[2]_inst O -pin statemachine SW_IBUF[2]
load net SW_IBUF[3] -attr @rip(#000000) 3 -pin SW_IBUF[3]_inst O -pin statemachine SW_IBUF[3]
load net SW_IBUF[4] -attr @rip(#000000) 4 -pin SW_IBUF[4]_inst O -pin statemachine SW_IBUF[4]
load net SW_IBUF[5] -attr @rip(#000000) 5 -pin SW_IBUF[5]_inst O -pin statemachine SW_IBUF[5]
load net SW_IBUF[6] -attr @rip(#000000) 6 -pin SW_IBUF[6]_inst O -pin statemachine SW_IBUF[6]
load net SW_IBUF[7] -attr @rip(#000000) 7 -pin SW_IBUF[7]_inst O -pin statemachine SW_IBUF[7]
load net SW_IBUF[8] -attr @rip(#000000) 8 -pin SW_IBUF[8]_inst O -pin statemachine SW_IBUF[8]
load net SW_IBUF[9] -attr @rip(#000000) 9 -pin SW_IBUF[9]_inst O -pin statemachine SW_IBUF[9]
load net bcd_converter0_n_0 -attr @rip(#000000) D[3] -pin bcd_converter0 D[3] -pin drv_7seg D[3]
load net bcd_converter0_n_1 -attr @rip(#000000) D[2] -pin bcd_converter0 D[2] -pin drv_7seg D[2]
load net bcd_converter0_n_2 -attr @rip(#000000) D[1] -pin bcd_converter0 D[1] -pin drv_7seg D[1]
load net bcd_converter0_n_3 -attr @rip(#000000) D[0] -pin bcd_converter0 D[0] -pin drv_7seg D[0]
load net bcd_converter0_n_4 -pin bcd_converter0 FSM_onehot_state_reg[0]_0 -pin statemachine binary_reg[0]
netloc bcd_converter0_n_4 1 2 3 160 800 750J 760 1200
load net binary_next[0] -attr @rip(#000000) FSM_sequential_sig_state_reg[1]_0[0] -pin bcd_converter0 binary_reg[0]_0[0] -pin statemachine FSM_sequential_sig_state_reg[1]_0[0]
netloc binary_next[0] 1 3 1 730 340n
load net sig_cnt_2bit[0] -attr @rip(#000000) sig_cnt_2bit[0] -pin bcd_converter0 sig_cnt_2bit[0] -pin drv_7seg sig_cnt_2bit[0]
load net sig_cnt_2bit[1] -attr @rip(#000000) sig_cnt_2bit[1] -pin bcd_converter0 sig_cnt_2bit[1] -pin drv_7seg sig_cnt_2bit[1]
load net sig_output[1] -attr @rip(#000000) Q[0] -pin bcd_converter0 binary_reg[5]_0[0] -pin statemachine Q[0]
load net sig_output[2] -attr @rip(#000000) Q[1] -pin bcd_converter0 binary_reg[5]_0[1] -pin statemachine Q[1]
load net sig_output[3] -attr @rip(#000000) Q[2] -pin bcd_converter0 binary_reg[5]_0[2] -pin statemachine Q[2]
load net sig_output[4] -attr @rip(#000000) Q[3] -pin bcd_converter0 binary_reg[5]_0[3] -pin statemachine Q[3]
load net sig_output[5] -attr @rip(#000000) Q[4] -pin bcd_converter0 binary_reg[5]_0[4] -pin statemachine Q[4]
load net sig_round[0] -attr @rip(#000000) sig_cnt_round_reg[3]_0[0] -pin bcd_converter1 binary_reg[3]_0[0] -pin statemachine sig_cnt_round_reg[3]_0[0]
load net sig_round[1] -attr @rip(#000000) sig_cnt_round_reg[3]_0[1] -pin bcd_converter1 binary_reg[3]_0[1] -pin statemachine sig_cnt_round_reg[3]_0[1]
load net sig_round[2] -attr @rip(#000000) sig_cnt_round_reg[3]_0[2] -pin bcd_converter1 binary_reg[3]_0[2] -pin statemachine sig_cnt_round_reg[3]_0[2]
load net sig_round[3] -attr @rip(#000000) sig_cnt_round_reg[3]_0[3] -pin bcd_converter1 binary_reg[3]_0[3] -pin statemachine sig_cnt_round_reg[3]_0[3]
load net sig_round_tens[0] -attr @rip(#000000) Q[4] -pin bcd_converter0 Q[4] -pin bcd_converter1 Q[4]
load net sig_round_tens[1] -attr @rip(#000000) Q[5] -pin bcd_converter0 Q[5] -pin bcd_converter1 Q[5]
load net sig_round_tens[2] -attr @rip(#000000) Q[6] -pin bcd_converter0 Q[6] -pin bcd_converter1 Q[6]
load net sig_round_tens[3] -attr @rip(#000000) Q[7] -pin bcd_converter0 Q[7] -pin bcd_converter1 Q[7]
load net sig_round_units[0] -attr @rip(#000000) Q[0] -pin bcd_converter0 Q[0] -pin bcd_converter1 Q[0]
load net sig_round_units[1] -attr @rip(#000000) Q[1] -pin bcd_converter0 Q[1] -pin bcd_converter1 Q[1]
load net sig_round_units[2] -attr @rip(#000000) Q[2] -pin bcd_converter0 Q[2] -pin bcd_converter1 Q[2]
load net sig_round_units[3] -attr @rip(#000000) Q[3] -pin bcd_converter0 Q[3] -pin bcd_converter1 Q[3]
load net sig_state__0[0] -attr @rip(#000000) sig_state__0[0] -pin bcd_converter0 sig_state__0[0] -pin statemachine sig_state__0[0]
load net sig_state__0[1] -attr @rip(#000000) sig_state__0[1] -pin bcd_converter0 sig_state__0[1] -pin statemachine sig_state__0[1]
load net bcd_converter1|<const1> -power -attr @name <const1> -pin bcd_converter1|FSM_onehot_state_reg[0] CE -pin bcd_converter1|FSM_onehot_state_reg[1] CE -pin bcd_converter1|FSM_onehot_state_reg[2] CE
load net bcd_converter1|BTNC_IBUF -attr @name BTNC_IBUF -hierPin bcd_converter1 BTNC_IBUF -pin bcd_converter1|FSM_onehot_state_reg[0] PRE -pin bcd_converter1|FSM_onehot_state_reg[1] CLR -pin bcd_converter1|FSM_onehot_state_reg[2] CLR -pin bcd_converter1|bcds_out_reg_reg[0] CLR -pin bcd_converter1|bcds_out_reg_reg[1] CLR -pin bcd_converter1|bcds_out_reg_reg[2] CLR -pin bcd_converter1|bcds_out_reg_reg[3] CLR -pin bcd_converter1|bcds_out_reg_reg[4] CLR -pin bcd_converter1|bcds_out_reg_reg[5] CLR -pin bcd_converter1|bcds_out_reg_reg[6] CLR -pin bcd_converter1|bcds_out_reg_reg[7] CLR -pin bcd_converter1|bcds_reg[0] CLR -pin bcd_converter1|bcds_reg[1] CLR -pin bcd_converter1|bcds_reg[2] CLR -pin bcd_converter1|bcds_reg[3] CLR -pin bcd_converter1|bcds_reg[4] CLR -pin bcd_converter1|bcds_reg[5] CLR -pin bcd_converter1|bcds_reg[6] CLR -pin bcd_converter1|bcds_reg[7] CLR -pin bcd_converter1|binary_reg[0] CLR -pin bcd_converter1|binary_reg[1] CLR -pin bcd_converter1|binary_reg[2] CLR -pin bcd_converter1|binary_reg[3] CLR -pin bcd_converter1|shift_counter_reg[0] CLR -pin bcd_converter1|shift_counter_reg[1] CLR -pin bcd_converter1|shift_counter_reg[2] CLR
netloc bcd_converter1|BTNC_IBUF 1 0 36 NJ 918 970 698 NJ 698 1460 698 NJ 698 1950 758 NJ 758 2520 898 2790J 788 3130 918 3420 658 NJ 658 3950 698 NJ 698 4360 818 NJ 818 4790 838 NJ 838 5160 808 NJ 808 5470 878 NJ 878 5840 1018 NJ 1018 6230 1158 6460J 1138 6720 1138 NJ 1138 7090 1358 7300J 1288 7520 1358 NJ 1358 7890 1358 8040J 1318 8260 1658 8490
load net bcd_converter1|CLK100MHZ_IBUF_BUFG -attr @name CLK100MHZ_IBUF_BUFG -hierPin bcd_converter1 CLK100MHZ_IBUF_BUFG -pin bcd_converter1|FSM_onehot_state_reg[0] C -pin bcd_converter1|FSM_onehot_state_reg[1] C -pin bcd_converter1|FSM_onehot_state_reg[2] C -pin bcd_converter1|bcds_out_reg_reg[0] C -pin bcd_converter1|bcds_out_reg_reg[1] C -pin bcd_converter1|bcds_out_reg_reg[2] C -pin bcd_converter1|bcds_out_reg_reg[3] C -pin bcd_converter1|bcds_out_reg_reg[4] C -pin bcd_converter1|bcds_out_reg_reg[5] C -pin bcd_converter1|bcds_out_reg_reg[6] C -pin bcd_converter1|bcds_out_reg_reg[7] C -pin bcd_converter1|bcds_reg[0] C -pin bcd_converter1|bcds_reg[1] C -pin bcd_converter1|bcds_reg[2] C -pin bcd_converter1|bcds_reg[3] C -pin bcd_converter1|bcds_reg[4] C -pin bcd_converter1|bcds_reg[5] C -pin bcd_converter1|bcds_reg[6] C -pin bcd_converter1|bcds_reg[7] C -pin bcd_converter1|binary_reg[0] C -pin bcd_converter1|binary_reg[1] C -pin bcd_converter1|binary_reg[2] C -pin bcd_converter1|binary_reg[3] C -pin bcd_converter1|shift_counter_reg[0] C -pin bcd_converter1|shift_counter_reg[1] C -pin bcd_converter1|shift_counter_reg[2] C
netloc bcd_converter1|CLK100MHZ_IBUF_BUFG 1 0 36 NJ 938 950 658 NJ 658 1400 658 NJ 658 1910 738 NJ 738 2540 698 NJ 698 3150 738 3440 638 NJ 638 3930 718 NJ 718 4320 838 NJ 838 4750 678 NJ 678 5140 768 NJ 768 5490 718 NJ 718 5880 758 NJ 758 6270 898 NJ 898 6680 1118 NJ 1118 7110 1178 NJ 1178 7520 1178 NJ 1178 7910 1178 NJ 1178 8280 1178 8430
load net bcd_converter1|FSM_onehot_state[1]_i_1__0_n_0 -attr @name FSM_onehot_state[1]_i_1__0_n_0 -pin bcd_converter1|FSM_onehot_state[1]_i_1__0 O -pin bcd_converter1|FSM_onehot_state_reg[1] D
netloc bcd_converter1|FSM_onehot_state[1]_i_1__0_n_0 1 7 1 N 848
load net bcd_converter1|FSM_onehot_state[2]_i_1__0_n_0 -attr @name FSM_onehot_state[2]_i_1__0_n_0 -pin bcd_converter1|FSM_onehot_state[2]_i_1__0 O -pin bcd_converter1|FSM_onehot_state_reg[2] D
netloc bcd_converter1|FSM_onehot_state[2]_i_1__0_n_0 1 9 1 N 868
load net bcd_converter1|FSM_onehot_state_reg_n_0_[0] -attr @name FSM_onehot_state_reg_n_0_[0] -pin bcd_converter1|FSM_onehot_state[1]_i_1__0 I0 -pin bcd_converter1|FSM_onehot_state[2]_i_1__0 I0 -pin bcd_converter1|FSM_onehot_state_reg[0] Q -pin bcd_converter1|binary[0]_i_1 I0 -pin bcd_converter1|binary[1]_i_1 I1 -pin bcd_converter1|binary[2]_i_1 I1 -pin bcd_converter1|binary[3]_i_1__0 I0 -pin bcd_converter1|binary[3]_i_2 I1
netloc bcd_converter1|FSM_onehot_state_reg_n_0_[0] 1 6 12 2240 948 NJ 948 2870 968 NJ 968 NJ 968 3690 778 NJ 778 4160 778 NJ 778 4570 858 NJ 858 4940
load net bcd_converter1|FSM_onehot_state_reg_n_0_[1] -attr @name FSM_onehot_state_reg_n_0_[1] -pin bcd_converter1|FSM_onehot_state[1]_i_1__0 I1 -pin bcd_converter1|FSM_onehot_state[2]_i_1__0 I1 -pin bcd_converter1|FSM_onehot_state_reg[1] Q -pin bcd_converter1|bcds[0]_i_1 I0 -pin bcd_converter1|bcds[1]_i_1 I0 -pin bcd_converter1|bcds[2]_i_1__0 I0 -pin bcd_converter1|bcds[3]_i_1 I0 -pin bcd_converter1|bcds[4]_i_1 I0 -pin bcd_converter1|bcds[5]_i_1 I0 -pin bcd_converter1|bcds[6]_i_1__0 I0 -pin bcd_converter1|bcds[7]_i_1 I0 -pin bcd_converter1|binary[1]_i_1 I3 -pin bcd_converter1|binary[2]_i_1 I3 -pin bcd_converter1|binary[3]_i_1__0 I4 -pin bcd_converter1|binary[3]_i_2 I3 -pin bcd_converter1|shift_counter[0]_i_1__0 I0 -pin bcd_converter1|shift_counter[1]_i_1 I0 -pin bcd_converter1|shift_counter[2]_i_1 I0
netloc bcd_converter1|FSM_onehot_state_reg_n_0_[1] 1 0 34 690 878 NJ 878 1200 838 NJ 838 1650 878 NJ 878 2160 718 NJ 718 2850 718 NJ 718 NJ 718 3730 798 NJ 798 4180 798 NJ 798 4590 958 NJ 958 4960 998 NJ 998 5310 928 NJ 928 5640 918 NJ 918 6010 1058 NJ 1058 6400 1218 NJ 1218 6910 1378 NJ 1378 7260 1448 NJ 1448 7650 1378 NJ 1378 NJ
load net bcd_converter1|Q[0] -attr @name Q[0] -attr @rip(#000000) 0 -hierPin bcd_converter1 Q[0] -pin bcd_converter1|bcds_out_reg_reg[0] Q
load net bcd_converter1|Q[1] -attr @name Q[1] -attr @rip(#000000) 1 -hierPin bcd_converter1 Q[1] -pin bcd_converter1|bcds_out_reg_reg[1] Q
load net bcd_converter1|Q[2] -attr @name Q[2] -attr @rip(#000000) 2 -hierPin bcd_converter1 Q[2] -pin bcd_converter1|bcds_out_reg_reg[2] Q
load net bcd_converter1|Q[3] -attr @name Q[3] -attr @rip(#000000) 3 -hierPin bcd_converter1 Q[3] -pin bcd_converter1|bcds_out_reg_reg[3] Q
load net bcd_converter1|Q[4] -attr @name Q[4] -attr @rip(#000000) 4 -hierPin bcd_converter1 Q[4] -pin bcd_converter1|bcds_out_reg_reg[4] Q
load net bcd_converter1|Q[5] -attr @name Q[5] -attr @rip(#000000) 5 -hierPin bcd_converter1 Q[5] -pin bcd_converter1|bcds_out_reg_reg[5] Q
load net bcd_converter1|Q[6] -attr @name Q[6] -attr @rip(#000000) 6 -hierPin bcd_converter1 Q[6] -pin bcd_converter1|bcds_out_reg_reg[6] Q
load net bcd_converter1|Q[7] -attr @name Q[7] -attr @rip(#000000) 7 -hierPin bcd_converter1 Q[7] -pin bcd_converter1|bcds_out_reg_reg[7] Q
load net bcd_converter1|bcds[0]_i_1_n_0 -attr @name bcds[0]_i_1_n_0 -pin bcd_converter1|bcds[0]_i_1 O -pin bcd_converter1|bcds_reg[0] D
netloc bcd_converter1|bcds[0]_i_1_n_0 1 20 1 5450 828n
load net bcd_converter1|bcds[1]_i_1_n_0 -attr @name bcds[1]_i_1_n_0 -pin bcd_converter1|bcds[1]_i_1 O -pin bcd_converter1|bcds_reg[1] D
netloc bcd_converter1|bcds[1]_i_1_n_0 1 24 1 6250 938n
load net bcd_converter1|bcds[2]_i_1__0_n_0 -attr @name bcds[2]_i_1__0_n_0 -pin bcd_converter1|bcds[2]_i_1__0 O -pin bcd_converter1|bcds_reg[2] D
netloc bcd_converter1|bcds[2]_i_1__0_n_0 1 26 1 6660 1058n
load net bcd_converter1|bcds[3]_i_1_n_0 -attr @name bcds[3]_i_1_n_0 -pin bcd_converter1|bcds[3]_i_1 O -pin bcd_converter1|bcds_reg[3] D
netloc bcd_converter1|bcds[3]_i_1_n_0 1 22 1 5860 798n
load net bcd_converter1|bcds[4]_i_1_n_0 -attr @name bcds[4]_i_1_n_0 -pin bcd_converter1|bcds[4]_i_1 O -pin bcd_converter1|bcds_reg[4] D
netloc bcd_converter1|bcds[4]_i_1_n_0 1 28 1 7070 1278n
load net bcd_converter1|bcds[5]_i_1_n_0 -attr @name bcds[5]_i_1_n_0 -pin bcd_converter1|bcds[5]_i_1 O -pin bcd_converter1|bcds_reg[5] D
netloc bcd_converter1|bcds[5]_i_1_n_0 1 34 1 8280 1288n
load net bcd_converter1|bcds[6]_i_1__0_n_0 -attr @name bcds[6]_i_1__0_n_0 -pin bcd_converter1|bcds[6]_i_1__0 O -pin bcd_converter1|bcds_reg[6] D
netloc bcd_converter1|bcds[6]_i_1__0_n_0 1 32 1 7910 1308n
load net bcd_converter1|bcds[7]_i_1_n_0 -attr @name bcds[7]_i_1_n_0 -pin bcd_converter1|bcds[7]_i_1 O -pin bcd_converter1|bcds_reg[7] D
netloc bcd_converter1|bcds[7]_i_1_n_0 1 30 1 7500 1308n
load net bcd_converter1|bcds_out_reg_next -attr @name bcds_out_reg_next -pin bcd_converter1|FSM_onehot_state[1]_i_1__0 I5 -pin bcd_converter1|FSM_onehot_state[2]_i_1__0 I5 -pin bcd_converter1|FSM_onehot_state_reg[0] D -pin bcd_converter1|FSM_onehot_state_reg[2] Q -pin bcd_converter1|bcds_out_reg_reg[0] CE -pin bcd_converter1|bcds_out_reg_reg[1] CE -pin bcd_converter1|bcds_out_reg_reg[2] CE -pin bcd_converter1|bcds_out_reg_reg[3] CE -pin bcd_converter1|bcds_out_reg_reg[4] CE -pin bcd_converter1|bcds_out_reg_reg[5] CE -pin bcd_converter1|bcds_out_reg_reg[6] CE -pin bcd_converter1|bcds_out_reg_reg[7] CE
netloc bcd_converter1|bcds_out_reg_next 1 6 30 2260 1028 NJ 1028 2790 1048 NJ 1048 3400 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 NJ 1618 8470
load net bcd_converter1|bcds_reg_n_0_[0] -attr @name bcds_reg_n_0_[0] -pin bcd_converter1|bcds[1]_i_1 I2 -pin bcd_converter1|bcds[2]_i_1__0 I4 -pin bcd_converter1|bcds[3]_i_1 I2 -pin bcd_converter1|bcds[4]_i_1 I2 -pin bcd_converter1|bcds_out_reg_reg[0] D -pin bcd_converter1|bcds_reg[0] Q
netloc bcd_converter1|bcds_reg_n_0_[0] 1 21 15 5620 958 NJ 958 6050 1138 NJ 1138 6440 1198 6720J 1178 6930 738 NJ 738 NJ 738 NJ 738 NJ 738 NJ 738 NJ 738 NJ 738 NJ
load net bcd_converter1|bcds_reg_n_0_[1] -attr @name bcds_reg_n_0_[1] -pin bcd_converter1|bcds[1]_i_1 I1 -pin bcd_converter1|bcds[2]_i_1__0 I1 -pin bcd_converter1|bcds[3]_i_1 I3 -pin bcd_converter1|bcds[4]_i_1 I3 -pin bcd_converter1|bcds_out_reg_reg[1] D -pin bcd_converter1|bcds_reg[1] Q
netloc bcd_converter1|bcds_reg_n_0_[1] 1 21 15 5680 938 NJ 938 6030 1078 NJ 1078 6480 1158 NJ 1158 6850 888 NJ 888 NJ 888 NJ 888 NJ 888 NJ 888 NJ 888 NJ 888 NJ
load net bcd_converter1|bcds_reg_n_0_[2] -attr @name bcds_reg_n_0_[2] -pin bcd_converter1|bcds[1]_i_1 I3 -pin bcd_converter1|bcds[2]_i_1__0 I3 -pin bcd_converter1|bcds[3]_i_1 I4 -pin bcd_converter1|bcds[4]_i_1 I1 -pin bcd_converter1|bcds_out_reg_reg[2] D -pin bcd_converter1|bcds_reg[2] Q
netloc bcd_converter1|bcds_reg_n_0_[2] 1 21 15 5700 978 NJ 978 6070 1118 NJ 1118 6500 1238 NJ 1238 6890 1038 NJ 1038 NJ 1038 NJ 1038 NJ 1038 NJ 1038 NJ 1038 NJ 1038 NJ
load net bcd_converter1|bcds_reg_n_0_[3] -attr @name bcds_reg_n_0_[3] -pin bcd_converter1|bcds[1]_i_1 I4 -pin bcd_converter1|bcds[2]_i_1__0 I2 -pin bcd_converter1|bcds[3]_i_1 I1 -pin bcd_converter1|bcds[4]_i_1 I4 -pin bcd_converter1|bcds_out_reg_reg[3] D -pin bcd_converter1|bcds_reg[3] Q
netloc bcd_converter1|bcds_reg_n_0_[3] 1 21 15 5660 998 NJ 998 6090 1098 NJ 1098 6420 1258 NJ 1258 6870 1158 NJ 1158 NJ 1158 NJ 1158 NJ 1158 NJ 1158 NJ 1158 NJ 1158 8450J
load net bcd_converter1|bcds_reg_n_0_[4] -attr @name bcds_reg_n_0_[4] -pin bcd_converter1|bcds[5]_i_1 I2 -pin bcd_converter1|bcds[6]_i_1__0 I4 -pin bcd_converter1|bcds[7]_i_1 I2 -pin bcd_converter1|bcds_out_reg_reg[4] D -pin bcd_converter1|bcds_reg[4] Q
netloc bcd_converter1|bcds_reg_n_0_[4] 1 29 7 7280 1528 NJ 1528 7730 1538 NJ 1538 8060 1338 NJ 1338 NJ
load net bcd_converter1|bcds_reg_n_0_[5] -attr @name bcds_reg_n_0_[5] -pin bcd_converter1|bcds[5]_i_1 I1 -pin bcd_converter1|bcds[6]_i_1__0 I1 -pin bcd_converter1|bcds[7]_i_1 I3 -pin bcd_converter1|bcds_out_reg_reg[5] D -pin bcd_converter1|bcds_reg[5] Q
netloc bcd_converter1|bcds_reg_n_0_[5] 1 29 7 7360 1468 NJ 1468 7670 1558 NJ 1558 8100 1498 NJ 1498 8410
load net bcd_converter1|bcds_reg_n_0_[6] -attr @name bcds_reg_n_0_[6] -pin bcd_converter1|bcds[5]_i_1 I3 -pin bcd_converter1|bcds[6]_i_1__0 I3 -pin bcd_converter1|bcds[7]_i_1 I4 -pin bcd_converter1|bcds_out_reg_reg[6] D -pin bcd_converter1|bcds_reg[6] Q
netloc bcd_converter1|bcds_reg_n_0_[6] 1 29 7 7340 1508 NJ 1508 7710 1578 NJ 1578 8080 1638 NJ 1638 NJ
load net bcd_converter1|bcds_reg_n_0_[7] -attr @name bcds_reg_n_0_[7] -pin bcd_converter1|bcds[5]_i_1 I4 -pin bcd_converter1|bcds[6]_i_1__0 I2 -pin bcd_converter1|bcds[7]_i_1 I1 -pin bcd_converter1|bcds_out_reg_reg[7] D -pin bcd_converter1|bcds_reg[7] Q
netloc bcd_converter1|bcds_reg_n_0_[7] 1 29 7 7320 1488 NJ 1488 7690 1598 NJ 1598 8120 1788 NJ 1788 NJ
load net bcd_converter1|binary[3]_i_1__0_n_0 -attr @name binary[3]_i_1__0_n_0 -pin bcd_converter1|bcds_reg[0] CE -pin bcd_converter1|bcds_reg[1] CE -pin bcd_converter1|bcds_reg[2] CE -pin bcd_converter1|bcds_reg[3] CE -pin bcd_converter1|bcds_reg[4] CE -pin bcd_converter1|bcds_reg[5] CE -pin bcd_converter1|bcds_reg[6] CE -pin bcd_converter1|bcds_reg[7] CE -pin bcd_converter1|binary[3]_i_1__0 O -pin bcd_converter1|binary_reg[0] CE -pin bcd_converter1|binary_reg[1] CE -pin bcd_converter1|binary_reg[2] CE -pin bcd_converter1|binary_reg[3] CE -pin bcd_converter1|shift_counter_reg[0] CE -pin bcd_converter1|shift_counter_reg[1] CE -pin bcd_converter1|shift_counter_reg[2] CE
netloc bcd_converter1|binary[3]_i_1__0_n_0 1 1 34 990 678 NJ 678 1420 678 NJ 678 1890 558 NJ 558 NJ 558 NJ 558 NJ 558 NJ 558 NJ 558 3910 738 NJ 738 4340 878 NJ 878 4770 878 4980J 858 5120 788 NJ 788 5490 898 NJ 898 5880 1038 NJ 1038 6270 1178 NJ 1178 6700 1198 NJ 1198 7130 1198 NJ 1198 7500 1198 NJ 1198 7890 1198 NJ 1198 8260
load net bcd_converter1|binary_next[0] -attr @name binary_next[0] -pin bcd_converter1|binary[0]_i_1 O -pin bcd_converter1|binary_reg[0] D
netloc bcd_converter1|binary_next[0] 1 12 1 3970 648n
load net bcd_converter1|binary_next[1] -attr @name binary_next[1] -pin bcd_converter1|binary[1]_i_1 O -pin bcd_converter1|binary_reg[1] D
netloc bcd_converter1|binary_next[1] 1 14 1 4380 618n
load net bcd_converter1|binary_next[2] -attr @name binary_next[2] -pin bcd_converter1|binary[2]_i_1 O -pin bcd_converter1|binary_reg[2] D
netloc bcd_converter1|binary_next[2] 1 16 1 4730 738n
load net bcd_converter1|binary_next[3] -attr @name binary_next[3] -pin bcd_converter1|binary[3]_i_2 O -pin bcd_converter1|binary_reg[3] D
netloc bcd_converter1|binary_next[3] 1 18 1 N 918
load net bcd_converter1|binary_reg[3]_0[0] -attr @name binary_reg[3]_0[0] -attr @rip(#000000) binary_reg[3]_0[0] -hierPin bcd_converter1 binary_reg[3]_0[0] -pin bcd_converter1|binary[0]_i_1 I1
load net bcd_converter1|binary_reg[3]_0[1] -attr @name binary_reg[3]_0[1] -attr @rip(#000000) binary_reg[3]_0[1] -hierPin bcd_converter1 binary_reg[3]_0[1] -pin bcd_converter1|binary[1]_i_1 I0
load net bcd_converter1|binary_reg[3]_0[2] -attr @name binary_reg[3]_0[2] -attr @rip(#000000) binary_reg[3]_0[2] -hierPin bcd_converter1 binary_reg[3]_0[2] -pin bcd_converter1|binary[2]_i_1 I0
load net bcd_converter1|binary_reg[3]_0[3] -attr @name binary_reg[3]_0[3] -attr @rip(#000000) binary_reg[3]_0[3] -hierPin bcd_converter1 binary_reg[3]_0[3] -pin bcd_converter1|binary[3]_i_2 I0
load net bcd_converter1|binary_reg_n_0_[3] -attr @name binary_reg_n_0_[3] -pin bcd_converter1|bcds[0]_i_1 I1 -pin bcd_converter1|binary_reg[3] Q
netloc bcd_converter1|binary_reg_n_0_[3] 1 19 1 N 888
load net bcd_converter1|p_0_in[1] -attr @name p_0_in[1] -pin bcd_converter1|binary[1]_i_1 I2 -pin bcd_converter1|binary_reg[0] Q
netloc bcd_converter1|p_0_in[1] 1 13 1 4140 618n
load net bcd_converter1|p_0_in[2] -attr @name p_0_in[2] -pin bcd_converter1|binary[2]_i_1 I2 -pin bcd_converter1|binary_reg[1] Q
netloc bcd_converter1|p_0_in[2] 1 15 1 4550 678n
load net bcd_converter1|p_0_in[3] -attr @name p_0_in[3] -pin bcd_converter1|binary[3]_i_2 I2 -pin bcd_converter1|binary_reg[2] Q
netloc bcd_converter1|p_0_in[3] 1 17 1 4960 758n
load net bcd_converter1|shift_counter[0] -attr @name shift_counter[0] -pin bcd_converter1|FSM_onehot_state[1]_i_1__0 I3 -pin bcd_converter1|FSM_onehot_state[2]_i_1__0 I3 -pin bcd_converter1|binary[3]_i_1__0 I2 -pin bcd_converter1|shift_counter[0]_i_1__0 I1 -pin bcd_converter1|shift_counter[1]_i_1 I2 -pin bcd_converter1|shift_counter[2]_i_1 I3 -pin bcd_converter1|shift_counter_reg[0] Q
netloc bcd_converter1|shift_counter[0] 1 0 12 710 898 NJ 898 1180 898 NJ 898 1670 918 NJ 918 2220 988 NJ 988 2830 1008 NJ 1008 NJ 1008 3710
load net bcd_converter1|shift_counter[0]_i_1__0_n_0 -attr @name shift_counter[0]_i_1__0_n_0 -pin bcd_converter1|shift_counter[0]_i_1__0 O -pin bcd_converter1|shift_counter_reg[0] D
netloc bcd_converter1|shift_counter[0]_i_1__0_n_0 1 1 1 930 818n
load net bcd_converter1|shift_counter[1] -attr @name shift_counter[1] -pin bcd_converter1|FSM_onehot_state[1]_i_1__0 I2 -pin bcd_converter1|FSM_onehot_state[2]_i_1__0 I2 -pin bcd_converter1|binary[3]_i_1__0 I3 -pin bcd_converter1|shift_counter[1]_i_1 I1 -pin bcd_converter1|shift_counter[2]_i_1 I2 -pin bcd_converter1|shift_counter_reg[1] Q
netloc bcd_converter1|shift_counter[1] 1 2 10 1220 858 NJ 858 1690 898 NJ 898 2180 968 NJ 968 2850 988 NJ 988 NJ 988 N
load net bcd_converter1|shift_counter[2] -attr @name shift_counter[2] -pin bcd_converter1|FSM_onehot_state[1]_i_1__0 I4 -pin bcd_converter1|FSM_onehot_state[2]_i_1__0 I4 -pin bcd_converter1|binary[3]_i_1__0 I1 -pin bcd_converter1|shift_counter[2]_i_1 I1 -pin bcd_converter1|shift_counter_reg[2] Q
netloc bcd_converter1|shift_counter[2] 1 4 8 1710 738 1890J 778 2200 1008 NJ 1008 2810 1028 NJ 1028 NJ 1028 3750
load net bcd_converter1|shift_counter_next[1] -attr @name shift_counter_next[1] -pin bcd_converter1|shift_counter[1]_i_1 O -pin bcd_converter1|shift_counter_reg[1] D
netloc bcd_converter1|shift_counter_next[1] 1 3 1 1440 608n
load net bcd_converter1|shift_counter_next[2] -attr @name shift_counter_next[2] -pin bcd_converter1|shift_counter[2]_i_1 O -pin bcd_converter1|shift_counter_reg[2] D
netloc bcd_converter1|shift_counter_next[2] 1 5 1 1930 668n
load netBundle @bcd_converter1|binary_reg 4 bcd_converter1|binary_reg[3]_0[3] bcd_converter1|binary_reg[3]_0[2] bcd_converter1|binary_reg[3]_0[1] bcd_converter1|binary_reg[3]_0[0] -autobundled
netbloc @bcd_converter1|binary_reg 1 0 18 670J 718 NJ 718 NJ 718 NJ 718 NJ 718 NJ 718 2140J 698 2520J 678 NJ 678 NJ 678 NJ 678 3750 758 NJ 758 4120 758 NJ 758 4530 898 NJ 898 4980J
load netBundle @bcd_converter1|Q 8 bcd_converter1|Q[7] bcd_converter1|Q[6] bcd_converter1|Q[5] bcd_converter1|Q[4] bcd_converter1|Q[3] bcd_converter1|Q[2] bcd_converter1|Q[1] bcd_converter1|Q[0] -autobundled
netbloc @bcd_converter1|Q 1 36 1 8680 708n
load netBundle @SW 16 SW[15] SW[14] SW[13] SW[12] SW[11] SW[10] SW[9] SW[8] SW[7] SW[6] SW[5] SW[4] SW[3] SW[2] SW[1] SW[0] -autobundled
netbloc @SW 1 0 2 NJ 780 -180
load netBundle @AN 8 AN[7] AN[6] AN[5] AN[4] AN[3] AN[2] AN[1] AN[0] -autobundled
netbloc @AN 1 6 1 1950 590n
load netBundle @bcd_converter0_n_ 4 bcd_converter0_n_0 bcd_converter0_n_1 bcd_converter0_n_2 bcd_converter0_n_3 -autobundled
netbloc @bcd_converter0_n_ 1 4 1 N 550
load netBundle @sig_round_tens 8 sig_round_tens[3] sig_round_tens[2] sig_round_tens[1] sig_round_tens[0] sig_round_units[3] sig_round_units[2] sig_round_units[1] sig_round_units[0] -autobundled
netbloc @sig_round_tens 1 3 2 770 440 1240
load netBundle @AN_OBUF 4 AN_OBUF[3] AN_OBUF[2] AN_OBUF[1] AN_OBUF[0] -autobundled
netbloc @AN_OBUF 1 5 1 1680 590n
load netBundle @sig_cnt_2bit 2 sig_cnt_2bit[1] sig_cnt_2bit[0] -autobundled
netbloc @sig_cnt_2bit 1 3 3 750 300 N 300 1600
load netBundle @sig_output 5 sig_output[5] sig_output[4] sig_output[3] sig_output[2] sig_output[1] -autobundled
netbloc @sig_output 1 3 1 650 360n
load netBundle @sig_round 4 sig_round[3] sig_round[2] sig_round[1] sig_round[0] -autobundled
netbloc @sig_round 1 3 1 690 380n
load netBundle @sig_state__0 2 sig_state__0[1] sig_state__0[0] -autobundled
netbloc @sig_state__0 1 3 1 630 400n
load netBundle @SW_IBUF 16 SW_IBUF[15] SW_IBUF[14] SW_IBUF[13] SW_IBUF[12] SW_IBUF[11] SW_IBUF[10] SW_IBUF[9] SW_IBUF[8] SW_IBUF[7] SW_IBUF[6] SW_IBUF[5] SW_IBUF[4] SW_IBUF[3] SW_IBUF[2] SW_IBUF[1] SW_IBUF[0] -autobundled
netbloc @SW_IBUF 1 2 1 100 40n
levelinfo -pg 1 -410 -370 -140 340 950 1420 1800 1970
levelinfo -hier bcd_converter1 * 790 1050 1280 1520 1770 2010 2360 2640 2970 3250 3540 3800 4010 4220 4420 4630 4830 5020 5200 5350 5520 5740 5910 6130 6300 6550 6750 6970 7160 7400 7550 7780 7940 8160 8310 8550 *
pagesize -pg 1 -db -bbox -sgen -550 -190 2070 2220
pagesize -hier bcd_converter1 -db -bbox -sgen 640 498 8710 1838
show
zoom 0.432185
scrollpos -379 -70
#
# initialize ictrl to current module top work:top:NOFILE
ictrl init topinfo |
