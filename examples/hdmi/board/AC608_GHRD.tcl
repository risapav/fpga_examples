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
# File: D:\fpga\AC608\AC608_E15_SDRAM_LED\AC608_E15_SDRAM_LED\AC608_GHRD.tcl
# Generated on: Tue May 21 22:32:32 2019

package require ::quartus::project

#clock
set_location_assignment PIN_E15 -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk

#led
set_location_assignment PIN_L3 -to led[0]
set_location_assignment PIN_J13 -to led[1]
set_location_assignment PIN_G16 -to led[2]
set_location_assignment PIN_B16 -to led[3]
set_location_assignment PIN_F8 -to led[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led[4]

#buttons
set_location_assignment PIN_E1 -to button[0]
set_location_assignment PIN_B8 -to button[1]
set_location_assignment PIN_A8 -to button[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to button[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to button[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to button[2]

#hdmi
set_location_assignment PIN_L2 -to tmds_p[0]
set_location_assignment PIN_N2 -to tmds_p[1]
set_location_assignment PIN_P2 -to tmds_p[2]
set_location_assignment PIN_K2 -to tmds_p[3]
set_location_assignment PIN_L1 -to tmds_n[0]
set_location_assignment PIN_N1 -to tmds_n[1]
set_location_assignment PIN_P1 -to tmds_n[2]
set_location_assignment PIN_K1 -to tmds_n[3]
set_instance_assignment -name IO_STANDARD LVDS_E_3R -to tmds_p[0]
set_instance_assignment -name IO_STANDARD LVDS_E_3R -to tmds_p[1]
set_instance_assignment -name IO_STANDARD LVDS_E_3R -to tmds_p[2]
set_instance_assignment -name IO_STANDARD LVDS_E_3R -to tmds_p[3]
set_instance_assignment -name IO_STANDARD LVDS_E_3R -to tmds_n[0]
set_instance_assignment -name IO_STANDARD LVDS_E_3R -to tmds_n[1]
set_instance_assignment -name IO_STANDARD LVDS_E_3R -to tmds_n[2]
set_instance_assignment -name IO_STANDARD LVDS_E_3R -to tmds_n[3]

#sdram
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

#P3
set_location_assignment PIN_R8 -to P3_2 -disable
set_location_assignment PIN_T8 -to P3_3 -disable
set_location_assignment PIN_R9 -to P3_4 -disable
#P4
set_location_assignment PIN_E16 -to P4_2 -disable
#P5
set_location_assignment PIN_A9 -to P5_2 -disable
set_location_assignment PIN_B9 -to P5_3 -disable
#P6
set_location_assignment PIN_M15 -to P6_3 -disable
set_location_assignment PIN_M16 -to P6_2 -disable
#P8
set_location_assignment PIN_R1 -to P8_3 -disable
set_location_assignment PIN_T2 -to P8_4 -disable
set_location_assignment PIN_R3 -to P8_5 -disable
set_location_assignment PIN_T3 -to P8_6 -disable
set_location_assignment PIN_T9 -to P8_7 -disable
set_location_assignment PIN_R4 -to P8_8 -disable
set_location_assignment PIN_T4 -to P8_9 -disable
set_location_assignment PIN_R5 -to P8_10 -disable
set_location_assignment PIN_T5 -to P8_11 -disable
set_location_assignment PIN_R6 -to P8_12 -disable
set_location_assignment PIN_T6 -to P8_13 -disable
set_location_assignment PIN_R7 -to P8_14 -disable
set_location_assignment PIN_T7 -to P8_15 -disable
set_location_assignment PIN_R10 -to P8_16 -disable
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_3
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_4
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_5
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_6
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_7
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_8
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_9
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_10
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_11
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_12
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_13
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_14
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_15
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to P8_16

#i2c
set_location_assignment PIN_C9 -to SDA
set_location_assignment PIN_D9 -to SDC
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDA
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDC

#uart
set_location_assignment PIN_R14 -to uart_tx
set_location_assignment PIN_T13 -to uart_rx
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to uart_tx
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to uart_rx
