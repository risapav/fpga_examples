# Legal Notice: (C)2018 Altera Corporation. All rights reserved.  Your
# use of Altera Corporation's design tools, logic functions and other
# software and tools, and its AMPP partner logic functions, and any
# output files any of the foregoing (including device programming or
# simulation files), and any associated documentation or information are
# expressly subject to the terms and conditions of the Altera Program
# License Subscription Agreement or other applicable license agreement,
# including, without limitation, that your use is for the sole purpose
# of programming logic devices manufactured by Altera and sold by Altera
# or its authorized distributors.  Please refer to the applicable
# agreement for further details.

#**************************************************************
# Timequest JTAG clock definition
#   Uncommenting the following lines will define the JTAG
#   clock in TimeQuest Timing Analyzer
#**************************************************************

#create_clock -period 10MHz {altera_reserved_tck}
#set_clock_groups -asynchronous -group {altera_reserved_tck}

#**************************************************************
# Set TCL Path Variables 
#**************************************************************

set 	mysystem_nios2 	mysystem_nios2:*
set 	mysystem_nios2_oci 	mysystem_nios2_nios2_oci:the_mysystem_nios2_nios2_oci
set 	mysystem_nios2_oci_break 	mysystem_nios2_nios2_oci_break:the_mysystem_nios2_nios2_oci_break
set 	mysystem_nios2_ocimem 	mysystem_nios2_nios2_ocimem:the_mysystem_nios2_nios2_ocimem
set 	mysystem_nios2_oci_debug 	mysystem_nios2_nios2_oci_debug:the_mysystem_nios2_nios2_oci_debug
set 	mysystem_nios2_wrapper 	mysystem_nios2_jtag_debug_module_wrapper:the_mysystem_nios2_jtag_debug_module_wrapper
set 	mysystem_nios2_jtag_tck 	mysystem_nios2_jtag_debug_module_tck:the_mysystem_nios2_jtag_debug_module_tck
set 	mysystem_nios2_jtag_sysclk 	mysystem_nios2_jtag_debug_module_sysclk:the_mysystem_nios2_jtag_debug_module_sysclk
set 	mysystem_nios2_oci_path 	 [format "%s|%s" $mysystem_nios2 $mysystem_nios2_oci]
set 	mysystem_nios2_oci_break_path 	 [format "%s|%s" $mysystem_nios2_oci_path $mysystem_nios2_oci_break]
set 	mysystem_nios2_ocimem_path 	 [format "%s|%s" $mysystem_nios2_oci_path $mysystem_nios2_ocimem]
set 	mysystem_nios2_oci_debug_path 	 [format "%s|%s" $mysystem_nios2_oci_path $mysystem_nios2_oci_debug]
set 	mysystem_nios2_jtag_tck_path 	 [format "%s|%s|%s" $mysystem_nios2_oci_path $mysystem_nios2_wrapper $mysystem_nios2_jtag_tck]
set 	mysystem_nios2_jtag_sysclk_path 	 [format "%s|%s|%s" $mysystem_nios2_oci_path $mysystem_nios2_wrapper $mysystem_nios2_jtag_sysclk]
set 	mysystem_nios2_jtag_sr 	 [format "%s|*sr" $mysystem_nios2_jtag_tck_path]

#**************************************************************
# Set False Paths
#**************************************************************

set_false_path -from [get_keepers *$mysystem_nios2_oci_break_path|break_readreg*] -to [get_keepers *$mysystem_nios2_jtag_sr*]
set_false_path -from [get_keepers *$mysystem_nios2_oci_debug_path|*resetlatch]     -to [get_keepers *$mysystem_nios2_jtag_sr[33]]
set_false_path -from [get_keepers *$mysystem_nios2_oci_debug_path|monitor_ready]  -to [get_keepers *$mysystem_nios2_jtag_sr[0]]
set_false_path -from [get_keepers *$mysystem_nios2_oci_debug_path|monitor_error]  -to [get_keepers *$mysystem_nios2_jtag_sr[34]]
set_false_path -from [get_keepers *$mysystem_nios2_ocimem_path|*MonDReg*] -to [get_keepers *$mysystem_nios2_jtag_sr*]
set_false_path -from *$mysystem_nios2_jtag_sr*    -to *$mysystem_nios2_jtag_sysclk_path|*jdo*
set_false_path -from sld_hub:*|irf_reg* -to *$mysystem_nios2_jtag_sysclk_path|ir*
set_false_path -from sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1] -to *$mysystem_nios2_oci_debug_path|monitor_go
