/*
Sonar on Chip top level module based on user project example
Files:
defines.v - macroodefinitions (come vith Caravel)
*/
`include "defines.v"

`define BUS_WIDTH 16 

module SonarOnChip
   (
  `ifdef USE_POWER_PINS
    inout wire vdda1,	// User area 1 3.3V supply
    inout wire vdda2,	// User area 2 3.3V supply
    inout wire vssa1,	// User area 1 analog ground
    inout wire vssa2,	// User area 2 analog ground
    inout wire vccd1,	// User area 1 1.8V supply
    inout wire vccd2,	// User area 2 1.8v supply
    inout wire vssd1,	// User area 1 digital ground
    inout wire vssd2,	// User area 2 digital ground
  `endif

    // Wishbone Slave ports (WB MI A)
    input wire wb_clk_i,
    input wire wb_rst_i,
    input wire wb_valid_i,
    input wire  [3:0] wbs_adr_i,
    input wire  [`BUS_WIDTH-1:0] wbs_dat_i,
    input  wire  wbs_strb_i,
    output                    wbs_ack_o,
    output   [`BUS_WIDTH-1:0] wbs_dat_o,

    /* Design specific ports*/
    /* 4.8 MHz clock input */
    input wire  ce_pdm,
    /* PCM pace signal */
    input wire  ce_pcm,
    /* External microphone PDM data */
    input wire  pdm_data_i,
    /* Master clear */
    input wire  mclear,
    /* compare otupt signal*/    
    output wire  cmp
	);

  endmodule

