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
# File: D:\fpga\AC608\AC601_GHRD\AC608_GHRD.tcl
# Generated on: Sun Sep 23 11:23:29 2018

package require ::quartus::project

set_location_assignment PIN_E15 -to clk
set_location_assignment PIN_E1 -to reset_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to reset_n
set_location_assignment PIN_A7 -to sdram_clk
set_location_assignment PIN_B7 -to sdram_cke
set_location_assignment PIN_E7 -to sdram_cs_n
set_location_assignment PIN_E8 -to sdram_we_n
set_location_assignment PIN_D8 -to sdram_cas_n
set_location_assignment PIN_C8 -to sdram_ras_n
set_location_assignment PIN_C6 -to sdram_ba[0]
set_location_assignment PIN_D6 -to sdram_ba[1]
set_location_assignment PIN_D5 -to sdram_addr[0]
set_location_assignment PIN_C3 -to sdram_addr[1]
set_location_assignment PIN_D3 -to sdram_addr[2]
set_location_assignment PIN_A2 -to sdram_addr[3]
set_location_assignment PIN_B3 -to sdram_addr[4]
set_location_assignment PIN_A3 -to sdram_addr[5]
set_location_assignment PIN_B4 -to sdram_addr[6]
set_location_assignment PIN_A4 -to sdram_addr[7]
set_location_assignment PIN_B5 -to sdram_addr[8]
set_location_assignment PIN_A5 -to sdram_addr[9]
set_location_assignment PIN_E6 -to sdram_addr[10]
set_location_assignment PIN_B6 -to sdram_addr[11]
set_location_assignment PIN_A10 -to sdram_dqm[1]
set_location_assignment PIN_E9 -to sdram_dqm[0]
set_location_assignment PIN_D14 -to sdram_dq[0]
set_location_assignment PIN_C14 -to sdram_dq[1]
set_location_assignment PIN_D12 -to sdram_dq[2]
set_location_assignment PIN_B13 -to sdram_dq[3]
set_location_assignment PIN_E10 -to sdram_dq[4]
set_location_assignment PIN_B12 -to sdram_dq[5]
set_location_assignment PIN_D11 -to sdram_dq[6]
set_location_assignment PIN_C11 -to sdram_dq[7]
set_location_assignment PIN_B10 -to sdram_dq[8]
set_location_assignment PIN_A11 -to sdram_dq[9]
set_location_assignment PIN_B11 -to sdram_dq[10]
set_location_assignment PIN_A12 -to sdram_dq[11]
set_location_assignment PIN_A13 -to sdram_dq[12]
set_location_assignment PIN_A14 -to sdram_dq[13]
set_location_assignment PIN_B14 -to sdram_dq[14]
set_location_assignment PIN_A15 -to sdram_dq[15]
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
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to spi_clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to spi_cs
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to spi_di
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to spi_do
set_location_assignment PIN_L15 -to lcd_db[15]
set_location_assignment PIN_L16 -to lcd_db[14]
set_location_assignment PIN_P11 -to lcd_db[13]
set_location_assignment PIN_N11 -to lcd_db[12]
set_location_assignment PIN_N12 -to lcd_db[11]
set_location_assignment PIN_P14 -to lcd_db[10]
set_location_assignment PIN_N14 -to lcd_db[9]
set_location_assignment PIN_L13 -to lcd_db[8]
set_location_assignment PIN_K16 -to lcd_db[7]
set_location_assignment PIN_J15 -to lcd_db[6]
set_location_assignment PIN_J16 -to lcd_db[5]
set_location_assignment PIN_L14 -to lcd_db[4]
set_location_assignment PIN_J14 -to lcd_db[3]
set_location_assignment PIN_K15 -to lcd_db[2]
set_location_assignment PIN_F16 -to lcd_db[1]
set_location_assignment PIN_G15 -to lcd_db[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_bl
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_cs
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[15]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_db[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_rd
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_rs
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_rst
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to lcd_wr
set_location_assignment PIN_C15 -to lcd_cs
set_location_assignment PIN_N16 -to lcd_bl
set_location_assignment PIN_D16 -to lcd_rd
set_location_assignment PIN_C16 -to lcd_rs
set_location_assignment PIN_F15 -to lcd_rst
set_location_assignment PIN_D15 -to lcd_wr
