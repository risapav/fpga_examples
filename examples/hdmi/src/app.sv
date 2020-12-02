//App app(.pixel_clk(clk_25), .pixel_clk10(clk_250), .clk(clk_32));
//store it in an array bit[7:0] img[3][640][480] ; 3 is for R,G,B values , 640 and 480 is to match the pixel size.

module Video_timing
#(
	// These settings are for 720p, assuming clk is running at 74.25 MHz
	parameter VIDEO_H_SYNC_PIXELS =  16'd40,
	parameter VIDEO_H_BP_PIXELS   =  16'd220,
	parameter VIDEO_H_ACTIVE_PIXELS =16'd1280,
	parameter VIDEO_H_FP_PIXELS   =  16'd110,
	parameter VIDEO_H_SYNC_ACTIVE =  1'b1,
	parameter VIDEO_V_SYNC_LINES  =  16'd5,
	parameter VIDEO_V_BP_LINES    =  16'd20,
	parameter VIDEO_V_ACTIVE_LINES = 16'd720,
	parameter VIDEO_V_FP_LINES   =   16'd5,
	parameter VIDEO_V_SYNC_ACTIVE =  1'b1
)
(
	input wire reset,
	input wire clk,

	output logic [9:0] x,
	output logic [9:0] y,

	output reg hsync,
	output reg vsync,
	output reg active
);

    // State constants for our two timing state machines (one horizontal, one vertical)
    enum { VIDEO_SYNC,  VIDEO_BACKPORCH , VIDEO_ACTIVE , VIDEO_FRONTPORCH } state_h, state_v;
	 	 
	 logic [15:0] count_h; // 1-based so we will stop when count_h is the total pixels for the current state
	 logic [15:0] count_v; // 1-based so we will stop when count_v is the total lines for the current state
	 
	 logic inc_v = 1'b0;
	 
	
   // Change outputs on clock.
    // (These update one clock step behind everything else below, but that's
    //  okay because the lengths of all the periods are still correct.)
    always_ff @(posedge clk) begin
        if (reset == 1'b1) begin
            hsync  <= ~VIDEO_H_SYNC_ACTIVE;
            vsync  <= ~VIDEO_V_SYNC_ACTIVE;
            active <= 1'b0;
            x      <= 16'd0;
            y      <= 16'd0;
        end else begin
            hsync  <= (state_h == VIDEO_SYNC) ^ (~VIDEO_H_SYNC_ACTIVE);
            vsync  <= (state_v == VIDEO_SYNC) ^ (~VIDEO_V_SYNC_ACTIVE);
            active <= (state_h == VIDEO_ACTIVE) && (state_v == VIDEO_ACTIVE);
            x      <= count_h - 1;
            y      <= count_v - 1;
         end
    end

    // Horizontal state machine
    always_ff @(posedge clk) begin
        if (reset == 1'b1) begin
            count_h <= 16'b1;
            state_h <= VIDEO_FRONTPORCH;
        end else begin
            inc_v <= 0;
            count_h <= count_h + 16'd1;

            case (state_h)
                VIDEO_SYNC: begin
                    if (count_h == VIDEO_H_SYNC_PIXELS) begin
                        state_h <= VIDEO_BACKPORCH;
                        count_h <= 16'b1;
                    end
                end
                VIDEO_BACKPORCH: begin
                    if (count_h == VIDEO_H_BP_PIXELS) begin
                        state_h <= VIDEO_ACTIVE;
                        count_h <= 16'b1;
                    end
                end
                VIDEO_ACTIVE: begin
                    if (count_h == VIDEO_H_ACTIVE_PIXELS) begin
                        state_h <= VIDEO_FRONTPORCH;
                        count_h <= 16'b1;
                    end
                end
                VIDEO_FRONTPORCH: begin
                    if (count_h == VIDEO_H_FP_PIXELS) begin
                        state_h <= VIDEO_SYNC;
                        count_h <= 16'b1;
                        inc_v <= 1;
                    end
                end
            endcase
        end
    end

    // Vertical state machine
    always_ff @(posedge clk) begin
        if (reset == 1'b1) begin
            count_v <= 16'b1;
            state_v <= VIDEO_FRONTPORCH;
        end else begin
            if (inc_v) begin
                count_v <= count_v + 16'd1;
                case (state_v)
                    VIDEO_SYNC: begin
                        if (count_v == VIDEO_V_SYNC_LINES) begin
                            state_v <= VIDEO_BACKPORCH;
                            count_v <= 16'b1;
                        end
                    end
                    VIDEO_BACKPORCH: begin
                        if (count_v == VIDEO_V_BP_LINES) begin
                            state_v <= VIDEO_ACTIVE;
                            count_v <= 16'b1;
                        end
                    end
                    VIDEO_ACTIVE: begin
                        if (count_v == VIDEO_V_ACTIVE_LINES) begin
                            state_v <= VIDEO_FRONTPORCH;
                            count_v <= 16'b1;
                        end
                    end
                    VIDEO_FRONTPORCH: begin
                        if (count_v == VIDEO_V_FP_LINES) begin
                            state_v <= VIDEO_SYNC;
                            count_v <= 16'b1;
                        end
                    end
                endcase
            end
        end
    end	
	 
	 
endmodule

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
	output logic [0:3] led
	);


	//video timing
	logic hsync, vsync, active;
	logic [9:0] x,y;
	
	Video_timing video_timing(
	
		.reset(rst_in),
		.clk(clk_pixel),

		.x(x),
		.y(y),

		.hsync(hsync),
		.vsync(vsync),
		.active(active)
	
	);
	
	// picture 
	logic [9:0] cx, cy, screen_start_x, screen_start_y, frame_width, frame_height, screen_width, screen_height;
	// video data
	logic [23:0] video_data; // vstup pre video data

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

	sawtooth #(
		.AUDIO_BIT_WIDTH(AUDIO_BIT_WIDTH), 
		.SAMPLE_RATE(AUDIO_RATE), 
		.WAVE_RATE(WAVE_RATE)
	) 
	sawtooth (
		.clk(clk_audio), 
		.audio_data
	);

	Rgb rgb(
		.rst(rst_in), // reset button
		.key, //button to change generated picture
		.clk_pixel,
		.cx, .cy, // xy position inside visible frame
		.rgb(video_data)	// vystup pre video data
	);
		
	//---------------------
	// hdmi interface
	//---------------------
	hdmi #(
		.DVI_OUTPUT(0),
		.VIDEO_ID_CODE(1), 
		.AUDIO_RATE(AUDIO_RATE), 
		.AUDIO_BIT_WIDTH(AUDIO_BIT_WIDTH)
	)
	hdmi_out
	(
		//.rst(rst_in),
		.clk_pixel_x10,
		.clk_pixel,
		.clk_audio,
		.rgb(video_data), // vstup pre video data
		.audio_data, // vstup pre audio data

		// These outputs go to your HDMI port
		.o_tmds,

		// All outputs below this line stay inside the FPGA
		// They are used (by you) to pick the color each pixel should have
		// i.e. always_ff @(posedge pixel_clk) rgb <= {8'd0, 8'(cx), 8'(cy)};
		.cx,
		.cy,

		// the screen is at the bottom right corner of the frame, namely:
		// frame_width = screen_start_x + screen_width
		// frame_height = screen_start_y + screen_height
		.frame_width,
		.frame_height,
		.screen_width,
		.screen_height,
		.screen_start_x,
		.screen_start_y
	);	
	
	// sdram
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
