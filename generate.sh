#!/bin/bash

SRC_FILE=rtl/fpga.v
QSF_FILE=fpga.qsf

echo "/*

Copyright (c) 2023 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the \"Software\"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001

\`resetall
\`timescale 1ns / 1ps
\`default_nettype none

/*
 * 
 */
module fpga
(" > $SRC_FILE

pin_idx=0;
for PIN in $(cat gpio.txt); do
    let pin_idx=$pin_idx+1
    if [[ $pin_idx -eq $(cat gpio.txt|wc -l) ]]; then
        echo "output wire $PIN" >> $SRC_FILE
    else
        echo "output wire $PIN," >> $SRC_FILE
    fi
done

echo ");

wire clk_int;

ag7_confclk u0 (
    .clkout (clk_int)
);

localparam CLK_FREQ = 250000000;
localparam BAUD = 115200;
localparam PRESCALE = CLK_FREQ / BAUD;
localparam CL_PRESCALE = \$clog2(PRESCALE);

" >> $SRC_FILE

echo "localparam PIN_COUNT = $(cat gpio.txt|wc -l);" >> $SRC_FILE

echo "localparam GROUP_COUNT = 32;
localparam CL_GROUP_COUNT = \$clog2(GROUP_COUNT);

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
end" >> $SRC_FILE

pin_idx=0;
for PIN in $(cat gpio.txt); do
    echo "pin_uart #(.NAME(\"$PIN\")) pin_${PIN}_uart_inst (.clk(clk_int), .rst(shift_rst_reg), .shift(shift_reg[${pin_idx}%GROUP_COUNT]), .out(${PIN}));" >> $SRC_FILE
    let pin_idx=$pin_idx+1
done

echo "endmodule

\`resetall" >> $SRC_FILE

echo "set_global_assignment -name IP_FILE ag7_confclk.ip
set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
set_global_assignment -name POWER_APPLY_THERMAL_MARGIN ADDITIONAL
set_global_assignment -name USE_PWRMGT_SCL SDM_IO14
set_global_assignment -name USE_PWRMGT_SDA SDM_IO11
set_global_assignment -name VID_OPERATION_MODE \"PMBUS MASTER\"
set_global_assignment -name PWRMGT_SLAVE_DEVICE0_ADDRESS 60
set_global_assignment -name PWRMGT_SLAVE_DEVICE_TYPE OTHER
set_global_assignment -name PWRMGT_BUS_SPEED_MODE \"400 KHZ\"
set_global_assignment -name PWRMGT_DIRECT_FORMAT_COEFFICIENT_M 1
set_global_assignment -name PWRMGT_DIRECT_FORMAT_COEFFICIENT_R 0
set_global_assignment -name PWRMGT_VOLTAGE_OUTPUT_FORMAT \"DIRECT FORMAT\"
set_global_assignment -name PWRMGT_TRANSLATED_VOLTAGE_VALUE_UNIT MILLIVOLTS
set_global_assignment -name PWRMGT_PAGE_COMMAND_ENABLE OFF
set_global_assignment -name AUTO_RESTART_CONFIGURATION OFF
set_global_assignment -name ACTIVE_SERIAL_CLOCK AS_FREQ_100MHZ
set_global_assignment -name DEVICE_INITIALIZATION_CLOCK OSC_CLK_1_125MHZ" > $QSF_FILE

for PIN in $(cat gpio.txt); do
	echo "set_location_assignment PIN_${PIN} -to ${PIN}" >> $QSF_FILE
	echo "set_instance_assignment -name IO_STANDARD \"1.2 V\" -to ${PIN}" >> $QSF_FILE
done
