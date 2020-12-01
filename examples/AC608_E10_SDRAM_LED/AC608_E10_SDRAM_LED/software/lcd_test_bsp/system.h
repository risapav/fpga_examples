/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2' in SOPC Builder design 'mysystem'
 * SOPC Builder design path: D:/fpga/AC608/AC601_GHRD/mysystem.sopcinfo
 *
 * Generated: Sat Sep 22 22:29:03 CST 2018
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x1000820
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x19
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x20
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x19
#define ALT_CPU_NAME "nios2"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_RESET_ADDR 0x0


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x1000820
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x19
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x20
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x19
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_RESET_ADDR 0x0


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_PIO
#define __ALTERA_NIOS2_QSYS
#define __ALTPLL


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV E"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart_0"
#define ALT_STDERR_BASE 0x10010c0
#define ALT_STDERR_DEV jtag_uart_0
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart_0"
#define ALT_STDIN_BASE 0x10010c0
#define ALT_STDIN_DEV jtag_uart_0
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart_0"
#define ALT_STDOUT_BASE 0x10010c0
#define ALT_STDOUT_DEV jtag_uart_0
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "mysystem"


/*
 * altpll_0 configuration
 *
 */

#define ALTPLL_0_BASE 0x1001000
#define ALTPLL_0_IRQ -1
#define ALTPLL_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ALTPLL_0_NAME "/dev/altpll_0"
#define ALTPLL_0_SPAN 16
#define ALTPLL_0_TYPE "altpll"
#define ALT_MODULE_CLASS_altpll_0 altpll


/*
 * clk_spi configuration
 *
 */

#define ALT_MODULE_CLASS_clk_spi altera_avalon_pio
#define CLK_SPI_BASE 0x1001090
#define CLK_SPI_BIT_CLEARING_EDGE_REGISTER 0
#define CLK_SPI_BIT_MODIFYING_OUTPUT_REGISTER 0
#define CLK_SPI_CAPTURE 0
#define CLK_SPI_DATA_WIDTH 1
#define CLK_SPI_DO_TEST_BENCH_WIRING 0
#define CLK_SPI_DRIVEN_SIM_VALUE 0
#define CLK_SPI_EDGE_TYPE "NONE"
#define CLK_SPI_FREQ 50000000
#define CLK_SPI_HAS_IN 0
#define CLK_SPI_HAS_OUT 1
#define CLK_SPI_HAS_TRI 0
#define CLK_SPI_IRQ -1
#define CLK_SPI_IRQ_INTERRUPT_CONTROLLER_ID -1
#define CLK_SPI_IRQ_TYPE "NONE"
#define CLK_SPI_NAME "/dev/clk_spi"
#define CLK_SPI_RESET_VALUE 0
#define CLK_SPI_SPAN 16
#define CLK_SPI_TYPE "altera_avalon_pio"


/*
 * cs_spi configuration
 *
 */

#define ALT_MODULE_CLASS_cs_spi altera_avalon_pio
#define CS_SPI_BASE 0x1001080
#define CS_SPI_BIT_CLEARING_EDGE_REGISTER 0
#define CS_SPI_BIT_MODIFYING_OUTPUT_REGISTER 0
#define CS_SPI_CAPTURE 0
#define CS_SPI_DATA_WIDTH 1
#define CS_SPI_DO_TEST_BENCH_WIRING 0
#define CS_SPI_DRIVEN_SIM_VALUE 0
#define CS_SPI_EDGE_TYPE "NONE"
#define CS_SPI_FREQ 50000000
#define CS_SPI_HAS_IN 0
#define CS_SPI_HAS_OUT 1
#define CS_SPI_HAS_TRI 0
#define CS_SPI_IRQ -1
#define CS_SPI_IRQ_INTERRUPT_CONTROLLER_ID -1
#define CS_SPI_IRQ_TYPE "NONE"
#define CS_SPI_NAME "/dev/cs_spi"
#define CS_SPI_RESET_VALUE 0
#define CS_SPI_SPAN 16
#define CS_SPI_TYPE "altera_avalon_pio"


/*
 * di_spi configuration
 *
 */

#define ALT_MODULE_CLASS_di_spi altera_avalon_pio
#define DI_SPI_BASE 0x10010a0
#define DI_SPI_BIT_CLEARING_EDGE_REGISTER 0
#define DI_SPI_BIT_MODIFYING_OUTPUT_REGISTER 0
#define DI_SPI_CAPTURE 0
#define DI_SPI_DATA_WIDTH 1
#define DI_SPI_DO_TEST_BENCH_WIRING 0
#define DI_SPI_DRIVEN_SIM_VALUE 0
#define DI_SPI_EDGE_TYPE "NONE"
#define DI_SPI_FREQ 50000000
#define DI_SPI_HAS_IN 0
#define DI_SPI_HAS_OUT 1
#define DI_SPI_HAS_TRI 0
#define DI_SPI_IRQ -1
#define DI_SPI_IRQ_INTERRUPT_CONTROLLER_ID -1
#define DI_SPI_IRQ_TYPE "NONE"
#define DI_SPI_NAME "/dev/di_spi"
#define DI_SPI_RESET_VALUE 0
#define DI_SPI_SPAN 16
#define DI_SPI_TYPE "altera_avalon_pio"


/*
 * do_spi configuration
 *
 */

#define ALT_MODULE_CLASS_do_spi altera_avalon_pio
#define DO_SPI_BASE 0x10010b0
#define DO_SPI_BIT_CLEARING_EDGE_REGISTER 0
#define DO_SPI_BIT_MODIFYING_OUTPUT_REGISTER 0
#define DO_SPI_CAPTURE 0
#define DO_SPI_DATA_WIDTH 1
#define DO_SPI_DO_TEST_BENCH_WIRING 0
#define DO_SPI_DRIVEN_SIM_VALUE 0
#define DO_SPI_EDGE_TYPE "NONE"
#define DO_SPI_FREQ 50000000
#define DO_SPI_HAS_IN 1
#define DO_SPI_HAS_OUT 0
#define DO_SPI_HAS_TRI 0
#define DO_SPI_IRQ -1
#define DO_SPI_IRQ_INTERRUPT_CONTROLLER_ID -1
#define DO_SPI_IRQ_TYPE "NONE"
#define DO_SPI_NAME "/dev/do_spi"
#define DO_SPI_RESET_VALUE 0
#define DO_SPI_SPAN 16
#define DO_SPI_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart_0 configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart_0 altera_avalon_jtag_uart
#define JTAG_UART_0_BASE 0x10010c0
#define JTAG_UART_0_IRQ 0
#define JTAG_UART_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_0_NAME "/dev/jtag_uart_0"
#define JTAG_UART_0_READ_DEPTH 64
#define JTAG_UART_0_READ_THRESHOLD 8
#define JTAG_UART_0_SPAN 8
#define JTAG_UART_0_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_0_WRITE_DEPTH 64
#define JTAG_UART_0_WRITE_THRESHOLD 8


/*
 * lcd_bl configuration
 *
 */

#define ALT_MODULE_CLASS_lcd_bl altera_avalon_pio
#define LCD_BL_BASE 0x1001040
#define LCD_BL_BIT_CLEARING_EDGE_REGISTER 0
#define LCD_BL_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LCD_BL_CAPTURE 0
#define LCD_BL_DATA_WIDTH 1
#define LCD_BL_DO_TEST_BENCH_WIRING 0
#define LCD_BL_DRIVEN_SIM_VALUE 0
#define LCD_BL_EDGE_TYPE "NONE"
#define LCD_BL_FREQ 50000000
#define LCD_BL_HAS_IN 0
#define LCD_BL_HAS_OUT 1
#define LCD_BL_HAS_TRI 0
#define LCD_BL_IRQ -1
#define LCD_BL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LCD_BL_IRQ_TYPE "NONE"
#define LCD_BL_NAME "/dev/lcd_bl"
#define LCD_BL_RESET_VALUE 1
#define LCD_BL_SPAN 16
#define LCD_BL_TYPE "altera_avalon_pio"


/*
 * lcd_cs configuration
 *
 */

#define ALT_MODULE_CLASS_lcd_cs altera_avalon_pio
#define LCD_CS_BASE 0x1001070
#define LCD_CS_BIT_CLEARING_EDGE_REGISTER 0
#define LCD_CS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LCD_CS_CAPTURE 0
#define LCD_CS_DATA_WIDTH 1
#define LCD_CS_DO_TEST_BENCH_WIRING 0
#define LCD_CS_DRIVEN_SIM_VALUE 0
#define LCD_CS_EDGE_TYPE "NONE"
#define LCD_CS_FREQ 50000000
#define LCD_CS_HAS_IN 0
#define LCD_CS_HAS_OUT 1
#define LCD_CS_HAS_TRI 0
#define LCD_CS_IRQ -1
#define LCD_CS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LCD_CS_IRQ_TYPE "NONE"
#define LCD_CS_NAME "/dev/lcd_cs"
#define LCD_CS_RESET_VALUE 1
#define LCD_CS_SPAN 16
#define LCD_CS_TYPE "altera_avalon_pio"


/*
 * lcd_db configuration
 *
 */

#define ALT_MODULE_CLASS_lcd_db altera_avalon_pio
#define LCD_DB_BASE 0x1001010
#define LCD_DB_BIT_CLEARING_EDGE_REGISTER 0
#define LCD_DB_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LCD_DB_CAPTURE 0
#define LCD_DB_DATA_WIDTH 16
#define LCD_DB_DO_TEST_BENCH_WIRING 0
#define LCD_DB_DRIVEN_SIM_VALUE 0
#define LCD_DB_EDGE_TYPE "NONE"
#define LCD_DB_FREQ 50000000
#define LCD_DB_HAS_IN 0
#define LCD_DB_HAS_OUT 0
#define LCD_DB_HAS_TRI 1
#define LCD_DB_IRQ -1
#define LCD_DB_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LCD_DB_IRQ_TYPE "NONE"
#define LCD_DB_NAME "/dev/lcd_db"
#define LCD_DB_RESET_VALUE 0
#define LCD_DB_SPAN 16
#define LCD_DB_TYPE "altera_avalon_pio"


/*
 * lcd_rd configuration
 *
 */

#define ALT_MODULE_CLASS_lcd_rd altera_avalon_pio
#define LCD_RD_BASE 0x1001030
#define LCD_RD_BIT_CLEARING_EDGE_REGISTER 0
#define LCD_RD_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LCD_RD_CAPTURE 0
#define LCD_RD_DATA_WIDTH 1
#define LCD_RD_DO_TEST_BENCH_WIRING 0
#define LCD_RD_DRIVEN_SIM_VALUE 0
#define LCD_RD_EDGE_TYPE "NONE"
#define LCD_RD_FREQ 50000000
#define LCD_RD_HAS_IN 0
#define LCD_RD_HAS_OUT 1
#define LCD_RD_HAS_TRI 0
#define LCD_RD_IRQ -1
#define LCD_RD_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LCD_RD_IRQ_TYPE "NONE"
#define LCD_RD_NAME "/dev/lcd_rd"
#define LCD_RD_RESET_VALUE 1
#define LCD_RD_SPAN 16
#define LCD_RD_TYPE "altera_avalon_pio"


/*
 * lcd_rs configuration
 *
 */

#define ALT_MODULE_CLASS_lcd_rs altera_avalon_pio
#define LCD_RS_BASE 0x1001060
#define LCD_RS_BIT_CLEARING_EDGE_REGISTER 0
#define LCD_RS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LCD_RS_CAPTURE 0
#define LCD_RS_DATA_WIDTH 1
#define LCD_RS_DO_TEST_BENCH_WIRING 0
#define LCD_RS_DRIVEN_SIM_VALUE 0
#define LCD_RS_EDGE_TYPE "NONE"
#define LCD_RS_FREQ 50000000
#define LCD_RS_HAS_IN 0
#define LCD_RS_HAS_OUT 1
#define LCD_RS_HAS_TRI 0
#define LCD_RS_IRQ -1
#define LCD_RS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LCD_RS_IRQ_TYPE "NONE"
#define LCD_RS_NAME "/dev/lcd_rs"
#define LCD_RS_RESET_VALUE 1
#define LCD_RS_SPAN 16
#define LCD_RS_TYPE "altera_avalon_pio"


/*
 * lcd_rst configuration
 *
 */

#define ALT_MODULE_CLASS_lcd_rst altera_avalon_pio
#define LCD_RST_BASE 0x1001020
#define LCD_RST_BIT_CLEARING_EDGE_REGISTER 0
#define LCD_RST_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LCD_RST_CAPTURE 0
#define LCD_RST_DATA_WIDTH 1
#define LCD_RST_DO_TEST_BENCH_WIRING 0
#define LCD_RST_DRIVEN_SIM_VALUE 0
#define LCD_RST_EDGE_TYPE "NONE"
#define LCD_RST_FREQ 50000000
#define LCD_RST_HAS_IN 0
#define LCD_RST_HAS_OUT 1
#define LCD_RST_HAS_TRI 0
#define LCD_RST_IRQ -1
#define LCD_RST_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LCD_RST_IRQ_TYPE "NONE"
#define LCD_RST_NAME "/dev/lcd_rst"
#define LCD_RST_RESET_VALUE 1
#define LCD_RST_SPAN 16
#define LCD_RST_TYPE "altera_avalon_pio"


/*
 * lcd_wr configuration
 *
 */

#define ALT_MODULE_CLASS_lcd_wr altera_avalon_pio
#define LCD_WR_BASE 0x1001050
#define LCD_WR_BIT_CLEARING_EDGE_REGISTER 0
#define LCD_WR_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LCD_WR_CAPTURE 0
#define LCD_WR_DATA_WIDTH 1
#define LCD_WR_DO_TEST_BENCH_WIRING 0
#define LCD_WR_DRIVEN_SIM_VALUE 0
#define LCD_WR_EDGE_TYPE "NONE"
#define LCD_WR_FREQ 50000000
#define LCD_WR_HAS_IN 0
#define LCD_WR_HAS_OUT 1
#define LCD_WR_HAS_TRI 0
#define LCD_WR_IRQ -1
#define LCD_WR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LCD_WR_IRQ_TYPE "NONE"
#define LCD_WR_NAME "/dev/lcd_wr"
#define LCD_WR_RESET_VALUE 1
#define LCD_WR_SPAN 16
#define LCD_WR_TYPE "altera_avalon_pio"


/*
 * sdram configuration
 *
 */

#define ALT_MODULE_CLASS_sdram altera_avalon_new_sdram_controller
#define SDRAM_BASE 0x0
#define SDRAM_CAS_LATENCY 3
#define SDRAM_CONTENTS_INFO
#define SDRAM_INIT_NOP_DELAY 0.0
#define SDRAM_INIT_REFRESH_COMMANDS 2
#define SDRAM_IRQ -1
#define SDRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_IS_INITIALIZED 1
#define SDRAM_NAME "/dev/sdram"
#define SDRAM_POWERUP_DELAY 100.0
#define SDRAM_REFRESH_PERIOD 15.625
#define SDRAM_REGISTER_DATA_IN 1
#define SDRAM_SDRAM_ADDR_WIDTH 0x17
#define SDRAM_SDRAM_BANK_WIDTH 2
#define SDRAM_SDRAM_COL_WIDTH 9
#define SDRAM_SDRAM_DATA_WIDTH 16
#define SDRAM_SDRAM_NUM_BANKS 4
#define SDRAM_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_SDRAM_ROW_WIDTH 12
#define SDRAM_SHARED_DATA 0
#define SDRAM_SIM_MODEL_BASE 0
#define SDRAM_SPAN 16777216
#define SDRAM_STARVATION_INDICATOR 0
#define SDRAM_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_T_AC 5.5
#define SDRAM_T_MRD 3
#define SDRAM_T_RCD 20.0
#define SDRAM_T_RFC 70.0
#define SDRAM_T_RP 20.0
#define SDRAM_T_WR 14.0

#endif /* __SYSTEM_H_ */
