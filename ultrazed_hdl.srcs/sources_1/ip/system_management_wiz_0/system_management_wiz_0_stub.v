// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Sep 16 11:09:56 2019
// Host        : EURW151931 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/317488/Hyper-V/MySharedFolder/HDL/UZ3EG_IOCC_2018_2/uz_petalinux.srcs/sources_1/ip/system_management_wiz_0/system_management_wiz_0_stub.v
// Design      : system_management_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfva625-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module system_management_wiz_0(daddr_in, den_in, di_in, dwe_in, do_out, drdy_out, 
  dclk_in, reset_in, vp, vn, busy_out, channel_out, eoc_out, eos_out, ot_out, user_supply1_alarm_out, 
  user_supply0_alarm_out, vccpsaux_alarm_out, vccpsintlp_alarm_out, vccpsintfp_alarm_out, 
  vccaux_alarm_out, vccint_alarm_out, user_temp_alarm_out, i2c_sclk, i2c_sda, alarm_out)
/* synthesis syn_black_box black_box_pad_pin="daddr_in[7:0],den_in,di_in[15:0],dwe_in,do_out[15:0],drdy_out,dclk_in,reset_in,vp,vn,busy_out,channel_out[5:0],eoc_out,eos_out,ot_out,user_supply1_alarm_out,user_supply0_alarm_out,vccpsaux_alarm_out,vccpsintlp_alarm_out,vccpsintfp_alarm_out,vccaux_alarm_out,vccint_alarm_out,user_temp_alarm_out,i2c_sclk,i2c_sda,alarm_out" */;
  input [7:0]daddr_in;
  input den_in;
  input [15:0]di_in;
  input dwe_in;
  output [15:0]do_out;
  output drdy_out;
  input dclk_in;
  input reset_in;
  input vp;
  input vn;
  output busy_out;
  output [5:0]channel_out;
  output eoc_out;
  output eos_out;
  output ot_out;
  output user_supply1_alarm_out;
  output user_supply0_alarm_out;
  output vccpsaux_alarm_out;
  output vccpsintlp_alarm_out;
  output vccpsintfp_alarm_out;
  output vccaux_alarm_out;
  output vccint_alarm_out;
  output user_temp_alarm_out;
  inout i2c_sclk;
  inout i2c_sda;
  output alarm_out;
endmodule
