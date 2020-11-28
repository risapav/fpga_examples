//App app(.pixel_clk(clk_25), .pixel_clk10(clk_250), .clk(clk_32));
//store it in an array bit[7:0] img[3][640][480] ; 3 is for R,G,B values , 640 and 480 is to match the pixel size.
module Rgb (
	input logic rst, //reset button
	input logic key, // button to change picture
	input logic clk_pixel, // pixel clock
	input [9:0] cx, cy, // xy position inside visible frame
	output logic [23:0] rgb // vystup pre video data
	);
	
	parameter Hde_start=0;
	
	logic [15 : 0] grid_data_1;
	logic[15 : 0] grid_data_2;
	logic[15 : 0] bar_data;
	enum logic[3 : 0] {_01, _02, _03, _04, _05, _06, _07, _08, _09, _0A, _0B, _0C, _0D, _0E, _0F } state = _01, next;

	logic[4 : 0]  vga_r_reg;
	logic[5 : 0]  vga_g_reg;
	logic[4 : 0]  vga_b_reg;  
	
	logic [19:0] key1_counter;                 //按键检测寄存器

	logic [12:0]  bar_interval;
	
	parameter H_ActivePix=640;
	assign	bar_interval 	= H_ActivePix[15: 3];

	//----------------------------------------------------------------
	////////// generovanie mriezky
	//----------------------------------------------------------------	
	always_ff @(negedge clk_pixel)  
		begin
			if ((cx[4]==1'b1) ^ (cy[4]==1'b1))            //产生小格子图像
				grid_data_1<= 16'h0000;
			else
				grid_data_1<= 16'hffff;

			if ((cx[6]==1'b1) ^ (cy[6]==1'b1))            //产生大格子图像 
				grid_data_2<=16'h0000;
			else
				grid_data_2<=16'hffff; 

		end
	
	
//----------------------------------------------------------------
////////// generovanie testovacieho obrazka
//----------------------------------------------------------------
	always_ff @(negedge clk_pixel)   
		begin
			if (cx==Hde_start)            
				bar_data<= 16'hf800;              //cervena farba
			else if (cx==Hde_start + bar_interval)
				bar_data<= 16'h07e0;              //zelena lista				 
			else if (cx==Hde_start + bar_interval*2)            
				bar_data<=16'h001f;               //modra farba
			else if (cx==Hde_start + bar_interval*3)         
				bar_data<=16'hf81f;               //fialova farba
			else if (cx==Hde_start + bar_interval*4)           
				bar_data<=16'hffe0;               //zlta farba
			else if (cx==Hde_start + bar_interval*5)            
				bar_data<=16'h07ff;               //azurova farba
			else if (cx==Hde_start + bar_interval*6)             
				bar_data<=16'hffff;               //biela farba
			else if (cx==Hde_start + bar_interval*7)            
				bar_data<=16'hfc00;               //orandzova farba
			else if (cx==Hde_start + bar_interval*8)              
				bar_data<=16'h0000;               //zvysok cierna

		end
	
//----------------------------------------------------------------
////////// VGA vyber obrazka
//----------------------------------------------------------------
 //LCD vyber datoveho signalu
	always_ff @(posedge clk_pixel)
		state <= rst ? _01 : next;

	always_comb	
		case(state)
			_01:  if(key) next = _02; else next = _01;
			_02:  if(key) next = _03; else next = _02;
			_03:  if(key) next = _04; else next = _03; 
			_04:  if(key) next = _05; else next = _04; 
			_05:  if(key) next = _06; else next = _05; 
			_06:  if(key) next = _07; else next = _06; 
			_07:  if(key) next = _08; else next = _07; 
			_08:  if(key) next = _09; else next = _08; 
			_09:  if(key) next = _0A; else next = _09; 
			_0A:  if(key) next = _0B; else next = _0A; 
			_0B:  if(key) next = _0C; else next = _0B; 
			_0C:  if(key) next = _0D; else next = _0C; 
			_0D:  if(key) next = _0E; else next = _0D; 
			_0E:  if(key) next = _01; else next = _0E; 
			default: next = _01;
		endcase
	
	always_ff @(negedge clk_pixel) begin
		case(state)
		_01:begin
				vga_r_reg<=0;                        //cierny
				vga_g_reg<=0;
				vga_b_reg<=0;
			end
		_02:begin
				vga_r_reg<=5'b11111;                 //biely
				vga_g_reg<=6'b111111;
				vga_b_reg<=5'b11111;
			end
		_03:begin
				vga_r_reg<=5'b11111;                 //cerveny
				vga_g_reg<=0;
				vga_b_reg<=0;  
			end			  
		_04:begin
				vga_r_reg<=0;                        //zeleny
				vga_g_reg<=6'b111111;
				vga_b_reg<=0; 
			end					  
		_05:begin     
				vga_r_reg<=0;                        //modry
				vga_g_reg<=0;
				vga_b_reg<=5'b11111;
			end
		_06:begin     
				vga_r_reg<=grid_data_1[15:11];       // mriezka1
				vga_g_reg<=grid_data_1[10:5];
				vga_b_reg<=grid_data_1[4:0];
			end					  
		_07:begin    
				vga_r_reg<=grid_data_2[15:11];       // mriezka2
				vga_g_reg<=grid_data_2[10:5];
				vga_b_reg<=grid_data_2[4:0];
			end
		_08:begin    
				vga_r_reg<=cx[6:2];               //horizontalny gradient
				vga_g_reg<=cx[6:1];
				vga_b_reg<=cx[6:2];
			end
		_09:begin    
				vga_r_reg<=cy[6:2];               //vertikalny gradient
				vga_g_reg<=cy[6:1];
				vga_b_reg<=cy[6:2];
			end
		_0A:begin    
				vga_r_reg<=cx[6:2];               //cerveny horizontalny gradient
				vga_g_reg<=0;
				vga_b_reg<=0;
			end
		_0B:begin    
				vga_r_reg<=0;                        //zeleny horizontalny gradient
				vga_g_reg<=cx[6:1];
				vga_b_reg<=0;
			end
		_0C:begin    
				vga_r_reg<=0;                        //modry horizontalny gradient
				vga_g_reg<=0;
				vga_b_reg<=cx[6:2];			
			end
		_0D:begin  
				vga_r_reg<=bar_data[15:11];          //farebna lista
				vga_g_reg<=bar_data[10:5];
				vga_b_reg<=bar_data[4:0];			
			end
		_0E:begin    
				vga_r_reg <= {cx[5:0] & {6{cy[4:3]==~cx[4:3]}}, 2'b00};
				vga_g_reg <= cx[7:0] & {8{cy[6]}};
				vga_b_reg <= cy[7:0];		
			end			  
		endcase	
	end
//---------------------
	//generate picture
	//---------------------
	logic [23:0] out = 24'd0;
	

	//convert 5:6:5 to 8:8:8
	always_ff @(posedge clk_pixel) 	
		begin
			out[23:16] <= vga_r_reg * 8;
			out[15:8] <= vga_g_reg * 4;
			out[7:0] <= vga_b_reg * 8;
		end
	assign rgb = out;
		
endmodule

module App (
	input wire rst_in,
	input wire logic clk_50, 
	input wire logic clk_pixel, 
	input wire logic clk_pixel_x10, 
	input wire logic clk_audio,
	// These outputs go to your HDMI port
	output logic [0:3] tmds_p,
	output logic [0:3] tmds_n,
	// spi interface
	input  wire logic spi_miso,
	output wire logic spi_clk,
	output wire logic spi_mosi,
	output wire logic spi_cs_n,
	// user interface
	input  logic key,
	output logic [0:3] led
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
		.DVI_OUTPUT(1),
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
		.tmds_p,
		.tmds_n,

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

	//---------------------
	// sdcard
	//---------------------
	wire       outreq;    // when outreq=1, a byte of file content is read out from outbyte
	wire [7:0] outbyte;   // a byte of file content

	wire [3:0] sdcardstate;
	wire [1:0] sdcardtype;
	wire [2:0] fatstate;
	wire [1:0] filesystemtype;
	wire       file_found;

	//assign SD_RESET = 1'b0;
	assign SD_RESET = rst_in;
	
	//led 3 zobrazi outreq
	assign led[0] = outreq;
	assign led[1] = file_found;

	// For input and output definitions of this module, see sd_file_reader.sv
	sd_file_reader #(
		 .FILE_NAME      ( "01_640x480.png"  ), // file to read, ignore Upper and Lower Case
														 // For example, if you want to read a file named HeLLo123.txt in the SD card,
														 // the parameter here can be hello123.TXT, HELLO123.txt or HEllo123.Txt
		 
		 .SPI_CLK_DIV    ( 100            )  // SD spi_clk freq = clk freq/(2*SPI_CLK_DIV)
														 // modify SPI_CLK_DIV to change the SPI speed
														 // for example, when clk=100MHz, SPI_CLK_DIV=100,then spi_clk=100MHz/(2*100)=500kHz
														 // 500kHz is a typical SPI speed for SDcard
	) sd_file_reader_inst (
		 .clk            ( clk_50      ),
		 .rst_n          ( SD_RESET         ),  // rst_n active low, re-scan and re-read SDcard by reset
		 
		 // signals connect to SD bus
		 .spi_miso,
		 .spi_mosi,
		 .spi_clk,
		 .spi_cs_n,
		 
		 // display information on 12bit LED
		 .sdcardstate,
		 .sdcardtype,  // 0=Unknown, 1=SDv1.1 , 2=SDv2 , 3=SDHCv2
		 .fatstate,  // 3'd6 = DONE
		 .filesystemtype,  // 0=Unknown, 1=invalid, 2=FAT16, 3=FAT32
		 .file_found,  // 0=file not found, 1=file found
		 
		 // file content output interface
		 .outreq,
		 .outbyte
	);


endmodule
