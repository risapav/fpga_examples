#ifndef __LCD_H
#define __LCD_H
#include "stdlib.h"
#include "stdint.h"
#include "system.h"
#include "altera_avalon_pio_regs.h"

/////////////////////////////////////用户配置区///////////////////////////////////
//以下2个宏定义，定义屏幕的显示方式及IO速度
#define USE_HORIZONTAL  0	//定义是否使用横屏 		0,不使用.1,使用.
#define LCD_FAST_IO     1 	//定义是否使用快速IO	0,不实用.1,使用
//////////////////////////////////////////////////////////////////////////////////

//TFTLCD部分外要调用的函数
extern uint16_t  POINT_COLOR;//默认红色
extern uint16_t  BACK_COLOR; //背景颜色.默认为白色
//定义LCD的尺寸
#if USE_HORIZONTAL==1	//使用横屏
#define LCD_W 320
#define LCD_H 240
#else
#define LCD_W 240
#define LCD_H 320
#endif
////////////////////////////////////////////////////////////////////
//-----------------LCD端口定义----------------
#define	LCD_LED LCD_BL_BASE

#if LCD_FAST_IO==1 //快速IO

#define SET 1
#define CLR 0

#define	LCD_CS_SET  IOWR_ALTERA_AVALON_PIO_DATA(LCD_CS_BASE, SET)    //片选端口
#define	LCD_RS_SET	IOWR_ALTERA_AVALON_PIO_DATA(LCD_RS_BASE, SET)    //数据/命令          PC8
#define	LCD_WR_SET	IOWR_ALTERA_AVALON_PIO_DATA(LCD_WR_BASE, SET)   //写数据			 PC7
#define	LCD_RD_SET	IOWR_ALTERA_AVALON_PIO_DATA(LCD_RD_BASE, SET)   //读数据			 PC6

#define	LCD_CS_CLR  IOWR_ALTERA_AVALON_PIO_DATA(LCD_CS_BASE, CLR)     //片选端口  	     PC9
#define	LCD_RS_CLR	IOWR_ALTERA_AVALON_PIO_DATA(LCD_RS_BASE, CLR)     //数据/命令          PC8
#define	LCD_WR_CLR	IOWR_ALTERA_AVALON_PIO_DATA(LCD_WR_BASE, CLR)     //写数据			 PC7
#define	LCD_RD_CLR	IOWR_ALTERA_AVALON_PIO_DATA(LCD_RD_BASE, CLR)    //读数据			 PC6

#else //慢速IO

#define	LCD_CS	LCD_CS_BASE  //片选端口  	     PC9
#define	LCD_RS	LCD_CS_BASE  //数据/命令        PC8
#define	LCD_WR	LCD_CS_BASE  //写数据			 PC7
#define	LCD_RD	LCD_CS_BASE  //读数据			 PC6

#endif
//PB0~15,作为数据线
#define DATAOUT(x) IOWR_ALTERA_AVALON_PIO_DATA(LCD_DB_BASE, x); //数据输出
#define DATAIN     IORD_ALTERA_AVALON_PIO_DATA(LCD_DB_BASE);   //数据输入
//////////////////////////////////////////////////////////////////////
//扫描方向定义
#define L2R_U2D  0 //从左到右,从上到下
#define L2R_D2U  1 //从左到右,从下到上
#define R2L_U2D  2 //从右到左,从上到下
#define R2L_D2U  3 //从右到左,从下到上

#define U2D_L2R  4 //从上到下,从左到右
#define U2D_R2L  5 //从上到下,从右到左
#define D2U_L2R  6 //从下到上,从左到右
#define D2U_R2L  7 //从下到上,从右到左

#define DFT_SCAN_DIR  L2R_U2D  //默认的扫描方向


//画笔颜色
#define WHITE         	 0xFFFF
#define BLACK         	 0x0000
#define BLUE         	 0x001F
#define BRED             0XF81F
#define GRED 			 0XFFE0
#define GBLUE			 0X07FF
#define RED           	 0xF800
#define MAGENTA       	 0xF81F
#define GREEN         	 0x07E0
#define CYAN          	 0x7FFF
#define YELLOW        	 0xFFE0
#define BROWN 			 0XBC40 //棕色
#define BRRED 			 0XFC07 //棕红色
#define GRAY  			 0X8430 //灰色
//GUI颜色

#define DARKBLUE      	 0X01CF	//深蓝色
#define LIGHTBLUE      	 0X7D7C	//浅蓝色
#define GRAYBLUE       	 0X5458 //灰蓝色
//以上三色为PANEL的颜色

#define LIGHTGREEN     	 0X841F //浅绿色
//#define LIGHTGRAY        0XEF5B //浅灰色(PANNEL)
#define LGRAY 			 0XC618 //浅灰色(PANNEL),窗体背景色

#define LGRAYBLUE        0XA651 //浅灰蓝色(中间层颜色)
#define LBBLUE           0X2B12 //浅棕蓝色(选择条目的反色)

extern uint16_t BACK_COLOR, POINT_COLOR ;
void LCD_Init(void);
void LCD_DisplayOn(void);
void LCD_DisplayOff(void);
void LCD_Clear(uint16_t Color);
void LCD_SetCursor(uint16_t Xpos, uint16_t Ypos);
void LCD_Scan_Dir(uint8_t dir);
void LCD_DrawPoint(uint16_t x,uint16_t y);//画点
uint16_t  LCD_ReadPoint(uint16_t x,uint16_t y); //读点
void Draw_Circle(uint16_t x0,uint16_t y0,uint8_t r);
void LCD_DrawLine(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2);
void LCD_DrawRectangle(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2);
void LCD_Fill(uint16_t sx,uint16_t sy,uint16_t ex,uint16_t ey,uint16_t color);
void LCD_ShowChar(uint16_t x,uint16_t y,uint8_t num,uint8_t size,uint8_t mode);//显示一个字符
void LCD_ShowNum(uint16_t x,uint16_t y,uint32_t num,uint8_t len,uint8_t size);  //显示一个数字
void LCD_Show2Num(uint16_t x,uint16_t y,uint16_t num,uint8_t len,uint8_t size,uint8_t mode);//显示2个数字
void LCD_ShowString(uint16_t x,uint16_t y,const uint8_t *p);		 //显示一个字符串,16字体

uint16_t LCD_RD_DATA(void);//读取LCD数据
void LCD_WriteReg(uint8_t LCD_Reg, uint16_t LCD_RegValue);
uint16_t LCD_ReadReg(uint8_t LCD_Reg);
void LCD_WriteRAM_Prepare(void);
void LCD_WriteRAM(uint16_t RGB_Code);
uint16_t LCD_ReadRAM(void);
uint16_t LCD_BGR2RGB(uint16_t c);
void LCD_ShowPic(uint8_t *p);

//写8位数据函数
//用宏定义,提高速度.
#if LCD_FAST_IO==1 //快速IO
#define LCD_WR_DATA(data){\
LCD_RS_SET;\
LCD_CS_CLR;\
DATAOUT(data);\
LCD_WR_CLR;\
LCD_WR_SET;\
LCD_CS_SET;\
}
#else//正常IO
#define LCD_WR_DATA(data){\
LCD_RS=1;\
LCD_CS=0;\
DATAOUT(data);\
LCD_WR=0;\
LCD_WR=1;\
LCD_CS=1;\
}
#endif
//9320/9325 LCD寄存器
#define R0             0x00
#define R1             0x01
#define R2             0x02
#define R3             0x03
#define R4             0x04
#define R5             0x05
#define R6             0x06
#define R7             0x07
#define R8             0x08
#define R9             0x09
#define R10            0x0A
#define R12            0x0C
#define R13            0x0D
#define R14            0x0E
#define R15            0x0F
#define R16            0x10
#define R17            0x11
#define R18            0x12
#define R19            0x13
#define R20            0x14
#define R21            0x15
#define R22            0x16
#define R23            0x17
#define R24            0x18
#define R25            0x19
#define R26            0x1A
#define R27            0x1B
#define R28            0x1C
#define R29            0x1D
#define R30            0x1E
#define R31            0x1F
#define R32            0x20
#define R33            0x21
#define R34            0x22
#define R36            0x24
#define R37            0x25
#define R40            0x28
#define R41            0x29
#define R43            0x2B
#define R45            0x2D
#define R48            0x30
#define R49            0x31
#define R50            0x32
#define R51            0x33
#define R52            0x34
#define R53            0x35
#define R54            0x36
#define R55            0x37
#define R56            0x38
#define R57            0x39
#define R59            0x3B
#define R60            0x3C
#define R61            0x3D
#define R62            0x3E
#define R63            0x3F
#define R64            0x40
#define R65            0x41
#define R66            0x42
#define R67            0x43
#define R68            0x44
#define R69            0x45
#define R70            0x46
#define R71            0x47
#define R72            0x48
#define R73            0x49
#define R74            0x4A
#define R75            0x4B
#define R76            0x4C
#define R77            0x4D
#define R78            0x4E
#define R79            0x4F
#define R80            0x50
#define R81            0x51
#define R82            0x52
#define R83            0x53
#define R96            0x60
#define R97            0x61
#define R106           0x6A
#define R118           0x76
#define R128           0x80
#define R129           0x81
#define R130           0x82
#define R131           0x83
#define R132           0x84
#define R133           0x85
#define R134           0x86
#define R135           0x87
#define R136           0x88
#define R137           0x89
#define R139           0x8B
#define R140           0x8C
#define R141           0x8D
#define R143           0x8F
#define R144           0x90
#define R145           0x91
#define R146           0x92
#define R147           0x93
#define R148           0x94
#define R149           0x95
#define R150           0x96
#define R151           0x97
#define R152           0x98
#define R153           0x99
#define R154           0x9A
#define R157           0x9D
#define R192           0xC0
#define R193           0xC1
#define R229           0xE5
#endif





