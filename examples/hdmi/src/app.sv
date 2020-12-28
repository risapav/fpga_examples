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
	
	// visible screen coordinate
	logic [BIT_WIDTH-1:0] cx='0, cy='0, bx='0, by='0;
	// vstup pre video data
	logic [15:0] rgb, brgb; 
	logic [11:0] aux = 12'h0;
	//video timing
	logic vde, ade;

	logic max_bx = '0, max_by = '0;
	always_comb begin
		max_bx = (bx == 640);
		max_by = (by == 480);
	end
//
	always_ff @(posedge clk_50) begin
		if(max_bx) begin
			bx <= '0;
			if(max_by) 
				by <= '0;
			else
				by ++;			
		end
		else begin
			bx++;				
		end
	end
//	
	logic video = '0;
	Rgb 
	#(
		.BIT_WIDTH(BIT_WIDTH)
	)
	rgb_gen(
		.rst_n(!rst_in),
		.clk(clk_50),
		//button to change generated picture
		.key, 
		// xy position inside visible frame
		.i_vde('1),
		.o_vde(video),
		.i_cx(bx), 
		.i_cy(by), 
		.o_rgb(brgb)	// vystup pre video data
	);		
//
	logic [23:0] crgb = '0;
	
	always_comb begin
		crgb[23:16] = rgb[15:11] * 8; 
		crgb[15:8] = rgb[10:5] * 4;
		crgb[7:0] =  rgb[4:0] * 8;
	end
	
	Hdmi #(
		.GENERATED_CLOCK(1'b1),
		.BIT_WIDTH(BIT_WIDTH),
		.DVI_OUTPUT('1)
	)hdmi (
		.rst_n(!rst_in),
		.clk_pixel,
		.clk_pixel_x10,
		// vstup pre video data
		.i_rgb(crgb),
		// xy position inside visible frame
		.o_cur({cx,cy}), 
		.o_vde(vde),
		// vstup pre aux/audio data
		.i_aux(aux),			
		.o_ade(ade),
		// These outputs go to your HDMI port
		.o_tmds
	);
//

// dualport async ram
	dual_port_ram #(
		.DATA_WIDTH(16),
		.ADDR_WIDTH(2*BIT_WIDTH)
	) dp_ram
	(
		.wr_clk_i(clk_50),
		.wr_addr_i({bx,by}),
		.wr_data_i(brgb),
		.wr_i(video),
		.rd_clk_i(clk_pixel),
		.rd_addr_i({cx,cy}),
		.rd_data_o(rgb),
		.rd_i(vde)			
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
