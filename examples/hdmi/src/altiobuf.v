// megafunction wizard: %ALTIOBUF%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altiobuf_out 

// ============================================================
// File Name: altiobuf.v
// Megafunction Name(s):
// 			altiobuf_out
//
// Simulation Library Files(s):
// 			cycloneive
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 20.1.0 Build 711 06/05/2020 SJ Lite Edition
// ************************************************************


//Copyright (C) 2020  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and any partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details, at
//https://fpgasoftware.intel.com/eula.


//altiobuf_out CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Cyclone IV E" ENABLE_BUS_HOLD="FALSE" LEFT_SHIFT_SERIES_TERMINATION_CONTROL="FALSE" NUMBER_OF_CHANNELS=4 OPEN_DRAIN_OUTPUT="FALSE" PSEUDO_DIFFERENTIAL_MODE="FALSE" USE_DIFFERENTIAL_MODE="TRUE" USE_OE="FALSE" USE_TERMINATION_CONTROL="FALSE" datain dataout dataout_b
//VERSION_BEGIN 20.1 cbx_altiobuf_out 2020:06:05:12:04:51:SJ cbx_mgl 2020:06:05:12:11:10:SJ cbx_stratixiii 2020:06:05:12:04:51:SJ cbx_stratixv 2020:06:05:12:04:51:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = cycloneive_io_obuf 4 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  altiobuf_iobuf_out_fst
	( 
	datain,
	dataout,
	dataout_b) ;
	input   [3:0]  datain;
	output   [3:0]  dataout;
	output   [3:0]  dataout_b;

	wire  [3:0]   wire_obufa_i;
	wire  [3:0]   wire_obufa_o;
	wire  [3:0]   wire_obufa_obar;
	wire  [3:0]   wire_obufa_oe;
	wire  [3:0]  oe_w;

	cycloneive_io_obuf   obufa_0
	( 
	.i(wire_obufa_i[0:0]),
	.o(wire_obufa_o[0:0]),
	.obar(wire_obufa_obar[0:0]),
	.oe(wire_obufa_oe[0:0])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.seriesterminationcontrol({16{1'b0}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devoe(1'b1)
	// synopsys translate_on
	);
	defparam
		obufa_0.bus_hold = "false",
		obufa_0.open_drain_output = "false",
		obufa_0.lpm_type = "cycloneive_io_obuf";
	cycloneive_io_obuf   obufa_1
	( 
	.i(wire_obufa_i[1:1]),
	.o(wire_obufa_o[1:1]),
	.obar(wire_obufa_obar[1:1]),
	.oe(wire_obufa_oe[1:1])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.seriesterminationcontrol({16{1'b0}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devoe(1'b1)
	// synopsys translate_on
	);
	defparam
		obufa_1.bus_hold = "false",
		obufa_1.open_drain_output = "false",
		obufa_1.lpm_type = "cycloneive_io_obuf";
	cycloneive_io_obuf   obufa_2
	( 
	.i(wire_obufa_i[2:2]),
	.o(wire_obufa_o[2:2]),
	.obar(wire_obufa_obar[2:2]),
	.oe(wire_obufa_oe[2:2])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.seriesterminationcontrol({16{1'b0}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devoe(1'b1)
	// synopsys translate_on
	);
	defparam
		obufa_2.bus_hold = "false",
		obufa_2.open_drain_output = "false",
		obufa_2.lpm_type = "cycloneive_io_obuf";
	cycloneive_io_obuf   obufa_3
	( 
	.i(wire_obufa_i[3:3]),
	.o(wire_obufa_o[3:3]),
	.obar(wire_obufa_obar[3:3]),
	.oe(wire_obufa_oe[3:3])
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.seriesterminationcontrol({16{1'b0}})
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devoe(1'b1)
	// synopsys translate_on
	);
	defparam
		obufa_3.bus_hold = "false",
		obufa_3.open_drain_output = "false",
		obufa_3.lpm_type = "cycloneive_io_obuf";
	assign
		wire_obufa_i = datain,
		wire_obufa_oe = oe_w;
	assign
		dataout = wire_obufa_o,
		dataout_b = wire_obufa_obar,
		oe_w = {4{1'b1}};
endmodule //altiobuf_iobuf_out_fst
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module altiobuf (
	datain,
	dataout,
	dataout_b);

	input	[3:0]  datain;
	output	[3:0]  dataout;
	output	[3:0]  dataout_b;

	wire [3:0] sub_wire0;
	wire [3:0] sub_wire1;
	wire [3:0] dataout = sub_wire0[3:0];
	wire [3:0] dataout_b = sub_wire1[3:0];

	altiobuf_iobuf_out_fst	altiobuf_iobuf_out_fst_component (
				.datain (datain),
				.dataout (sub_wire0),
				.dataout_b (sub_wire1));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: CONSTANT: enable_bus_hold STRING "FALSE"
// Retrieval info: CONSTANT: left_shift_series_termination_control STRING "FALSE"
// Retrieval info: CONSTANT: number_of_channels NUMERIC "4"
// Retrieval info: CONSTANT: open_drain_output STRING "FALSE"
// Retrieval info: CONSTANT: pseudo_differential_mode STRING "FALSE"
// Retrieval info: CONSTANT: use_differential_mode STRING "TRUE"
// Retrieval info: CONSTANT: use_oe STRING "FALSE"
// Retrieval info: CONSTANT: use_termination_control STRING "FALSE"
// Retrieval info: USED_PORT: datain 0 0 4 0 INPUT NODEFVAL "datain[3..0]"
// Retrieval info: USED_PORT: dataout 0 0 4 0 OUTPUT NODEFVAL "dataout[3..0]"
// Retrieval info: USED_PORT: dataout_b 0 0 4 0 OUTPUT NODEFVAL "dataout_b[3..0]"
// Retrieval info: CONNECT: @datain 0 0 4 0 datain 0 0 4 0
// Retrieval info: CONNECT: dataout 0 0 4 0 @dataout 0 0 4 0
// Retrieval info: CONNECT: dataout_b 0 0 4 0 @dataout_b 0 0 4 0
// Retrieval info: GEN_FILE: TYPE_NORMAL altiobuf.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL altiobuf.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL altiobuf.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL altiobuf.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL altiobuf_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL altiobuf_bb.v TRUE
// Retrieval info: LIB_FILE: cycloneive
