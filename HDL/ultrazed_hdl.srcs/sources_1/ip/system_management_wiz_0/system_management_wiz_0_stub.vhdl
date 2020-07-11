-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Sep 16 11:09:56 2019
-- Host        : EURW151931 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/317488/Hyper-V/MySharedFolder/HDL/UZ3EG_IOCC_2018_2/uz_petalinux.srcs/sources_1/ip/system_management_wiz_0/system_management_wiz_0_stub.vhdl
-- Design      : system_management_wiz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfva625-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_management_wiz_0 is
  Port ( 
    daddr_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    den_in : in STD_LOGIC;
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dwe_in : in STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drdy_out : out STD_LOGIC;
    dclk_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    vp : in STD_LOGIC;
    vn : in STD_LOGIC;
    busy_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    eoc_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    ot_out : out STD_LOGIC;
    user_supply1_alarm_out : out STD_LOGIC;
    user_supply0_alarm_out : out STD_LOGIC;
    vccpsaux_alarm_out : out STD_LOGIC;
    vccpsintlp_alarm_out : out STD_LOGIC;
    vccpsintfp_alarm_out : out STD_LOGIC;
    vccaux_alarm_out : out STD_LOGIC;
    vccint_alarm_out : out STD_LOGIC;
    user_temp_alarm_out : out STD_LOGIC;
    i2c_sclk : inout STD_LOGIC;
    i2c_sda : inout STD_LOGIC;
    alarm_out : out STD_LOGIC
  );

end system_management_wiz_0;

architecture stub of system_management_wiz_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "daddr_in[7:0],den_in,di_in[15:0],dwe_in,do_out[15:0],drdy_out,dclk_in,reset_in,vp,vn,busy_out,channel_out[5:0],eoc_out,eos_out,ot_out,user_supply1_alarm_out,user_supply0_alarm_out,vccpsaux_alarm_out,vccpsintlp_alarm_out,vccpsintfp_alarm_out,vccaux_alarm_out,vccint_alarm_out,user_temp_alarm_out,i2c_sclk,i2c_sda,alarm_out";
begin
end;
