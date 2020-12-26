// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

module top
(
// {ALTERA_ARGS_BEGIN} DO NOT REMOVE THIS LINE!

	input          clk,
	output         sdram_clk,   // sdram_clk.clk
	output  [11:0] sdram_addr,  // sdram.addr
	output  [1:0]  sdram_ba,    // .ba
	output         sdram_cas_n, // .cas_n
	output         sdram_cke,   // .cke
	output         sdram_cs_n,  // .cs_n
	inout   [15:0] sdram_dq,    // .dq
	output  [1:0]  sdram_dqm,   // .dqm
	output         sdram_ras_n, // .ras_n
	output         sdram_we_n,  // .we_n
	output   [0:4] led,
	// signalizacne LED
//	output   [0:11] sig,
	// user interface
	input		[0:2]	button,

//	input  P3_2,
//	input  P3_3,
//	input  P3_4,
//	input  P4_2,
//	input  P5_2,
//	input  P5_3,
//	input  P6_3,
//	input  P6_2,
//	input  P8_3,
//	input  P8_4,
//	input  P8_5,
//	input  P8_6,
//	input  P8_7,
//	input  P8_8,
//	input  P8_9,
//	input  P8_10,
//	input  P8_11,
//	input  P8_12,
//	input  P8_13,
//	input  P8_14,
//	input  P8_15,
//	input  P8_16,
//	input  SDA,
//	output SDC,
//	output uart_tx,
//	input  uart_rx,
	
	// hdmi interface
	output [0:3]	tmds_p,
	output [0:3]	tmds_n
	
// {ALTERA_ARGS_END} DO NOT REMOVE THIS LINE!

);

// {ALTERA_IO_BEGIN} DO NOT REMOVE THIS LINE!



	
// {ALTERA_IO_END} DO NOT REMOVE THIS LINE!
// {ALTERA_MODULE_BEGIN} DO NOT REMOVE THIS LINE!

	//reset generator
	logic	reset;
	logic key;
	
	PushButton_Debouncer button_reset(
		.clk,
		.PB(button[0]),
		.PB_state(reset)
	);
	
	PushButton_Debouncer button_key(
		.clk,
		.PB(button[1]),
		.PB_state(key)
	);
	
	assign led[0] = reset;
	assign led[2] = key;
	//end of reset
	
	//frequency generator
	logic	clk_pixel;
	logic	clk_pixel_x10;
	logic	clk_audio;
	logic	clk_atari;

	pll clock(
		.inclk0(clk),
		.c0(clk_pixel),
		.c1(clk_pixel_x10),
		.c2(clk_audio),
		.c3(clk_atari)
		);
	//end of frequency generator

	Divider	#( 
		.DIVISOR(25000000) 
	) 
	blinky(
		.sig_in(clk_pixel_x10),
		.sig_out(led[1])
	);
	//end of test clock

	//hdmi app
	logic [3:0] o_tmds;
	App app(
		// sdram
		.sdram_addr,  // sdram.addr
		.sdram_ba,    // .ba
		.sdram_cas_n, // .cas_n
		.sdram_cke,   // .cke
		.sdram_cs_n,  // .cs_n
		.sdram_dq,    // .dq
		.sdram_dqm,   // .dqm
		.sdram_ras_n, // .ras_n
		.sdram_we_n,
		// pll
		.rst_in(reset),
		.clk_50(clk),
		.clk_pixel, 
		.clk_pixel_x10, 
		.clk_audio,
		// hdmi interface
		.o_tmds, 
		// user interface
		.key, 
		.led(led[3])
//		,
//		.sig
		);
		
	//hdmi output 
	// If Altera synthesis, a true differential buffer is built with altera_gpio_lite from the Intel IP Catalog.
	// If simulation, a mocked signal inversion is used.
	
	altiobuf tdms(
		.datain(o_tmds),
		.dataout(tmds_p), 
		.dataout_b(tmds_n)
	);
	
	
// {ALTERA_MODULE_END} DO NOT REMOVE THIS LINE!
endmodule

