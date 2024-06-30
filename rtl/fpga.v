/*

Copyright (c) 2023 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001

`resetall
`timescale 1ns / 1ps
`default_nettype none

/*
 * 
 */
module fpga
(
output wire A10,
output wire A14,
output wire A17,
output wire A19,
output wire A21,
output wire A23,
output wire A25,
output wire A27,
output wire A29,
output wire A31,
output wire A33,
output wire A35,
output wire A37,
output wire A39,
output wire AA7,
output wire AA10,
output wire AA14,
output wire AA17,
output wire AA19,
output wire AA21,
output wire AA23,
output wire AA25,
output wire AA27,
output wire AC6,
output wire AC9,
output wire AC12,
output wire AC15,
output wire AC18,
output wire AC20,
output wire AC22,
output wire AC24,
output wire AC26,
output wire AF6,
output wire AF9,
output wire AF12,
output wire AF15,
output wire AF18,
output wire AF20,
output wire AF22,
output wire AF24,
output wire AF26,
output wire AH7,
output wire AH10,
output wire AH14,
output wire AH17,
output wire AH19,
output wire AH21,
output wire AH23,
output wire AH25,
output wire AH27,
output wire AK6,
output wire AK9,
output wire AK12,
output wire AK15,
output wire AK18,
output wire AK20,
output wire AK22,
output wire AK24,
output wire AK26,
output wire AK28,
output wire AK30,
output wire AK32,
output wire AM7,
output wire AM10,
output wire AM14,
output wire AM17,
output wire AM19,
output wire AM21,
output wire AM23,
output wire AM25,
output wire AM27,
output wire AM29,
output wire AM31,
output wire AM33,
output wire AT7,
output wire AT10,
output wire AT14,
output wire AT17,
output wire AT19,
output wire AT21,
output wire AT23,
output wire AT25,
output wire AT27,
output wire AT29,
output wire AT31,
output wire AT33,
output wire AV6,
output wire AV9,
output wire AV12,
output wire AV15,
output wire AV18,
output wire AV20,
output wire AV22,
output wire AV24,
output wire AV26,
output wire AV28,
output wire AV30,
output wire AV32,
output wire C9,
output wire C12,
output wire C15,
output wire C18,
output wire C20,
output wire C22,
output wire C24,
output wire C26,
output wire C28,
output wire C30,
output wire C32,
output wire C34,
output wire C36,
output wire C38,
output wire E5,
output wire FH19,
output wire FH21,
output wire FH23,
output wire FH25,
output wire FH27,
output wire FH29,
output wire FH31,
output wire FH33,
output wire FH35,
output wire FH37,
output wire FH39,
output wire FH41,
output wire FH43,
output wire FH45,
output wire FH47,
output wire FH49,
output wire FH51,
output wire FH53,
output wire FK18,
output wire FK20,
output wire FK22,
output wire FK24,
output wire FK26,
output wire FK28,
output wire FK30,
output wire FK32,
output wire FK34,
output wire FK36,
output wire FK38,
output wire FK40,
output wire FK42,
output wire FK44,
output wire FK46,
output wire FK48,
output wire FK50,
output wire FK52,
output wire FP18,
output wire FP20,
output wire FP22,
output wire FP24,
output wire FP26,
output wire FP28,
output wire FP30,
output wire FP32,
output wire FP34,
output wire FP36,
output wire FP38,
output wire FP40,
output wire FP42,
output wire FP44,
output wire FP46,
output wire FP48,
output wire FP50,
output wire FP52,
output wire FT19,
output wire FT21,
output wire FT23,
output wire FT25,
output wire FT27,
output wire FT29,
output wire FT31,
output wire FT33,
output wire FT35,
output wire FT37,
output wire FT39,
output wire FT41,
output wire FT43,
output wire FT45,
output wire FT47,
output wire FT49,
output wire FT51,
output wire FT53,
output wire FV18,
output wire FV20,
output wire FV22,
output wire FV24,
output wire FV26,
output wire FV28,
output wire FV30,
output wire FV32,
output wire FV34,
output wire FV36,
output wire FV38,
output wire FV40,
output wire FV42,
output wire FV44,
output wire FV46,
output wire FV48,
output wire FV50,
output wire FV52,
output wire FY19,
output wire FY21,
output wire FY23,
output wire FY25,
output wire FY27,
output wire FY29,
output wire FY31,
output wire FY33,
output wire FY35,
output wire FY37,
output wire FY39,
output wire FY41,
output wire FY43,
output wire FY45,
output wire FY47,
output wire FY49,
output wire FY51,
output wire FY53,
output wire G3,
output wire G6,
output wire G9,
output wire G12,
output wire G15,
output wire G18,
output wire G20,
output wire G22,
output wire G24,
output wire G26,
output wire G28,
output wire G30,
output wire G32,
output wire G34,
output wire G36,
output wire G38,
output wire GC19,
output wire GC21,
output wire GC23,
output wire GC25,
output wire GC27,
output wire GC29,
output wire GC31,
output wire GC33,
output wire GC35,
output wire GC37,
output wire GC39,
output wire GC41,
output wire GC43,
output wire GC45,
output wire GC47,
output wire GC49,
output wire GC51,
output wire GC53,
output wire GE18,
output wire GE20,
output wire GE22,
output wire GE24,
output wire GE26,
output wire GE28,
output wire GE30,
output wire GE32,
output wire GE34,
output wire GE36,
output wire GE38,
output wire GE40,
output wire GE42,
output wire GE44,
output wire GE46,
output wire GE48,
output wire GE50,
output wire GE52,
output wire GG19,
output wire GG21,
output wire GG23,
output wire GG25,
output wire GG27,
output wire GG29,
output wire GG31,
output wire GG33,
output wire GG35,
output wire GG37,
output wire GG39,
output wire GG41,
output wire GG43,
output wire GG45,
output wire GG47,
output wire GG49,
output wire GG51,
output wire GG53,
output wire GJ18,
output wire GJ20,
output wire GJ22,
output wire GJ24,
output wire GJ26,
output wire GJ28,
output wire GJ30,
output wire GJ32,
output wire GJ34,
output wire GJ36,
output wire GJ38,
output wire GJ40,
output wire GJ42,
output wire GJ44,
output wire GJ46,
output wire GJ48,
output wire GJ50,
output wire GJ52,
output wire GP18,
output wire GP20,
output wire GP22,
output wire GP24,
output wire GP26,
output wire GP28,
output wire GP30,
output wire GP32,
output wire GP34,
output wire GP36,
output wire GP38,
output wire GP40,
output wire GP42,
output wire GP44,
output wire GP46,
output wire GP48,
output wire GP50,
output wire GP52,
output wire GU19,
output wire GU21,
output wire GU23,
output wire GU25,
output wire GU27,
output wire GU29,
output wire GU31,
output wire GU33,
output wire GU35,
output wire GU37,
output wire GU39,
output wire GU41,
output wire GU43,
output wire GU45,
output wire GU47,
output wire GU49,
output wire GU51,
output wire GU53,
output wire GW18,
output wire GW20,
output wire GW22,
output wire GW24,
output wire GW26,
output wire GW28,
output wire GW30,
output wire GW32,
output wire GW34,
output wire GW36,
output wire GW38,
output wire GW40,
output wire GW42,
output wire GW44,
output wire GW46,
output wire GW48,
output wire GW50,
output wire GW52,
output wire HB19,
output wire HB21,
output wire HB23,
output wire HB25,
output wire HB27,
output wire HB29,
output wire HB31,
output wire HB33,
output wire HB35,
output wire HB37,
output wire HB39,
output wire HB41,
output wire HB43,
output wire HB45,
output wire HB47,
output wire HB49,
output wire HB51,
output wire HB53,
output wire HF19,
output wire HF21,
output wire HF23,
output wire HF25,
output wire HF27,
output wire HF29,
output wire HF31,
output wire HF33,
output wire HF35,
output wire HF37,
output wire HF39,
output wire HF41,
output wire HF43,
output wire HF45,
output wire HF47,
output wire HF49,
output wire HF51,
output wire HF53,
output wire HH18,
output wire HH20,
output wire HH22,
output wire HH24,
output wire HH26,
output wire HH28,
output wire HH30,
output wire HH32,
output wire HH34,
output wire HH36,
output wire HH38,
output wire HH40,
output wire HH42,
output wire HH44,
output wire HH46,
output wire HH48,
output wire HH50,
output wire HH52,
output wire J7,
output wire J10,
output wire J14,
output wire J17,
output wire J19,
output wire J21,
output wire J23,
output wire J25,
output wire J27,
output wire J29,
output wire J31,
output wire J33,
output wire J35,
output wire J37,
output wire J39,
output wire L6,
output wire L9,
output wire L12,
output wire L15,
output wire L18,
output wire L20,
output wire L22,
output wire L24,
output wire L26,
output wire L28,
output wire L30,
output wire L32,
output wire N7,
output wire N10,
output wire N14,
output wire N17,
output wire N19,
output wire N21,
output wire N23,
output wire N25,
output wire N27,
output wire N29,
output wire N31,
output wire N33,
output wire U7,
output wire U10,
output wire U14,
output wire U17,
output wire U19,
output wire U21,
output wire U23,
output wire U25,
output wire U27,
output wire U29,
output wire U31,
output wire U33,
output wire W6,
output wire W9,
output wire W12,
output wire W15,
output wire W18,
output wire W20,
output wire W22,
output wire W24,
output wire W26,
output wire W28,
output wire W30,
output wire W32
);

wire clk_int;

ag7_confclk u0 (
    .clkout (clk_int)
);

localparam CLK_FREQ = 250000000;
localparam BAUD = 115200;
localparam PRESCALE = CLK_FREQ / BAUD;
localparam CL_PRESCALE = $clog2(PRESCALE);


localparam PIN_COUNT = 480;
localparam GROUP_COUNT = 32;
localparam CL_GROUP_COUNT = $clog2(GROUP_COUNT);

reg shift_rst_reg = 1'b0;
reg [CL_GROUP_COUNT-1:0] group_select_reg = 0;
reg [GROUP_COUNT-1:0] shift_reg = 1'b0;

reg [CL_PRESCALE-1:0] prescale_reg = PRESCALE;
reg [5:0] shift_count_reg = 0;

always @(posedge clk_int) begin
    shift_rst_reg <= 1'b0;
    shift_reg <= 0;

    if (prescale_reg) begin
        prescale_reg <= prescale_reg - 1;
    end else begin
        prescale_reg <= PRESCALE;
        if (shift_count_reg) begin
            shift_count_reg <= shift_count_reg - 1;
            shift_reg[group_select_reg] <= 1'b1;
        end else begin
            shift_count_reg <= 6'h3f;
            shift_rst_reg <= 1'b1;
            if (group_select_reg < GROUP_COUNT) begin
                group_select_reg <= group_select_reg + 1;
            end else begin
                group_select_reg <= 0;
            end
        end
    end
end
pin_uart #(.NAME("A10")) pin_A10_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[0%GROUP_COUNT]), .out(A10));
pin_uart #(.NAME("A14")) pin_A14_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[1%GROUP_COUNT]), .out(A14));
pin_uart #(.NAME("A17")) pin_A17_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[2%GROUP_COUNT]), .out(A17));
pin_uart #(.NAME("A19")) pin_A19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[3%GROUP_COUNT]), .out(A19));
pin_uart #(.NAME("A21")) pin_A21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[4%GROUP_COUNT]), .out(A21));
pin_uart #(.NAME("A23")) pin_A23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[5%GROUP_COUNT]), .out(A23));
pin_uart #(.NAME("A25")) pin_A25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[6%GROUP_COUNT]), .out(A25));
pin_uart #(.NAME("A27")) pin_A27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[7%GROUP_COUNT]), .out(A27));
pin_uart #(.NAME("A29")) pin_A29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[8%GROUP_COUNT]), .out(A29));
pin_uart #(.NAME("A31")) pin_A31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[9%GROUP_COUNT]), .out(A31));
pin_uart #(.NAME("A33")) pin_A33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[10%GROUP_COUNT]), .out(A33));
pin_uart #(.NAME("A35")) pin_A35_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[11%GROUP_COUNT]), .out(A35));
pin_uart #(.NAME("A37")) pin_A37_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[12%GROUP_COUNT]), .out(A37));
pin_uart #(.NAME("A39")) pin_A39_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[13%GROUP_COUNT]), .out(A39));
pin_uart #(.NAME("AA7")) pin_AA7_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[14%GROUP_COUNT]), .out(AA7));
pin_uart #(.NAME("AA10")) pin_AA10_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[15%GROUP_COUNT]), .out(AA10));
pin_uart #(.NAME("AA14")) pin_AA14_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[16%GROUP_COUNT]), .out(AA14));
pin_uart #(.NAME("AA17")) pin_AA17_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[17%GROUP_COUNT]), .out(AA17));
pin_uart #(.NAME("AA19")) pin_AA19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[18%GROUP_COUNT]), .out(AA19));
pin_uart #(.NAME("AA21")) pin_AA21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[19%GROUP_COUNT]), .out(AA21));
pin_uart #(.NAME("AA23")) pin_AA23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[20%GROUP_COUNT]), .out(AA23));
pin_uart #(.NAME("AA25")) pin_AA25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[21%GROUP_COUNT]), .out(AA25));
pin_uart #(.NAME("AA27")) pin_AA27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[22%GROUP_COUNT]), .out(AA27));
pin_uart #(.NAME("AC6")) pin_AC6_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[23%GROUP_COUNT]), .out(AC6));
pin_uart #(.NAME("AC9")) pin_AC9_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[24%GROUP_COUNT]), .out(AC9));
pin_uart #(.NAME("AC12")) pin_AC12_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[25%GROUP_COUNT]), .out(AC12));
pin_uart #(.NAME("AC15")) pin_AC15_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[26%GROUP_COUNT]), .out(AC15));
pin_uart #(.NAME("AC18")) pin_AC18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[27%GROUP_COUNT]), .out(AC18));
pin_uart #(.NAME("AC20")) pin_AC20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[28%GROUP_COUNT]), .out(AC20));
pin_uart #(.NAME("AC22")) pin_AC22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[29%GROUP_COUNT]), .out(AC22));
pin_uart #(.NAME("AC24")) pin_AC24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[30%GROUP_COUNT]), .out(AC24));
pin_uart #(.NAME("AC26")) pin_AC26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[31%GROUP_COUNT]), .out(AC26));
pin_uart #(.NAME("AF6")) pin_AF6_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[32%GROUP_COUNT]), .out(AF6));
pin_uart #(.NAME("AF9")) pin_AF9_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[33%GROUP_COUNT]), .out(AF9));
pin_uart #(.NAME("AF12")) pin_AF12_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[34%GROUP_COUNT]), .out(AF12));
pin_uart #(.NAME("AF15")) pin_AF15_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[35%GROUP_COUNT]), .out(AF15));
pin_uart #(.NAME("AF18")) pin_AF18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[36%GROUP_COUNT]), .out(AF18));
pin_uart #(.NAME("AF20")) pin_AF20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[37%GROUP_COUNT]), .out(AF20));
pin_uart #(.NAME("AF22")) pin_AF22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[38%GROUP_COUNT]), .out(AF22));
pin_uart #(.NAME("AF24")) pin_AF24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[39%GROUP_COUNT]), .out(AF24));
pin_uart #(.NAME("AF26")) pin_AF26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[40%GROUP_COUNT]), .out(AF26));
pin_uart #(.NAME("AH7")) pin_AH7_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[41%GROUP_COUNT]), .out(AH7));
pin_uart #(.NAME("AH10")) pin_AH10_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[42%GROUP_COUNT]), .out(AH10));
pin_uart #(.NAME("AH14")) pin_AH14_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[43%GROUP_COUNT]), .out(AH14));
pin_uart #(.NAME("AH17")) pin_AH17_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[44%GROUP_COUNT]), .out(AH17));
pin_uart #(.NAME("AH19")) pin_AH19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[45%GROUP_COUNT]), .out(AH19));
pin_uart #(.NAME("AH21")) pin_AH21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[46%GROUP_COUNT]), .out(AH21));
pin_uart #(.NAME("AH23")) pin_AH23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[47%GROUP_COUNT]), .out(AH23));
pin_uart #(.NAME("AH25")) pin_AH25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[48%GROUP_COUNT]), .out(AH25));
pin_uart #(.NAME("AH27")) pin_AH27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[49%GROUP_COUNT]), .out(AH27));
pin_uart #(.NAME("AK6")) pin_AK6_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[50%GROUP_COUNT]), .out(AK6));
pin_uart #(.NAME("AK9")) pin_AK9_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[51%GROUP_COUNT]), .out(AK9));
pin_uart #(.NAME("AK12")) pin_AK12_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[52%GROUP_COUNT]), .out(AK12));
pin_uart #(.NAME("AK15")) pin_AK15_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[53%GROUP_COUNT]), .out(AK15));
pin_uart #(.NAME("AK18")) pin_AK18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[54%GROUP_COUNT]), .out(AK18));
pin_uart #(.NAME("AK20")) pin_AK20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[55%GROUP_COUNT]), .out(AK20));
pin_uart #(.NAME("AK22")) pin_AK22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[56%GROUP_COUNT]), .out(AK22));
pin_uart #(.NAME("AK24")) pin_AK24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[57%GROUP_COUNT]), .out(AK24));
pin_uart #(.NAME("AK26")) pin_AK26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[58%GROUP_COUNT]), .out(AK26));
pin_uart #(.NAME("AK28")) pin_AK28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[59%GROUP_COUNT]), .out(AK28));
pin_uart #(.NAME("AK30")) pin_AK30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[60%GROUP_COUNT]), .out(AK30));
pin_uart #(.NAME("AK32")) pin_AK32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[61%GROUP_COUNT]), .out(AK32));
pin_uart #(.NAME("AM7")) pin_AM7_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[62%GROUP_COUNT]), .out(AM7));
pin_uart #(.NAME("AM10")) pin_AM10_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[63%GROUP_COUNT]), .out(AM10));
pin_uart #(.NAME("AM14")) pin_AM14_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[64%GROUP_COUNT]), .out(AM14));
pin_uart #(.NAME("AM17")) pin_AM17_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[65%GROUP_COUNT]), .out(AM17));
pin_uart #(.NAME("AM19")) pin_AM19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[66%GROUP_COUNT]), .out(AM19));
pin_uart #(.NAME("AM21")) pin_AM21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[67%GROUP_COUNT]), .out(AM21));
pin_uart #(.NAME("AM23")) pin_AM23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[68%GROUP_COUNT]), .out(AM23));
pin_uart #(.NAME("AM25")) pin_AM25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[69%GROUP_COUNT]), .out(AM25));
pin_uart #(.NAME("AM27")) pin_AM27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[70%GROUP_COUNT]), .out(AM27));
pin_uart #(.NAME("AM29")) pin_AM29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[71%GROUP_COUNT]), .out(AM29));
pin_uart #(.NAME("AM31")) pin_AM31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[72%GROUP_COUNT]), .out(AM31));
pin_uart #(.NAME("AM33")) pin_AM33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[73%GROUP_COUNT]), .out(AM33));
pin_uart #(.NAME("AT7")) pin_AT7_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[74%GROUP_COUNT]), .out(AT7));
pin_uart #(.NAME("AT10")) pin_AT10_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[75%GROUP_COUNT]), .out(AT10));
pin_uart #(.NAME("AT14")) pin_AT14_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[76%GROUP_COUNT]), .out(AT14));
pin_uart #(.NAME("AT17")) pin_AT17_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[77%GROUP_COUNT]), .out(AT17));
pin_uart #(.NAME("AT19")) pin_AT19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[78%GROUP_COUNT]), .out(AT19));
pin_uart #(.NAME("AT21")) pin_AT21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[79%GROUP_COUNT]), .out(AT21));
pin_uart #(.NAME("AT23")) pin_AT23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[80%GROUP_COUNT]), .out(AT23));
pin_uart #(.NAME("AT25")) pin_AT25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[81%GROUP_COUNT]), .out(AT25));
pin_uart #(.NAME("AT27")) pin_AT27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[82%GROUP_COUNT]), .out(AT27));
pin_uart #(.NAME("AT29")) pin_AT29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[83%GROUP_COUNT]), .out(AT29));
pin_uart #(.NAME("AT31")) pin_AT31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[84%GROUP_COUNT]), .out(AT31));
pin_uart #(.NAME("AT33")) pin_AT33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[85%GROUP_COUNT]), .out(AT33));
pin_uart #(.NAME("AV6")) pin_AV6_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[86%GROUP_COUNT]), .out(AV6));
pin_uart #(.NAME("AV9")) pin_AV9_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[87%GROUP_COUNT]), .out(AV9));
pin_uart #(.NAME("AV12")) pin_AV12_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[88%GROUP_COUNT]), .out(AV12));
pin_uart #(.NAME("AV15")) pin_AV15_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[89%GROUP_COUNT]), .out(AV15));
pin_uart #(.NAME("AV18")) pin_AV18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[90%GROUP_COUNT]), .out(AV18));
pin_uart #(.NAME("AV20")) pin_AV20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[91%GROUP_COUNT]), .out(AV20));
pin_uart #(.NAME("AV22")) pin_AV22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[92%GROUP_COUNT]), .out(AV22));
pin_uart #(.NAME("AV24")) pin_AV24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[93%GROUP_COUNT]), .out(AV24));
pin_uart #(.NAME("AV26")) pin_AV26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[94%GROUP_COUNT]), .out(AV26));
pin_uart #(.NAME("AV28")) pin_AV28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[95%GROUP_COUNT]), .out(AV28));
pin_uart #(.NAME("AV30")) pin_AV30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[96%GROUP_COUNT]), .out(AV30));
pin_uart #(.NAME("AV32")) pin_AV32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[97%GROUP_COUNT]), .out(AV32));
pin_uart #(.NAME("C9")) pin_C9_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[98%GROUP_COUNT]), .out(C9));
pin_uart #(.NAME("C12")) pin_C12_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[99%GROUP_COUNT]), .out(C12));
pin_uart #(.NAME("C15")) pin_C15_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[100%GROUP_COUNT]), .out(C15));
pin_uart #(.NAME("C18")) pin_C18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[101%GROUP_COUNT]), .out(C18));
pin_uart #(.NAME("C20")) pin_C20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[102%GROUP_COUNT]), .out(C20));
pin_uart #(.NAME("C22")) pin_C22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[103%GROUP_COUNT]), .out(C22));
pin_uart #(.NAME("C24")) pin_C24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[104%GROUP_COUNT]), .out(C24));
pin_uart #(.NAME("C26")) pin_C26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[105%GROUP_COUNT]), .out(C26));
pin_uart #(.NAME("C28")) pin_C28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[106%GROUP_COUNT]), .out(C28));
pin_uart #(.NAME("C30")) pin_C30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[107%GROUP_COUNT]), .out(C30));
pin_uart #(.NAME("C32")) pin_C32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[108%GROUP_COUNT]), .out(C32));
pin_uart #(.NAME("C34")) pin_C34_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[109%GROUP_COUNT]), .out(C34));
pin_uart #(.NAME("C36")) pin_C36_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[110%GROUP_COUNT]), .out(C36));
pin_uart #(.NAME("C38")) pin_C38_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[111%GROUP_COUNT]), .out(C38));
pin_uart #(.NAME("E5")) pin_E5_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[112%GROUP_COUNT]), .out(E5));
pin_uart #(.NAME("FH19")) pin_FH19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[113%GROUP_COUNT]), .out(FH19));
pin_uart #(.NAME("FH21")) pin_FH21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[114%GROUP_COUNT]), .out(FH21));
pin_uart #(.NAME("FH23")) pin_FH23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[115%GROUP_COUNT]), .out(FH23));
pin_uart #(.NAME("FH25")) pin_FH25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[116%GROUP_COUNT]), .out(FH25));
pin_uart #(.NAME("FH27")) pin_FH27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[117%GROUP_COUNT]), .out(FH27));
pin_uart #(.NAME("FH29")) pin_FH29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[118%GROUP_COUNT]), .out(FH29));
pin_uart #(.NAME("FH31")) pin_FH31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[119%GROUP_COUNT]), .out(FH31));
pin_uart #(.NAME("FH33")) pin_FH33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[120%GROUP_COUNT]), .out(FH33));
pin_uart #(.NAME("FH35")) pin_FH35_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[121%GROUP_COUNT]), .out(FH35));
pin_uart #(.NAME("FH37")) pin_FH37_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[122%GROUP_COUNT]), .out(FH37));
pin_uart #(.NAME("FH39")) pin_FH39_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[123%GROUP_COUNT]), .out(FH39));
pin_uart #(.NAME("FH41")) pin_FH41_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[124%GROUP_COUNT]), .out(FH41));
pin_uart #(.NAME("FH43")) pin_FH43_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[125%GROUP_COUNT]), .out(FH43));
pin_uart #(.NAME("FH45")) pin_FH45_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[126%GROUP_COUNT]), .out(FH45));
pin_uart #(.NAME("FH47")) pin_FH47_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[127%GROUP_COUNT]), .out(FH47));
pin_uart #(.NAME("FH49")) pin_FH49_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[128%GROUP_COUNT]), .out(FH49));
pin_uart #(.NAME("FH51")) pin_FH51_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[129%GROUP_COUNT]), .out(FH51));
pin_uart #(.NAME("FH53")) pin_FH53_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[130%GROUP_COUNT]), .out(FH53));
pin_uart #(.NAME("FK18")) pin_FK18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[131%GROUP_COUNT]), .out(FK18));
pin_uart #(.NAME("FK20")) pin_FK20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[132%GROUP_COUNT]), .out(FK20));
pin_uart #(.NAME("FK22")) pin_FK22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[133%GROUP_COUNT]), .out(FK22));
pin_uart #(.NAME("FK24")) pin_FK24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[134%GROUP_COUNT]), .out(FK24));
pin_uart #(.NAME("FK26")) pin_FK26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[135%GROUP_COUNT]), .out(FK26));
pin_uart #(.NAME("FK28")) pin_FK28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[136%GROUP_COUNT]), .out(FK28));
pin_uart #(.NAME("FK30")) pin_FK30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[137%GROUP_COUNT]), .out(FK30));
pin_uart #(.NAME("FK32")) pin_FK32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[138%GROUP_COUNT]), .out(FK32));
pin_uart #(.NAME("FK34")) pin_FK34_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[139%GROUP_COUNT]), .out(FK34));
pin_uart #(.NAME("FK36")) pin_FK36_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[140%GROUP_COUNT]), .out(FK36));
pin_uart #(.NAME("FK38")) pin_FK38_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[141%GROUP_COUNT]), .out(FK38));
pin_uart #(.NAME("FK40")) pin_FK40_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[142%GROUP_COUNT]), .out(FK40));
pin_uart #(.NAME("FK42")) pin_FK42_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[143%GROUP_COUNT]), .out(FK42));
pin_uart #(.NAME("FK44")) pin_FK44_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[144%GROUP_COUNT]), .out(FK44));
pin_uart #(.NAME("FK46")) pin_FK46_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[145%GROUP_COUNT]), .out(FK46));
pin_uart #(.NAME("FK48")) pin_FK48_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[146%GROUP_COUNT]), .out(FK48));
pin_uart #(.NAME("FK50")) pin_FK50_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[147%GROUP_COUNT]), .out(FK50));
pin_uart #(.NAME("FK52")) pin_FK52_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[148%GROUP_COUNT]), .out(FK52));
pin_uart #(.NAME("FP18")) pin_FP18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[149%GROUP_COUNT]), .out(FP18));
pin_uart #(.NAME("FP20")) pin_FP20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[150%GROUP_COUNT]), .out(FP20));
pin_uart #(.NAME("FP22")) pin_FP22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[151%GROUP_COUNT]), .out(FP22));
pin_uart #(.NAME("FP24")) pin_FP24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[152%GROUP_COUNT]), .out(FP24));
pin_uart #(.NAME("FP26")) pin_FP26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[153%GROUP_COUNT]), .out(FP26));
pin_uart #(.NAME("FP28")) pin_FP28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[154%GROUP_COUNT]), .out(FP28));
pin_uart #(.NAME("FP30")) pin_FP30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[155%GROUP_COUNT]), .out(FP30));
pin_uart #(.NAME("FP32")) pin_FP32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[156%GROUP_COUNT]), .out(FP32));
pin_uart #(.NAME("FP34")) pin_FP34_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[157%GROUP_COUNT]), .out(FP34));
pin_uart #(.NAME("FP36")) pin_FP36_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[158%GROUP_COUNT]), .out(FP36));
pin_uart #(.NAME("FP38")) pin_FP38_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[159%GROUP_COUNT]), .out(FP38));
pin_uart #(.NAME("FP40")) pin_FP40_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[160%GROUP_COUNT]), .out(FP40));
pin_uart #(.NAME("FP42")) pin_FP42_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[161%GROUP_COUNT]), .out(FP42));
pin_uart #(.NAME("FP44")) pin_FP44_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[162%GROUP_COUNT]), .out(FP44));
pin_uart #(.NAME("FP46")) pin_FP46_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[163%GROUP_COUNT]), .out(FP46));
pin_uart #(.NAME("FP48")) pin_FP48_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[164%GROUP_COUNT]), .out(FP48));
pin_uart #(.NAME("FP50")) pin_FP50_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[165%GROUP_COUNT]), .out(FP50));
pin_uart #(.NAME("FP52")) pin_FP52_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[166%GROUP_COUNT]), .out(FP52));
pin_uart #(.NAME("FT19")) pin_FT19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[167%GROUP_COUNT]), .out(FT19));
pin_uart #(.NAME("FT21")) pin_FT21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[168%GROUP_COUNT]), .out(FT21));
pin_uart #(.NAME("FT23")) pin_FT23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[169%GROUP_COUNT]), .out(FT23));
pin_uart #(.NAME("FT25")) pin_FT25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[170%GROUP_COUNT]), .out(FT25));
pin_uart #(.NAME("FT27")) pin_FT27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[171%GROUP_COUNT]), .out(FT27));
pin_uart #(.NAME("FT29")) pin_FT29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[172%GROUP_COUNT]), .out(FT29));
pin_uart #(.NAME("FT31")) pin_FT31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[173%GROUP_COUNT]), .out(FT31));
pin_uart #(.NAME("FT33")) pin_FT33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[174%GROUP_COUNT]), .out(FT33));
pin_uart #(.NAME("FT35")) pin_FT35_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[175%GROUP_COUNT]), .out(FT35));
pin_uart #(.NAME("FT37")) pin_FT37_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[176%GROUP_COUNT]), .out(FT37));
pin_uart #(.NAME("FT39")) pin_FT39_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[177%GROUP_COUNT]), .out(FT39));
pin_uart #(.NAME("FT41")) pin_FT41_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[178%GROUP_COUNT]), .out(FT41));
pin_uart #(.NAME("FT43")) pin_FT43_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[179%GROUP_COUNT]), .out(FT43));
pin_uart #(.NAME("FT45")) pin_FT45_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[180%GROUP_COUNT]), .out(FT45));
pin_uart #(.NAME("FT47")) pin_FT47_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[181%GROUP_COUNT]), .out(FT47));
pin_uart #(.NAME("FT49")) pin_FT49_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[182%GROUP_COUNT]), .out(FT49));
pin_uart #(.NAME("FT51")) pin_FT51_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[183%GROUP_COUNT]), .out(FT51));
pin_uart #(.NAME("FT53")) pin_FT53_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[184%GROUP_COUNT]), .out(FT53));
pin_uart #(.NAME("FV18")) pin_FV18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[185%GROUP_COUNT]), .out(FV18));
pin_uart #(.NAME("FV20")) pin_FV20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[186%GROUP_COUNT]), .out(FV20));
pin_uart #(.NAME("FV22")) pin_FV22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[187%GROUP_COUNT]), .out(FV22));
pin_uart #(.NAME("FV24")) pin_FV24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[188%GROUP_COUNT]), .out(FV24));
pin_uart #(.NAME("FV26")) pin_FV26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[189%GROUP_COUNT]), .out(FV26));
pin_uart #(.NAME("FV28")) pin_FV28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[190%GROUP_COUNT]), .out(FV28));
pin_uart #(.NAME("FV30")) pin_FV30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[191%GROUP_COUNT]), .out(FV30));
pin_uart #(.NAME("FV32")) pin_FV32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[192%GROUP_COUNT]), .out(FV32));
pin_uart #(.NAME("FV34")) pin_FV34_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[193%GROUP_COUNT]), .out(FV34));
pin_uart #(.NAME("FV36")) pin_FV36_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[194%GROUP_COUNT]), .out(FV36));
pin_uart #(.NAME("FV38")) pin_FV38_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[195%GROUP_COUNT]), .out(FV38));
pin_uart #(.NAME("FV40")) pin_FV40_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[196%GROUP_COUNT]), .out(FV40));
pin_uart #(.NAME("FV42")) pin_FV42_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[197%GROUP_COUNT]), .out(FV42));
pin_uart #(.NAME("FV44")) pin_FV44_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[198%GROUP_COUNT]), .out(FV44));
pin_uart #(.NAME("FV46")) pin_FV46_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[199%GROUP_COUNT]), .out(FV46));
pin_uart #(.NAME("FV48")) pin_FV48_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[200%GROUP_COUNT]), .out(FV48));
pin_uart #(.NAME("FV50")) pin_FV50_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[201%GROUP_COUNT]), .out(FV50));
pin_uart #(.NAME("FV52")) pin_FV52_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[202%GROUP_COUNT]), .out(FV52));
pin_uart #(.NAME("FY19")) pin_FY19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[203%GROUP_COUNT]), .out(FY19));
pin_uart #(.NAME("FY21")) pin_FY21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[204%GROUP_COUNT]), .out(FY21));
pin_uart #(.NAME("FY23")) pin_FY23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[205%GROUP_COUNT]), .out(FY23));
pin_uart #(.NAME("FY25")) pin_FY25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[206%GROUP_COUNT]), .out(FY25));
pin_uart #(.NAME("FY27")) pin_FY27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[207%GROUP_COUNT]), .out(FY27));
pin_uart #(.NAME("FY29")) pin_FY29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[208%GROUP_COUNT]), .out(FY29));
pin_uart #(.NAME("FY31")) pin_FY31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[209%GROUP_COUNT]), .out(FY31));
pin_uart #(.NAME("FY33")) pin_FY33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[210%GROUP_COUNT]), .out(FY33));
pin_uart #(.NAME("FY35")) pin_FY35_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[211%GROUP_COUNT]), .out(FY35));
pin_uart #(.NAME("FY37")) pin_FY37_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[212%GROUP_COUNT]), .out(FY37));
pin_uart #(.NAME("FY39")) pin_FY39_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[213%GROUP_COUNT]), .out(FY39));
pin_uart #(.NAME("FY41")) pin_FY41_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[214%GROUP_COUNT]), .out(FY41));
pin_uart #(.NAME("FY43")) pin_FY43_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[215%GROUP_COUNT]), .out(FY43));
pin_uart #(.NAME("FY45")) pin_FY45_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[216%GROUP_COUNT]), .out(FY45));
pin_uart #(.NAME("FY47")) pin_FY47_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[217%GROUP_COUNT]), .out(FY47));
pin_uart #(.NAME("FY49")) pin_FY49_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[218%GROUP_COUNT]), .out(FY49));
pin_uart #(.NAME("FY51")) pin_FY51_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[219%GROUP_COUNT]), .out(FY51));
pin_uart #(.NAME("FY53")) pin_FY53_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[220%GROUP_COUNT]), .out(FY53));
pin_uart #(.NAME("G3")) pin_G3_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[221%GROUP_COUNT]), .out(G3));
pin_uart #(.NAME("G6")) pin_G6_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[222%GROUP_COUNT]), .out(G6));
pin_uart #(.NAME("G9")) pin_G9_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[223%GROUP_COUNT]), .out(G9));
pin_uart #(.NAME("G12")) pin_G12_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[224%GROUP_COUNT]), .out(G12));
pin_uart #(.NAME("G15")) pin_G15_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[225%GROUP_COUNT]), .out(G15));
pin_uart #(.NAME("G18")) pin_G18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[226%GROUP_COUNT]), .out(G18));
pin_uart #(.NAME("G20")) pin_G20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[227%GROUP_COUNT]), .out(G20));
pin_uart #(.NAME("G22")) pin_G22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[228%GROUP_COUNT]), .out(G22));
pin_uart #(.NAME("G24")) pin_G24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[229%GROUP_COUNT]), .out(G24));
pin_uart #(.NAME("G26")) pin_G26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[230%GROUP_COUNT]), .out(G26));
pin_uart #(.NAME("G28")) pin_G28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[231%GROUP_COUNT]), .out(G28));
pin_uart #(.NAME("G30")) pin_G30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[232%GROUP_COUNT]), .out(G30));
pin_uart #(.NAME("G32")) pin_G32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[233%GROUP_COUNT]), .out(G32));
pin_uart #(.NAME("G34")) pin_G34_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[234%GROUP_COUNT]), .out(G34));
pin_uart #(.NAME("G36")) pin_G36_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[235%GROUP_COUNT]), .out(G36));
pin_uart #(.NAME("G38")) pin_G38_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[236%GROUP_COUNT]), .out(G38));
pin_uart #(.NAME("GC19")) pin_GC19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[237%GROUP_COUNT]), .out(GC19));
pin_uart #(.NAME("GC21")) pin_GC21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[238%GROUP_COUNT]), .out(GC21));
pin_uart #(.NAME("GC23")) pin_GC23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[239%GROUP_COUNT]), .out(GC23));
pin_uart #(.NAME("GC25")) pin_GC25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[240%GROUP_COUNT]), .out(GC25));
pin_uart #(.NAME("GC27")) pin_GC27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[241%GROUP_COUNT]), .out(GC27));
pin_uart #(.NAME("GC29")) pin_GC29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[242%GROUP_COUNT]), .out(GC29));
pin_uart #(.NAME("GC31")) pin_GC31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[243%GROUP_COUNT]), .out(GC31));
pin_uart #(.NAME("GC33")) pin_GC33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[244%GROUP_COUNT]), .out(GC33));
pin_uart #(.NAME("GC35")) pin_GC35_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[245%GROUP_COUNT]), .out(GC35));
pin_uart #(.NAME("GC37")) pin_GC37_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[246%GROUP_COUNT]), .out(GC37));
pin_uart #(.NAME("GC39")) pin_GC39_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[247%GROUP_COUNT]), .out(GC39));
pin_uart #(.NAME("GC41")) pin_GC41_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[248%GROUP_COUNT]), .out(GC41));
pin_uart #(.NAME("GC43")) pin_GC43_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[249%GROUP_COUNT]), .out(GC43));
pin_uart #(.NAME("GC45")) pin_GC45_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[250%GROUP_COUNT]), .out(GC45));
pin_uart #(.NAME("GC47")) pin_GC47_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[251%GROUP_COUNT]), .out(GC47));
pin_uart #(.NAME("GC49")) pin_GC49_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[252%GROUP_COUNT]), .out(GC49));
pin_uart #(.NAME("GC51")) pin_GC51_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[253%GROUP_COUNT]), .out(GC51));
pin_uart #(.NAME("GC53")) pin_GC53_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[254%GROUP_COUNT]), .out(GC53));
pin_uart #(.NAME("GE18")) pin_GE18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[255%GROUP_COUNT]), .out(GE18));
pin_uart #(.NAME("GE20")) pin_GE20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[256%GROUP_COUNT]), .out(GE20));
pin_uart #(.NAME("GE22")) pin_GE22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[257%GROUP_COUNT]), .out(GE22));
pin_uart #(.NAME("GE24")) pin_GE24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[258%GROUP_COUNT]), .out(GE24));
pin_uart #(.NAME("GE26")) pin_GE26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[259%GROUP_COUNT]), .out(GE26));
pin_uart #(.NAME("GE28")) pin_GE28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[260%GROUP_COUNT]), .out(GE28));
pin_uart #(.NAME("GE30")) pin_GE30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[261%GROUP_COUNT]), .out(GE30));
pin_uart #(.NAME("GE32")) pin_GE32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[262%GROUP_COUNT]), .out(GE32));
pin_uart #(.NAME("GE34")) pin_GE34_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[263%GROUP_COUNT]), .out(GE34));
pin_uart #(.NAME("GE36")) pin_GE36_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[264%GROUP_COUNT]), .out(GE36));
pin_uart #(.NAME("GE38")) pin_GE38_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[265%GROUP_COUNT]), .out(GE38));
pin_uart #(.NAME("GE40")) pin_GE40_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[266%GROUP_COUNT]), .out(GE40));
pin_uart #(.NAME("GE42")) pin_GE42_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[267%GROUP_COUNT]), .out(GE42));
pin_uart #(.NAME("GE44")) pin_GE44_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[268%GROUP_COUNT]), .out(GE44));
pin_uart #(.NAME("GE46")) pin_GE46_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[269%GROUP_COUNT]), .out(GE46));
pin_uart #(.NAME("GE48")) pin_GE48_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[270%GROUP_COUNT]), .out(GE48));
pin_uart #(.NAME("GE50")) pin_GE50_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[271%GROUP_COUNT]), .out(GE50));
pin_uart #(.NAME("GE52")) pin_GE52_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[272%GROUP_COUNT]), .out(GE52));
pin_uart #(.NAME("GG19")) pin_GG19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[273%GROUP_COUNT]), .out(GG19));
pin_uart #(.NAME("GG21")) pin_GG21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[274%GROUP_COUNT]), .out(GG21));
pin_uart #(.NAME("GG23")) pin_GG23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[275%GROUP_COUNT]), .out(GG23));
pin_uart #(.NAME("GG25")) pin_GG25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[276%GROUP_COUNT]), .out(GG25));
pin_uart #(.NAME("GG27")) pin_GG27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[277%GROUP_COUNT]), .out(GG27));
pin_uart #(.NAME("GG29")) pin_GG29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[278%GROUP_COUNT]), .out(GG29));
pin_uart #(.NAME("GG31")) pin_GG31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[279%GROUP_COUNT]), .out(GG31));
pin_uart #(.NAME("GG33")) pin_GG33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[280%GROUP_COUNT]), .out(GG33));
pin_uart #(.NAME("GG35")) pin_GG35_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[281%GROUP_COUNT]), .out(GG35));
pin_uart #(.NAME("GG37")) pin_GG37_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[282%GROUP_COUNT]), .out(GG37));
pin_uart #(.NAME("GG39")) pin_GG39_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[283%GROUP_COUNT]), .out(GG39));
pin_uart #(.NAME("GG41")) pin_GG41_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[284%GROUP_COUNT]), .out(GG41));
pin_uart #(.NAME("GG43")) pin_GG43_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[285%GROUP_COUNT]), .out(GG43));
pin_uart #(.NAME("GG45")) pin_GG45_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[286%GROUP_COUNT]), .out(GG45));
pin_uart #(.NAME("GG47")) pin_GG47_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[287%GROUP_COUNT]), .out(GG47));
pin_uart #(.NAME("GG49")) pin_GG49_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[288%GROUP_COUNT]), .out(GG49));
pin_uart #(.NAME("GG51")) pin_GG51_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[289%GROUP_COUNT]), .out(GG51));
pin_uart #(.NAME("GG53")) pin_GG53_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[290%GROUP_COUNT]), .out(GG53));
pin_uart #(.NAME("GJ18")) pin_GJ18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[291%GROUP_COUNT]), .out(GJ18));
pin_uart #(.NAME("GJ20")) pin_GJ20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[292%GROUP_COUNT]), .out(GJ20));
pin_uart #(.NAME("GJ22")) pin_GJ22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[293%GROUP_COUNT]), .out(GJ22));
pin_uart #(.NAME("GJ24")) pin_GJ24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[294%GROUP_COUNT]), .out(GJ24));
pin_uart #(.NAME("GJ26")) pin_GJ26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[295%GROUP_COUNT]), .out(GJ26));
pin_uart #(.NAME("GJ28")) pin_GJ28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[296%GROUP_COUNT]), .out(GJ28));
pin_uart #(.NAME("GJ30")) pin_GJ30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[297%GROUP_COUNT]), .out(GJ30));
pin_uart #(.NAME("GJ32")) pin_GJ32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[298%GROUP_COUNT]), .out(GJ32));
pin_uart #(.NAME("GJ34")) pin_GJ34_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[299%GROUP_COUNT]), .out(GJ34));
pin_uart #(.NAME("GJ36")) pin_GJ36_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[300%GROUP_COUNT]), .out(GJ36));
pin_uart #(.NAME("GJ38")) pin_GJ38_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[301%GROUP_COUNT]), .out(GJ38));
pin_uart #(.NAME("GJ40")) pin_GJ40_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[302%GROUP_COUNT]), .out(GJ40));
pin_uart #(.NAME("GJ42")) pin_GJ42_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[303%GROUP_COUNT]), .out(GJ42));
pin_uart #(.NAME("GJ44")) pin_GJ44_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[304%GROUP_COUNT]), .out(GJ44));
pin_uart #(.NAME("GJ46")) pin_GJ46_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[305%GROUP_COUNT]), .out(GJ46));
pin_uart #(.NAME("GJ48")) pin_GJ48_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[306%GROUP_COUNT]), .out(GJ48));
pin_uart #(.NAME("GJ50")) pin_GJ50_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[307%GROUP_COUNT]), .out(GJ50));
pin_uart #(.NAME("GJ52")) pin_GJ52_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[308%GROUP_COUNT]), .out(GJ52));
pin_uart #(.NAME("GP18")) pin_GP18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[309%GROUP_COUNT]), .out(GP18));
pin_uart #(.NAME("GP20")) pin_GP20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[310%GROUP_COUNT]), .out(GP20));
pin_uart #(.NAME("GP22")) pin_GP22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[311%GROUP_COUNT]), .out(GP22));
pin_uart #(.NAME("GP24")) pin_GP24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[312%GROUP_COUNT]), .out(GP24));
pin_uart #(.NAME("GP26")) pin_GP26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[313%GROUP_COUNT]), .out(GP26));
pin_uart #(.NAME("GP28")) pin_GP28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[314%GROUP_COUNT]), .out(GP28));
pin_uart #(.NAME("GP30")) pin_GP30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[315%GROUP_COUNT]), .out(GP30));
pin_uart #(.NAME("GP32")) pin_GP32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[316%GROUP_COUNT]), .out(GP32));
pin_uart #(.NAME("GP34")) pin_GP34_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[317%GROUP_COUNT]), .out(GP34));
pin_uart #(.NAME("GP36")) pin_GP36_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[318%GROUP_COUNT]), .out(GP36));
pin_uart #(.NAME("GP38")) pin_GP38_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[319%GROUP_COUNT]), .out(GP38));
pin_uart #(.NAME("GP40")) pin_GP40_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[320%GROUP_COUNT]), .out(GP40));
pin_uart #(.NAME("GP42")) pin_GP42_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[321%GROUP_COUNT]), .out(GP42));
pin_uart #(.NAME("GP44")) pin_GP44_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[322%GROUP_COUNT]), .out(GP44));
pin_uart #(.NAME("GP46")) pin_GP46_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[323%GROUP_COUNT]), .out(GP46));
pin_uart #(.NAME("GP48")) pin_GP48_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[324%GROUP_COUNT]), .out(GP48));
pin_uart #(.NAME("GP50")) pin_GP50_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[325%GROUP_COUNT]), .out(GP50));
pin_uart #(.NAME("GP52")) pin_GP52_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[326%GROUP_COUNT]), .out(GP52));
pin_uart #(.NAME("GU19")) pin_GU19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[327%GROUP_COUNT]), .out(GU19));
pin_uart #(.NAME("GU21")) pin_GU21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[328%GROUP_COUNT]), .out(GU21));
pin_uart #(.NAME("GU23")) pin_GU23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[329%GROUP_COUNT]), .out(GU23));
pin_uart #(.NAME("GU25")) pin_GU25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[330%GROUP_COUNT]), .out(GU25));
pin_uart #(.NAME("GU27")) pin_GU27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[331%GROUP_COUNT]), .out(GU27));
pin_uart #(.NAME("GU29")) pin_GU29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[332%GROUP_COUNT]), .out(GU29));
pin_uart #(.NAME("GU31")) pin_GU31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[333%GROUP_COUNT]), .out(GU31));
pin_uart #(.NAME("GU33")) pin_GU33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[334%GROUP_COUNT]), .out(GU33));
pin_uart #(.NAME("GU35")) pin_GU35_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[335%GROUP_COUNT]), .out(GU35));
pin_uart #(.NAME("GU37")) pin_GU37_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[336%GROUP_COUNT]), .out(GU37));
pin_uart #(.NAME("GU39")) pin_GU39_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[337%GROUP_COUNT]), .out(GU39));
pin_uart #(.NAME("GU41")) pin_GU41_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[338%GROUP_COUNT]), .out(GU41));
pin_uart #(.NAME("GU43")) pin_GU43_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[339%GROUP_COUNT]), .out(GU43));
pin_uart #(.NAME("GU45")) pin_GU45_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[340%GROUP_COUNT]), .out(GU45));
pin_uart #(.NAME("GU47")) pin_GU47_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[341%GROUP_COUNT]), .out(GU47));
pin_uart #(.NAME("GU49")) pin_GU49_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[342%GROUP_COUNT]), .out(GU49));
pin_uart #(.NAME("GU51")) pin_GU51_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[343%GROUP_COUNT]), .out(GU51));
pin_uart #(.NAME("GU53")) pin_GU53_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[344%GROUP_COUNT]), .out(GU53));
pin_uart #(.NAME("GW18")) pin_GW18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[345%GROUP_COUNT]), .out(GW18));
pin_uart #(.NAME("GW20")) pin_GW20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[346%GROUP_COUNT]), .out(GW20));
pin_uart #(.NAME("GW22")) pin_GW22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[347%GROUP_COUNT]), .out(GW22));
pin_uart #(.NAME("GW24")) pin_GW24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[348%GROUP_COUNT]), .out(GW24));
pin_uart #(.NAME("GW26")) pin_GW26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[349%GROUP_COUNT]), .out(GW26));
pin_uart #(.NAME("GW28")) pin_GW28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[350%GROUP_COUNT]), .out(GW28));
pin_uart #(.NAME("GW30")) pin_GW30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[351%GROUP_COUNT]), .out(GW30));
pin_uart #(.NAME("GW32")) pin_GW32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[352%GROUP_COUNT]), .out(GW32));
pin_uart #(.NAME("GW34")) pin_GW34_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[353%GROUP_COUNT]), .out(GW34));
pin_uart #(.NAME("GW36")) pin_GW36_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[354%GROUP_COUNT]), .out(GW36));
pin_uart #(.NAME("GW38")) pin_GW38_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[355%GROUP_COUNT]), .out(GW38));
pin_uart #(.NAME("GW40")) pin_GW40_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[356%GROUP_COUNT]), .out(GW40));
pin_uart #(.NAME("GW42")) pin_GW42_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[357%GROUP_COUNT]), .out(GW42));
pin_uart #(.NAME("GW44")) pin_GW44_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[358%GROUP_COUNT]), .out(GW44));
pin_uart #(.NAME("GW46")) pin_GW46_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[359%GROUP_COUNT]), .out(GW46));
pin_uart #(.NAME("GW48")) pin_GW48_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[360%GROUP_COUNT]), .out(GW48));
pin_uart #(.NAME("GW50")) pin_GW50_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[361%GROUP_COUNT]), .out(GW50));
pin_uart #(.NAME("GW52")) pin_GW52_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[362%GROUP_COUNT]), .out(GW52));
pin_uart #(.NAME("HB19")) pin_HB19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[363%GROUP_COUNT]), .out(HB19));
pin_uart #(.NAME("HB21")) pin_HB21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[364%GROUP_COUNT]), .out(HB21));
pin_uart #(.NAME("HB23")) pin_HB23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[365%GROUP_COUNT]), .out(HB23));
pin_uart #(.NAME("HB25")) pin_HB25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[366%GROUP_COUNT]), .out(HB25));
pin_uart #(.NAME("HB27")) pin_HB27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[367%GROUP_COUNT]), .out(HB27));
pin_uart #(.NAME("HB29")) pin_HB29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[368%GROUP_COUNT]), .out(HB29));
pin_uart #(.NAME("HB31")) pin_HB31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[369%GROUP_COUNT]), .out(HB31));
pin_uart #(.NAME("HB33")) pin_HB33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[370%GROUP_COUNT]), .out(HB33));
pin_uart #(.NAME("HB35")) pin_HB35_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[371%GROUP_COUNT]), .out(HB35));
pin_uart #(.NAME("HB37")) pin_HB37_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[372%GROUP_COUNT]), .out(HB37));
pin_uart #(.NAME("HB39")) pin_HB39_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[373%GROUP_COUNT]), .out(HB39));
pin_uart #(.NAME("HB41")) pin_HB41_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[374%GROUP_COUNT]), .out(HB41));
pin_uart #(.NAME("HB43")) pin_HB43_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[375%GROUP_COUNT]), .out(HB43));
pin_uart #(.NAME("HB45")) pin_HB45_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[376%GROUP_COUNT]), .out(HB45));
pin_uart #(.NAME("HB47")) pin_HB47_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[377%GROUP_COUNT]), .out(HB47));
pin_uart #(.NAME("HB49")) pin_HB49_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[378%GROUP_COUNT]), .out(HB49));
pin_uart #(.NAME("HB51")) pin_HB51_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[379%GROUP_COUNT]), .out(HB51));
pin_uart #(.NAME("HB53")) pin_HB53_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[380%GROUP_COUNT]), .out(HB53));
pin_uart #(.NAME("HF19")) pin_HF19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[381%GROUP_COUNT]), .out(HF19));
pin_uart #(.NAME("HF21")) pin_HF21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[382%GROUP_COUNT]), .out(HF21));
pin_uart #(.NAME("HF23")) pin_HF23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[383%GROUP_COUNT]), .out(HF23));
pin_uart #(.NAME("HF25")) pin_HF25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[384%GROUP_COUNT]), .out(HF25));
pin_uart #(.NAME("HF27")) pin_HF27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[385%GROUP_COUNT]), .out(HF27));
pin_uart #(.NAME("HF29")) pin_HF29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[386%GROUP_COUNT]), .out(HF29));
pin_uart #(.NAME("HF31")) pin_HF31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[387%GROUP_COUNT]), .out(HF31));
pin_uart #(.NAME("HF33")) pin_HF33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[388%GROUP_COUNT]), .out(HF33));
pin_uart #(.NAME("HF35")) pin_HF35_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[389%GROUP_COUNT]), .out(HF35));
pin_uart #(.NAME("HF37")) pin_HF37_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[390%GROUP_COUNT]), .out(HF37));
pin_uart #(.NAME("HF39")) pin_HF39_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[391%GROUP_COUNT]), .out(HF39));
pin_uart #(.NAME("HF41")) pin_HF41_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[392%GROUP_COUNT]), .out(HF41));
pin_uart #(.NAME("HF43")) pin_HF43_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[393%GROUP_COUNT]), .out(HF43));
pin_uart #(.NAME("HF45")) pin_HF45_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[394%GROUP_COUNT]), .out(HF45));
pin_uart #(.NAME("HF47")) pin_HF47_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[395%GROUP_COUNT]), .out(HF47));
pin_uart #(.NAME("HF49")) pin_HF49_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[396%GROUP_COUNT]), .out(HF49));
pin_uart #(.NAME("HF51")) pin_HF51_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[397%GROUP_COUNT]), .out(HF51));
pin_uart #(.NAME("HF53")) pin_HF53_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[398%GROUP_COUNT]), .out(HF53));
pin_uart #(.NAME("HH18")) pin_HH18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[399%GROUP_COUNT]), .out(HH18));
pin_uart #(.NAME("HH20")) pin_HH20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[400%GROUP_COUNT]), .out(HH20));
pin_uart #(.NAME("HH22")) pin_HH22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[401%GROUP_COUNT]), .out(HH22));
pin_uart #(.NAME("HH24")) pin_HH24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[402%GROUP_COUNT]), .out(HH24));
pin_uart #(.NAME("HH26")) pin_HH26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[403%GROUP_COUNT]), .out(HH26));
pin_uart #(.NAME("HH28")) pin_HH28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[404%GROUP_COUNT]), .out(HH28));
pin_uart #(.NAME("HH30")) pin_HH30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[405%GROUP_COUNT]), .out(HH30));
pin_uart #(.NAME("HH32")) pin_HH32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[406%GROUP_COUNT]), .out(HH32));
pin_uart #(.NAME("HH34")) pin_HH34_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[407%GROUP_COUNT]), .out(HH34));
pin_uart #(.NAME("HH36")) pin_HH36_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[408%GROUP_COUNT]), .out(HH36));
pin_uart #(.NAME("HH38")) pin_HH38_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[409%GROUP_COUNT]), .out(HH38));
pin_uart #(.NAME("HH40")) pin_HH40_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[410%GROUP_COUNT]), .out(HH40));
pin_uart #(.NAME("HH42")) pin_HH42_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[411%GROUP_COUNT]), .out(HH42));
pin_uart #(.NAME("HH44")) pin_HH44_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[412%GROUP_COUNT]), .out(HH44));
pin_uart #(.NAME("HH46")) pin_HH46_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[413%GROUP_COUNT]), .out(HH46));
pin_uart #(.NAME("HH48")) pin_HH48_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[414%GROUP_COUNT]), .out(HH48));
pin_uart #(.NAME("HH50")) pin_HH50_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[415%GROUP_COUNT]), .out(HH50));
pin_uart #(.NAME("HH52")) pin_HH52_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[416%GROUP_COUNT]), .out(HH52));
pin_uart #(.NAME("J7")) pin_J7_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[417%GROUP_COUNT]), .out(J7));
pin_uart #(.NAME("J10")) pin_J10_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[418%GROUP_COUNT]), .out(J10));
pin_uart #(.NAME("J14")) pin_J14_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[419%GROUP_COUNT]), .out(J14));
pin_uart #(.NAME("J17")) pin_J17_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[420%GROUP_COUNT]), .out(J17));
pin_uart #(.NAME("J19")) pin_J19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[421%GROUP_COUNT]), .out(J19));
pin_uart #(.NAME("J21")) pin_J21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[422%GROUP_COUNT]), .out(J21));
pin_uart #(.NAME("J23")) pin_J23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[423%GROUP_COUNT]), .out(J23));
pin_uart #(.NAME("J25")) pin_J25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[424%GROUP_COUNT]), .out(J25));
pin_uart #(.NAME("J27")) pin_J27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[425%GROUP_COUNT]), .out(J27));
pin_uart #(.NAME("J29")) pin_J29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[426%GROUP_COUNT]), .out(J29));
pin_uart #(.NAME("J31")) pin_J31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[427%GROUP_COUNT]), .out(J31));
pin_uart #(.NAME("J33")) pin_J33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[428%GROUP_COUNT]), .out(J33));
pin_uart #(.NAME("J35")) pin_J35_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[429%GROUP_COUNT]), .out(J35));
pin_uart #(.NAME("J37")) pin_J37_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[430%GROUP_COUNT]), .out(J37));
pin_uart #(.NAME("J39")) pin_J39_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[431%GROUP_COUNT]), .out(J39));
pin_uart #(.NAME("L6")) pin_L6_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[432%GROUP_COUNT]), .out(L6));
pin_uart #(.NAME("L9")) pin_L9_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[433%GROUP_COUNT]), .out(L9));
pin_uart #(.NAME("L12")) pin_L12_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[434%GROUP_COUNT]), .out(L12));
pin_uart #(.NAME("L15")) pin_L15_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[435%GROUP_COUNT]), .out(L15));
pin_uart #(.NAME("L18")) pin_L18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[436%GROUP_COUNT]), .out(L18));
pin_uart #(.NAME("L20")) pin_L20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[437%GROUP_COUNT]), .out(L20));
pin_uart #(.NAME("L22")) pin_L22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[438%GROUP_COUNT]), .out(L22));
pin_uart #(.NAME("L24")) pin_L24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[439%GROUP_COUNT]), .out(L24));
pin_uart #(.NAME("L26")) pin_L26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[440%GROUP_COUNT]), .out(L26));
pin_uart #(.NAME("L28")) pin_L28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[441%GROUP_COUNT]), .out(L28));
pin_uart #(.NAME("L30")) pin_L30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[442%GROUP_COUNT]), .out(L30));
pin_uart #(.NAME("L32")) pin_L32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[443%GROUP_COUNT]), .out(L32));
pin_uart #(.NAME("N7")) pin_N7_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[444%GROUP_COUNT]), .out(N7));
pin_uart #(.NAME("N10")) pin_N10_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[445%GROUP_COUNT]), .out(N10));
pin_uart #(.NAME("N14")) pin_N14_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[446%GROUP_COUNT]), .out(N14));
pin_uart #(.NAME("N17")) pin_N17_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[447%GROUP_COUNT]), .out(N17));
pin_uart #(.NAME("N19")) pin_N19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[448%GROUP_COUNT]), .out(N19));
pin_uart #(.NAME("N21")) pin_N21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[449%GROUP_COUNT]), .out(N21));
pin_uart #(.NAME("N23")) pin_N23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[450%GROUP_COUNT]), .out(N23));
pin_uart #(.NAME("N25")) pin_N25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[451%GROUP_COUNT]), .out(N25));
pin_uart #(.NAME("N27")) pin_N27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[452%GROUP_COUNT]), .out(N27));
pin_uart #(.NAME("N29")) pin_N29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[453%GROUP_COUNT]), .out(N29));
pin_uart #(.NAME("N31")) pin_N31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[454%GROUP_COUNT]), .out(N31));
pin_uart #(.NAME("N33")) pin_N33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[455%GROUP_COUNT]), .out(N33));
pin_uart #(.NAME("U7")) pin_U7_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[456%GROUP_COUNT]), .out(U7));
pin_uart #(.NAME("U10")) pin_U10_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[457%GROUP_COUNT]), .out(U10));
pin_uart #(.NAME("U14")) pin_U14_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[458%GROUP_COUNT]), .out(U14));
pin_uart #(.NAME("U17")) pin_U17_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[459%GROUP_COUNT]), .out(U17));
pin_uart #(.NAME("U19")) pin_U19_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[460%GROUP_COUNT]), .out(U19));
pin_uart #(.NAME("U21")) pin_U21_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[461%GROUP_COUNT]), .out(U21));
pin_uart #(.NAME("U23")) pin_U23_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[462%GROUP_COUNT]), .out(U23));
pin_uart #(.NAME("U25")) pin_U25_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[463%GROUP_COUNT]), .out(U25));
pin_uart #(.NAME("U27")) pin_U27_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[464%GROUP_COUNT]), .out(U27));
pin_uart #(.NAME("U29")) pin_U29_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[465%GROUP_COUNT]), .out(U29));
pin_uart #(.NAME("U31")) pin_U31_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[466%GROUP_COUNT]), .out(U31));
pin_uart #(.NAME("U33")) pin_U33_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[467%GROUP_COUNT]), .out(U33));
pin_uart #(.NAME("W6")) pin_W6_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[468%GROUP_COUNT]), .out(W6));
pin_uart #(.NAME("W9")) pin_W9_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[469%GROUP_COUNT]), .out(W9));
pin_uart #(.NAME("W12")) pin_W12_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[470%GROUP_COUNT]), .out(W12));
pin_uart #(.NAME("W15")) pin_W15_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[471%GROUP_COUNT]), .out(W15));
pin_uart #(.NAME("W18")) pin_W18_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[472%GROUP_COUNT]), .out(W18));
pin_uart #(.NAME("W20")) pin_W20_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[473%GROUP_COUNT]), .out(W20));
pin_uart #(.NAME("W22")) pin_W22_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[474%GROUP_COUNT]), .out(W22));
pin_uart #(.NAME("W24")) pin_W24_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[475%GROUP_COUNT]), .out(W24));
pin_uart #(.NAME("W26")) pin_W26_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[476%GROUP_COUNT]), .out(W26));
pin_uart #(.NAME("W28")) pin_W28_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[477%GROUP_COUNT]), .out(W28));
pin_uart #(.NAME("W30")) pin_W30_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[478%GROUP_COUNT]), .out(W30));
pin_uart #(.NAME("W32")) pin_W32_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[479%GROUP_COUNT]), .out(W32));
endmodule

`resetall
