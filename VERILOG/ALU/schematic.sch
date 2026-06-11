# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
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
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
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
property showripindex 1
property timelimit 1
#
module new final_tb work:final_tb:NOFILE -nosplit
load symbol ALU_System work:ALU_System:NOFILE HIERBOX pin Cout output.right pinBus A input.left [7:0] pinBus B input.left [7:0] pinBus Sel input.left [2:0] pinBus Y output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Adder work:Adder:NOFILE HIERBOX pin C0 input.left pin C8 output.right pinBus A input.left [7:0] pinBus B input.left [7:0] pinBus Output5 output.right [15:0] pinBus S output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ALU work:ALU:NOFILE HIERBOX pinBus Sel input.left [2:0] pinBus Y output.right [15:0] pinBus in0 input.left [15:0] pinBus in1 input.left [15:0] pinBus in2 input.left [15:0] pinBus in3 input.left [15:0] pinBus in4 input.left [15:0] pinBus in5 input.left [15:0] pinBus in6 input.left [15:0] pinBus in7 input.left [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol AND work:AND:NOFILE HIERBOX pinBus A input.left [7:0] pinBus B input.left [7:0] pinBus Output3 output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol MUL_8_bit work:MUL_8_bit:NOFILE HIERBOX pinBus A input.left [7:0] pinBus B input.left [7:0] pinBus Output7 output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol NOT work:NOT:NOFILE HIERBOX pinBus A input.left [7:0] pinBus B input.left [7:0] pinBus Output1 output.right [15:0] pinBus Output8 output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol NOT work:abstract:NOFILE HIERBOX pinBus A input.left [7:0] pinBus B input.left [7:0] pinBus Output1 output.right [15:0] pinBus Output8 output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol OR work:OR:NOFILE HIERBOX pinBus A input.left [7:0] pinBus B input.left [7:0] pinBus Output2 output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol SUB_8_bit work:SUB_8_bit:NOFILE HIERBOX pin Borrow output.right pinBus A input.left [7:0] pinBus B input.left [7:0] pinBus Diff output.right [7:0] pinBus Output6 output.right [8:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol XOR work:XOR:NOFILE HIERBOX pinBus A input.left [7:0] pinBus B input.left [7:0] pinBus Output4 output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_AND work AND pinBus I0 input [15:0] pinBus I1 input [15:0] pinBus O output [15:0] fillcolor 1
load symbol RTL_INV work INV pinBus I0 input [7:0] pinBus O output [15:0] fillcolor 1
load symbol RTL_MUX work MUX pinBus I0 input.left [15:0] pinBus I1 input.left [15:0] pinBus I2 input.left [15:0] pinBus I3 input.left [15:0] pinBus I4 input.left [15:0] pinBus I5 input.left [15:0] pinBus I6 input.left [15:0] pinBus I7 input.left [15:0] pinBus O output.right [15:0] pinBus S input.bot [2:0] fillcolor 1
load symbol RTL_OR work OR pinBus I0 input [15:0] pinBus I1 input [15:0] pinBus O output [15:0] fillcolor 1
load symbol RTL_MULT work RTL(*) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [15:0] fillcolor 1
load symbol RTL_SUB work RTL(-) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [8:0] fillcolor 1
load symbol RTL_XOR work XOR pinBus I0 input [15:0] pinBus I1 input [15:0] pinBus O output [15:0] fillcolor 1
load symbol FullAdder work:FullAdder:NOFILE HIERBOX pin C output.right pin S output.right pin x input.left pin y input.left pin z input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol FullAdder work:abstract:NOFILE HIERBOX pin C output.right pin S output.right pin x input.left pin y input.left pin z input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_XOR0 work XOR pin I0 input pin I1 input pin O output fillcolor 1
load symbol Halfadder work:abstract:NOFILE HIERBOX pin C output.right pin S output.right pin x input.left pin y input.left boxcolor 1 fillcolor 2 minwidth 13%
load inst dut ALU_System work:ALU_System:NOFILE -autohide -attr @cell(#000000) ALU_System -attr @fillcolor #fafafa -pinAttr Cout @attr n/c -pinBusAttr A @name A[7:0] -pinBusAttr A @attr V=B\"00000010\" -pinBusAttr B @name B[7:0] -pinBusAttr B @attr V=B\"00001010\" -pinBusAttr Sel @name Sel[2:0] -pinBusAttr Sel @attr V=B\"110\" -pinBusAttr Y @name Y[15:0] -pinBusAttr Y @attr n/c -pg 1 -lvl 1 -x -210 -y 70
load inst dut|add_unit Adder work:Adder:NOFILE -hier dut -autohide -attr @cell(#000000) Adder -attr @name add_unit -attr @fillcolor #fafafa -pinBusAttr A @name A[7:0] -pinBusAttr A @attr V=B\"00000010\" -pinBusAttr B @name B[7:0] -pinBusAttr B @attr V=B\"00001010\" -pinBusAttr Output5 @name Output5[15:0] -pinBusAttr Output5 @attr n/c -pinBusAttr S @name S[7:0] -pg 1 -lvl 1 -x 10 -y 1240
load inst dut|alu_mux ALU work:ALU:NOFILE -unfold -hier dut -autohide -attr @cell(#000000) ALU -attr @name alu_mux -attr @fillcolor #fafafa -pinBusAttr Sel @name Sel[2:0] -pinBusAttr Sel @attr V=B\"110\" -pinBusAttr Y @name Y[15:0] -pinBusAttr in0 @name in0[15:0] -pinBusAttr in1 @name in1[15:0] -pinBusAttr in2 @name in2[15:0] -pinBusAttr in3 @name in3[15:0] -pinBusAttr in4 @name in4[15:0] -pinBusAttr in5 @name in5[15:0] -pinBusAttr in6 @name in6[15:0] -pinBusAttr in7 @name in7[15:0] -pg 1 -lvl 2 -x 1310 -y 358
load inst dut|and_unit AND work:AND:NOFILE -hier dut -autohide -attr @cell(#000000) AND -attr @name and_unit -attr @fillcolor #fafafa -pinBusAttr A @name A[7:0] -pinBusAttr A @attr V=B\"00000010\" -pinBusAttr B @name B[7:0] -pinBusAttr B @attr V=B\"00001010\" -pinBusAttr Output3 @name Output3[15:0] -pg 1 -lvl 1 -x 10 -y 50
load inst dut|mul_unit MUL_8_bit work:MUL_8_bit:NOFILE -hier dut -autohide -attr @cell(#000000) MUL_8_bit -attr @name mul_unit -attr @fillcolor #fafafa -pinBusAttr A @name A[7:0] -pinBusAttr A @attr V=B\"00000010\" -pinBusAttr B @name B[7:0] -pinBusAttr B @attr V=B\"00001010\" -pinBusAttr Output7 @name Output7[15:0] -pg 1 -lvl 1 -x 10 -y 580
load inst dut|not_a_unit NOT work:NOT:NOFILE -hier dut -autohide -attr @cell(#000000) NOT -attr @name not_a_unit -attr @fillcolor #fafafa -pinBusAttr A @name A[7:0] -pinBusAttr A @attr V=B\"00000010\" -pinBusAttr B @name B[7:0] -pinBusAttr B @attr n/c -pinBusAttr Output1 @name Output1[15:0] -pinBusAttr Output8 @name Output8[15:0] -pinBusAttr Output8 @attr n/c -pg 1 -lvl 1 -x 10 -y 200
load inst dut|not_b_unit NOT work:abstract:NOFILE -hier dut -autohide -attr @cell(#000000) NOT -attr @name not_b_unit -attr @fillcolor #fafafa -pinBusAttr A @name A[7:0] -pinBusAttr A @attr n/c -pinBusAttr B @name B[7:0] -pinBusAttr B @attr V=B\"00001010\" -pinBusAttr Output1 @name Output1[15:0] -pinBusAttr Output1 @attr n/c -pinBusAttr Output8 @name Output8[15:0] -pg 1 -lvl 1 -x 10 -y 1030
load inst dut|or_unit OR work:OR:NOFILE -hier dut -autohide -attr @cell(#000000) OR -attr @name or_unit -attr @fillcolor #fafafa -pinBusAttr A @name A[7:0] -pinBusAttr A @attr V=B\"00000010\" -pinBusAttr B @name B[7:0] -pinBusAttr B @attr V=B\"00001010\" -pinBusAttr Output2 @name Output2[15:0] -pg 1 -lvl 1 -x 10 -y 400
load inst dut|sub_unit SUB_8_bit work:SUB_8_bit:NOFILE -hier dut -autohide -attr @cell(#000000) SUB_8_bit -attr @name sub_unit -attr @fillcolor #fafafa -pinAttr Borrow @attr n/c -pinBusAttr A @name A[7:0] -pinBusAttr A @attr V=B\"00000010\" -pinBusAttr B @name B[7:0] -pinBusAttr B @attr V=B\"00001010\" -pinBusAttr Diff @name Diff[7:0] -pinBusAttr Output6 @name Output6[8:0] -pinBusAttr Output6 @attr n/c -pg 1 -lvl 1 -x 10 -y 730
load inst dut|xor_unit XOR work:XOR:NOFILE -hier dut -autohide -attr @cell(#000000) XOR -attr @name xor_unit -attr @fillcolor #fafafa -pinBusAttr A @name A[7:0] -pinBusAttr A @attr V=B\"00000010\" -pinBusAttr B @name B[7:0] -pinBusAttr B @attr V=B\"00001010\" -pinBusAttr Output4 @name Output4[15:0] -pg 1 -lvl 1 -x 10 -y 880
load inst dut|and_unit|Output3_i RTL_AND work -hier dut|and_unit -attr @cell(#000000) RTL_AND -attr @name Output3_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr V=B\"0000000000000010\" -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr V=B\"0000000000001010\" -pinBusAttr O @name O[15:0] -pg 1 -lvl 1 -x 260 -y 60
load inst dut|not_a_unit|Output1_i RTL_INV work -hier dut|not_a_unit -attr @cell(#000000) RTL_INV -attr @name Output1_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr V=B\"00000010\" -pinBusAttr O @name O[15:0] -pg 1 -lvl 1 -x 170 -y 210
load inst dut|not_a_unit|Output8_i RTL_INV work -hier dut|not_a_unit -attr @cell(#000000) RTL_INV -attr @name Output8_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[15:0] -pg 1 -lvl 1 -x 170 -y 280
load inst dut|alu_mux|Y_i RTL_MUX work -hier dut|alu_mux -attr @cell(#000000) RTL_MUX -attr @name Y_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=3'b000 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=3'b001 -pinBusAttr I2 @name I2[15:0] -pinBusAttr I2 @attr S=3'b010 -pinBusAttr I3 @name I3[15:0] -pinBusAttr I3 @attr S=3'b011 -pinBusAttr I4 @name I4[15:0] -pinBusAttr I4 @attr S=3'b100 -pinBusAttr I5 @name I5[15:0] -pinBusAttr I5 @attr S=3'b101 -pinBusAttr I6 @name I6[15:0] -pinBusAttr I6 @attr S=3'b110 -pinBusAttr I7 @name I7[15:0] -pinBusAttr I7 @attr S=3'b111 -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[2:0] -pinBusAttr S @attr V=B\"110\" -pg 1 -lvl 1 -x 1470 -y 448
load inst dut|or_unit|Output2_i RTL_OR work -hier dut|or_unit -attr @cell(#000000) RTL_OR -attr @name Output2_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr V=B\"0000000000000010\" -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr V=B\"0000000000001010\" -pinBusAttr O @name O[15:0] -pg 1 -lvl 1 -x 260 -y 410
load inst dut|mul_unit|Output70_i RTL_MULT work -hier dut|mul_unit -attr @cell(#000000) RTL_MULT -attr @name Output70_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr V=B\"00000010\" -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr V=B\"00001010\" -pinBusAttr O @name O[15:0] -pg 1 -lvl 1 -x 170 -y 600
load inst dut|sub_unit|Borrow0_i RTL_SUB work -hier dut|sub_unit -attr @cell(#000000) RTL_SUB -attr @name Borrow0_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr V=B\"00000010\" -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr V=B\"00001010\" -pinBusAttr O @name O[8:0] -pg 1 -lvl 1 -x 170 -y 750
load inst dut|xor_unit|Output4_i RTL_XOR work -hier dut|xor_unit -attr @cell(#000000) RTL_XOR -attr @name Output4_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr V=B\"0000000000000010\" -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr V=B\"0000000000001010\" -pinBusAttr O @name O[15:0] -pg 1 -lvl 1 -x 260 -y 890
load inst dut|not_b_unit|Output1_i RTL_INV work -hier dut|not_b_unit -attr @cell(#000000) RTL_INV -attr @name Output1_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[15:0] -pg 1 -lvl 1 -x 170 -y 1040
load inst dut|not_b_unit|Output8_i RTL_INV work -hier dut|not_b_unit -attr @cell(#000000) RTL_INV -attr @name Output8_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr V=B\"00001010\" -pinBusAttr O @name O[15:0] -pg 1 -lvl 1 -x 170 -y 1110
load inst dut|add_unit|FA1 FullAdder work:FullAdder:NOFILE -hier dut|add_unit -autohide -attr @cell(#000000) FullAdder -attr @name FA1 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 140 -y 1270
load inst dut|add_unit|FA2 FullAdder work:abstract:NOFILE -hier dut|add_unit -autohide -attr @cell(#000000) FullAdder -attr @name FA2 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 140 -y 1470
load inst dut|add_unit|FA3 FullAdder work:abstract:NOFILE -hier dut|add_unit -autohide -attr @cell(#000000) FullAdder -attr @name FA3 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 140 -y 1680
load inst dut|add_unit|FA4 FullAdder work:abstract:NOFILE -hier dut|add_unit -autohide -attr @cell(#000000) FullAdder -attr @name FA4 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 140 -y 1910
load inst dut|add_unit|FA5 FullAdder work:abstract:NOFILE -hier dut|add_unit -autohide -attr @cell(#000000) FullAdder -attr @name FA5 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 140 -y 2110
load inst dut|add_unit|FA6 FullAdder work:abstract:NOFILE -hier dut|add_unit -autohide -attr @cell(#000000) FullAdder -attr @name FA6 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 140 -y 2320
load inst dut|add_unit|FA7 FullAdder work:abstract:NOFILE -hier dut|add_unit -autohide -attr @cell(#000000) FullAdder -attr @name FA7 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 140 -y 2550
load inst dut|add_unit|FA8 FullAdder work:abstract:NOFILE -hier dut|add_unit -autohide -attr @cell(#000000) FullAdder -attr @name FA8 -attr @fillcolor #fafafa -pg 1 -lvl 2 -x 560 -y 2090
load inst dut|add_unit|FA8|H2 Halfadder work:abstract:NOFILE -hier dut|add_unit|FA8 -autohide -attr @cell(#000000) Halfadder -attr @name H2 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 590 -y 2130
load inst dut|add_unit|FA8|H2|S_i RTL_XOR0 work -hier dut|add_unit|FA8|H2 -attr @cell(#000000) RTL_XOR -attr @name S_i -pg 1 -lvl 1 -x 630 -y 2140
load inst dut|add_unit|FA7|H2 Halfadder work:abstract:NOFILE -hier dut|add_unit|FA7 -autohide -attr @cell(#000000) Halfadder -attr @name H2 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 170 -y 2590
load inst dut|add_unit|FA7|H2|S_i RTL_XOR0 work -hier dut|add_unit|FA7|H2 -attr @cell(#000000) RTL_XOR -attr @name S_i -pg 1 -lvl 1 -x 210 -y 2600
load inst dut|add_unit|FA6|H2 Halfadder work:abstract:NOFILE -hier dut|add_unit|FA6 -autohide -attr @cell(#000000) Halfadder -attr @name H2 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 170 -y 2360
load inst dut|add_unit|FA6|H2|S_i RTL_XOR0 work -hier dut|add_unit|FA6|H2 -attr @cell(#000000) RTL_XOR -attr @name S_i -pg 1 -lvl 1 -x 210 -y 2370
load inst dut|add_unit|FA5|H2 Halfadder work:abstract:NOFILE -hier dut|add_unit|FA5 -autohide -attr @cell(#000000) Halfadder -attr @name H2 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 170 -y 2150
load inst dut|add_unit|FA5|H2|S_i RTL_XOR0 work -hier dut|add_unit|FA5|H2 -attr @cell(#000000) RTL_XOR -attr @name S_i -pg 1 -lvl 1 -x 210 -y 2160
load inst dut|add_unit|FA4|H2 Halfadder work:abstract:NOFILE -hier dut|add_unit|FA4 -autohide -attr @cell(#000000) Halfadder -attr @name H2 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 170 -y 1950
load inst dut|add_unit|FA4|H2|S_i RTL_XOR0 work -hier dut|add_unit|FA4|H2 -attr @cell(#000000) RTL_XOR -attr @name S_i -pg 1 -lvl 1 -x 210 -y 1960
load inst dut|add_unit|FA3|H2 Halfadder work:abstract:NOFILE -hier dut|add_unit|FA3 -autohide -attr @cell(#000000) Halfadder -attr @name H2 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 170 -y 1720
load inst dut|add_unit|FA3|H2|S_i RTL_XOR0 work -hier dut|add_unit|FA3|H2 -attr @cell(#000000) RTL_XOR -attr @name S_i -pg 1 -lvl 1 -x 210 -y 1730
load inst dut|add_unit|FA2|H2 Halfadder work:abstract:NOFILE -hier dut|add_unit|FA2 -autohide -attr @cell(#000000) Halfadder -attr @name H2 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 170 -y 1510
load inst dut|add_unit|FA2|H2|S_i RTL_XOR0 work -hier dut|add_unit|FA2|H2 -attr @cell(#000000) RTL_XOR -attr @name S_i -pg 1 -lvl 1 -x 210 -y 1520
load inst dut|add_unit|FA1|H2 Halfadder work:abstract:NOFILE -hier dut|add_unit|FA1 -autohide -attr @cell(#000000) Halfadder -attr @name H2 -attr @fillcolor #fafafa -pg 1 -lvl 1 -x 170 -y 1310
load inst dut|add_unit|FA1|H2|S_i RTL_XOR0 work -hier dut|add_unit|FA1|H2 -attr @cell(#000000) RTL_XOR -attr @name S_i -pg 1 -lvl 1 -x 210 -y 1320
load net <const0> -ground -pin dut A[7] -pin dut A[6] -pin dut A[5] -pin dut A[4] -pin dut A[3] -pin dut A[2] -pin dut A[0] -pin dut B[7] -pin dut B[6] -pin dut B[5] -pin dut B[4] -pin dut B[2] -pin dut B[0] -pin dut Sel[0]
load net <const1> -power -pin dut A[1] -pin dut B[3] -pin dut B[1] -pin dut Sel[2] -pin dut Sel[1]
load net dut|<const0> -ground -attr @name <const0> -pin dut|add_unit C0
load net dut|A[0] -attr @rip A[0] -attr @name A[0] -hierPin dut A[0] -pin dut|add_unit A[0] -pin dut|and_unit A[0] -pin dut|mul_unit A[0] -pin dut|not_a_unit A[0] -pin dut|or_unit A[0] -pin dut|sub_unit A[0] -pin dut|xor_unit A[0]
load net dut|A[1] -attr @rip A[1] -attr @name A[1] -hierPin dut A[1] -pin dut|add_unit A[1] -pin dut|and_unit A[1] -pin dut|mul_unit A[1] -pin dut|not_a_unit A[1] -pin dut|or_unit A[1] -pin dut|sub_unit A[1] -pin dut|xor_unit A[1]
load net dut|A[2] -attr @rip A[2] -attr @name A[2] -hierPin dut A[2] -pin dut|add_unit A[2] -pin dut|and_unit A[2] -pin dut|mul_unit A[2] -pin dut|not_a_unit A[2] -pin dut|or_unit A[2] -pin dut|sub_unit A[2] -pin dut|xor_unit A[2]
load net dut|A[3] -attr @rip A[3] -attr @name A[3] -hierPin dut A[3] -pin dut|add_unit A[3] -pin dut|and_unit A[3] -pin dut|mul_unit A[3] -pin dut|not_a_unit A[3] -pin dut|or_unit A[3] -pin dut|sub_unit A[3] -pin dut|xor_unit A[3]
load net dut|A[4] -attr @rip A[4] -attr @name A[4] -hierPin dut A[4] -pin dut|add_unit A[4] -pin dut|and_unit A[4] -pin dut|mul_unit A[4] -pin dut|not_a_unit A[4] -pin dut|or_unit A[4] -pin dut|sub_unit A[4] -pin dut|xor_unit A[4]
load net dut|A[5] -attr @rip A[5] -attr @name A[5] -hierPin dut A[5] -pin dut|add_unit A[5] -pin dut|and_unit A[5] -pin dut|mul_unit A[5] -pin dut|not_a_unit A[5] -pin dut|or_unit A[5] -pin dut|sub_unit A[5] -pin dut|xor_unit A[5]
load net dut|A[6] -attr @rip A[6] -attr @name A[6] -hierPin dut A[6] -pin dut|add_unit A[6] -pin dut|and_unit A[6] -pin dut|mul_unit A[6] -pin dut|not_a_unit A[6] -pin dut|or_unit A[6] -pin dut|sub_unit A[6] -pin dut|xor_unit A[6]
load net dut|A[7] -attr @rip A[7] -attr @name A[7] -hierPin dut A[7] -pin dut|add_unit A[7] -pin dut|and_unit A[7] -pin dut|mul_unit A[7] -pin dut|not_a_unit A[7] -pin dut|or_unit A[7] -pin dut|sub_unit A[7] -pin dut|xor_unit A[7]
load net dut|B[0] -attr @rip B[0] -attr @name B[0] -hierPin dut B[0] -pin dut|add_unit B[0] -pin dut|and_unit B[0] -pin dut|mul_unit B[0] -pin dut|not_b_unit B[0] -pin dut|or_unit B[0] -pin dut|sub_unit B[0] -pin dut|xor_unit B[0]
load net dut|B[1] -attr @rip B[1] -attr @name B[1] -hierPin dut B[1] -pin dut|add_unit B[1] -pin dut|and_unit B[1] -pin dut|mul_unit B[1] -pin dut|not_b_unit B[1] -pin dut|or_unit B[1] -pin dut|sub_unit B[1] -pin dut|xor_unit B[1]
load net dut|B[2] -attr @rip B[2] -attr @name B[2] -hierPin dut B[2] -pin dut|add_unit B[2] -pin dut|and_unit B[2] -pin dut|mul_unit B[2] -pin dut|not_b_unit B[2] -pin dut|or_unit B[2] -pin dut|sub_unit B[2] -pin dut|xor_unit B[2]
load net dut|B[3] -attr @rip B[3] -attr @name B[3] -hierPin dut B[3] -pin dut|add_unit B[3] -pin dut|and_unit B[3] -pin dut|mul_unit B[3] -pin dut|not_b_unit B[3] -pin dut|or_unit B[3] -pin dut|sub_unit B[3] -pin dut|xor_unit B[3]
load net dut|B[4] -attr @rip B[4] -attr @name B[4] -hierPin dut B[4] -pin dut|add_unit B[4] -pin dut|and_unit B[4] -pin dut|mul_unit B[4] -pin dut|not_b_unit B[4] -pin dut|or_unit B[4] -pin dut|sub_unit B[4] -pin dut|xor_unit B[4]
load net dut|B[5] -attr @rip B[5] -attr @name B[5] -hierPin dut B[5] -pin dut|add_unit B[5] -pin dut|and_unit B[5] -pin dut|mul_unit B[5] -pin dut|not_b_unit B[5] -pin dut|or_unit B[5] -pin dut|sub_unit B[5] -pin dut|xor_unit B[5]
load net dut|B[6] -attr @rip B[6] -attr @name B[6] -hierPin dut B[6] -pin dut|add_unit B[6] -pin dut|and_unit B[6] -pin dut|mul_unit B[6] -pin dut|not_b_unit B[6] -pin dut|or_unit B[6] -pin dut|sub_unit B[6] -pin dut|xor_unit B[6]
load net dut|B[7] -attr @rip B[7] -attr @name B[7] -hierPin dut B[7] -pin dut|add_unit B[7] -pin dut|and_unit B[7] -pin dut|mul_unit B[7] -pin dut|not_b_unit B[7] -pin dut|or_unit B[7] -pin dut|sub_unit B[7] -pin dut|xor_unit B[7]
load net dut|Cout -attr @name Cout -hierPin dut Cout -pin dut|add_unit C8
netloc dut|Cout 1 1 2 1180 608 1710J
load net dut|Sel[0] -attr @rip(#000000) Sel[0] -attr @name Sel[0] -hierPin dut Sel[0] -pin dut|alu_mux Sel[0]
load net dut|Sel[1] -attr @rip(#000000) Sel[1] -attr @name Sel[1] -hierPin dut Sel[1] -pin dut|alu_mux Sel[1]
load net dut|Sel[2] -attr @rip(#000000) Sel[2] -attr @name Sel[2] -hierPin dut Sel[2] -pin dut|alu_mux Sel[2]
load net dut|Y[0] -attr @rip Y[0] -attr @name Y[0] -hierPin dut Y[0] -pin dut|alu_mux Y[0]
load net dut|Y[10] -attr @rip Y[10] -attr @name Y[10] -hierPin dut Y[10] -pin dut|alu_mux Y[10]
load net dut|Y[11] -attr @rip Y[11] -attr @name Y[11] -hierPin dut Y[11] -pin dut|alu_mux Y[11]
load net dut|Y[12] -attr @rip Y[12] -attr @name Y[12] -hierPin dut Y[12] -pin dut|alu_mux Y[12]
load net dut|Y[13] -attr @rip Y[13] -attr @name Y[13] -hierPin dut Y[13] -pin dut|alu_mux Y[13]
load net dut|Y[14] -attr @rip Y[14] -attr @name Y[14] -hierPin dut Y[14] -pin dut|alu_mux Y[14]
load net dut|Y[15] -attr @rip Y[15] -attr @name Y[15] -hierPin dut Y[15] -pin dut|alu_mux Y[15]
load net dut|Y[1] -attr @rip Y[1] -attr @name Y[1] -hierPin dut Y[1] -pin dut|alu_mux Y[1]
load net dut|Y[2] -attr @rip Y[2] -attr @name Y[2] -hierPin dut Y[2] -pin dut|alu_mux Y[2]
load net dut|Y[3] -attr @rip Y[3] -attr @name Y[3] -hierPin dut Y[3] -pin dut|alu_mux Y[3]
load net dut|Y[4] -attr @rip Y[4] -attr @name Y[4] -hierPin dut Y[4] -pin dut|alu_mux Y[4]
load net dut|Y[5] -attr @rip Y[5] -attr @name Y[5] -hierPin dut Y[5] -pin dut|alu_mux Y[5]
load net dut|Y[6] -attr @rip Y[6] -attr @name Y[6] -hierPin dut Y[6] -pin dut|alu_mux Y[6]
load net dut|Y[7] -attr @rip Y[7] -attr @name Y[7] -hierPin dut Y[7] -pin dut|alu_mux Y[7]
load net dut|Y[8] -attr @rip Y[8] -attr @name Y[8] -hierPin dut Y[8] -pin dut|alu_mux Y[8]
load net dut|Y[9] -attr @rip Y[9] -attr @name Y[9] -hierPin dut Y[9] -pin dut|alu_mux Y[9]
load net dut|add_out[0] -attr @rip(#000000) S[0] -attr @name add_out[0] -pin dut|add_unit S[0] -pin dut|alu_mux in4[0]
load net dut|add_out[1] -attr @rip(#000000) S[1] -attr @name add_out[1] -pin dut|add_unit S[1] -pin dut|alu_mux in4[1]
load net dut|add_out[2] -attr @rip(#000000) S[2] -attr @name add_out[2] -pin dut|add_unit S[2] -pin dut|alu_mux in4[2]
load net dut|add_out[3] -attr @rip(#000000) S[3] -attr @name add_out[3] -pin dut|add_unit S[3] -pin dut|alu_mux in4[3]
load net dut|add_out[4] -attr @rip(#000000) S[4] -attr @name add_out[4] -pin dut|add_unit S[4] -pin dut|alu_mux in4[4]
load net dut|add_out[5] -attr @rip(#000000) S[5] -attr @name add_out[5] -pin dut|add_unit S[5] -pin dut|alu_mux in4[5]
load net dut|add_out[6] -attr @rip(#000000) S[6] -attr @name add_out[6] -pin dut|add_unit S[6] -pin dut|alu_mux in4[6]
load net dut|add_out[7] -attr @rip(#000000) S[7] -attr @name add_out[7] -pin dut|add_unit S[7] -pin dut|alu_mux in4[7]
load net dut|and_out[0] -attr @rip(#000000) Output3[0] -attr @name and_out[0] -pin dut|alu_mux in2[0] -pin dut|and_unit Output3[0]
load net dut|and_out[10] -attr @rip(#000000) Output3[10] -attr @name and_out[10] -pin dut|alu_mux in2[10] -pin dut|and_unit Output3[10]
load net dut|and_out[11] -attr @rip(#000000) Output3[11] -attr @name and_out[11] -pin dut|alu_mux in2[11] -pin dut|and_unit Output3[11]
load net dut|and_out[12] -attr @rip(#000000) Output3[12] -attr @name and_out[12] -pin dut|alu_mux in2[12] -pin dut|and_unit Output3[12]
load net dut|and_out[13] -attr @rip(#000000) Output3[13] -attr @name and_out[13] -pin dut|alu_mux in2[13] -pin dut|and_unit Output3[13]
load net dut|and_out[14] -attr @rip(#000000) Output3[14] -attr @name and_out[14] -pin dut|alu_mux in2[14] -pin dut|and_unit Output3[14]
load net dut|and_out[15] -attr @rip(#000000) Output3[15] -attr @name and_out[15] -pin dut|alu_mux in2[15] -pin dut|and_unit Output3[15]
load net dut|and_out[1] -attr @rip(#000000) Output3[1] -attr @name and_out[1] -pin dut|alu_mux in2[1] -pin dut|and_unit Output3[1]
load net dut|and_out[2] -attr @rip(#000000) Output3[2] -attr @name and_out[2] -pin dut|alu_mux in2[2] -pin dut|and_unit Output3[2]
load net dut|and_out[3] -attr @rip(#000000) Output3[3] -attr @name and_out[3] -pin dut|alu_mux in2[3] -pin dut|and_unit Output3[3]
load net dut|and_out[4] -attr @rip(#000000) Output3[4] -attr @name and_out[4] -pin dut|alu_mux in2[4] -pin dut|and_unit Output3[4]
load net dut|and_out[5] -attr @rip(#000000) Output3[5] -attr @name and_out[5] -pin dut|alu_mux in2[5] -pin dut|and_unit Output3[5]
load net dut|and_out[6] -attr @rip(#000000) Output3[6] -attr @name and_out[6] -pin dut|alu_mux in2[6] -pin dut|and_unit Output3[6]
load net dut|and_out[7] -attr @rip(#000000) Output3[7] -attr @name and_out[7] -pin dut|alu_mux in2[7] -pin dut|and_unit Output3[7]
load net dut|and_out[8] -attr @rip(#000000) Output3[8] -attr @name and_out[8] -pin dut|alu_mux in2[8] -pin dut|and_unit Output3[8]
load net dut|and_out[9] -attr @rip(#000000) Output3[9] -attr @name and_out[9] -pin dut|alu_mux in2[9] -pin dut|and_unit Output3[9]
load net dut|mul_out[0] -attr @rip(#000000) Output7[0] -attr @name mul_out[0] -pin dut|alu_mux in6[0] -pin dut|mul_unit Output7[0]
load net dut|mul_out[10] -attr @rip(#000000) Output7[10] -attr @name mul_out[10] -pin dut|alu_mux in6[10] -pin dut|mul_unit Output7[10]
load net dut|mul_out[11] -attr @rip(#000000) Output7[11] -attr @name mul_out[11] -pin dut|alu_mux in6[11] -pin dut|mul_unit Output7[11]
load net dut|mul_out[12] -attr @rip(#000000) Output7[12] -attr @name mul_out[12] -pin dut|alu_mux in6[12] -pin dut|mul_unit Output7[12]
load net dut|mul_out[13] -attr @rip(#000000) Output7[13] -attr @name mul_out[13] -pin dut|alu_mux in6[13] -pin dut|mul_unit Output7[13]
load net dut|mul_out[14] -attr @rip(#000000) Output7[14] -attr @name mul_out[14] -pin dut|alu_mux in6[14] -pin dut|mul_unit Output7[14]
load net dut|mul_out[15] -attr @rip(#000000) Output7[15] -attr @name mul_out[15] -pin dut|alu_mux in6[15] -pin dut|mul_unit Output7[15]
load net dut|mul_out[1] -attr @rip(#000000) Output7[1] -attr @name mul_out[1] -pin dut|alu_mux in6[1] -pin dut|mul_unit Output7[1]
load net dut|mul_out[2] -attr @rip(#000000) Output7[2] -attr @name mul_out[2] -pin dut|alu_mux in6[2] -pin dut|mul_unit Output7[2]
load net dut|mul_out[3] -attr @rip(#000000) Output7[3] -attr @name mul_out[3] -pin dut|alu_mux in6[3] -pin dut|mul_unit Output7[3]
load net dut|mul_out[4] -attr @rip(#000000) Output7[4] -attr @name mul_out[4] -pin dut|alu_mux in6[4] -pin dut|mul_unit Output7[4]
load net dut|mul_out[5] -attr @rip(#000000) Output7[5] -attr @name mul_out[5] -pin dut|alu_mux in6[5] -pin dut|mul_unit Output7[5]
load net dut|mul_out[6] -attr @rip(#000000) Output7[6] -attr @name mul_out[6] -pin dut|alu_mux in6[6] -pin dut|mul_unit Output7[6]
load net dut|mul_out[7] -attr @rip(#000000) Output7[7] -attr @name mul_out[7] -pin dut|alu_mux in6[7] -pin dut|mul_unit Output7[7]
load net dut|mul_out[8] -attr @rip(#000000) Output7[8] -attr @name mul_out[8] -pin dut|alu_mux in6[8] -pin dut|mul_unit Output7[8]
load net dut|mul_out[9] -attr @rip(#000000) Output7[9] -attr @name mul_out[9] -pin dut|alu_mux in6[9] -pin dut|mul_unit Output7[9]
load net dut|not_a_out[0] -attr @rip(#000000) Output1[0] -attr @name not_a_out[0] -pin dut|alu_mux in0[0] -pin dut|not_a_unit Output1[0]
load net dut|not_a_out[10] -attr @rip(#000000) Output1[10] -attr @name not_a_out[10] -pin dut|alu_mux in0[10] -pin dut|not_a_unit Output1[10]
load net dut|not_a_out[11] -attr @rip(#000000) Output1[11] -attr @name not_a_out[11] -pin dut|alu_mux in0[11] -pin dut|not_a_unit Output1[11]
load net dut|not_a_out[12] -attr @rip(#000000) Output1[12] -attr @name not_a_out[12] -pin dut|alu_mux in0[12] -pin dut|not_a_unit Output1[12]
load net dut|not_a_out[13] -attr @rip(#000000) Output1[13] -attr @name not_a_out[13] -pin dut|alu_mux in0[13] -pin dut|not_a_unit Output1[13]
load net dut|not_a_out[14] -attr @rip(#000000) Output1[14] -attr @name not_a_out[14] -pin dut|alu_mux in0[14] -pin dut|not_a_unit Output1[14]
load net dut|not_a_out[15] -attr @rip(#000000) Output1[15] -attr @name not_a_out[15] -pin dut|alu_mux in0[15] -pin dut|not_a_unit Output1[15]
load net dut|not_a_out[1] -attr @rip(#000000) Output1[1] -attr @name not_a_out[1] -pin dut|alu_mux in0[1] -pin dut|not_a_unit Output1[1]
load net dut|not_a_out[2] -attr @rip(#000000) Output1[2] -attr @name not_a_out[2] -pin dut|alu_mux in0[2] -pin dut|not_a_unit Output1[2]
load net dut|not_a_out[3] -attr @rip(#000000) Output1[3] -attr @name not_a_out[3] -pin dut|alu_mux in0[3] -pin dut|not_a_unit Output1[3]
load net dut|not_a_out[4] -attr @rip(#000000) Output1[4] -attr @name not_a_out[4] -pin dut|alu_mux in0[4] -pin dut|not_a_unit Output1[4]
load net dut|not_a_out[5] -attr @rip(#000000) Output1[5] -attr @name not_a_out[5] -pin dut|alu_mux in0[5] -pin dut|not_a_unit Output1[5]
load net dut|not_a_out[6] -attr @rip(#000000) Output1[6] -attr @name not_a_out[6] -pin dut|alu_mux in0[6] -pin dut|not_a_unit Output1[6]
load net dut|not_a_out[7] -attr @rip(#000000) Output1[7] -attr @name not_a_out[7] -pin dut|alu_mux in0[7] -pin dut|not_a_unit Output1[7]
load net dut|not_a_out[8] -attr @rip(#000000) Output1[8] -attr @name not_a_out[8] -pin dut|alu_mux in0[8] -pin dut|not_a_unit Output1[8]
load net dut|not_a_out[9] -attr @rip(#000000) Output1[9] -attr @name not_a_out[9] -pin dut|alu_mux in0[9] -pin dut|not_a_unit Output1[9]
load net dut|not_b_out[0] -attr @rip(#000000) Output8[0] -attr @name not_b_out[0] -pin dut|alu_mux in7[0] -pin dut|not_b_unit Output8[0]
load net dut|not_b_out[10] -attr @rip(#000000) Output8[10] -attr @name not_b_out[10] -pin dut|alu_mux in7[10] -pin dut|not_b_unit Output8[10]
load net dut|not_b_out[11] -attr @rip(#000000) Output8[11] -attr @name not_b_out[11] -pin dut|alu_mux in7[11] -pin dut|not_b_unit Output8[11]
load net dut|not_b_out[12] -attr @rip(#000000) Output8[12] -attr @name not_b_out[12] -pin dut|alu_mux in7[12] -pin dut|not_b_unit Output8[12]
load net dut|not_b_out[13] -attr @rip(#000000) Output8[13] -attr @name not_b_out[13] -pin dut|alu_mux in7[13] -pin dut|not_b_unit Output8[13]
load net dut|not_b_out[14] -attr @rip(#000000) Output8[14] -attr @name not_b_out[14] -pin dut|alu_mux in7[14] -pin dut|not_b_unit Output8[14]
load net dut|not_b_out[15] -attr @rip(#000000) Output8[15] -attr @name not_b_out[15] -pin dut|alu_mux in7[15] -pin dut|not_b_unit Output8[15]
load net dut|not_b_out[1] -attr @rip(#000000) Output8[1] -attr @name not_b_out[1] -pin dut|alu_mux in7[1] -pin dut|not_b_unit Output8[1]
load net dut|not_b_out[2] -attr @rip(#000000) Output8[2] -attr @name not_b_out[2] -pin dut|alu_mux in7[2] -pin dut|not_b_unit Output8[2]
load net dut|not_b_out[3] -attr @rip(#000000) Output8[3] -attr @name not_b_out[3] -pin dut|alu_mux in7[3] -pin dut|not_b_unit Output8[3]
load net dut|not_b_out[4] -attr @rip(#000000) Output8[4] -attr @name not_b_out[4] -pin dut|alu_mux in7[4] -pin dut|not_b_unit Output8[4]
load net dut|not_b_out[5] -attr @rip(#000000) Output8[5] -attr @name not_b_out[5] -pin dut|alu_mux in7[5] -pin dut|not_b_unit Output8[5]
load net dut|not_b_out[6] -attr @rip(#000000) Output8[6] -attr @name not_b_out[6] -pin dut|alu_mux in7[6] -pin dut|not_b_unit Output8[6]
load net dut|not_b_out[7] -attr @rip(#000000) Output8[7] -attr @name not_b_out[7] -pin dut|alu_mux in7[7] -pin dut|not_b_unit Output8[7]
load net dut|not_b_out[8] -attr @rip(#000000) Output8[8] -attr @name not_b_out[8] -pin dut|alu_mux in7[8] -pin dut|not_b_unit Output8[8]
load net dut|not_b_out[9] -attr @rip(#000000) Output8[9] -attr @name not_b_out[9] -pin dut|alu_mux in7[9] -pin dut|not_b_unit Output8[9]
load net dut|or_out[0] -attr @rip(#000000) Output2[0] -attr @name or_out[0] -pin dut|alu_mux in1[0] -pin dut|or_unit Output2[0]
load net dut|or_out[10] -attr @rip(#000000) Output2[10] -attr @name or_out[10] -pin dut|alu_mux in1[10] -pin dut|or_unit Output2[10]
load net dut|or_out[11] -attr @rip(#000000) Output2[11] -attr @name or_out[11] -pin dut|alu_mux in1[11] -pin dut|or_unit Output2[11]
load net dut|or_out[12] -attr @rip(#000000) Output2[12] -attr @name or_out[12] -pin dut|alu_mux in1[12] -pin dut|or_unit Output2[12]
load net dut|or_out[13] -attr @rip(#000000) Output2[13] -attr @name or_out[13] -pin dut|alu_mux in1[13] -pin dut|or_unit Output2[13]
load net dut|or_out[14] -attr @rip(#000000) Output2[14] -attr @name or_out[14] -pin dut|alu_mux in1[14] -pin dut|or_unit Output2[14]
load net dut|or_out[15] -attr @rip(#000000) Output2[15] -attr @name or_out[15] -pin dut|alu_mux in1[15] -pin dut|or_unit Output2[15]
load net dut|or_out[1] -attr @rip(#000000) Output2[1] -attr @name or_out[1] -pin dut|alu_mux in1[1] -pin dut|or_unit Output2[1]
load net dut|or_out[2] -attr @rip(#000000) Output2[2] -attr @name or_out[2] -pin dut|alu_mux in1[2] -pin dut|or_unit Output2[2]
load net dut|or_out[3] -attr @rip(#000000) Output2[3] -attr @name or_out[3] -pin dut|alu_mux in1[3] -pin dut|or_unit Output2[3]
load net dut|or_out[4] -attr @rip(#000000) Output2[4] -attr @name or_out[4] -pin dut|alu_mux in1[4] -pin dut|or_unit Output2[4]
load net dut|or_out[5] -attr @rip(#000000) Output2[5] -attr @name or_out[5] -pin dut|alu_mux in1[5] -pin dut|or_unit Output2[5]
load net dut|or_out[6] -attr @rip(#000000) Output2[6] -attr @name or_out[6] -pin dut|alu_mux in1[6] -pin dut|or_unit Output2[6]
load net dut|or_out[7] -attr @rip(#000000) Output2[7] -attr @name or_out[7] -pin dut|alu_mux in1[7] -pin dut|or_unit Output2[7]
load net dut|or_out[8] -attr @rip(#000000) Output2[8] -attr @name or_out[8] -pin dut|alu_mux in1[8] -pin dut|or_unit Output2[8]
load net dut|or_out[9] -attr @rip(#000000) Output2[9] -attr @name or_out[9] -pin dut|alu_mux in1[9] -pin dut|or_unit Output2[9]
load net dut|sub_out[0] -attr @rip(#000000) Diff[0] -attr @name sub_out[0] -pin dut|alu_mux in5[0] -pin dut|sub_unit Diff[0]
load net dut|sub_out[1] -attr @rip(#000000) Diff[1] -attr @name sub_out[1] -pin dut|alu_mux in5[1] -pin dut|sub_unit Diff[1]
load net dut|sub_out[2] -attr @rip(#000000) Diff[2] -attr @name sub_out[2] -pin dut|alu_mux in5[2] -pin dut|sub_unit Diff[2]
load net dut|sub_out[3] -attr @rip(#000000) Diff[3] -attr @name sub_out[3] -pin dut|alu_mux in5[3] -pin dut|sub_unit Diff[3]
load net dut|sub_out[4] -attr @rip(#000000) Diff[4] -attr @name sub_out[4] -pin dut|alu_mux in5[4] -pin dut|sub_unit Diff[4]
load net dut|sub_out[5] -attr @rip(#000000) Diff[5] -attr @name sub_out[5] -pin dut|alu_mux in5[5] -pin dut|sub_unit Diff[5]
load net dut|sub_out[6] -attr @rip(#000000) Diff[6] -attr @name sub_out[6] -pin dut|alu_mux in5[6] -pin dut|sub_unit Diff[6]
load net dut|sub_out[7] -attr @rip(#000000) Diff[7] -attr @name sub_out[7] -pin dut|alu_mux in5[7] -pin dut|sub_unit Diff[7]
load net dut|xor_out[0] -attr @rip(#000000) Output4[0] -attr @name xor_out[0] -pin dut|alu_mux in3[0] -pin dut|xor_unit Output4[0]
load net dut|xor_out[10] -attr @rip(#000000) Output4[10] -attr @name xor_out[10] -pin dut|alu_mux in3[10] -pin dut|xor_unit Output4[10]
load net dut|xor_out[11] -attr @rip(#000000) Output4[11] -attr @name xor_out[11] -pin dut|alu_mux in3[11] -pin dut|xor_unit Output4[11]
load net dut|xor_out[12] -attr @rip(#000000) Output4[12] -attr @name xor_out[12] -pin dut|alu_mux in3[12] -pin dut|xor_unit Output4[12]
load net dut|xor_out[13] -attr @rip(#000000) Output4[13] -attr @name xor_out[13] -pin dut|alu_mux in3[13] -pin dut|xor_unit Output4[13]
load net dut|xor_out[14] -attr @rip(#000000) Output4[14] -attr @name xor_out[14] -pin dut|alu_mux in3[14] -pin dut|xor_unit Output4[14]
load net dut|xor_out[15] -attr @rip(#000000) Output4[15] -attr @name xor_out[15] -pin dut|alu_mux in3[15] -pin dut|xor_unit Output4[15]
load net dut|xor_out[1] -attr @rip(#000000) Output4[1] -attr @name xor_out[1] -pin dut|alu_mux in3[1] -pin dut|xor_unit Output4[1]
load net dut|xor_out[2] -attr @rip(#000000) Output4[2] -attr @name xor_out[2] -pin dut|alu_mux in3[2] -pin dut|xor_unit Output4[2]
load net dut|xor_out[3] -attr @rip(#000000) Output4[3] -attr @name xor_out[3] -pin dut|alu_mux in3[3] -pin dut|xor_unit Output4[3]
load net dut|xor_out[4] -attr @rip(#000000) Output4[4] -attr @name xor_out[4] -pin dut|alu_mux in3[4] -pin dut|xor_unit Output4[4]
load net dut|xor_out[5] -attr @rip(#000000) Output4[5] -attr @name xor_out[5] -pin dut|alu_mux in3[5] -pin dut|xor_unit Output4[5]
load net dut|xor_out[6] -attr @rip(#000000) Output4[6] -attr @name xor_out[6] -pin dut|alu_mux in3[6] -pin dut|xor_unit Output4[6]
load net dut|xor_out[7] -attr @rip(#000000) Output4[7] -attr @name xor_out[7] -pin dut|alu_mux in3[7] -pin dut|xor_unit Output4[7]
load net dut|xor_out[8] -attr @rip(#000000) Output4[8] -attr @name xor_out[8] -pin dut|alu_mux in3[8] -pin dut|xor_unit Output4[8]
load net dut|xor_out[9] -attr @rip(#000000) Output4[9] -attr @name xor_out[9] -pin dut|alu_mux in3[9] -pin dut|xor_unit Output4[9]
load net dut|and_unit|<const0> -ground -attr @name <const0> -pin dut|and_unit|Output3_i I0[15] -pin dut|and_unit|Output3_i I0[14] -pin dut|and_unit|Output3_i I0[13] -pin dut|and_unit|Output3_i I0[12] -pin dut|and_unit|Output3_i I0[11] -pin dut|and_unit|Output3_i I0[10] -pin dut|and_unit|Output3_i I0[9] -pin dut|and_unit|Output3_i I0[8] -pin dut|and_unit|Output3_i I1[15] -pin dut|and_unit|Output3_i I1[14] -pin dut|and_unit|Output3_i I1[13] -pin dut|and_unit|Output3_i I1[12] -pin dut|and_unit|Output3_i I1[11] -pin dut|and_unit|Output3_i I1[10] -pin dut|and_unit|Output3_i I1[9] -pin dut|and_unit|Output3_i I1[8]
load net dut|and_unit|A[0] -attr @rip A[0] -attr @name A[0] -hierPin dut|and_unit A[0] -pin dut|and_unit|Output3_i I0[0]
load net dut|and_unit|A[1] -attr @rip A[1] -attr @name A[1] -hierPin dut|and_unit A[1] -pin dut|and_unit|Output3_i I0[1]
load net dut|and_unit|A[2] -attr @rip A[2] -attr @name A[2] -hierPin dut|and_unit A[2] -pin dut|and_unit|Output3_i I0[2]
load net dut|and_unit|A[3] -attr @rip A[3] -attr @name A[3] -hierPin dut|and_unit A[3] -pin dut|and_unit|Output3_i I0[3]
load net dut|and_unit|A[4] -attr @rip A[4] -attr @name A[4] -hierPin dut|and_unit A[4] -pin dut|and_unit|Output3_i I0[4]
load net dut|and_unit|A[5] -attr @rip A[5] -attr @name A[5] -hierPin dut|and_unit A[5] -pin dut|and_unit|Output3_i I0[5]
load net dut|and_unit|A[6] -attr @rip A[6] -attr @name A[6] -hierPin dut|and_unit A[6] -pin dut|and_unit|Output3_i I0[6]
load net dut|and_unit|A[7] -attr @rip A[7] -attr @name A[7] -hierPin dut|and_unit A[7] -pin dut|and_unit|Output3_i I0[7]
load net dut|and_unit|B[0] -attr @rip B[0] -attr @name B[0] -hierPin dut|and_unit B[0] -pin dut|and_unit|Output3_i I1[0]
load net dut|and_unit|B[1] -attr @rip B[1] -attr @name B[1] -hierPin dut|and_unit B[1] -pin dut|and_unit|Output3_i I1[1]
load net dut|and_unit|B[2] -attr @rip B[2] -attr @name B[2] -hierPin dut|and_unit B[2] -pin dut|and_unit|Output3_i I1[2]
load net dut|and_unit|B[3] -attr @rip B[3] -attr @name B[3] -hierPin dut|and_unit B[3] -pin dut|and_unit|Output3_i I1[3]
load net dut|and_unit|B[4] -attr @rip B[4] -attr @name B[4] -hierPin dut|and_unit B[4] -pin dut|and_unit|Output3_i I1[4]
load net dut|and_unit|B[5] -attr @rip B[5] -attr @name B[5] -hierPin dut|and_unit B[5] -pin dut|and_unit|Output3_i I1[5]
load net dut|and_unit|B[6] -attr @rip B[6] -attr @name B[6] -hierPin dut|and_unit B[6] -pin dut|and_unit|Output3_i I1[6]
load net dut|and_unit|B[7] -attr @rip B[7] -attr @name B[7] -hierPin dut|and_unit B[7] -pin dut|and_unit|Output3_i I1[7]
load net dut|and_unit|Output3[0] -attr @rip(#000000) O[0] -attr @name Output3[0] -hierPin dut|and_unit Output3[0] -pin dut|and_unit|Output3_i O[0]
load net dut|and_unit|Output3[10] -attr @rip(#000000) O[10] -attr @name Output3[10] -hierPin dut|and_unit Output3[10] -pin dut|and_unit|Output3_i O[10]
load net dut|and_unit|Output3[11] -attr @rip(#000000) O[11] -attr @name Output3[11] -hierPin dut|and_unit Output3[11] -pin dut|and_unit|Output3_i O[11]
load net dut|and_unit|Output3[12] -attr @rip(#000000) O[12] -attr @name Output3[12] -hierPin dut|and_unit Output3[12] -pin dut|and_unit|Output3_i O[12]
load net dut|and_unit|Output3[13] -attr @rip(#000000) O[13] -attr @name Output3[13] -hierPin dut|and_unit Output3[13] -pin dut|and_unit|Output3_i O[13]
load net dut|and_unit|Output3[14] -attr @rip(#000000) O[14] -attr @name Output3[14] -hierPin dut|and_unit Output3[14] -pin dut|and_unit|Output3_i O[14]
load net dut|and_unit|Output3[15] -attr @rip(#000000) O[15] -attr @name Output3[15] -hierPin dut|and_unit Output3[15] -pin dut|and_unit|Output3_i O[15]
load net dut|and_unit|Output3[1] -attr @rip(#000000) O[1] -attr @name Output3[1] -hierPin dut|and_unit Output3[1] -pin dut|and_unit|Output3_i O[1]
load net dut|and_unit|Output3[2] -attr @rip(#000000) O[2] -attr @name Output3[2] -hierPin dut|and_unit Output3[2] -pin dut|and_unit|Output3_i O[2]
load net dut|and_unit|Output3[3] -attr @rip(#000000) O[3] -attr @name Output3[3] -hierPin dut|and_unit Output3[3] -pin dut|and_unit|Output3_i O[3]
load net dut|and_unit|Output3[4] -attr @rip(#000000) O[4] -attr @name Output3[4] -hierPin dut|and_unit Output3[4] -pin dut|and_unit|Output3_i O[4]
load net dut|and_unit|Output3[5] -attr @rip(#000000) O[5] -attr @name Output3[5] -hierPin dut|and_unit Output3[5] -pin dut|and_unit|Output3_i O[5]
load net dut|and_unit|Output3[6] -attr @rip(#000000) O[6] -attr @name Output3[6] -hierPin dut|and_unit Output3[6] -pin dut|and_unit|Output3_i O[6]
load net dut|and_unit|Output3[7] -attr @rip(#000000) O[7] -attr @name Output3[7] -hierPin dut|and_unit Output3[7] -pin dut|and_unit|Output3_i O[7]
load net dut|and_unit|Output3[8] -attr @rip(#000000) O[8] -attr @name Output3[8] -hierPin dut|and_unit Output3[8] -pin dut|and_unit|Output3_i O[8]
load net dut|and_unit|Output3[9] -attr @rip(#000000) O[9] -attr @name Output3[9] -hierPin dut|and_unit Output3[9] -pin dut|and_unit|Output3_i O[9]
load net dut|not_a_unit|A[0] -attr @rip A[0] -attr @name A[0] -hierPin dut|not_a_unit A[0] -pin dut|not_a_unit|Output1_i I0[0]
load net dut|not_a_unit|A[1] -attr @rip A[1] -attr @name A[1] -hierPin dut|not_a_unit A[1] -pin dut|not_a_unit|Output1_i I0[1]
load net dut|not_a_unit|A[2] -attr @rip A[2] -attr @name A[2] -hierPin dut|not_a_unit A[2] -pin dut|not_a_unit|Output1_i I0[2]
load net dut|not_a_unit|A[3] -attr @rip A[3] -attr @name A[3] -hierPin dut|not_a_unit A[3] -pin dut|not_a_unit|Output1_i I0[3]
load net dut|not_a_unit|A[4] -attr @rip A[4] -attr @name A[4] -hierPin dut|not_a_unit A[4] -pin dut|not_a_unit|Output1_i I0[4]
load net dut|not_a_unit|A[5] -attr @rip A[5] -attr @name A[5] -hierPin dut|not_a_unit A[5] -pin dut|not_a_unit|Output1_i I0[5]
load net dut|not_a_unit|A[6] -attr @rip A[6] -attr @name A[6] -hierPin dut|not_a_unit A[6] -pin dut|not_a_unit|Output1_i I0[6]
load net dut|not_a_unit|A[7] -attr @rip A[7] -attr @name A[7] -hierPin dut|not_a_unit A[7] -pin dut|not_a_unit|Output1_i I0[7]
load net dut|not_a_unit|B[0] -attr @rip B[0] -attr @name B[0] -hierPin dut|not_a_unit B[0] -pin dut|not_a_unit|Output8_i I0[0]
load net dut|not_a_unit|B[1] -attr @rip B[1] -attr @name B[1] -hierPin dut|not_a_unit B[1] -pin dut|not_a_unit|Output8_i I0[1]
load net dut|not_a_unit|B[2] -attr @rip B[2] -attr @name B[2] -hierPin dut|not_a_unit B[2] -pin dut|not_a_unit|Output8_i I0[2]
load net dut|not_a_unit|B[3] -attr @rip B[3] -attr @name B[3] -hierPin dut|not_a_unit B[3] -pin dut|not_a_unit|Output8_i I0[3]
load net dut|not_a_unit|B[4] -attr @rip B[4] -attr @name B[4] -hierPin dut|not_a_unit B[4] -pin dut|not_a_unit|Output8_i I0[4]
load net dut|not_a_unit|B[5] -attr @rip B[5] -attr @name B[5] -hierPin dut|not_a_unit B[5] -pin dut|not_a_unit|Output8_i I0[5]
load net dut|not_a_unit|B[6] -attr @rip B[6] -attr @name B[6] -hierPin dut|not_a_unit B[6] -pin dut|not_a_unit|Output8_i I0[6]
load net dut|not_a_unit|B[7] -attr @rip B[7] -attr @name B[7] -hierPin dut|not_a_unit B[7] -pin dut|not_a_unit|Output8_i I0[7]
load net dut|not_a_unit|Output1[0] -attr @rip(#000000) O[0] -attr @name Output1[0] -hierPin dut|not_a_unit Output1[0] -pin dut|not_a_unit|Output1_i O[0]
load net dut|not_a_unit|Output1[10] -attr @rip(#000000) O[10] -attr @name Output1[10] -hierPin dut|not_a_unit Output1[10] -pin dut|not_a_unit|Output1_i O[10]
load net dut|not_a_unit|Output1[11] -attr @rip(#000000) O[11] -attr @name Output1[11] -hierPin dut|not_a_unit Output1[11] -pin dut|not_a_unit|Output1_i O[11]
load net dut|not_a_unit|Output1[12] -attr @rip(#000000) O[12] -attr @name Output1[12] -hierPin dut|not_a_unit Output1[12] -pin dut|not_a_unit|Output1_i O[12]
load net dut|not_a_unit|Output1[13] -attr @rip(#000000) O[13] -attr @name Output1[13] -hierPin dut|not_a_unit Output1[13] -pin dut|not_a_unit|Output1_i O[13]
load net dut|not_a_unit|Output1[14] -attr @rip(#000000) O[14] -attr @name Output1[14] -hierPin dut|not_a_unit Output1[14] -pin dut|not_a_unit|Output1_i O[14]
load net dut|not_a_unit|Output1[15] -attr @rip(#000000) O[15] -attr @name Output1[15] -hierPin dut|not_a_unit Output1[15] -pin dut|not_a_unit|Output1_i O[15]
load net dut|not_a_unit|Output1[1] -attr @rip(#000000) O[1] -attr @name Output1[1] -hierPin dut|not_a_unit Output1[1] -pin dut|not_a_unit|Output1_i O[1]
load net dut|not_a_unit|Output1[2] -attr @rip(#000000) O[2] -attr @name Output1[2] -hierPin dut|not_a_unit Output1[2] -pin dut|not_a_unit|Output1_i O[2]
load net dut|not_a_unit|Output1[3] -attr @rip(#000000) O[3] -attr @name Output1[3] -hierPin dut|not_a_unit Output1[3] -pin dut|not_a_unit|Output1_i O[3]
load net dut|not_a_unit|Output1[4] -attr @rip(#000000) O[4] -attr @name Output1[4] -hierPin dut|not_a_unit Output1[4] -pin dut|not_a_unit|Output1_i O[4]
load net dut|not_a_unit|Output1[5] -attr @rip(#000000) O[5] -attr @name Output1[5] -hierPin dut|not_a_unit Output1[5] -pin dut|not_a_unit|Output1_i O[5]
load net dut|not_a_unit|Output1[6] -attr @rip(#000000) O[6] -attr @name Output1[6] -hierPin dut|not_a_unit Output1[6] -pin dut|not_a_unit|Output1_i O[6]
load net dut|not_a_unit|Output1[7] -attr @rip(#000000) O[7] -attr @name Output1[7] -hierPin dut|not_a_unit Output1[7] -pin dut|not_a_unit|Output1_i O[7]
load net dut|not_a_unit|Output1[8] -attr @rip(#000000) O[8] -attr @name Output1[8] -hierPin dut|not_a_unit Output1[8] -pin dut|not_a_unit|Output1_i O[8]
load net dut|not_a_unit|Output1[9] -attr @rip(#000000) O[9] -attr @name Output1[9] -hierPin dut|not_a_unit Output1[9] -pin dut|not_a_unit|Output1_i O[9]
load net dut|not_a_unit|Output8[0] -attr @rip O[0] -attr @name Output8[0] -hierPin dut|not_a_unit Output8[0] -pin dut|not_a_unit|Output8_i O[0]
load net dut|not_a_unit|Output8[10] -attr @rip O[10] -attr @name Output8[10] -hierPin dut|not_a_unit Output8[10] -pin dut|not_a_unit|Output8_i O[10]
load net dut|not_a_unit|Output8[11] -attr @rip O[11] -attr @name Output8[11] -hierPin dut|not_a_unit Output8[11] -pin dut|not_a_unit|Output8_i O[11]
load net dut|not_a_unit|Output8[12] -attr @rip O[12] -attr @name Output8[12] -hierPin dut|not_a_unit Output8[12] -pin dut|not_a_unit|Output8_i O[12]
load net dut|not_a_unit|Output8[13] -attr @rip O[13] -attr @name Output8[13] -hierPin dut|not_a_unit Output8[13] -pin dut|not_a_unit|Output8_i O[13]
load net dut|not_a_unit|Output8[14] -attr @rip O[14] -attr @name Output8[14] -hierPin dut|not_a_unit Output8[14] -pin dut|not_a_unit|Output8_i O[14]
load net dut|not_a_unit|Output8[15] -attr @rip O[15] -attr @name Output8[15] -hierPin dut|not_a_unit Output8[15] -pin dut|not_a_unit|Output8_i O[15]
load net dut|not_a_unit|Output8[1] -attr @rip O[1] -attr @name Output8[1] -hierPin dut|not_a_unit Output8[1] -pin dut|not_a_unit|Output8_i O[1]
load net dut|not_a_unit|Output8[2] -attr @rip O[2] -attr @name Output8[2] -hierPin dut|not_a_unit Output8[2] -pin dut|not_a_unit|Output8_i O[2]
load net dut|not_a_unit|Output8[3] -attr @rip O[3] -attr @name Output8[3] -hierPin dut|not_a_unit Output8[3] -pin dut|not_a_unit|Output8_i O[3]
load net dut|not_a_unit|Output8[4] -attr @rip O[4] -attr @name Output8[4] -hierPin dut|not_a_unit Output8[4] -pin dut|not_a_unit|Output8_i O[4]
load net dut|not_a_unit|Output8[5] -attr @rip O[5] -attr @name Output8[5] -hierPin dut|not_a_unit Output8[5] -pin dut|not_a_unit|Output8_i O[5]
load net dut|not_a_unit|Output8[6] -attr @rip O[6] -attr @name Output8[6] -hierPin dut|not_a_unit Output8[6] -pin dut|not_a_unit|Output8_i O[6]
load net dut|not_a_unit|Output8[7] -attr @rip O[7] -attr @name Output8[7] -hierPin dut|not_a_unit Output8[7] -pin dut|not_a_unit|Output8_i O[7]
load net dut|not_a_unit|Output8[8] -attr @rip O[8] -attr @name Output8[8] -hierPin dut|not_a_unit Output8[8] -pin dut|not_a_unit|Output8_i O[8]
load net dut|not_a_unit|Output8[9] -attr @rip O[9] -attr @name Output8[9] -hierPin dut|not_a_unit Output8[9] -pin dut|not_a_unit|Output8_i O[9]
load net dut|alu_mux|Sel[0] -attr @rip(#000000) Sel[0] -attr @name Sel[0] -hierPin dut|alu_mux Sel[0] -pin dut|alu_mux|Y_i S[0]
load net dut|alu_mux|Sel[1] -attr @rip(#000000) Sel[1] -attr @name Sel[1] -hierPin dut|alu_mux Sel[1] -pin dut|alu_mux|Y_i S[1]
load net dut|alu_mux|Sel[2] -attr @rip(#000000) Sel[2] -attr @name Sel[2] -hierPin dut|alu_mux Sel[2] -pin dut|alu_mux|Y_i S[2]
load net dut|alu_mux|Y[0] -attr @rip O[0] -attr @name Y[0] -hierPin dut|alu_mux Y[0] -pin dut|alu_mux|Y_i O[0]
load net dut|alu_mux|Y[10] -attr @rip O[10] -attr @name Y[10] -hierPin dut|alu_mux Y[10] -pin dut|alu_mux|Y_i O[10]
load net dut|alu_mux|Y[11] -attr @rip O[11] -attr @name Y[11] -hierPin dut|alu_mux Y[11] -pin dut|alu_mux|Y_i O[11]
load net dut|alu_mux|Y[12] -attr @rip O[12] -attr @name Y[12] -hierPin dut|alu_mux Y[12] -pin dut|alu_mux|Y_i O[12]
load net dut|alu_mux|Y[13] -attr @rip O[13] -attr @name Y[13] -hierPin dut|alu_mux Y[13] -pin dut|alu_mux|Y_i O[13]
load net dut|alu_mux|Y[14] -attr @rip O[14] -attr @name Y[14] -hierPin dut|alu_mux Y[14] -pin dut|alu_mux|Y_i O[14]
load net dut|alu_mux|Y[15] -attr @rip O[15] -attr @name Y[15] -hierPin dut|alu_mux Y[15] -pin dut|alu_mux|Y_i O[15]
load net dut|alu_mux|Y[1] -attr @rip O[1] -attr @name Y[1] -hierPin dut|alu_mux Y[1] -pin dut|alu_mux|Y_i O[1]
load net dut|alu_mux|Y[2] -attr @rip O[2] -attr @name Y[2] -hierPin dut|alu_mux Y[2] -pin dut|alu_mux|Y_i O[2]
load net dut|alu_mux|Y[3] -attr @rip O[3] -attr @name Y[3] -hierPin dut|alu_mux Y[3] -pin dut|alu_mux|Y_i O[3]
load net dut|alu_mux|Y[4] -attr @rip O[4] -attr @name Y[4] -hierPin dut|alu_mux Y[4] -pin dut|alu_mux|Y_i O[4]
load net dut|alu_mux|Y[5] -attr @rip O[5] -attr @name Y[5] -hierPin dut|alu_mux Y[5] -pin dut|alu_mux|Y_i O[5]
load net dut|alu_mux|Y[6] -attr @rip O[6] -attr @name Y[6] -hierPin dut|alu_mux Y[6] -pin dut|alu_mux|Y_i O[6]
load net dut|alu_mux|Y[7] -attr @rip O[7] -attr @name Y[7] -hierPin dut|alu_mux Y[7] -pin dut|alu_mux|Y_i O[7]
load net dut|alu_mux|Y[8] -attr @rip O[8] -attr @name Y[8] -hierPin dut|alu_mux Y[8] -pin dut|alu_mux|Y_i O[8]
load net dut|alu_mux|Y[9] -attr @rip O[9] -attr @name Y[9] -hierPin dut|alu_mux Y[9] -pin dut|alu_mux|Y_i O[9]
load net dut|alu_mux|in0[0] -attr @rip(#000000) in0[0] -attr @name in0[0] -hierPin dut|alu_mux in0[0] -pin dut|alu_mux|Y_i I0[0]
load net dut|alu_mux|in0[10] -attr @rip(#000000) in0[10] -attr @name in0[10] -hierPin dut|alu_mux in0[10] -pin dut|alu_mux|Y_i I0[10]
load net dut|alu_mux|in0[11] -attr @rip(#000000) in0[11] -attr @name in0[11] -hierPin dut|alu_mux in0[11] -pin dut|alu_mux|Y_i I0[11]
load net dut|alu_mux|in0[12] -attr @rip(#000000) in0[12] -attr @name in0[12] -hierPin dut|alu_mux in0[12] -pin dut|alu_mux|Y_i I0[12]
load net dut|alu_mux|in0[13] -attr @rip(#000000) in0[13] -attr @name in0[13] -hierPin dut|alu_mux in0[13] -pin dut|alu_mux|Y_i I0[13]
load net dut|alu_mux|in0[14] -attr @rip(#000000) in0[14] -attr @name in0[14] -hierPin dut|alu_mux in0[14] -pin dut|alu_mux|Y_i I0[14]
load net dut|alu_mux|in0[15] -attr @rip(#000000) in0[15] -attr @name in0[15] -hierPin dut|alu_mux in0[15] -pin dut|alu_mux|Y_i I0[15]
load net dut|alu_mux|in0[1] -attr @rip(#000000) in0[1] -attr @name in0[1] -hierPin dut|alu_mux in0[1] -pin dut|alu_mux|Y_i I0[1]
load net dut|alu_mux|in0[2] -attr @rip(#000000) in0[2] -attr @name in0[2] -hierPin dut|alu_mux in0[2] -pin dut|alu_mux|Y_i I0[2]
load net dut|alu_mux|in0[3] -attr @rip(#000000) in0[3] -attr @name in0[3] -hierPin dut|alu_mux in0[3] -pin dut|alu_mux|Y_i I0[3]
load net dut|alu_mux|in0[4] -attr @rip(#000000) in0[4] -attr @name in0[4] -hierPin dut|alu_mux in0[4] -pin dut|alu_mux|Y_i I0[4]
load net dut|alu_mux|in0[5] -attr @rip(#000000) in0[5] -attr @name in0[5] -hierPin dut|alu_mux in0[5] -pin dut|alu_mux|Y_i I0[5]
load net dut|alu_mux|in0[6] -attr @rip(#000000) in0[6] -attr @name in0[6] -hierPin dut|alu_mux in0[6] -pin dut|alu_mux|Y_i I0[6]
load net dut|alu_mux|in0[7] -attr @rip(#000000) in0[7] -attr @name in0[7] -hierPin dut|alu_mux in0[7] -pin dut|alu_mux|Y_i I0[7]
load net dut|alu_mux|in0[8] -attr @rip(#000000) in0[8] -attr @name in0[8] -hierPin dut|alu_mux in0[8] -pin dut|alu_mux|Y_i I0[8]
load net dut|alu_mux|in0[9] -attr @rip(#000000) in0[9] -attr @name in0[9] -hierPin dut|alu_mux in0[9] -pin dut|alu_mux|Y_i I0[9]
load net dut|alu_mux|in1[0] -attr @rip(#000000) in1[0] -attr @name in1[0] -hierPin dut|alu_mux in1[0] -pin dut|alu_mux|Y_i I1[0]
load net dut|alu_mux|in1[10] -attr @rip(#000000) in1[10] -attr @name in1[10] -hierPin dut|alu_mux in1[10] -pin dut|alu_mux|Y_i I1[10]
load net dut|alu_mux|in1[11] -attr @rip(#000000) in1[11] -attr @name in1[11] -hierPin dut|alu_mux in1[11] -pin dut|alu_mux|Y_i I1[11]
load net dut|alu_mux|in1[12] -attr @rip(#000000) in1[12] -attr @name in1[12] -hierPin dut|alu_mux in1[12] -pin dut|alu_mux|Y_i I1[12]
load net dut|alu_mux|in1[13] -attr @rip(#000000) in1[13] -attr @name in1[13] -hierPin dut|alu_mux in1[13] -pin dut|alu_mux|Y_i I1[13]
load net dut|alu_mux|in1[14] -attr @rip(#000000) in1[14] -attr @name in1[14] -hierPin dut|alu_mux in1[14] -pin dut|alu_mux|Y_i I1[14]
load net dut|alu_mux|in1[15] -attr @rip(#000000) in1[15] -attr @name in1[15] -hierPin dut|alu_mux in1[15] -pin dut|alu_mux|Y_i I1[15]
load net dut|alu_mux|in1[1] -attr @rip(#000000) in1[1] -attr @name in1[1] -hierPin dut|alu_mux in1[1] -pin dut|alu_mux|Y_i I1[1]
load net dut|alu_mux|in1[2] -attr @rip(#000000) in1[2] -attr @name in1[2] -hierPin dut|alu_mux in1[2] -pin dut|alu_mux|Y_i I1[2]
load net dut|alu_mux|in1[3] -attr @rip(#000000) in1[3] -attr @name in1[3] -hierPin dut|alu_mux in1[3] -pin dut|alu_mux|Y_i I1[3]
load net dut|alu_mux|in1[4] -attr @rip(#000000) in1[4] -attr @name in1[4] -hierPin dut|alu_mux in1[4] -pin dut|alu_mux|Y_i I1[4]
load net dut|alu_mux|in1[5] -attr @rip(#000000) in1[5] -attr @name in1[5] -hierPin dut|alu_mux in1[5] -pin dut|alu_mux|Y_i I1[5]
load net dut|alu_mux|in1[6] -attr @rip(#000000) in1[6] -attr @name in1[6] -hierPin dut|alu_mux in1[6] -pin dut|alu_mux|Y_i I1[6]
load net dut|alu_mux|in1[7] -attr @rip(#000000) in1[7] -attr @name in1[7] -hierPin dut|alu_mux in1[7] -pin dut|alu_mux|Y_i I1[7]
load net dut|alu_mux|in1[8] -attr @rip(#000000) in1[8] -attr @name in1[8] -hierPin dut|alu_mux in1[8] -pin dut|alu_mux|Y_i I1[8]
load net dut|alu_mux|in1[9] -attr @rip(#000000) in1[9] -attr @name in1[9] -hierPin dut|alu_mux in1[9] -pin dut|alu_mux|Y_i I1[9]
load net dut|alu_mux|in2[0] -attr @rip(#000000) in2[0] -attr @name in2[0] -hierPin dut|alu_mux in2[0] -pin dut|alu_mux|Y_i I2[0]
load net dut|alu_mux|in2[10] -attr @rip(#000000) in2[10] -attr @name in2[10] -hierPin dut|alu_mux in2[10] -pin dut|alu_mux|Y_i I2[10]
load net dut|alu_mux|in2[11] -attr @rip(#000000) in2[11] -attr @name in2[11] -hierPin dut|alu_mux in2[11] -pin dut|alu_mux|Y_i I2[11]
load net dut|alu_mux|in2[12] -attr @rip(#000000) in2[12] -attr @name in2[12] -hierPin dut|alu_mux in2[12] -pin dut|alu_mux|Y_i I2[12]
load net dut|alu_mux|in2[13] -attr @rip(#000000) in2[13] -attr @name in2[13] -hierPin dut|alu_mux in2[13] -pin dut|alu_mux|Y_i I2[13]
load net dut|alu_mux|in2[14] -attr @rip(#000000) in2[14] -attr @name in2[14] -hierPin dut|alu_mux in2[14] -pin dut|alu_mux|Y_i I2[14]
load net dut|alu_mux|in2[15] -attr @rip(#000000) in2[15] -attr @name in2[15] -hierPin dut|alu_mux in2[15] -pin dut|alu_mux|Y_i I2[15]
load net dut|alu_mux|in2[1] -attr @rip(#000000) in2[1] -attr @name in2[1] -hierPin dut|alu_mux in2[1] -pin dut|alu_mux|Y_i I2[1]
load net dut|alu_mux|in2[2] -attr @rip(#000000) in2[2] -attr @name in2[2] -hierPin dut|alu_mux in2[2] -pin dut|alu_mux|Y_i I2[2]
load net dut|alu_mux|in2[3] -attr @rip(#000000) in2[3] -attr @name in2[3] -hierPin dut|alu_mux in2[3] -pin dut|alu_mux|Y_i I2[3]
load net dut|alu_mux|in2[4] -attr @rip(#000000) in2[4] -attr @name in2[4] -hierPin dut|alu_mux in2[4] -pin dut|alu_mux|Y_i I2[4]
load net dut|alu_mux|in2[5] -attr @rip(#000000) in2[5] -attr @name in2[5] -hierPin dut|alu_mux in2[5] -pin dut|alu_mux|Y_i I2[5]
load net dut|alu_mux|in2[6] -attr @rip(#000000) in2[6] -attr @name in2[6] -hierPin dut|alu_mux in2[6] -pin dut|alu_mux|Y_i I2[6]
load net dut|alu_mux|in2[7] -attr @rip(#000000) in2[7] -attr @name in2[7] -hierPin dut|alu_mux in2[7] -pin dut|alu_mux|Y_i I2[7]
load net dut|alu_mux|in2[8] -attr @rip(#000000) in2[8] -attr @name in2[8] -hierPin dut|alu_mux in2[8] -pin dut|alu_mux|Y_i I2[8]
load net dut|alu_mux|in2[9] -attr @rip(#000000) in2[9] -attr @name in2[9] -hierPin dut|alu_mux in2[9] -pin dut|alu_mux|Y_i I2[9]
load net dut|alu_mux|in3[0] -attr @rip(#000000) in3[0] -attr @name in3[0] -hierPin dut|alu_mux in3[0] -pin dut|alu_mux|Y_i I3[0]
load net dut|alu_mux|in3[10] -attr @rip(#000000) in3[10] -attr @name in3[10] -hierPin dut|alu_mux in3[10] -pin dut|alu_mux|Y_i I3[10]
load net dut|alu_mux|in3[11] -attr @rip(#000000) in3[11] -attr @name in3[11] -hierPin dut|alu_mux in3[11] -pin dut|alu_mux|Y_i I3[11]
load net dut|alu_mux|in3[12] -attr @rip(#000000) in3[12] -attr @name in3[12] -hierPin dut|alu_mux in3[12] -pin dut|alu_mux|Y_i I3[12]
load net dut|alu_mux|in3[13] -attr @rip(#000000) in3[13] -attr @name in3[13] -hierPin dut|alu_mux in3[13] -pin dut|alu_mux|Y_i I3[13]
load net dut|alu_mux|in3[14] -attr @rip(#000000) in3[14] -attr @name in3[14] -hierPin dut|alu_mux in3[14] -pin dut|alu_mux|Y_i I3[14]
load net dut|alu_mux|in3[15] -attr @rip(#000000) in3[15] -attr @name in3[15] -hierPin dut|alu_mux in3[15] -pin dut|alu_mux|Y_i I3[15]
load net dut|alu_mux|in3[1] -attr @rip(#000000) in3[1] -attr @name in3[1] -hierPin dut|alu_mux in3[1] -pin dut|alu_mux|Y_i I3[1]
load net dut|alu_mux|in3[2] -attr @rip(#000000) in3[2] -attr @name in3[2] -hierPin dut|alu_mux in3[2] -pin dut|alu_mux|Y_i I3[2]
load net dut|alu_mux|in3[3] -attr @rip(#000000) in3[3] -attr @name in3[3] -hierPin dut|alu_mux in3[3] -pin dut|alu_mux|Y_i I3[3]
load net dut|alu_mux|in3[4] -attr @rip(#000000) in3[4] -attr @name in3[4] -hierPin dut|alu_mux in3[4] -pin dut|alu_mux|Y_i I3[4]
load net dut|alu_mux|in3[5] -attr @rip(#000000) in3[5] -attr @name in3[5] -hierPin dut|alu_mux in3[5] -pin dut|alu_mux|Y_i I3[5]
load net dut|alu_mux|in3[6] -attr @rip(#000000) in3[6] -attr @name in3[6] -hierPin dut|alu_mux in3[6] -pin dut|alu_mux|Y_i I3[6]
load net dut|alu_mux|in3[7] -attr @rip(#000000) in3[7] -attr @name in3[7] -hierPin dut|alu_mux in3[7] -pin dut|alu_mux|Y_i I3[7]
load net dut|alu_mux|in3[8] -attr @rip(#000000) in3[8] -attr @name in3[8] -hierPin dut|alu_mux in3[8] -pin dut|alu_mux|Y_i I3[8]
load net dut|alu_mux|in3[9] -attr @rip(#000000) in3[9] -attr @name in3[9] -hierPin dut|alu_mux in3[9] -pin dut|alu_mux|Y_i I3[9]
load net dut|alu_mux|in4[0] -attr @rip(#000000) in4[0] -attr @name in4[0] -hierPin dut|alu_mux in4[0] -pin dut|alu_mux|Y_i I4[0]
load net dut|alu_mux|in4[10] -attr @rip in4[10] -attr @name in4[10] -hierPin dut|alu_mux in4[10] -pin dut|alu_mux|Y_i I4[10]
load net dut|alu_mux|in4[11] -attr @rip in4[11] -attr @name in4[11] -hierPin dut|alu_mux in4[11] -pin dut|alu_mux|Y_i I4[11]
load net dut|alu_mux|in4[12] -attr @rip in4[12] -attr @name in4[12] -hierPin dut|alu_mux in4[12] -pin dut|alu_mux|Y_i I4[12]
load net dut|alu_mux|in4[13] -attr @rip in4[13] -attr @name in4[13] -hierPin dut|alu_mux in4[13] -pin dut|alu_mux|Y_i I4[13]
load net dut|alu_mux|in4[14] -attr @rip in4[14] -attr @name in4[14] -hierPin dut|alu_mux in4[14] -pin dut|alu_mux|Y_i I4[14]
load net dut|alu_mux|in4[15] -attr @rip in4[15] -attr @name in4[15] -hierPin dut|alu_mux in4[15] -pin dut|alu_mux|Y_i I4[15]
load net dut|alu_mux|in4[1] -attr @rip(#000000) in4[1] -attr @name in4[1] -hierPin dut|alu_mux in4[1] -pin dut|alu_mux|Y_i I4[1]
load net dut|alu_mux|in4[2] -attr @rip(#000000) in4[2] -attr @name in4[2] -hierPin dut|alu_mux in4[2] -pin dut|alu_mux|Y_i I4[2]
load net dut|alu_mux|in4[3] -attr @rip(#000000) in4[3] -attr @name in4[3] -hierPin dut|alu_mux in4[3] -pin dut|alu_mux|Y_i I4[3]
load net dut|alu_mux|in4[4] -attr @rip(#000000) in4[4] -attr @name in4[4] -hierPin dut|alu_mux in4[4] -pin dut|alu_mux|Y_i I4[4]
load net dut|alu_mux|in4[5] -attr @rip(#000000) in4[5] -attr @name in4[5] -hierPin dut|alu_mux in4[5] -pin dut|alu_mux|Y_i I4[5]
load net dut|alu_mux|in4[6] -attr @rip(#000000) in4[6] -attr @name in4[6] -hierPin dut|alu_mux in4[6] -pin dut|alu_mux|Y_i I4[6]
load net dut|alu_mux|in4[7] -attr @rip(#000000) in4[7] -attr @name in4[7] -hierPin dut|alu_mux in4[7] -pin dut|alu_mux|Y_i I4[7]
load net dut|alu_mux|in4[8] -attr @rip in4[8] -attr @name in4[8] -hierPin dut|alu_mux in4[8] -pin dut|alu_mux|Y_i I4[8]
load net dut|alu_mux|in4[9] -attr @rip in4[9] -attr @name in4[9] -hierPin dut|alu_mux in4[9] -pin dut|alu_mux|Y_i I4[9]
load net dut|alu_mux|in5[0] -attr @rip(#000000) in5[0] -attr @name in5[0] -hierPin dut|alu_mux in5[0] -pin dut|alu_mux|Y_i I5[0]
load net dut|alu_mux|in5[10] -attr @rip in5[10] -attr @name in5[10] -hierPin dut|alu_mux in5[10] -pin dut|alu_mux|Y_i I5[10]
load net dut|alu_mux|in5[11] -attr @rip in5[11] -attr @name in5[11] -hierPin dut|alu_mux in5[11] -pin dut|alu_mux|Y_i I5[11]
load net dut|alu_mux|in5[12] -attr @rip in5[12] -attr @name in5[12] -hierPin dut|alu_mux in5[12] -pin dut|alu_mux|Y_i I5[12]
load net dut|alu_mux|in5[13] -attr @rip in5[13] -attr @name in5[13] -hierPin dut|alu_mux in5[13] -pin dut|alu_mux|Y_i I5[13]
load net dut|alu_mux|in5[14] -attr @rip in5[14] -attr @name in5[14] -hierPin dut|alu_mux in5[14] -pin dut|alu_mux|Y_i I5[14]
load net dut|alu_mux|in5[15] -attr @rip in5[15] -attr @name in5[15] -hierPin dut|alu_mux in5[15] -pin dut|alu_mux|Y_i I5[15]
load net dut|alu_mux|in5[1] -attr @rip(#000000) in5[1] -attr @name in5[1] -hierPin dut|alu_mux in5[1] -pin dut|alu_mux|Y_i I5[1]
load net dut|alu_mux|in5[2] -attr @rip(#000000) in5[2] -attr @name in5[2] -hierPin dut|alu_mux in5[2] -pin dut|alu_mux|Y_i I5[2]
load net dut|alu_mux|in5[3] -attr @rip(#000000) in5[3] -attr @name in5[3] -hierPin dut|alu_mux in5[3] -pin dut|alu_mux|Y_i I5[3]
load net dut|alu_mux|in5[4] -attr @rip(#000000) in5[4] -attr @name in5[4] -hierPin dut|alu_mux in5[4] -pin dut|alu_mux|Y_i I5[4]
load net dut|alu_mux|in5[5] -attr @rip(#000000) in5[5] -attr @name in5[5] -hierPin dut|alu_mux in5[5] -pin dut|alu_mux|Y_i I5[5]
load net dut|alu_mux|in5[6] -attr @rip(#000000) in5[6] -attr @name in5[6] -hierPin dut|alu_mux in5[6] -pin dut|alu_mux|Y_i I5[6]
load net dut|alu_mux|in5[7] -attr @rip(#000000) in5[7] -attr @name in5[7] -hierPin dut|alu_mux in5[7] -pin dut|alu_mux|Y_i I5[7]
load net dut|alu_mux|in5[8] -attr @rip in5[8] -attr @name in5[8] -hierPin dut|alu_mux in5[8] -pin dut|alu_mux|Y_i I5[8]
load net dut|alu_mux|in5[9] -attr @rip in5[9] -attr @name in5[9] -hierPin dut|alu_mux in5[9] -pin dut|alu_mux|Y_i I5[9]
load net dut|alu_mux|in6[0] -attr @rip(#000000) in6[0] -attr @name in6[0] -hierPin dut|alu_mux in6[0] -pin dut|alu_mux|Y_i I6[0]
load net dut|alu_mux|in6[10] -attr @rip(#000000) in6[10] -attr @name in6[10] -hierPin dut|alu_mux in6[10] -pin dut|alu_mux|Y_i I6[10]
load net dut|alu_mux|in6[11] -attr @rip(#000000) in6[11] -attr @name in6[11] -hierPin dut|alu_mux in6[11] -pin dut|alu_mux|Y_i I6[11]
load net dut|alu_mux|in6[12] -attr @rip(#000000) in6[12] -attr @name in6[12] -hierPin dut|alu_mux in6[12] -pin dut|alu_mux|Y_i I6[12]
load net dut|alu_mux|in6[13] -attr @rip(#000000) in6[13] -attr @name in6[13] -hierPin dut|alu_mux in6[13] -pin dut|alu_mux|Y_i I6[13]
load net dut|alu_mux|in6[14] -attr @rip(#000000) in6[14] -attr @name in6[14] -hierPin dut|alu_mux in6[14] -pin dut|alu_mux|Y_i I6[14]
load net dut|alu_mux|in6[15] -attr @rip(#000000) in6[15] -attr @name in6[15] -hierPin dut|alu_mux in6[15] -pin dut|alu_mux|Y_i I6[15]
load net dut|alu_mux|in6[1] -attr @rip(#000000) in6[1] -attr @name in6[1] -hierPin dut|alu_mux in6[1] -pin dut|alu_mux|Y_i I6[1]
load net dut|alu_mux|in6[2] -attr @rip(#000000) in6[2] -attr @name in6[2] -hierPin dut|alu_mux in6[2] -pin dut|alu_mux|Y_i I6[2]
load net dut|alu_mux|in6[3] -attr @rip(#000000) in6[3] -attr @name in6[3] -hierPin dut|alu_mux in6[3] -pin dut|alu_mux|Y_i I6[3]
load net dut|alu_mux|in6[4] -attr @rip(#000000) in6[4] -attr @name in6[4] -hierPin dut|alu_mux in6[4] -pin dut|alu_mux|Y_i I6[4]
load net dut|alu_mux|in6[5] -attr @rip(#000000) in6[5] -attr @name in6[5] -hierPin dut|alu_mux in6[5] -pin dut|alu_mux|Y_i I6[5]
load net dut|alu_mux|in6[6] -attr @rip(#000000) in6[6] -attr @name in6[6] -hierPin dut|alu_mux in6[6] -pin dut|alu_mux|Y_i I6[6]
load net dut|alu_mux|in6[7] -attr @rip(#000000) in6[7] -attr @name in6[7] -hierPin dut|alu_mux in6[7] -pin dut|alu_mux|Y_i I6[7]
load net dut|alu_mux|in6[8] -attr @rip(#000000) in6[8] -attr @name in6[8] -hierPin dut|alu_mux in6[8] -pin dut|alu_mux|Y_i I6[8]
load net dut|alu_mux|in6[9] -attr @rip(#000000) in6[9] -attr @name in6[9] -hierPin dut|alu_mux in6[9] -pin dut|alu_mux|Y_i I6[9]
load net dut|alu_mux|in7[0] -attr @rip(#000000) in7[0] -attr @name in7[0] -hierPin dut|alu_mux in7[0] -pin dut|alu_mux|Y_i I7[0]
load net dut|alu_mux|in7[10] -attr @rip(#000000) in7[10] -attr @name in7[10] -hierPin dut|alu_mux in7[10] -pin dut|alu_mux|Y_i I7[10]
load net dut|alu_mux|in7[11] -attr @rip(#000000) in7[11] -attr @name in7[11] -hierPin dut|alu_mux in7[11] -pin dut|alu_mux|Y_i I7[11]
load net dut|alu_mux|in7[12] -attr @rip(#000000) in7[12] -attr @name in7[12] -hierPin dut|alu_mux in7[12] -pin dut|alu_mux|Y_i I7[12]
load net dut|alu_mux|in7[13] -attr @rip(#000000) in7[13] -attr @name in7[13] -hierPin dut|alu_mux in7[13] -pin dut|alu_mux|Y_i I7[13]
load net dut|alu_mux|in7[14] -attr @rip(#000000) in7[14] -attr @name in7[14] -hierPin dut|alu_mux in7[14] -pin dut|alu_mux|Y_i I7[14]
load net dut|alu_mux|in7[15] -attr @rip(#000000) in7[15] -attr @name in7[15] -hierPin dut|alu_mux in7[15] -pin dut|alu_mux|Y_i I7[15]
load net dut|alu_mux|in7[1] -attr @rip(#000000) in7[1] -attr @name in7[1] -hierPin dut|alu_mux in7[1] -pin dut|alu_mux|Y_i I7[1]
load net dut|alu_mux|in7[2] -attr @rip(#000000) in7[2] -attr @name in7[2] -hierPin dut|alu_mux in7[2] -pin dut|alu_mux|Y_i I7[2]
load net dut|alu_mux|in7[3] -attr @rip(#000000) in7[3] -attr @name in7[3] -hierPin dut|alu_mux in7[3] -pin dut|alu_mux|Y_i I7[3]
load net dut|alu_mux|in7[4] -attr @rip(#000000) in7[4] -attr @name in7[4] -hierPin dut|alu_mux in7[4] -pin dut|alu_mux|Y_i I7[4]
load net dut|alu_mux|in7[5] -attr @rip(#000000) in7[5] -attr @name in7[5] -hierPin dut|alu_mux in7[5] -pin dut|alu_mux|Y_i I7[5]
load net dut|alu_mux|in7[6] -attr @rip(#000000) in7[6] -attr @name in7[6] -hierPin dut|alu_mux in7[6] -pin dut|alu_mux|Y_i I7[6]
load net dut|alu_mux|in7[7] -attr @rip(#000000) in7[7] -attr @name in7[7] -hierPin dut|alu_mux in7[7] -pin dut|alu_mux|Y_i I7[7]
load net dut|alu_mux|in7[8] -attr @rip(#000000) in7[8] -attr @name in7[8] -hierPin dut|alu_mux in7[8] -pin dut|alu_mux|Y_i I7[8]
load net dut|alu_mux|in7[9] -attr @rip(#000000) in7[9] -attr @name in7[9] -hierPin dut|alu_mux in7[9] -pin dut|alu_mux|Y_i I7[9]
load net dut|or_unit|<const0> -ground -attr @name <const0> -pin dut|or_unit|Output2_i I0[15] -pin dut|or_unit|Output2_i I0[14] -pin dut|or_unit|Output2_i I0[13] -pin dut|or_unit|Output2_i I0[12] -pin dut|or_unit|Output2_i I0[11] -pin dut|or_unit|Output2_i I0[10] -pin dut|or_unit|Output2_i I0[9] -pin dut|or_unit|Output2_i I0[8] -pin dut|or_unit|Output2_i I1[15] -pin dut|or_unit|Output2_i I1[14] -pin dut|or_unit|Output2_i I1[13] -pin dut|or_unit|Output2_i I1[12] -pin dut|or_unit|Output2_i I1[11] -pin dut|or_unit|Output2_i I1[10] -pin dut|or_unit|Output2_i I1[9] -pin dut|or_unit|Output2_i I1[8]
load net dut|or_unit|A[0] -attr @rip A[0] -attr @name A[0] -hierPin dut|or_unit A[0] -pin dut|or_unit|Output2_i I0[0]
load net dut|or_unit|A[1] -attr @rip A[1] -attr @name A[1] -hierPin dut|or_unit A[1] -pin dut|or_unit|Output2_i I0[1]
load net dut|or_unit|A[2] -attr @rip A[2] -attr @name A[2] -hierPin dut|or_unit A[2] -pin dut|or_unit|Output2_i I0[2]
load net dut|or_unit|A[3] -attr @rip A[3] -attr @name A[3] -hierPin dut|or_unit A[3] -pin dut|or_unit|Output2_i I0[3]
load net dut|or_unit|A[4] -attr @rip A[4] -attr @name A[4] -hierPin dut|or_unit A[4] -pin dut|or_unit|Output2_i I0[4]
load net dut|or_unit|A[5] -attr @rip A[5] -attr @name A[5] -hierPin dut|or_unit A[5] -pin dut|or_unit|Output2_i I0[5]
load net dut|or_unit|A[6] -attr @rip A[6] -attr @name A[6] -hierPin dut|or_unit A[6] -pin dut|or_unit|Output2_i I0[6]
load net dut|or_unit|A[7] -attr @rip A[7] -attr @name A[7] -hierPin dut|or_unit A[7] -pin dut|or_unit|Output2_i I0[7]
load net dut|or_unit|B[0] -attr @rip B[0] -attr @name B[0] -hierPin dut|or_unit B[0] -pin dut|or_unit|Output2_i I1[0]
load net dut|or_unit|B[1] -attr @rip B[1] -attr @name B[1] -hierPin dut|or_unit B[1] -pin dut|or_unit|Output2_i I1[1]
load net dut|or_unit|B[2] -attr @rip B[2] -attr @name B[2] -hierPin dut|or_unit B[2] -pin dut|or_unit|Output2_i I1[2]
load net dut|or_unit|B[3] -attr @rip B[3] -attr @name B[3] -hierPin dut|or_unit B[3] -pin dut|or_unit|Output2_i I1[3]
load net dut|or_unit|B[4] -attr @rip B[4] -attr @name B[4] -hierPin dut|or_unit B[4] -pin dut|or_unit|Output2_i I1[4]
load net dut|or_unit|B[5] -attr @rip B[5] -attr @name B[5] -hierPin dut|or_unit B[5] -pin dut|or_unit|Output2_i I1[5]
load net dut|or_unit|B[6] -attr @rip B[6] -attr @name B[6] -hierPin dut|or_unit B[6] -pin dut|or_unit|Output2_i I1[6]
load net dut|or_unit|B[7] -attr @rip B[7] -attr @name B[7] -hierPin dut|or_unit B[7] -pin dut|or_unit|Output2_i I1[7]
load net dut|or_unit|Output2[0] -attr @rip(#000000) O[0] -attr @name Output2[0] -hierPin dut|or_unit Output2[0] -pin dut|or_unit|Output2_i O[0]
load net dut|or_unit|Output2[10] -attr @rip(#000000) O[10] -attr @name Output2[10] -hierPin dut|or_unit Output2[10] -pin dut|or_unit|Output2_i O[10]
load net dut|or_unit|Output2[11] -attr @rip(#000000) O[11] -attr @name Output2[11] -hierPin dut|or_unit Output2[11] -pin dut|or_unit|Output2_i O[11]
load net dut|or_unit|Output2[12] -attr @rip(#000000) O[12] -attr @name Output2[12] -hierPin dut|or_unit Output2[12] -pin dut|or_unit|Output2_i O[12]
load net dut|or_unit|Output2[13] -attr @rip(#000000) O[13] -attr @name Output2[13] -hierPin dut|or_unit Output2[13] -pin dut|or_unit|Output2_i O[13]
load net dut|or_unit|Output2[14] -attr @rip(#000000) O[14] -attr @name Output2[14] -hierPin dut|or_unit Output2[14] -pin dut|or_unit|Output2_i O[14]
load net dut|or_unit|Output2[15] -attr @rip(#000000) O[15] -attr @name Output2[15] -hierPin dut|or_unit Output2[15] -pin dut|or_unit|Output2_i O[15]
load net dut|or_unit|Output2[1] -attr @rip(#000000) O[1] -attr @name Output2[1] -hierPin dut|or_unit Output2[1] -pin dut|or_unit|Output2_i O[1]
load net dut|or_unit|Output2[2] -attr @rip(#000000) O[2] -attr @name Output2[2] -hierPin dut|or_unit Output2[2] -pin dut|or_unit|Output2_i O[2]
load net dut|or_unit|Output2[3] -attr @rip(#000000) O[3] -attr @name Output2[3] -hierPin dut|or_unit Output2[3] -pin dut|or_unit|Output2_i O[3]
load net dut|or_unit|Output2[4] -attr @rip(#000000) O[4] -attr @name Output2[4] -hierPin dut|or_unit Output2[4] -pin dut|or_unit|Output2_i O[4]
load net dut|or_unit|Output2[5] -attr @rip(#000000) O[5] -attr @name Output2[5] -hierPin dut|or_unit Output2[5] -pin dut|or_unit|Output2_i O[5]
load net dut|or_unit|Output2[6] -attr @rip(#000000) O[6] -attr @name Output2[6] -hierPin dut|or_unit Output2[6] -pin dut|or_unit|Output2_i O[6]
load net dut|or_unit|Output2[7] -attr @rip(#000000) O[7] -attr @name Output2[7] -hierPin dut|or_unit Output2[7] -pin dut|or_unit|Output2_i O[7]
load net dut|or_unit|Output2[8] -attr @rip(#000000) O[8] -attr @name Output2[8] -hierPin dut|or_unit Output2[8] -pin dut|or_unit|Output2_i O[8]
load net dut|or_unit|Output2[9] -attr @rip(#000000) O[9] -attr @name Output2[9] -hierPin dut|or_unit Output2[9] -pin dut|or_unit|Output2_i O[9]
load net dut|mul_unit|A[0] -attr @rip A[0] -attr @name A[0] -hierPin dut|mul_unit A[0] -pin dut|mul_unit|Output70_i I0[0]
load net dut|mul_unit|A[1] -attr @rip A[1] -attr @name A[1] -hierPin dut|mul_unit A[1] -pin dut|mul_unit|Output70_i I0[1]
load net dut|mul_unit|A[2] -attr @rip A[2] -attr @name A[2] -hierPin dut|mul_unit A[2] -pin dut|mul_unit|Output70_i I0[2]
load net dut|mul_unit|A[3] -attr @rip A[3] -attr @name A[3] -hierPin dut|mul_unit A[3] -pin dut|mul_unit|Output70_i I0[3]
load net dut|mul_unit|A[4] -attr @rip A[4] -attr @name A[4] -hierPin dut|mul_unit A[4] -pin dut|mul_unit|Output70_i I0[4]
load net dut|mul_unit|A[5] -attr @rip A[5] -attr @name A[5] -hierPin dut|mul_unit A[5] -pin dut|mul_unit|Output70_i I0[5]
load net dut|mul_unit|A[6] -attr @rip A[6] -attr @name A[6] -hierPin dut|mul_unit A[6] -pin dut|mul_unit|Output70_i I0[6]
load net dut|mul_unit|A[7] -attr @rip A[7] -attr @name A[7] -hierPin dut|mul_unit A[7] -pin dut|mul_unit|Output70_i I0[7]
load net dut|mul_unit|B[0] -attr @rip B[0] -attr @name B[0] -hierPin dut|mul_unit B[0] -pin dut|mul_unit|Output70_i I1[0]
load net dut|mul_unit|B[1] -attr @rip B[1] -attr @name B[1] -hierPin dut|mul_unit B[1] -pin dut|mul_unit|Output70_i I1[1]
load net dut|mul_unit|B[2] -attr @rip B[2] -attr @name B[2] -hierPin dut|mul_unit B[2] -pin dut|mul_unit|Output70_i I1[2]
load net dut|mul_unit|B[3] -attr @rip B[3] -attr @name B[3] -hierPin dut|mul_unit B[3] -pin dut|mul_unit|Output70_i I1[3]
load net dut|mul_unit|B[4] -attr @rip B[4] -attr @name B[4] -hierPin dut|mul_unit B[4] -pin dut|mul_unit|Output70_i I1[4]
load net dut|mul_unit|B[5] -attr @rip B[5] -attr @name B[5] -hierPin dut|mul_unit B[5] -pin dut|mul_unit|Output70_i I1[5]
load net dut|mul_unit|B[6] -attr @rip B[6] -attr @name B[6] -hierPin dut|mul_unit B[6] -pin dut|mul_unit|Output70_i I1[6]
load net dut|mul_unit|B[7] -attr @rip B[7] -attr @name B[7] -hierPin dut|mul_unit B[7] -pin dut|mul_unit|Output70_i I1[7]
load net dut|mul_unit|Output7[0] -attr @rip(#000000) O[0] -attr @name Output7[0] -hierPin dut|mul_unit Output7[0] -pin dut|mul_unit|Output70_i O[0]
load net dut|mul_unit|Output7[10] -attr @rip(#000000) O[10] -attr @name Output7[10] -hierPin dut|mul_unit Output7[10] -pin dut|mul_unit|Output70_i O[10]
load net dut|mul_unit|Output7[11] -attr @rip(#000000) O[11] -attr @name Output7[11] -hierPin dut|mul_unit Output7[11] -pin dut|mul_unit|Output70_i O[11]
load net dut|mul_unit|Output7[12] -attr @rip(#000000) O[12] -attr @name Output7[12] -hierPin dut|mul_unit Output7[12] -pin dut|mul_unit|Output70_i O[12]
load net dut|mul_unit|Output7[13] -attr @rip(#000000) O[13] -attr @name Output7[13] -hierPin dut|mul_unit Output7[13] -pin dut|mul_unit|Output70_i O[13]
load net dut|mul_unit|Output7[14] -attr @rip(#000000) O[14] -attr @name Output7[14] -hierPin dut|mul_unit Output7[14] -pin dut|mul_unit|Output70_i O[14]
load net dut|mul_unit|Output7[15] -attr @rip(#000000) O[15] -attr @name Output7[15] -hierPin dut|mul_unit Output7[15] -pin dut|mul_unit|Output70_i O[15]
load net dut|mul_unit|Output7[1] -attr @rip(#000000) O[1] -attr @name Output7[1] -hierPin dut|mul_unit Output7[1] -pin dut|mul_unit|Output70_i O[1]
load net dut|mul_unit|Output7[2] -attr @rip(#000000) O[2] -attr @name Output7[2] -hierPin dut|mul_unit Output7[2] -pin dut|mul_unit|Output70_i O[2]
load net dut|mul_unit|Output7[3] -attr @rip(#000000) O[3] -attr @name Output7[3] -hierPin dut|mul_unit Output7[3] -pin dut|mul_unit|Output70_i O[3]
load net dut|mul_unit|Output7[4] -attr @rip(#000000) O[4] -attr @name Output7[4] -hierPin dut|mul_unit Output7[4] -pin dut|mul_unit|Output70_i O[4]
load net dut|mul_unit|Output7[5] -attr @rip(#000000) O[5] -attr @name Output7[5] -hierPin dut|mul_unit Output7[5] -pin dut|mul_unit|Output70_i O[5]
load net dut|mul_unit|Output7[6] -attr @rip(#000000) O[6] -attr @name Output7[6] -hierPin dut|mul_unit Output7[6] -pin dut|mul_unit|Output70_i O[6]
load net dut|mul_unit|Output7[7] -attr @rip(#000000) O[7] -attr @name Output7[7] -hierPin dut|mul_unit Output7[7] -pin dut|mul_unit|Output70_i O[7]
load net dut|mul_unit|Output7[8] -attr @rip(#000000) O[8] -attr @name Output7[8] -hierPin dut|mul_unit Output7[8] -pin dut|mul_unit|Output70_i O[8]
load net dut|mul_unit|Output7[9] -attr @rip(#000000) O[9] -attr @name Output7[9] -hierPin dut|mul_unit Output7[9] -pin dut|mul_unit|Output70_i O[9]
load net dut|sub_unit|<const0> -ground -attr @rip 8 -attr @name <const0> -hierPin dut|sub_unit Output6[8]
load net dut|sub_unit|A[0] -attr @rip A[0] -attr @name A[0] -hierPin dut|sub_unit A[0] -pin dut|sub_unit|Borrow0_i I0[0]
load net dut|sub_unit|A[1] -attr @rip A[1] -attr @name A[1] -hierPin dut|sub_unit A[1] -pin dut|sub_unit|Borrow0_i I0[1]
load net dut|sub_unit|A[2] -attr @rip A[2] -attr @name A[2] -hierPin dut|sub_unit A[2] -pin dut|sub_unit|Borrow0_i I0[2]
load net dut|sub_unit|A[3] -attr @rip A[3] -attr @name A[3] -hierPin dut|sub_unit A[3] -pin dut|sub_unit|Borrow0_i I0[3]
load net dut|sub_unit|A[4] -attr @rip A[4] -attr @name A[4] -hierPin dut|sub_unit A[4] -pin dut|sub_unit|Borrow0_i I0[4]
load net dut|sub_unit|A[5] -attr @rip A[5] -attr @name A[5] -hierPin dut|sub_unit A[5] -pin dut|sub_unit|Borrow0_i I0[5]
load net dut|sub_unit|A[6] -attr @rip A[6] -attr @name A[6] -hierPin dut|sub_unit A[6] -pin dut|sub_unit|Borrow0_i I0[6]
load net dut|sub_unit|A[7] -attr @rip A[7] -attr @name A[7] -hierPin dut|sub_unit A[7] -pin dut|sub_unit|Borrow0_i I0[7]
load net dut|sub_unit|B[0] -attr @rip B[0] -attr @name B[0] -hierPin dut|sub_unit B[0] -pin dut|sub_unit|Borrow0_i I1[0]
load net dut|sub_unit|B[1] -attr @rip B[1] -attr @name B[1] -hierPin dut|sub_unit B[1] -pin dut|sub_unit|Borrow0_i I1[1]
load net dut|sub_unit|B[2] -attr @rip B[2] -attr @name B[2] -hierPin dut|sub_unit B[2] -pin dut|sub_unit|Borrow0_i I1[2]
load net dut|sub_unit|B[3] -attr @rip B[3] -attr @name B[3] -hierPin dut|sub_unit B[3] -pin dut|sub_unit|Borrow0_i I1[3]
load net dut|sub_unit|B[4] -attr @rip B[4] -attr @name B[4] -hierPin dut|sub_unit B[4] -pin dut|sub_unit|Borrow0_i I1[4]
load net dut|sub_unit|B[5] -attr @rip B[5] -attr @name B[5] -hierPin dut|sub_unit B[5] -pin dut|sub_unit|Borrow0_i I1[5]
load net dut|sub_unit|B[6] -attr @rip B[6] -attr @name B[6] -hierPin dut|sub_unit B[6] -pin dut|sub_unit|Borrow0_i I1[6]
load net dut|sub_unit|B[7] -attr @rip B[7] -attr @name B[7] -hierPin dut|sub_unit B[7] -pin dut|sub_unit|Borrow0_i I1[7]
load net dut|sub_unit|Borrow -attr @rip O[8] -attr @name Borrow -hierPin dut|sub_unit Borrow -pin dut|sub_unit|Borrow0_i O[8]
load net dut|sub_unit|Output6[0] -attr @rip(#000000) O[0] -attr @name Output6[0] -hierPin dut|sub_unit Diff[0] -hierPin dut|sub_unit Output6[0] -pin dut|sub_unit|Borrow0_i O[0]
load net dut|sub_unit|Output6[1] -attr @rip(#000000) O[1] -attr @name Output6[1] -hierPin dut|sub_unit Diff[1] -hierPin dut|sub_unit Output6[1] -pin dut|sub_unit|Borrow0_i O[1]
load net dut|sub_unit|Output6[2] -attr @rip(#000000) O[2] -attr @name Output6[2] -hierPin dut|sub_unit Diff[2] -hierPin dut|sub_unit Output6[2] -pin dut|sub_unit|Borrow0_i O[2]
load net dut|sub_unit|Output6[3] -attr @rip(#000000) O[3] -attr @name Output6[3] -hierPin dut|sub_unit Diff[3] -hierPin dut|sub_unit Output6[3] -pin dut|sub_unit|Borrow0_i O[3]
load net dut|sub_unit|Output6[4] -attr @rip(#000000) O[4] -attr @name Output6[4] -hierPin dut|sub_unit Diff[4] -hierPin dut|sub_unit Output6[4] -pin dut|sub_unit|Borrow0_i O[4]
load net dut|sub_unit|Output6[5] -attr @rip(#000000) O[5] -attr @name Output6[5] -hierPin dut|sub_unit Diff[5] -hierPin dut|sub_unit Output6[5] -pin dut|sub_unit|Borrow0_i O[5]
load net dut|sub_unit|Output6[6] -attr @rip(#000000) O[6] -attr @name Output6[6] -hierPin dut|sub_unit Diff[6] -hierPin dut|sub_unit Output6[6] -pin dut|sub_unit|Borrow0_i O[6]
load net dut|sub_unit|Output6[7] -attr @rip(#000000) O[7] -attr @name Output6[7] -hierPin dut|sub_unit Diff[7] -hierPin dut|sub_unit Output6[7] -pin dut|sub_unit|Borrow0_i O[7]
load net dut|xor_unit|<const0> -ground -attr @name <const0> -pin dut|xor_unit|Output4_i I0[15] -pin dut|xor_unit|Output4_i I0[14] -pin dut|xor_unit|Output4_i I0[13] -pin dut|xor_unit|Output4_i I0[12] -pin dut|xor_unit|Output4_i I0[11] -pin dut|xor_unit|Output4_i I0[10] -pin dut|xor_unit|Output4_i I0[9] -pin dut|xor_unit|Output4_i I0[8] -pin dut|xor_unit|Output4_i I1[15] -pin dut|xor_unit|Output4_i I1[14] -pin dut|xor_unit|Output4_i I1[13] -pin dut|xor_unit|Output4_i I1[12] -pin dut|xor_unit|Output4_i I1[11] -pin dut|xor_unit|Output4_i I1[10] -pin dut|xor_unit|Output4_i I1[9] -pin dut|xor_unit|Output4_i I1[8]
load net dut|xor_unit|A[0] -attr @rip A[0] -attr @name A[0] -hierPin dut|xor_unit A[0] -pin dut|xor_unit|Output4_i I0[0]
load net dut|xor_unit|A[1] -attr @rip A[1] -attr @name A[1] -hierPin dut|xor_unit A[1] -pin dut|xor_unit|Output4_i I0[1]
load net dut|xor_unit|A[2] -attr @rip A[2] -attr @name A[2] -hierPin dut|xor_unit A[2] -pin dut|xor_unit|Output4_i I0[2]
load net dut|xor_unit|A[3] -attr @rip A[3] -attr @name A[3] -hierPin dut|xor_unit A[3] -pin dut|xor_unit|Output4_i I0[3]
load net dut|xor_unit|A[4] -attr @rip A[4] -attr @name A[4] -hierPin dut|xor_unit A[4] -pin dut|xor_unit|Output4_i I0[4]
load net dut|xor_unit|A[5] -attr @rip A[5] -attr @name A[5] -hierPin dut|xor_unit A[5] -pin dut|xor_unit|Output4_i I0[5]
load net dut|xor_unit|A[6] -attr @rip A[6] -attr @name A[6] -hierPin dut|xor_unit A[6] -pin dut|xor_unit|Output4_i I0[6]
load net dut|xor_unit|A[7] -attr @rip A[7] -attr @name A[7] -hierPin dut|xor_unit A[7] -pin dut|xor_unit|Output4_i I0[7]
load net dut|xor_unit|B[0] -attr @rip B[0] -attr @name B[0] -hierPin dut|xor_unit B[0] -pin dut|xor_unit|Output4_i I1[0]
load net dut|xor_unit|B[1] -attr @rip B[1] -attr @name B[1] -hierPin dut|xor_unit B[1] -pin dut|xor_unit|Output4_i I1[1]
load net dut|xor_unit|B[2] -attr @rip B[2] -attr @name B[2] -hierPin dut|xor_unit B[2] -pin dut|xor_unit|Output4_i I1[2]
load net dut|xor_unit|B[3] -attr @rip B[3] -attr @name B[3] -hierPin dut|xor_unit B[3] -pin dut|xor_unit|Output4_i I1[3]
load net dut|xor_unit|B[4] -attr @rip B[4] -attr @name B[4] -hierPin dut|xor_unit B[4] -pin dut|xor_unit|Output4_i I1[4]
load net dut|xor_unit|B[5] -attr @rip B[5] -attr @name B[5] -hierPin dut|xor_unit B[5] -pin dut|xor_unit|Output4_i I1[5]
load net dut|xor_unit|B[6] -attr @rip B[6] -attr @name B[6] -hierPin dut|xor_unit B[6] -pin dut|xor_unit|Output4_i I1[6]
load net dut|xor_unit|B[7] -attr @rip B[7] -attr @name B[7] -hierPin dut|xor_unit B[7] -pin dut|xor_unit|Output4_i I1[7]
load net dut|xor_unit|Output4[0] -attr @rip(#000000) O[0] -attr @name Output4[0] -hierPin dut|xor_unit Output4[0] -pin dut|xor_unit|Output4_i O[0]
load net dut|xor_unit|Output4[10] -attr @rip(#000000) O[10] -attr @name Output4[10] -hierPin dut|xor_unit Output4[10] -pin dut|xor_unit|Output4_i O[10]
load net dut|xor_unit|Output4[11] -attr @rip(#000000) O[11] -attr @name Output4[11] -hierPin dut|xor_unit Output4[11] -pin dut|xor_unit|Output4_i O[11]
load net dut|xor_unit|Output4[12] -attr @rip(#000000) O[12] -attr @name Output4[12] -hierPin dut|xor_unit Output4[12] -pin dut|xor_unit|Output4_i O[12]
load net dut|xor_unit|Output4[13] -attr @rip(#000000) O[13] -attr @name Output4[13] -hierPin dut|xor_unit Output4[13] -pin dut|xor_unit|Output4_i O[13]
load net dut|xor_unit|Output4[14] -attr @rip(#000000) O[14] -attr @name Output4[14] -hierPin dut|xor_unit Output4[14] -pin dut|xor_unit|Output4_i O[14]
load net dut|xor_unit|Output4[15] -attr @rip(#000000) O[15] -attr @name Output4[15] -hierPin dut|xor_unit Output4[15] -pin dut|xor_unit|Output4_i O[15]
load net dut|xor_unit|Output4[1] -attr @rip(#000000) O[1] -attr @name Output4[1] -hierPin dut|xor_unit Output4[1] -pin dut|xor_unit|Output4_i O[1]
load net dut|xor_unit|Output4[2] -attr @rip(#000000) O[2] -attr @name Output4[2] -hierPin dut|xor_unit Output4[2] -pin dut|xor_unit|Output4_i O[2]
load net dut|xor_unit|Output4[3] -attr @rip(#000000) O[3] -attr @name Output4[3] -hierPin dut|xor_unit Output4[3] -pin dut|xor_unit|Output4_i O[3]
load net dut|xor_unit|Output4[4] -attr @rip(#000000) O[4] -attr @name Output4[4] -hierPin dut|xor_unit Output4[4] -pin dut|xor_unit|Output4_i O[4]
load net dut|xor_unit|Output4[5] -attr @rip(#000000) O[5] -attr @name Output4[5] -hierPin dut|xor_unit Output4[5] -pin dut|xor_unit|Output4_i O[5]
load net dut|xor_unit|Output4[6] -attr @rip(#000000) O[6] -attr @name Output4[6] -hierPin dut|xor_unit Output4[6] -pin dut|xor_unit|Output4_i O[6]
load net dut|xor_unit|Output4[7] -attr @rip(#000000) O[7] -attr @name Output4[7] -hierPin dut|xor_unit Output4[7] -pin dut|xor_unit|Output4_i O[7]
load net dut|xor_unit|Output4[8] -attr @rip(#000000) O[8] -attr @name Output4[8] -hierPin dut|xor_unit Output4[8] -pin dut|xor_unit|Output4_i O[8]
load net dut|xor_unit|Output4[9] -attr @rip(#000000) O[9] -attr @name Output4[9] -hierPin dut|xor_unit Output4[9] -pin dut|xor_unit|Output4_i O[9]
load net dut|not_b_unit|A[0] -attr @rip A[0] -attr @name A[0] -hierPin dut|not_b_unit A[0] -pin dut|not_b_unit|Output1_i I0[0]
load net dut|not_b_unit|A[1] -attr @rip A[1] -attr @name A[1] -hierPin dut|not_b_unit A[1] -pin dut|not_b_unit|Output1_i I0[1]
load net dut|not_b_unit|A[2] -attr @rip A[2] -attr @name A[2] -hierPin dut|not_b_unit A[2] -pin dut|not_b_unit|Output1_i I0[2]
load net dut|not_b_unit|A[3] -attr @rip A[3] -attr @name A[3] -hierPin dut|not_b_unit A[3] -pin dut|not_b_unit|Output1_i I0[3]
load net dut|not_b_unit|A[4] -attr @rip A[4] -attr @name A[4] -hierPin dut|not_b_unit A[4] -pin dut|not_b_unit|Output1_i I0[4]
load net dut|not_b_unit|A[5] -attr @rip A[5] -attr @name A[5] -hierPin dut|not_b_unit A[5] -pin dut|not_b_unit|Output1_i I0[5]
load net dut|not_b_unit|A[6] -attr @rip A[6] -attr @name A[6] -hierPin dut|not_b_unit A[6] -pin dut|not_b_unit|Output1_i I0[6]
load net dut|not_b_unit|A[7] -attr @rip A[7] -attr @name A[7] -hierPin dut|not_b_unit A[7] -pin dut|not_b_unit|Output1_i I0[7]
load net dut|not_b_unit|B[0] -attr @rip B[0] -attr @name B[0] -hierPin dut|not_b_unit B[0] -pin dut|not_b_unit|Output8_i I0[0]
load net dut|not_b_unit|B[1] -attr @rip B[1] -attr @name B[1] -hierPin dut|not_b_unit B[1] -pin dut|not_b_unit|Output8_i I0[1]
load net dut|not_b_unit|B[2] -attr @rip B[2] -attr @name B[2] -hierPin dut|not_b_unit B[2] -pin dut|not_b_unit|Output8_i I0[2]
load net dut|not_b_unit|B[3] -attr @rip B[3] -attr @name B[3] -hierPin dut|not_b_unit B[3] -pin dut|not_b_unit|Output8_i I0[3]
load net dut|not_b_unit|B[4] -attr @rip B[4] -attr @name B[4] -hierPin dut|not_b_unit B[4] -pin dut|not_b_unit|Output8_i I0[4]
load net dut|not_b_unit|B[5] -attr @rip B[5] -attr @name B[5] -hierPin dut|not_b_unit B[5] -pin dut|not_b_unit|Output8_i I0[5]
load net dut|not_b_unit|B[6] -attr @rip B[6] -attr @name B[6] -hierPin dut|not_b_unit B[6] -pin dut|not_b_unit|Output8_i I0[6]
load net dut|not_b_unit|B[7] -attr @rip B[7] -attr @name B[7] -hierPin dut|not_b_unit B[7] -pin dut|not_b_unit|Output8_i I0[7]
load net dut|not_b_unit|Output1[0] -attr @rip O[0] -attr @name Output1[0] -hierPin dut|not_b_unit Output1[0] -pin dut|not_b_unit|Output1_i O[0]
load net dut|not_b_unit|Output1[10] -attr @rip O[10] -attr @name Output1[10] -hierPin dut|not_b_unit Output1[10] -pin dut|not_b_unit|Output1_i O[10]
load net dut|not_b_unit|Output1[11] -attr @rip O[11] -attr @name Output1[11] -hierPin dut|not_b_unit Output1[11] -pin dut|not_b_unit|Output1_i O[11]
load net dut|not_b_unit|Output1[12] -attr @rip O[12] -attr @name Output1[12] -hierPin dut|not_b_unit Output1[12] -pin dut|not_b_unit|Output1_i O[12]
load net dut|not_b_unit|Output1[13] -attr @rip O[13] -attr @name Output1[13] -hierPin dut|not_b_unit Output1[13] -pin dut|not_b_unit|Output1_i O[13]
load net dut|not_b_unit|Output1[14] -attr @rip O[14] -attr @name Output1[14] -hierPin dut|not_b_unit Output1[14] -pin dut|not_b_unit|Output1_i O[14]
load net dut|not_b_unit|Output1[15] -attr @rip O[15] -attr @name Output1[15] -hierPin dut|not_b_unit Output1[15] -pin dut|not_b_unit|Output1_i O[15]
load net dut|not_b_unit|Output1[1] -attr @rip O[1] -attr @name Output1[1] -hierPin dut|not_b_unit Output1[1] -pin dut|not_b_unit|Output1_i O[1]
load net dut|not_b_unit|Output1[2] -attr @rip O[2] -attr @name Output1[2] -hierPin dut|not_b_unit Output1[2] -pin dut|not_b_unit|Output1_i O[2]
load net dut|not_b_unit|Output1[3] -attr @rip O[3] -attr @name Output1[3] -hierPin dut|not_b_unit Output1[3] -pin dut|not_b_unit|Output1_i O[3]
load net dut|not_b_unit|Output1[4] -attr @rip O[4] -attr @name Output1[4] -hierPin dut|not_b_unit Output1[4] -pin dut|not_b_unit|Output1_i O[4]
load net dut|not_b_unit|Output1[5] -attr @rip O[5] -attr @name Output1[5] -hierPin dut|not_b_unit Output1[5] -pin dut|not_b_unit|Output1_i O[5]
load net dut|not_b_unit|Output1[6] -attr @rip O[6] -attr @name Output1[6] -hierPin dut|not_b_unit Output1[6] -pin dut|not_b_unit|Output1_i O[6]
load net dut|not_b_unit|Output1[7] -attr @rip O[7] -attr @name Output1[7] -hierPin dut|not_b_unit Output1[7] -pin dut|not_b_unit|Output1_i O[7]
load net dut|not_b_unit|Output1[8] -attr @rip O[8] -attr @name Output1[8] -hierPin dut|not_b_unit Output1[8] -pin dut|not_b_unit|Output1_i O[8]
load net dut|not_b_unit|Output1[9] -attr @rip O[9] -attr @name Output1[9] -hierPin dut|not_b_unit Output1[9] -pin dut|not_b_unit|Output1_i O[9]
load net dut|not_b_unit|Output8[0] -attr @rip(#000000) O[0] -attr @name Output8[0] -hierPin dut|not_b_unit Output8[0] -pin dut|not_b_unit|Output8_i O[0]
load net dut|not_b_unit|Output8[10] -attr @rip(#000000) O[10] -attr @name Output8[10] -hierPin dut|not_b_unit Output8[10] -pin dut|not_b_unit|Output8_i O[10]
load net dut|not_b_unit|Output8[11] -attr @rip(#000000) O[11] -attr @name Output8[11] -hierPin dut|not_b_unit Output8[11] -pin dut|not_b_unit|Output8_i O[11]
load net dut|not_b_unit|Output8[12] -attr @rip(#000000) O[12] -attr @name Output8[12] -hierPin dut|not_b_unit Output8[12] -pin dut|not_b_unit|Output8_i O[12]
load net dut|not_b_unit|Output8[13] -attr @rip(#000000) O[13] -attr @name Output8[13] -hierPin dut|not_b_unit Output8[13] -pin dut|not_b_unit|Output8_i O[13]
load net dut|not_b_unit|Output8[14] -attr @rip(#000000) O[14] -attr @name Output8[14] -hierPin dut|not_b_unit Output8[14] -pin dut|not_b_unit|Output8_i O[14]
load net dut|not_b_unit|Output8[15] -attr @rip(#000000) O[15] -attr @name Output8[15] -hierPin dut|not_b_unit Output8[15] -pin dut|not_b_unit|Output8_i O[15]
load net dut|not_b_unit|Output8[1] -attr @rip(#000000) O[1] -attr @name Output8[1] -hierPin dut|not_b_unit Output8[1] -pin dut|not_b_unit|Output8_i O[1]
load net dut|not_b_unit|Output8[2] -attr @rip(#000000) O[2] -attr @name Output8[2] -hierPin dut|not_b_unit Output8[2] -pin dut|not_b_unit|Output8_i O[2]
load net dut|not_b_unit|Output8[3] -attr @rip(#000000) O[3] -attr @name Output8[3] -hierPin dut|not_b_unit Output8[3] -pin dut|not_b_unit|Output8_i O[3]
load net dut|not_b_unit|Output8[4] -attr @rip(#000000) O[4] -attr @name Output8[4] -hierPin dut|not_b_unit Output8[4] -pin dut|not_b_unit|Output8_i O[4]
load net dut|not_b_unit|Output8[5] -attr @rip(#000000) O[5] -attr @name Output8[5] -hierPin dut|not_b_unit Output8[5] -pin dut|not_b_unit|Output8_i O[5]
load net dut|not_b_unit|Output8[6] -attr @rip(#000000) O[6] -attr @name Output8[6] -hierPin dut|not_b_unit Output8[6] -pin dut|not_b_unit|Output8_i O[6]
load net dut|not_b_unit|Output8[7] -attr @rip(#000000) O[7] -attr @name Output8[7] -hierPin dut|not_b_unit Output8[7] -pin dut|not_b_unit|Output8_i O[7]
load net dut|not_b_unit|Output8[8] -attr @rip(#000000) O[8] -attr @name Output8[8] -hierPin dut|not_b_unit Output8[8] -pin dut|not_b_unit|Output8_i O[8]
load net dut|not_b_unit|Output8[9] -attr @rip(#000000) O[9] -attr @name Output8[9] -hierPin dut|not_b_unit Output8[9] -pin dut|not_b_unit|Output8_i O[9]
load net dut|add_unit|<const0> -ground -attr @name <const0> -hierPin dut|add_unit Output5[15] -hierPin dut|add_unit Output5[14] -hierPin dut|add_unit Output5[13] -hierPin dut|add_unit Output5[12] -hierPin dut|add_unit Output5[11] -hierPin dut|add_unit Output5[10] -hierPin dut|add_unit Output5[9]
load net dut|add_unit|A[0] -attr @rip(#000000) A[0] -attr @name A[0] -hierPin dut|add_unit A[0] -pin dut|add_unit|FA1 x
load net dut|add_unit|A[1] -attr @rip(#000000) A[1] -attr @name A[1] -hierPin dut|add_unit A[1] -pin dut|add_unit|FA2 x
load net dut|add_unit|A[2] -attr @rip(#000000) A[2] -attr @name A[2] -hierPin dut|add_unit A[2] -pin dut|add_unit|FA3 x
load net dut|add_unit|A[3] -attr @rip(#000000) A[3] -attr @name A[3] -hierPin dut|add_unit A[3] -pin dut|add_unit|FA4 x
load net dut|add_unit|A[4] -attr @rip(#000000) A[4] -attr @name A[4] -hierPin dut|add_unit A[4] -pin dut|add_unit|FA5 x
load net dut|add_unit|A[5] -attr @rip(#000000) A[5] -attr @name A[5] -hierPin dut|add_unit A[5] -pin dut|add_unit|FA6 x
load net dut|add_unit|A[6] -attr @rip(#000000) A[6] -attr @name A[6] -hierPin dut|add_unit A[6] -pin dut|add_unit|FA7 x
load net dut|add_unit|A[7] -attr @rip(#000000) A[7] -attr @name A[7] -hierPin dut|add_unit A[7] -pin dut|add_unit|FA8 x
load net dut|add_unit|B[0] -attr @rip(#000000) B[0] -attr @name B[0] -hierPin dut|add_unit B[0] -pin dut|add_unit|FA1 y
load net dut|add_unit|B[1] -attr @rip(#000000) B[1] -attr @name B[1] -hierPin dut|add_unit B[1] -pin dut|add_unit|FA2 y
load net dut|add_unit|B[2] -attr @rip(#000000) B[2] -attr @name B[2] -hierPin dut|add_unit B[2] -pin dut|add_unit|FA3 y
load net dut|add_unit|B[3] -attr @rip(#000000) B[3] -attr @name B[3] -hierPin dut|add_unit B[3] -pin dut|add_unit|FA4 y
load net dut|add_unit|B[4] -attr @rip(#000000) B[4] -attr @name B[4] -hierPin dut|add_unit B[4] -pin dut|add_unit|FA5 y
load net dut|add_unit|B[5] -attr @rip(#000000) B[5] -attr @name B[5] -hierPin dut|add_unit B[5] -pin dut|add_unit|FA6 y
load net dut|add_unit|B[6] -attr @rip(#000000) B[6] -attr @name B[6] -hierPin dut|add_unit B[6] -pin dut|add_unit|FA7 y
load net dut|add_unit|B[7] -attr @rip(#000000) B[7] -attr @name B[7] -hierPin dut|add_unit B[7] -pin dut|add_unit|FA8 y
load net dut|add_unit|C0 -attr @name C0 -hierPin dut|add_unit C0 -pin dut|add_unit|FA1 z
netloc dut|add_unit|C0 1 0 1 80 1300n
load net dut|add_unit|C1 -attr @name C1 -pin dut|add_unit|FA1 C -pin dut|add_unit|FA2 z
netloc dut|add_unit|C1 1 0 2 100 1210 440
load net dut|add_unit|C2 -attr @name C2 -pin dut|add_unit|FA2 C -pin dut|add_unit|FA3 z
netloc dut|add_unit|C2 1 0 2 100 1620 440
load net dut|add_unit|C3 -attr @name C3 -pin dut|add_unit|FA3 C -pin dut|add_unit|FA4 z
netloc dut|add_unit|C3 1 0 2 80 1830 440
load net dut|add_unit|C4 -attr @name C4 -pin dut|add_unit|FA4 C -pin dut|add_unit|FA5 z
netloc dut|add_unit|C4 1 0 2 100 1850 440
load net dut|add_unit|C5 -attr @name C5 -pin dut|add_unit|FA5 C -pin dut|add_unit|FA6 z
netloc dut|add_unit|C5 1 0 2 100 2260 440
load net dut|add_unit|C6 -attr @name C6 -pin dut|add_unit|FA6 C -pin dut|add_unit|FA7 z
netloc dut|add_unit|C6 1 0 2 100 2490 440
load net dut|add_unit|C7 -attr @name C7 -pin dut|add_unit|FA7 C -pin dut|add_unit|FA8 z
netloc dut|add_unit|C7 1 1 1 500 2120n
load net dut|add_unit|Output5[0] -attr @rip(#000000) 0 -attr @name Output5[0] -hierPin dut|add_unit Output5[0] -hierPin dut|add_unit S[0] -pin dut|add_unit|FA1 S
load net dut|add_unit|Output5[1] -attr @rip(#000000) 1 -attr @name Output5[1] -hierPin dut|add_unit Output5[1] -hierPin dut|add_unit S[1] -pin dut|add_unit|FA2 S
load net dut|add_unit|Output5[2] -attr @rip(#000000) 2 -attr @name Output5[2] -hierPin dut|add_unit Output5[2] -hierPin dut|add_unit S[2] -pin dut|add_unit|FA3 S
load net dut|add_unit|Output5[3] -attr @rip(#000000) 3 -attr @name Output5[3] -hierPin dut|add_unit Output5[3] -hierPin dut|add_unit S[3] -pin dut|add_unit|FA4 S
load net dut|add_unit|Output5[4] -attr @rip(#000000) 4 -attr @name Output5[4] -hierPin dut|add_unit Output5[4] -hierPin dut|add_unit S[4] -pin dut|add_unit|FA5 S
load net dut|add_unit|Output5[5] -attr @rip(#000000) 5 -attr @name Output5[5] -hierPin dut|add_unit Output5[5] -hierPin dut|add_unit S[5] -pin dut|add_unit|FA6 S
load net dut|add_unit|Output5[6] -attr @rip(#000000) 6 -attr @name Output5[6] -hierPin dut|add_unit Output5[6] -hierPin dut|add_unit S[6] -pin dut|add_unit|FA7 S
load net dut|add_unit|Output5[7] -attr @rip(#000000) 7 -attr @name Output5[7] -hierPin dut|add_unit Output5[7] -hierPin dut|add_unit S[7] -pin dut|add_unit|FA8 S
load net dut|add_unit|Output5[8] -attr @rip(#000000) 8 -attr @name Output5[8] -hierPin dut|add_unit C8 -hierPin dut|add_unit Output5[8] -pin dut|add_unit|FA8 C
load net dut|add_unit|FA8|H2|S -attr @name S -hierPin dut|add_unit|FA8|H2 S -pin dut|add_unit|FA8|H2|S_i O
netloc dut|add_unit|FA8|H2|S 1 1 1 NJ 2140
load net dut|add_unit|FA8|S -attr @name S -hierPin dut|add_unit|FA8 S -pin dut|add_unit|FA8|H2 S
netloc dut|add_unit|FA8|S 1 1 1 N 2140
load net dut|add_unit|FA7|H2|S -attr @name S -hierPin dut|add_unit|FA7|H2 S -pin dut|add_unit|FA7|H2|S_i O
netloc dut|add_unit|FA7|H2|S 1 1 1 NJ 2600
load net dut|add_unit|FA7|S -attr @name S -hierPin dut|add_unit|FA7 S -pin dut|add_unit|FA7|H2 S
netloc dut|add_unit|FA7|S 1 1 1 N 2600
load net dut|add_unit|FA6|H2|S -attr @name S -hierPin dut|add_unit|FA6|H2 S -pin dut|add_unit|FA6|H2|S_i O
netloc dut|add_unit|FA6|H2|S 1 1 1 NJ 2370
load net dut|add_unit|FA6|S -attr @name S -hierPin dut|add_unit|FA6 S -pin dut|add_unit|FA6|H2 S
netloc dut|add_unit|FA6|S 1 1 1 N 2370
load net dut|add_unit|FA5|H2|S -attr @name S -hierPin dut|add_unit|FA5|H2 S -pin dut|add_unit|FA5|H2|S_i O
netloc dut|add_unit|FA5|H2|S 1 1 1 NJ 2160
load net dut|add_unit|FA5|S -attr @name S -hierPin dut|add_unit|FA5 S -pin dut|add_unit|FA5|H2 S
netloc dut|add_unit|FA5|S 1 1 1 N 2160
load net dut|add_unit|FA4|H2|S -attr @name S -hierPin dut|add_unit|FA4|H2 S -pin dut|add_unit|FA4|H2|S_i O
netloc dut|add_unit|FA4|H2|S 1 1 1 NJ 1960
load net dut|add_unit|FA4|S -attr @name S -hierPin dut|add_unit|FA4 S -pin dut|add_unit|FA4|H2 S
netloc dut|add_unit|FA4|S 1 1 1 N 1960
load net dut|add_unit|FA3|H2|S -attr @name S -hierPin dut|add_unit|FA3|H2 S -pin dut|add_unit|FA3|H2|S_i O
netloc dut|add_unit|FA3|H2|S 1 1 1 NJ 1730
load net dut|add_unit|FA3|S -attr @name S -hierPin dut|add_unit|FA3 S -pin dut|add_unit|FA3|H2 S
netloc dut|add_unit|FA3|S 1 1 1 N 1730
load net dut|add_unit|FA2|H2|S -attr @name S -hierPin dut|add_unit|FA2|H2 S -pin dut|add_unit|FA2|H2|S_i O
netloc dut|add_unit|FA2|H2|S 1 1 1 NJ 1520
load net dut|add_unit|FA2|S -attr @name S -hierPin dut|add_unit|FA2 S -pin dut|add_unit|FA2|H2 S
netloc dut|add_unit|FA2|S 1 1 1 N 1520
load net dut|add_unit|FA1|H2|S -attr @name S -hierPin dut|add_unit|FA1|H2 S -pin dut|add_unit|FA1|H2|S_i O
netloc dut|add_unit|FA1|H2|S 1 1 1 NJ 1320
load net dut|add_unit|FA1|S -attr @name S -hierPin dut|add_unit|FA1 S -pin dut|add_unit|FA1|H2 S
netloc dut|add_unit|FA1|S 1 1 1 N 1320
load netBundle @dut|add_unit|A 8 dut|add_unit|A[7] dut|add_unit|A[6] dut|add_unit|A[5] dut|add_unit|A[4] dut|add_unit|A[3] dut|add_unit|A[2] dut|add_unit|A[1] dut|add_unit|A[0] -autobundled
netbloc @dut|add_unit|A 1 0 2 40 2470 460
load netBundle @dut|add_unit|B 8 dut|add_unit|B[7] dut|add_unit|B[6] dut|add_unit|B[5] dut|add_unit|B[4] dut|add_unit|B[3] dut|add_unit|B[2] dut|add_unit|B[1] dut|add_unit|B[0] -autobundled
netbloc @dut|add_unit|B 1 0 2 60 2700 520
load netBundle @dut|add_unit|Output5 9 dut|add_unit|Output5[8] dut|add_unit|Output5[7] dut|add_unit|Output5[6] dut|add_unit|Output5[5] dut|add_unit|Output5[4] dut|add_unit|Output5[3] dut|add_unit|Output5[2] dut|add_unit|Output5[1] dut|add_unit|Output5[0] -autobundled
netbloc @dut|add_unit|Output5 1 1 2 480 2030 860
load netBundle @dut|not_b_unit|A 8 dut|not_b_unit|A[7] dut|not_b_unit|A[6] dut|not_b_unit|A[5] dut|not_b_unit|A[4] dut|not_b_unit|A[3] dut|not_b_unit|A[2] dut|not_b_unit|A[1] dut|not_b_unit|A[0] -autobundled
netbloc @dut|not_b_unit|A 1 0 1 N 1040
load netBundle @dut|not_b_unit|B 8 dut|not_b_unit|B[7] dut|not_b_unit|B[6] dut|not_b_unit|B[5] dut|not_b_unit|B[4] dut|not_b_unit|B[3] dut|not_b_unit|B[2] dut|not_b_unit|B[1] dut|not_b_unit|B[0] -autobundled
netbloc @dut|not_b_unit|B 1 0 1 N 1110
load netBundle @dut|not_b_unit|Output1 16 dut|not_b_unit|Output1[15] dut|not_b_unit|Output1[14] dut|not_b_unit|Output1[13] dut|not_b_unit|Output1[12] dut|not_b_unit|Output1[11] dut|not_b_unit|Output1[10] dut|not_b_unit|Output1[9] dut|not_b_unit|Output1[8] dut|not_b_unit|Output1[7] dut|not_b_unit|Output1[6] dut|not_b_unit|Output1[5] dut|not_b_unit|Output1[4] dut|not_b_unit|Output1[3] dut|not_b_unit|Output1[2] dut|not_b_unit|Output1[1] dut|not_b_unit|Output1[0] -autobundled
netbloc @dut|not_b_unit|Output1 1 1 1 N 1040
load netBundle @dut|not_b_unit|Output8 16 dut|not_b_unit|Output8[15] dut|not_b_unit|Output8[14] dut|not_b_unit|Output8[13] dut|not_b_unit|Output8[12] dut|not_b_unit|Output8[11] dut|not_b_unit|Output8[10] dut|not_b_unit|Output8[9] dut|not_b_unit|Output8[8] dut|not_b_unit|Output8[7] dut|not_b_unit|Output8[6] dut|not_b_unit|Output8[5] dut|not_b_unit|Output8[4] dut|not_b_unit|Output8[3] dut|not_b_unit|Output8[2] dut|not_b_unit|Output8[1] dut|not_b_unit|Output8[0] -autobundled
netbloc @dut|not_b_unit|Output8 1 1 1 N 1110
load netBundle @dut|xor_unit|A 8 dut|xor_unit|A[7] dut|xor_unit|A[6] dut|xor_unit|A[5] dut|xor_unit|A[4] dut|xor_unit|A[3] dut|xor_unit|A[2] dut|xor_unit|A[1] dut|xor_unit|A[0] -autobundled
netbloc @dut|xor_unit|A 1 0 1 40 880
load netBundle @dut|xor_unit|B 8 dut|xor_unit|B[7] dut|xor_unit|B[6] dut|xor_unit|B[5] dut|xor_unit|B[4] dut|xor_unit|B[3] dut|xor_unit|B[2] dut|xor_unit|B[1] dut|xor_unit|B[0] -autobundled
netbloc @dut|xor_unit|B 1 0 1 40 900
load netBundle @dut|xor_unit|Output4 16 dut|xor_unit|Output4[15] dut|xor_unit|Output4[14] dut|xor_unit|Output4[13] dut|xor_unit|Output4[12] dut|xor_unit|Output4[11] dut|xor_unit|Output4[10] dut|xor_unit|Output4[9] dut|xor_unit|Output4[8] dut|xor_unit|Output4[7] dut|xor_unit|Output4[6] dut|xor_unit|Output4[5] dut|xor_unit|Output4[4] dut|xor_unit|Output4[3] dut|xor_unit|Output4[2] dut|xor_unit|Output4[1] dut|xor_unit|Output4[0] -autobundled
netbloc @dut|xor_unit|Output4 1 1 1 N 890
load netBundle @dut|sub_unit|A 8 dut|sub_unit|A[7] dut|sub_unit|A[6] dut|sub_unit|A[5] dut|sub_unit|A[4] dut|sub_unit|A[3] dut|sub_unit|A[2] dut|sub_unit|A[1] dut|sub_unit|A[0] -autobundled
netbloc @dut|sub_unit|A 1 0 1 N 740
load netBundle @dut|sub_unit|B 8 dut|sub_unit|B[7] dut|sub_unit|B[6] dut|sub_unit|B[5] dut|sub_unit|B[4] dut|sub_unit|B[3] dut|sub_unit|B[2] dut|sub_unit|B[1] dut|sub_unit|B[0] -autobundled
netbloc @dut|sub_unit|B 1 0 1 N 760
load netBundle @dut|sub_unit|Output6 9 dut|sub_unit|Borrow dut|sub_unit|Output6[7] dut|sub_unit|Output6[6] dut|sub_unit|Output6[5] dut|sub_unit|Output6[4] dut|sub_unit|Output6[3] dut|sub_unit|Output6[2] dut|sub_unit|Output6[1] dut|sub_unit|Output6[0] -autobundled
netbloc @dut|sub_unit|Output6 1 1 1 290 720n
load netBundle @dut|mul_unit|A 8 dut|mul_unit|A[7] dut|mul_unit|A[6] dut|mul_unit|A[5] dut|mul_unit|A[4] dut|mul_unit|A[3] dut|mul_unit|A[2] dut|mul_unit|A[1] dut|mul_unit|A[0] -autobundled
netbloc @dut|mul_unit|A 1 0 1 N 590
load netBundle @dut|mul_unit|B 8 dut|mul_unit|B[7] dut|mul_unit|B[6] dut|mul_unit|B[5] dut|mul_unit|B[4] dut|mul_unit|B[3] dut|mul_unit|B[2] dut|mul_unit|B[1] dut|mul_unit|B[0] -autobundled
netbloc @dut|mul_unit|B 1 0 1 N 610
load netBundle @dut|mul_unit|Output7 16 dut|mul_unit|Output7[15] dut|mul_unit|Output7[14] dut|mul_unit|Output7[13] dut|mul_unit|Output7[12] dut|mul_unit|Output7[11] dut|mul_unit|Output7[10] dut|mul_unit|Output7[9] dut|mul_unit|Output7[8] dut|mul_unit|Output7[7] dut|mul_unit|Output7[6] dut|mul_unit|Output7[5] dut|mul_unit|Output7[4] dut|mul_unit|Output7[3] dut|mul_unit|Output7[2] dut|mul_unit|Output7[1] dut|mul_unit|Output7[0] -autobundled
netbloc @dut|mul_unit|Output7 1 1 1 N 600
load netBundle @dut|or_unit|A 8 dut|or_unit|A[7] dut|or_unit|A[6] dut|or_unit|A[5] dut|or_unit|A[4] dut|or_unit|A[3] dut|or_unit|A[2] dut|or_unit|A[1] dut|or_unit|A[0] -autobundled
netbloc @dut|or_unit|A 1 0 1 40 400
load netBundle @dut|or_unit|B 8 dut|or_unit|B[7] dut|or_unit|B[6] dut|or_unit|B[5] dut|or_unit|B[4] dut|or_unit|B[3] dut|or_unit|B[2] dut|or_unit|B[1] dut|or_unit|B[0] -autobundled
netbloc @dut|or_unit|B 1 0 1 40 420
load netBundle @dut|or_unit|Output2 16 dut|or_unit|Output2[15] dut|or_unit|Output2[14] dut|or_unit|Output2[13] dut|or_unit|Output2[12] dut|or_unit|Output2[11] dut|or_unit|Output2[10] dut|or_unit|Output2[9] dut|or_unit|Output2[8] dut|or_unit|Output2[7] dut|or_unit|Output2[6] dut|or_unit|Output2[5] dut|or_unit|Output2[4] dut|or_unit|Output2[3] dut|or_unit|Output2[2] dut|or_unit|Output2[1] dut|or_unit|Output2[0] -autobundled
netbloc @dut|or_unit|Output2 1 1 1 N 410
load netBundle @dut|alu_mux|Sel 3 dut|alu_mux|Sel[2] dut|alu_mux|Sel[1] dut|alu_mux|Sel[0] -autobundled
netbloc @dut|alu_mux|Sel 1 0 1 1340 358n
load netBundle @dut|alu_mux|in0 16 dut|alu_mux|in0[15] dut|alu_mux|in0[14] dut|alu_mux|in0[13] dut|alu_mux|in0[12] dut|alu_mux|in0[11] dut|alu_mux|in0[10] dut|alu_mux|in0[9] dut|alu_mux|in0[8] dut|alu_mux|in0[7] dut|alu_mux|in0[6] dut|alu_mux|in0[5] dut|alu_mux|in0[4] dut|alu_mux|in0[3] dut|alu_mux|in0[2] dut|alu_mux|in0[1] dut|alu_mux|in0[0] -autobundled
netbloc @dut|alu_mux|in0 1 0 1 N 378
load netBundle @dut|alu_mux|in1 16 dut|alu_mux|in1[15] dut|alu_mux|in1[14] dut|alu_mux|in1[13] dut|alu_mux|in1[12] dut|alu_mux|in1[11] dut|alu_mux|in1[10] dut|alu_mux|in1[9] dut|alu_mux|in1[8] dut|alu_mux|in1[7] dut|alu_mux|in1[6] dut|alu_mux|in1[5] dut|alu_mux|in1[4] dut|alu_mux|in1[3] dut|alu_mux|in1[2] dut|alu_mux|in1[1] dut|alu_mux|in1[0] -autobundled
netbloc @dut|alu_mux|in1 1 0 1 N 398
load netBundle @dut|alu_mux|in2 16 dut|alu_mux|in2[15] dut|alu_mux|in2[14] dut|alu_mux|in2[13] dut|alu_mux|in2[12] dut|alu_mux|in2[11] dut|alu_mux|in2[10] dut|alu_mux|in2[9] dut|alu_mux|in2[8] dut|alu_mux|in2[7] dut|alu_mux|in2[6] dut|alu_mux|in2[5] dut|alu_mux|in2[4] dut|alu_mux|in2[3] dut|alu_mux|in2[2] dut|alu_mux|in2[1] dut|alu_mux|in2[0] -autobundled
netbloc @dut|alu_mux|in2 1 0 1 N 418
load netBundle @dut|alu_mux|in3 16 dut|alu_mux|in3[15] dut|alu_mux|in3[14] dut|alu_mux|in3[13] dut|alu_mux|in3[12] dut|alu_mux|in3[11] dut|alu_mux|in3[10] dut|alu_mux|in3[9] dut|alu_mux|in3[8] dut|alu_mux|in3[7] dut|alu_mux|in3[6] dut|alu_mux|in3[5] dut|alu_mux|in3[4] dut|alu_mux|in3[3] dut|alu_mux|in3[2] dut|alu_mux|in3[1] dut|alu_mux|in3[0] -autobundled
netbloc @dut|alu_mux|in3 1 0 1 N 438
load netBundle @dut|alu_mux|in4 16 dut|alu_mux|in4[15] dut|alu_mux|in4[14] dut|alu_mux|in4[13] dut|alu_mux|in4[12] dut|alu_mux|in4[11] dut|alu_mux|in4[10] dut|alu_mux|in4[9] dut|alu_mux|in4[8] dut|alu_mux|in4[7] dut|alu_mux|in4[6] dut|alu_mux|in4[5] dut|alu_mux|in4[4] dut|alu_mux|in4[3] dut|alu_mux|in4[2] dut|alu_mux|in4[1] dut|alu_mux|in4[0] -autobundled
netbloc @dut|alu_mux|in4 1 0 1 N 458
load netBundle @dut|alu_mux|in5 16 dut|alu_mux|in5[15] dut|alu_mux|in5[14] dut|alu_mux|in5[13] dut|alu_mux|in5[12] dut|alu_mux|in5[11] dut|alu_mux|in5[10] dut|alu_mux|in5[9] dut|alu_mux|in5[8] dut|alu_mux|in5[7] dut|alu_mux|in5[6] dut|alu_mux|in5[5] dut|alu_mux|in5[4] dut|alu_mux|in5[3] dut|alu_mux|in5[2] dut|alu_mux|in5[1] dut|alu_mux|in5[0] -autobundled
netbloc @dut|alu_mux|in5 1 0 1 N 478
load netBundle @dut|alu_mux|in6 16 dut|alu_mux|in6[15] dut|alu_mux|in6[14] dut|alu_mux|in6[13] dut|alu_mux|in6[12] dut|alu_mux|in6[11] dut|alu_mux|in6[10] dut|alu_mux|in6[9] dut|alu_mux|in6[8] dut|alu_mux|in6[7] dut|alu_mux|in6[6] dut|alu_mux|in6[5] dut|alu_mux|in6[4] dut|alu_mux|in6[3] dut|alu_mux|in6[2] dut|alu_mux|in6[1] dut|alu_mux|in6[0] -autobundled
netbloc @dut|alu_mux|in6 1 0 1 N 498
load netBundle @dut|alu_mux|in7 16 dut|alu_mux|in7[15] dut|alu_mux|in7[14] dut|alu_mux|in7[13] dut|alu_mux|in7[12] dut|alu_mux|in7[11] dut|alu_mux|in7[10] dut|alu_mux|in7[9] dut|alu_mux|in7[8] dut|alu_mux|in7[7] dut|alu_mux|in7[6] dut|alu_mux|in7[5] dut|alu_mux|in7[4] dut|alu_mux|in7[3] dut|alu_mux|in7[2] dut|alu_mux|in7[1] dut|alu_mux|in7[0] -autobundled
netbloc @dut|alu_mux|in7 1 0 1 N 518
load netBundle @dut|alu_mux|Y 16 dut|alu_mux|Y[15] dut|alu_mux|Y[14] dut|alu_mux|Y[13] dut|alu_mux|Y[12] dut|alu_mux|Y[11] dut|alu_mux|Y[10] dut|alu_mux|Y[9] dut|alu_mux|Y[8] dut|alu_mux|Y[7] dut|alu_mux|Y[6] dut|alu_mux|Y[5] dut|alu_mux|Y[4] dut|alu_mux|Y[3] dut|alu_mux|Y[2] dut|alu_mux|Y[1] dut|alu_mux|Y[0] -autobundled
netbloc @dut|alu_mux|Y 1 1 1 N 448
load netBundle @dut|not_a_unit|A 8 dut|not_a_unit|A[7] dut|not_a_unit|A[6] dut|not_a_unit|A[5] dut|not_a_unit|A[4] dut|not_a_unit|A[3] dut|not_a_unit|A[2] dut|not_a_unit|A[1] dut|not_a_unit|A[0] -autobundled
netbloc @dut|not_a_unit|A 1 0 1 N 210
load netBundle @dut|not_a_unit|B 8 dut|not_a_unit|B[7] dut|not_a_unit|B[6] dut|not_a_unit|B[5] dut|not_a_unit|B[4] dut|not_a_unit|B[3] dut|not_a_unit|B[2] dut|not_a_unit|B[1] dut|not_a_unit|B[0] -autobundled
netbloc @dut|not_a_unit|B 1 0 1 N 280
load netBundle @dut|not_a_unit|Output1 16 dut|not_a_unit|Output1[15] dut|not_a_unit|Output1[14] dut|not_a_unit|Output1[13] dut|not_a_unit|Output1[12] dut|not_a_unit|Output1[11] dut|not_a_unit|Output1[10] dut|not_a_unit|Output1[9] dut|not_a_unit|Output1[8] dut|not_a_unit|Output1[7] dut|not_a_unit|Output1[6] dut|not_a_unit|Output1[5] dut|not_a_unit|Output1[4] dut|not_a_unit|Output1[3] dut|not_a_unit|Output1[2] dut|not_a_unit|Output1[1] dut|not_a_unit|Output1[0] -autobundled
netbloc @dut|not_a_unit|Output1 1 1 1 N 210
load netBundle @dut|not_a_unit|Output8 16 dut|not_a_unit|Output8[15] dut|not_a_unit|Output8[14] dut|not_a_unit|Output8[13] dut|not_a_unit|Output8[12] dut|not_a_unit|Output8[11] dut|not_a_unit|Output8[10] dut|not_a_unit|Output8[9] dut|not_a_unit|Output8[8] dut|not_a_unit|Output8[7] dut|not_a_unit|Output8[6] dut|not_a_unit|Output8[5] dut|not_a_unit|Output8[4] dut|not_a_unit|Output8[3] dut|not_a_unit|Output8[2] dut|not_a_unit|Output8[1] dut|not_a_unit|Output8[0] -autobundled
netbloc @dut|not_a_unit|Output8 1 1 1 N 280
load netBundle @dut|and_unit|A 8 dut|and_unit|A[7] dut|and_unit|A[6] dut|and_unit|A[5] dut|and_unit|A[4] dut|and_unit|A[3] dut|and_unit|A[2] dut|and_unit|A[1] dut|and_unit|A[0] -autobundled
netbloc @dut|and_unit|A 1 0 1 40 50
load netBundle @dut|and_unit|B 8 dut|and_unit|B[7] dut|and_unit|B[6] dut|and_unit|B[5] dut|and_unit|B[4] dut|and_unit|B[3] dut|and_unit|B[2] dut|and_unit|B[1] dut|and_unit|B[0] -autobundled
netbloc @dut|and_unit|B 1 0 1 40 70
load netBundle @dut|and_unit|Output3 16 dut|and_unit|Output3[15] dut|and_unit|Output3[14] dut|and_unit|Output3[13] dut|and_unit|Output3[12] dut|and_unit|Output3[11] dut|and_unit|Output3[10] dut|and_unit|Output3[9] dut|and_unit|Output3[8] dut|and_unit|Output3[7] dut|and_unit|Output3[6] dut|and_unit|Output3[5] dut|and_unit|Output3[4] dut|and_unit|Output3[3] dut|and_unit|Output3[2] dut|and_unit|Output3[1] dut|and_unit|Output3[0] -autobundled
netbloc @dut|and_unit|Output3 1 1 1 N 60
load netBundle @dut|A 8 dut|A[7] dut|A[6] dut|A[5] dut|A[4] dut|A[3] dut|A[2] dut|A[1] dut|A[0] -autobundled
netbloc @dut|A 1 0 1 -160 50n
load netBundle @dut|B 8 dut|B[7] dut|B[6] dut|B[5] dut|B[4] dut|B[3] dut|B[2] dut|B[1] dut|B[0] -autobundled
netbloc @dut|B 1 0 1 -140 70n
load netBundle @dut|Sel 3 dut|Sel[2] dut|Sel[1] dut|Sel[0] -autobundled
netbloc @dut|Sel 1 0 2 -180J 500 1060
load netBundle @dut|add_out 8 dut|add_out[7] dut|add_out[6] dut|add_out[5] dut|add_out[4] dut|add_out[3] dut|add_out[2] dut|add_out[1] dut|add_out[0] -autobundled
netbloc @dut|add_out 1 1 1 1140 458n
load netBundle @dut|Y 16 dut|Y[15] dut|Y[14] dut|Y[13] dut|Y[12] dut|Y[11] dut|Y[10] dut|Y[9] dut|Y[8] dut|Y[7] dut|Y[6] dut|Y[5] dut|Y[4] dut|Y[3] dut|Y[2] dut|Y[1] dut|Y[0] -autobundled
netbloc @dut|Y 1 2 1 1690 448n
load netBundle @dut|and_out 16 dut|and_out[15] dut|and_out[14] dut|and_out[13] dut|and_out[12] dut|and_out[11] dut|and_out[10] dut|and_out[9] dut|and_out[8] dut|and_out[7] dut|and_out[6] dut|and_out[5] dut|and_out[4] dut|and_out[3] dut|and_out[2] dut|and_out[1] dut|and_out[0] -autobundled
netbloc @dut|and_out 1 1 1 1140 60n
load netBundle @dut|mul_out 16 dut|mul_out[15] dut|mul_out[14] dut|mul_out[13] dut|mul_out[12] dut|mul_out[11] dut|mul_out[10] dut|mul_out[9] dut|mul_out[8] dut|mul_out[7] dut|mul_out[6] dut|mul_out[5] dut|mul_out[4] dut|mul_out[3] dut|mul_out[2] dut|mul_out[1] dut|mul_out[0] -autobundled
netbloc @dut|mul_out 1 1 1 1120 498n
load netBundle @dut|not_a_out 16 dut|not_a_out[15] dut|not_a_out[14] dut|not_a_out[13] dut|not_a_out[12] dut|not_a_out[11] dut|not_a_out[10] dut|not_a_out[9] dut|not_a_out[8] dut|not_a_out[7] dut|not_a_out[6] dut|not_a_out[5] dut|not_a_out[4] dut|not_a_out[3] dut|not_a_out[2] dut|not_a_out[1] dut|not_a_out[0] -autobundled
netbloc @dut|not_a_out 1 1 1 1080 210n
load netBundle @dut|not_b_out 16 dut|not_b_out[15] dut|not_b_out[14] dut|not_b_out[13] dut|not_b_out[12] dut|not_b_out[11] dut|not_b_out[10] dut|not_b_out[9] dut|not_b_out[8] dut|not_b_out[7] dut|not_b_out[6] dut|not_b_out[5] dut|not_b_out[4] dut|not_b_out[3] dut|not_b_out[2] dut|not_b_out[1] dut|not_b_out[0] -autobundled
netbloc @dut|not_b_out 1 1 1 1160 518n
load netBundle @dut|or_out 16 dut|or_out[15] dut|or_out[14] dut|or_out[13] dut|or_out[12] dut|or_out[11] dut|or_out[10] dut|or_out[9] dut|or_out[8] dut|or_out[7] dut|or_out[6] dut|or_out[5] dut|or_out[4] dut|or_out[3] dut|or_out[2] dut|or_out[1] dut|or_out[0] -autobundled
netbloc @dut|or_out 1 1 1 1080 398n
load netBundle @dut|sub_out 8 dut|sub_out[7] dut|sub_out[6] dut|sub_out[5] dut|sub_out[4] dut|sub_out[3] dut|sub_out[2] dut|sub_out[1] dut|sub_out[0] -autobundled
netbloc @dut|sub_out 1 1 1 1100 478n
load netBundle @dut|xor_out 16 dut|xor_out[15] dut|xor_out[14] dut|xor_out[13] dut|xor_out[12] dut|xor_out[11] dut|xor_out[10] dut|xor_out[9] dut|xor_out[8] dut|xor_out[7] dut|xor_out[6] dut|xor_out[5] dut|xor_out[4] dut|xor_out[3] dut|xor_out[2] dut|xor_out[1] dut|xor_out[0] -autobundled
netbloc @dut|xor_out 1 1 1 1080 438n
levelinfo -pg 1 -400 -210 1830
levelinfo -hier dut * 10 1310 *
levelinfo -hier dut|add_unit * 140 560 *
levelinfo -hier dut|alu_mux * 1470 *
levelinfo -hier dut|and_unit * 260 *
levelinfo -hier dut|mul_unit * 170 *
levelinfo -hier dut|not_a_unit * 170 *
levelinfo -hier dut|not_b_unit * 170 *
levelinfo -hier dut|or_unit * 260 *
levelinfo -hier dut|sub_unit * 170 *
levelinfo -hier dut|xor_unit * 260 *
levelinfo -hier dut|add_unit|FA1 * 170 *
levelinfo -hier dut|add_unit|FA2 * 170 *
levelinfo -hier dut|add_unit|FA3 * 170 *
levelinfo -hier dut|add_unit|FA4 * 170 *
levelinfo -hier dut|add_unit|FA5 * 170 *
levelinfo -hier dut|add_unit|FA6 * 170 *
levelinfo -hier dut|add_unit|FA7 * 170 *
levelinfo -hier dut|add_unit|FA8 * 590 *
levelinfo -hier dut|add_unit|FA8|H2 * 630 *
levelinfo -hier dut|add_unit|FA7|H2 * 210 *
levelinfo -hier dut|add_unit|FA6|H2 * 210 *
levelinfo -hier dut|add_unit|FA5|H2 * 210 *
levelinfo -hier dut|add_unit|FA4|H2 * 210 *
levelinfo -hier dut|add_unit|FA3|H2 * 210 *
levelinfo -hier dut|add_unit|FA2|H2 * 210 *
levelinfo -hier dut|add_unit|FA1|H2 * 210 *
pagesize -pg 1 -db -bbox -sgen -400 -50 1830 2810
pagesize -hier dut -db -bbox -sgen -210 -10 1740 2760
pagesize -hier dut|add_unit -db -bbox -sgen 10 1200 920 2710
pagesize -hier dut|alu_mux -db -bbox -sgen 1310 328 1610 578
pagesize -hier dut|and_unit -db -bbox -sgen 10 20 390 120
pagesize -hier dut|mul_unit -db -bbox -sgen 10 550 310 650
pagesize -hier dut|not_a_unit -db -bbox -sgen 10 170 290 320
pagesize -hier dut|not_b_unit -db -bbox -sgen 10 1000 290 1150
pagesize -hier dut|or_unit -db -bbox -sgen 10 370 390 470
pagesize -hier dut|sub_unit -db -bbox -sgen 10 700 350 800
pagesize -hier dut|xor_unit -db -bbox -sgen 10 850 390 950
pagesize -hier dut|add_unit|FA1 -db -bbox -sgen 140 1240 390 1390
pagesize -hier dut|add_unit|FA2 -db -bbox -sgen 140 1440 390 1590
pagesize -hier dut|add_unit|FA3 -db -bbox -sgen 140 1650 390 1800
pagesize -hier dut|add_unit|FA4 -db -bbox -sgen 140 1880 390 2030
pagesize -hier dut|add_unit|FA5 -db -bbox -sgen 140 2080 390 2230
pagesize -hier dut|add_unit|FA6 -db -bbox -sgen 140 2290 390 2440
pagesize -hier dut|add_unit|FA7 -db -bbox -sgen 140 2520 390 2670
pagesize -hier dut|add_unit|FA8 -db -bbox -sgen 560 2060 810 2210
pagesize -hier dut|add_unit|FA8|H2 -db -bbox -sgen 590 2100 750 2180
pagesize -hier dut|add_unit|FA7|H2 -db -bbox -sgen 170 2560 330 2640
pagesize -hier dut|add_unit|FA6|H2 -db -bbox -sgen 170 2330 330 2410
pagesize -hier dut|add_unit|FA5|H2 -db -bbox -sgen 170 2120 330 2200
pagesize -hier dut|add_unit|FA4|H2 -db -bbox -sgen 170 1920 330 2000
pagesize -hier dut|add_unit|FA3|H2 -db -bbox -sgen 170 1690 330 1770
pagesize -hier dut|add_unit|FA2|H2 -db -bbox -sgen 170 1480 330 1560
pagesize -hier dut|add_unit|FA1|H2 -db -bbox -sgen 170 1280 330 1360
highlight -append -width 4 -it {pinBus dut Sel}
highlight -append -color 2 -width 4 -it {net dut|Sel[0]} {net dut|Sel[1]} {net dut|Sel[2]}
highlight -append -width 4 -it {net dut|and_out[6]} {net dut|and_out[9]} {net dut|and_out[10]} {net dut|and_out[1]} {net dut|and_out[2]} {net dut|and_out[4]} {net dut|and_out[12]} {net dut|and_out[13]} {net dut|and_out[14]} {net dut|and_out[7]} {net dut|and_out[8]} {net dut|and_out[15]} {net dut|and_out[0]} {net dut|and_out[3]} {net dut|and_out[5]} {net dut|and_out[11]}
highlight -append -color 19 -width 4 -it {net dut|not_a_out[1]} {net dut|not_a_out[3]} {net dut|not_a_out[5]} {net dut|not_a_out[7]} {net dut|not_a_out[15]} {net dut|not_a_out[2]} {net dut|not_a_out[4]} {net dut|not_a_out[9]} {net dut|not_a_out[10]} {net dut|not_a_out[12]} {net dut|not_a_out[13]} {net dut|not_a_out[0]} {net dut|not_a_out[6]} {net dut|not_a_out[8]} {net dut|not_a_out[11]} {net dut|not_a_out[14]}
highlight -append -color 18 -width 4 -it {net dut|or_out[6]} {net dut|or_out[7]} {net dut|or_out[9]} {net dut|or_out[10]} {net dut|or_out[12]} {net dut|or_out[15]} {net dut|or_out[0]} {net dut|or_out[5]} {net dut|or_out[13]} {net dut|or_out[2]} {net dut|or_out[4]} {net dut|or_out[8]} {net dut|or_out[1]} {net dut|or_out[3]} {net dut|or_out[11]} {net dut|or_out[14]}
highlight -append -color 6 -width 4 -it {net dut|mul_unit|Output7[9]} {net dut|mul_out[3]} {net dut|mul_out[1]} {net dut|alu_mux|in6[0]} {net dut|mul_out[14]} {net dut|mul_unit|Output7[11]} {net dut|mul_out[10]} {net dut|mul_out[9]} {net dut|mul_unit|Output7[8]} {net dut|mul_unit|Output7[3]} {net dut|alu_mux|in6[3]} {net dut|mul_out[15]} {net dut|mul_out[13]} {net dut|mul_unit|Output7[13]} {net dut|mul_out[8]} {net dut|alu_mux|in6[13]} {net dut|alu_mux|in6[7]} {net dut|alu_mux|in6[2]} {net dut|mul_unit|Output7[12]} {net dut|mul_out[11]} {net dut|mul_unit|Output7[6]} {net dut|mul_unit|Output7[5]} {net dut|mul_unit|Output7[4]} {net dut|mul_unit|Output7[2]} {net dut|mul_unit|Output7[0]} {net dut|alu_mux|in6[12]} {net dut|alu_mux|in6[11]} {net dut|alu_mux|in6[4]} {net dut|alu_mux|in6[1]} {net dut|mul_unit|Output7[14]} {net dut|mul_out[7]} {net dut|alu_mux|in6[15]} {net dut|alu_mux|in6[14]} {net dut|alu_mux|in6[10]} {net dut|alu_mux|in6[5]} {net dut|mul_unit|Output7[7]} {net dut|mul_out[4]} {net dut|mul_out[2]} {net dut|mul_out[0]} {net dut|alu_mux|in6[9]} {net dut|alu_mux|in6[8]} {net dut|mul_unit|Output7[15]} {net dut|mul_out[12]} {net dut|mul_unit|Output7[10]} {net dut|mul_out[6]} {net dut|mul_out[5]} {net dut|mul_unit|Output7[1]} {net dut|alu_mux|in6[6]}
highlight -append -color 15 -width 4 -it {net dut|sub_out[0]} {net dut|sub_out[2]} {net dut|sub_out[3]} {net dut|sub_out[4]} {net dut|sub_out[7]} {net dut|sub_out[1]} {net dut|sub_out[5]} {net dut|sub_out[6]}
highlight -append -color 12 -width 4 -it {net dut|xor_out[2]} {net dut|xor_out[3]} {net dut|xor_out[5]} {net dut|xor_out[8]} {net dut|xor_out[13]} {net dut|xor_out[14]} {net dut|xor_out[0]} {net dut|xor_out[1]} {net dut|xor_out[9]} {net dut|xor_out[11]} {net dut|xor_out[6]} {net dut|xor_out[4]} {net dut|xor_out[7]} {net dut|xor_out[10]} {net dut|xor_out[12]} {net dut|xor_out[15]}
highlight -append -color 13 -width 4 -it {net dut|not_b_out[2]} {net dut|not_b_out[3]} {net dut|not_b_out[8]} {net dut|not_b_out[4]} {net dut|not_b_out[6]} {net dut|not_b_out[7]} {net dut|not_b_out[9]} {net dut|not_b_out[10]} {net dut|not_b_out[12]} {net dut|not_b_out[14]} {net dut|not_b_out[15]} {net dut|not_b_out[0]} {net dut|not_b_out[1]} {net dut|not_b_out[5]} {net dut|not_b_out[11]} {net dut|not_b_out[13]}
highlight -append -color 7 -width 4 -it {net dut|add_out[2]} {net dut|add_out[4]} {net dut|add_out[0]} {net dut|add_out[1]} {net dut|add_out[3]} {net dut|add_out[5]} {net dut|add_out[7]} {net dut|add_out[6]}
highlight -append -color 4 -width 4 -it {net dut|Cout}
show
zoom 0.463783
scrollpos -354 131
#
# initialize ictrl to current module final_tb work:final_tb:NOFILE
ictrl init topinfo |
