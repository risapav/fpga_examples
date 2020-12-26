//App app(.pixel_clk(clk_25), .pixel_clk10(clk_250), .clk(clk_32));
//store it in an array bit[7:0] img[3][640][480] ; 3 is for R,G,B values , 640 and 480 is to match the pixel size.

module App (
	input logic rst_in,
	input logic clk_50, 
	input logic clk_pixel, 
	input logic clk_pixel_x10, 
	input logic clk_audio,
	// sdram
	output  [11:0] sdram_addr,  // sdram.addr
	output  [1:0]  sdram_ba,    // .ba
	output         sdram_cas_n, // .cas_n
	output         sdram_cke,   // .cke
	output         sdram_cs_n,  // .cs_n
	inout   [15:0] sdram_dq,    // .dq
	output  [1:0]  sdram_dqm,   // .dqm
	output         sdram_ras_n, // .ras_n
	output         sdram_we_n,
	// These outputs go to your HDMI port
	output logic [3:0] o_tmds,
	// user interface
	input  logic key,
	output logic led
//	,
//	output logic [0:11] sig
	);
	localparam BIT_WIDTH = 10;
	
	// picture 
	logic [BIT_WIDTH-1:0] cx, cy;
	// vstup pre video data
	logic [23:0] rgb = 24'h0; 
	logic [11:0] aux = 12'h0;
	//video timing
	logic vde, ade;	
//
	Hdmi #(
		.GENERATED_CLOCK(1'b1),
		.BIT_WIDTH(BIT_WIDTH),
		.DVI_OUTPUT(1'b1)
	)hdmi (
		.rst_n(!rst_in),
		.clk_pixel,
		.clk_pixel_x10,
		// xy position inside visible frame
		.o_c({cx, cy}), 
		.o_vde(vde),
		.o_ade(ade),
		// vstup pre video data
		.i_rgb(rgb),
		// vstup pre aux/audio data
		.i_aux(aux),
		// These outputs go to your HDMI port
		.o_tmds
	);
	

//	always @(posedge clk_audio)
//		audio_data <= '{audio_data[0] + 16'sd1, audio_data[1] - 16'sd1};

	//generate sound
//	logic [15:0] audio_data [1:0] = '{16'sd0, 16'sd0};
	localparam AUDIO_BIT_WIDTH = 16;
	localparam AUDIO_RATE = 44100;
	localparam WAVE_RATE = 441;

	logic [AUDIO_BIT_WIDTH-1:0] audio_data [1:0];
	logic [AUDIO_BIT_WIDTH-1:0] audio_sample_word_dampened; // This is to avoid giving you a heart attack -- it'll be really loud if it uses the full dynamic range.
	assign audio_sample_word_dampened = audio_data [1] >> 9;

//	sawtooth #(
//		.AUDIO_BIT_WIDTH(AUDIO_BIT_WIDTH), 
//		.SAMPLE_RATE(AUDIO_RATE), 
//		.WAVE_RATE(WAVE_RATE)
//	) 
//	sawtooth (
//		.clk(clk_audio), 
//		.audio_data
//	);

	Rgb 
	#(
		.BIT_WIDTH(BIT_WIDTH)
	)
	rgb_gen(
		.rst_n(!rst_in),
		.clk(clk_pixel),
		//button to change generated picture
		.key, 
		// xy position inside visible frame
		.i_vde(vde),
		.i_cx(cx), 
		.i_cy(cy), 
		.o_rgb(rgb)	// vystup pre video data
	);	

	//---------------------
	// sdram
	//---------------------
	localparam DATA_WIDTH = 32;
	localparam ADDR_WIDTH = 12;
	logic [ADDR_WIDTH-1:0]addr;
	logic	[DATA_WIDTH-1:0]data;
	logic	we;
	logic	req;
	logic	ack;
	logic	valid;
	logic	[DATA_WIDTH-1:0]q;
	
	sdram 
	#(
		.CLK_FREQ(50.000),
		.ADDR_WIDTH(ADDR_WIDTH),
		.DATA_WIDTH(DATA_WIDTH)
	)
	sdram(
		.reset(rst_in),
		.clk(clk_50),
		
		.addr(addr),
		.data(data),
		.we(we),
		.req(req),
		.ack(ack),
		.valid(valid),
		.q(q),
	
		.sdram_a(sdram_addr),
		.sdram_ba(sdram_ba),
		.sdram_dq(sdram_dq),
		.sdram_cke(sdram_cke),
		.sdram_cs_n(sdram_cs_n),
		.sdram_ras_n(sdram_ras_n),
		.sdram_cas_n(sdram_cas_n),
		.sdram_we_n(sdram_we_n),
		.sdram_dqm(sdram_dqm)
	);


endmodule
