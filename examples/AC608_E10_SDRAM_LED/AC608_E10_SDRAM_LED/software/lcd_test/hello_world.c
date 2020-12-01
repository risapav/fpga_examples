#include "lcd.h"
#include <stdio.h>
#include "001.h"
#include "002.h"
#include "003.h"


void wr(int t)
{
	int j;
	for(j=0;j<10;j++)
	{
		LCD_WR_DATA(t);
	}
}

int main()
{
	printf("Hello from Nios II!\n");

	uint8_t x=0;

	IOWR_ALTERA_AVALON_PIO_DATA(LCD_BL_BASE, 0);//µãÁÁ±³¹â
 	LCD_Init();
	POINT_COLOR=RED;
  	while(1)
	{
		switch(x)
		{
			case 0:LCD_ShowPic(gImage_001);;break;
			case 1:LCD_ShowPic(gImage_002);;break;
			case 2:LCD_ShowPic(gImage_003);;break;
			case 3:LCD_Clear(RED);break;
			case 4:LCD_Clear(BLUE);break;
			case 5:LCD_Clear(GREEN);break;
			case 6:LCD_Clear(CYAN);break;

			case 7:LCD_Clear(YELLOW);break;
			case 8:LCD_Clear(BRRED);break;
			case 9:LCD_Clear(GRAY);break;
			case 10:LCD_Clear(LGRAY);break;
			case 11:LCD_Clear(BROWN);break;
		}
		POINT_COLOR=RED;
		LCD_ShowString(30,50,"AC6102");
		LCD_ShowString(30,70,"NIOS II CPU Based");
		LCD_ShowString(30,90,"xiaomeige");
		LCD_ShowString(30,110,"2016/11/14");
	    x++;
		if(x==12)x=0;
		//LED0=!LED0;
		usleep(1000000);
	}
}
