# Copyright (C) 1991-2013 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.

# Quartus II 64-Bit Version 13.0.0 Build 156 04/24/2013 SJ Full Version
# File: D:\XiaoMeige_fpga_System\AC601_All_Files\demo\demo_debug\ov7670_7725_TFT\ov7670_debug.tcl
# Generated on: Tue Nov 15 10:30:33 2016

package require ::quartus::project

set_location_assignment PIN_E1 -to clk
set_location_assignment PIN_M1 -to reset_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_data[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_data[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_data[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_data[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_data[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_data[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_data[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_data[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_href
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_pclk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_sclk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_sdat
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_vsync
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cmos_xclk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to reset_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to uart_0_rxd
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to uart_0_txd
set_location_assignment PIN_D4 -to cmos_data[0]
set_location_assignment PIN_D3 -to cmos_data[1]
set_location_assignment PIN_B11 -to cmos_data[2]
set_location_assignment PIN_C3 -to cmos_data[3]
set_location_assignment PIN_F10 -to cmos_data[4]
set_location_assignment PIN_D14 -to cmos_data[5]
set_location_assignment PIN_F14 -to cmos_data[6]
set_location_assignment PIN_F13 -to cmos_data[7]
set_location_assignment PIN_L10 -to cmos_href
set_location_assignment PIN_F11 -to cmos_pclk
set_location_assignment PIN_K9 -to cmos_vsync
set_location_assignment PIN_G11 -to cmos_xclk
set_location_assignment PIN_K10 -to cmos_sclk
set_location_assignment PIN_J11 -to cmos_sdat
set_location_assignment PIN_A8 -to sdram_clk
set_location_assignment PIN_E8 -to sdram_cke
set_location_assignment PIN_D9 -to sdram_cs_n
set_location_assignment PIN_F7 -to sdram_we_n
set_location_assignment PIN_E9 -to sdram_cas_n
set_location_assignment PIN_C9 -to sdram_ras_n
set_location_assignment PIN_E10 -to sdram_ba[0]
set_location_assignment PIN_C11 -to sdram_ba[1]
set_location_assignment PIN_F9 -to sdram_addr[0]
set_location_assignment PIN_D12 -to sdram_addr[1]
set_location_assignment PIN_C14 -to sdram_addr[2]
set_location_assignment PIN_E11 -to sdram_addr[3]
set_location_assignment PIN_A13 -to sdram_addr[4]
set_location_assignment PIN_B12 -to sdram_addr[5]
set_location_assignment PIN_A12 -to sdram_addr[6]
set_location_assignment PIN_A11 -to sdram_addr[7]
set_location_assignment PIN_B10 -to sdram_addr[8]
set_location_assignment PIN_A10 -to sdram_addr[9]
set_location_assignment PIN_D11 -to sdram_addr[10]
set_location_assignment PIN_B9 -to sdram_addr[11]
set_location_assignment PIN_B8 -to sdram_dqm[1]
set_location_assignment PIN_F8 -to sdram_dqm[0]
set_location_assignment PIN_A9 -to sdram_addr[12]
set_location_assignment PIN_F6 -to sdram_dq[0]
set_location_assignment PIN_D5 -to sdram_dq[1]
set_location_assignment PIN_D6 -to sdram_dq[2]
set_location_assignment PIN_C6 -to sdram_dq[3]
set_location_assignment PIN_E6 -to sdram_dq[4]
set_location_assignment PIN_D8 -to sdram_dq[5]
set_location_assignment PIN_C8 -to sdram_dq[6]
set_location_assignment PIN_E7 -to sdram_dq[7]
set_location_assignment PIN_A7 -to sdram_dq[8]
set_location_assignment PIN_B7 -to sdram_dq[9]
set_location_assignment PIN_A6 -to sdram_dq[10]
set_location_assignment PIN_B6 -to sdram_dq[11]
set_location_assignment PIN_A5 -to sdram_dq[12]
set_location_assignment PIN_B5 -to sdram_dq[13]
set_location_assignment PIN_A4 -to sdram_dq[14]
set_location_assignment PIN_B4 -to sdram_dq[15]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_addr[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_addr[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_addr[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_addr[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_addr[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_addr[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_addr[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_addr[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_addr[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_addr[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_addr[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_addr[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_addr[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_ba[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_ba[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_cas_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_cke
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_cs_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dq[15]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dqm[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_dqm[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_ras_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_we_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to pio_key[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to pio_key[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to pio_led[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to pio_led[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to pio_led[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to pio_led[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_BLUE[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_BLUE[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_BLUE[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_BLUE[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_BLUE[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_BLUE[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_BLUE[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_BLUE[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_DE
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_GREEN[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_GREEN[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_GREEN[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_GREEN[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_GREEN[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_GREEN[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_GREEN[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_GREEN[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_HS
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_PWM
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_RED[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_RED[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_RED[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_RED[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_RED[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_RED[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_RED[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_RED[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TFT_VS
set_location_assignment PIN_R11 -to TFT_BLUE[3]
set_location_assignment PIN_T12 -to TFT_BLUE[4]
set_location_assignment PIN_R12 -to TFT_BLUE[5]
set_location_assignment PIN_T13 -to TFT_BLUE[6]
set_location_assignment PIN_R13 -to TFT_BLUE[7]
set_location_assignment PIN_T8 -to TFT_GREEN[2]
set_location_assignment PIN_T9 -to TFT_GREEN[3]
set_location_assignment PIN_R9 -to TFT_GREEN[4]
set_location_assignment PIN_T10 -to TFT_GREEN[5]
set_location_assignment PIN_R10 -to TFT_GREEN[6]
set_location_assignment PIN_T11 -to TFT_GREEN[7]
set_location_assignment PIN_R7 -to TFT_RED[3]
set_location_assignment PIN_T6 -to TFT_RED[4]
set_location_assignment PIN_N14 -to TFT_RED[5]
set_location_assignment PIN_T7 -to TFT_RED[6]
set_location_assignment PIN_P9 -to TFT_RED[7]
set_location_assignment PIN_L9 -to TFT_VS
set_location_assignment PIN_M9 -to TFT_HS
set_location_assignment PIN_P11 -to TFT_PWM
set_location_assignment PIN_N9 -to TFT_DE
set_location_assignment PIN_M10 -to TFT_CLK
