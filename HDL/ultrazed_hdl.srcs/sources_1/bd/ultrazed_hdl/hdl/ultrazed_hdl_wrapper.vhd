--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
--Date        : Fri Sep 13 08:24:31 2019
--Host        : juliano-VM running 64-bit Ubuntu 16.04.2 LTS
--Command     : generate_target uz_petalinux_wrapper.bd
--Design      : uz_petalinux_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uz_petalinux_wrapper is
  port (
    HTS221_DRDY : in STD_LOGIC_VECTOR ( 0 to 0 );
    LIS3MDL_DRDY : in STD_LOGIC_VECTOR ( 0 to 0 );
    LIS3MDL_INT1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    LPS25H_INT1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    LSM6DS0_INT1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    arduino_iic_scl_io : inout STD_LOGIC;
    arduino_iic_sda_io : inout STD_LOGIC;
    dip_switches_8bits_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    jx2_je_pmod_spi_io0_io : inout STD_LOGIC;
    jx2_je_pmod_spi_io1_io : inout STD_LOGIC;
    jx2_je_pmod_spi_sck_io : inout STD_LOGIC;
    jx2_je_pmod_spi_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    jx2_jf_pmod_iic_scl_io : inout STD_LOGIC;
    jx2_jf_pmod_iic_sda_io : inout STD_LOGIC;
    led_8bits_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end uz_petalinux_wrapper;

architecture STRUCTURE of uz_petalinux_wrapper is
  component uz_petalinux is
  port (
    dip_switches_8bits_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_8bits_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    jx2_je_pmod_spi_io0_i : in STD_LOGIC;
    jx2_je_pmod_spi_io0_o : out STD_LOGIC;
    jx2_je_pmod_spi_io0_t : out STD_LOGIC;
    jx2_je_pmod_spi_io1_i : in STD_LOGIC;
    jx2_je_pmod_spi_io1_o : out STD_LOGIC;
    jx2_je_pmod_spi_io1_t : out STD_LOGIC;
    jx2_je_pmod_spi_sck_i : in STD_LOGIC;
    jx2_je_pmod_spi_sck_o : out STD_LOGIC;
    jx2_je_pmod_spi_sck_t : out STD_LOGIC;
    jx2_je_pmod_spi_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    jx2_je_pmod_spi_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    jx2_je_pmod_spi_ss_t : out STD_LOGIC;
    jx2_jf_pmod_iic_scl_i : in STD_LOGIC;
    jx2_jf_pmod_iic_scl_o : out STD_LOGIC;
    jx2_jf_pmod_iic_scl_t : out STD_LOGIC;
    jx2_jf_pmod_iic_sda_i : in STD_LOGIC;
    jx2_jf_pmod_iic_sda_o : out STD_LOGIC;
    jx2_jf_pmod_iic_sda_t : out STD_LOGIC;
    arduino_iic_scl_i : in STD_LOGIC;
    arduino_iic_scl_o : out STD_LOGIC;
    arduino_iic_scl_t : out STD_LOGIC;
    arduino_iic_sda_i : in STD_LOGIC;
    arduino_iic_sda_o : out STD_LOGIC;
    arduino_iic_sda_t : out STD_LOGIC;
    LSM6DS0_INT1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    LPS25H_INT1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    HTS221_DRDY : in STD_LOGIC_VECTOR ( 0 to 0 );
    LIS3MDL_INT1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    LIS3MDL_DRDY : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component uz_petalinux;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal arduino_iic_scl_i : STD_LOGIC;
  signal arduino_iic_scl_o : STD_LOGIC;
  signal arduino_iic_scl_t : STD_LOGIC;
  signal arduino_iic_sda_i : STD_LOGIC;
  signal arduino_iic_sda_o : STD_LOGIC;
  signal arduino_iic_sda_t : STD_LOGIC;
  signal jx2_je_pmod_spi_io0_i : STD_LOGIC;
  signal jx2_je_pmod_spi_io0_o : STD_LOGIC;
  signal jx2_je_pmod_spi_io0_t : STD_LOGIC;
  signal jx2_je_pmod_spi_io1_i : STD_LOGIC;
  signal jx2_je_pmod_spi_io1_o : STD_LOGIC;
  signal jx2_je_pmod_spi_io1_t : STD_LOGIC;
  signal jx2_je_pmod_spi_sck_i : STD_LOGIC;
  signal jx2_je_pmod_spi_sck_o : STD_LOGIC;
  signal jx2_je_pmod_spi_sck_t : STD_LOGIC;
  signal jx2_je_pmod_spi_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jx2_je_pmod_spi_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jx2_je_pmod_spi_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jx2_je_pmod_spi_ss_t : STD_LOGIC;
  signal jx2_jf_pmod_iic_scl_i : STD_LOGIC;
  signal jx2_jf_pmod_iic_scl_o : STD_LOGIC;
  signal jx2_jf_pmod_iic_scl_t : STD_LOGIC;
  signal jx2_jf_pmod_iic_sda_i : STD_LOGIC;
  signal jx2_jf_pmod_iic_sda_o : STD_LOGIC;
  signal jx2_jf_pmod_iic_sda_t : STD_LOGIC;
begin
arduino_iic_scl_iobuf: component IOBUF
     port map (
      I => arduino_iic_scl_o,
      IO => arduino_iic_scl_io,
      O => arduino_iic_scl_i,
      T => arduino_iic_scl_t
    );
arduino_iic_sda_iobuf: component IOBUF
     port map (
      I => arduino_iic_sda_o,
      IO => arduino_iic_sda_io,
      O => arduino_iic_sda_i,
      T => arduino_iic_sda_t
    );
jx2_je_pmod_spi_io0_iobuf: component IOBUF
     port map (
      I => jx2_je_pmod_spi_io0_o,
      IO => jx2_je_pmod_spi_io0_io,
      O => jx2_je_pmod_spi_io0_i,
      T => jx2_je_pmod_spi_io0_t
    );
jx2_je_pmod_spi_io1_iobuf: component IOBUF
     port map (
      I => jx2_je_pmod_spi_io1_o,
      IO => jx2_je_pmod_spi_io1_io,
      O => jx2_je_pmod_spi_io1_i,
      T => jx2_je_pmod_spi_io1_t
    );
jx2_je_pmod_spi_sck_iobuf: component IOBUF
     port map (
      I => jx2_je_pmod_spi_sck_o,
      IO => jx2_je_pmod_spi_sck_io,
      O => jx2_je_pmod_spi_sck_i,
      T => jx2_je_pmod_spi_sck_t
    );
jx2_je_pmod_spi_ss_iobuf_0: component IOBUF
     port map (
      I => jx2_je_pmod_spi_ss_o_0(0),
      IO => jx2_je_pmod_spi_ss_io(0),
      O => jx2_je_pmod_spi_ss_i_0(0),
      T => jx2_je_pmod_spi_ss_t
    );
jx2_jf_pmod_iic_scl_iobuf: component IOBUF
     port map (
      I => jx2_jf_pmod_iic_scl_o,
      IO => jx2_jf_pmod_iic_scl_io,
      O => jx2_jf_pmod_iic_scl_i,
      T => jx2_jf_pmod_iic_scl_t
    );
jx2_jf_pmod_iic_sda_iobuf: component IOBUF
     port map (
      I => jx2_jf_pmod_iic_sda_o,
      IO => jx2_jf_pmod_iic_sda_io,
      O => jx2_jf_pmod_iic_sda_i,
      T => jx2_jf_pmod_iic_sda_t
    );
uz_petalinux_i: component uz_petalinux
     port map (
      HTS221_DRDY(0) => HTS221_DRDY(0),
      LIS3MDL_DRDY(0) => LIS3MDL_DRDY(0),
      LIS3MDL_INT1(0) => LIS3MDL_INT1(0),
      LPS25H_INT1(0) => LPS25H_INT1(0),
      LSM6DS0_INT1(0) => LSM6DS0_INT1(0),
      arduino_iic_scl_i => arduino_iic_scl_i,
      arduino_iic_scl_o => arduino_iic_scl_o,
      arduino_iic_scl_t => arduino_iic_scl_t,
      arduino_iic_sda_i => arduino_iic_sda_i,
      arduino_iic_sda_o => arduino_iic_sda_o,
      arduino_iic_sda_t => arduino_iic_sda_t,
      dip_switches_8bits_tri_i(7 downto 0) => dip_switches_8bits_tri_i(7 downto 0),
      jx2_je_pmod_spi_io0_i => jx2_je_pmod_spi_io0_i,
      jx2_je_pmod_spi_io0_o => jx2_je_pmod_spi_io0_o,
      jx2_je_pmod_spi_io0_t => jx2_je_pmod_spi_io0_t,
      jx2_je_pmod_spi_io1_i => jx2_je_pmod_spi_io1_i,
      jx2_je_pmod_spi_io1_o => jx2_je_pmod_spi_io1_o,
      jx2_je_pmod_spi_io1_t => jx2_je_pmod_spi_io1_t,
      jx2_je_pmod_spi_sck_i => jx2_je_pmod_spi_sck_i,
      jx2_je_pmod_spi_sck_o => jx2_je_pmod_spi_sck_o,
      jx2_je_pmod_spi_sck_t => jx2_je_pmod_spi_sck_t,
      jx2_je_pmod_spi_ss_i(0) => jx2_je_pmod_spi_ss_i_0(0),
      jx2_je_pmod_spi_ss_o(0) => jx2_je_pmod_spi_ss_o_0(0),
      jx2_je_pmod_spi_ss_t => jx2_je_pmod_spi_ss_t,
      jx2_jf_pmod_iic_scl_i => jx2_jf_pmod_iic_scl_i,
      jx2_jf_pmod_iic_scl_o => jx2_jf_pmod_iic_scl_o,
      jx2_jf_pmod_iic_scl_t => jx2_jf_pmod_iic_scl_t,
      jx2_jf_pmod_iic_sda_i => jx2_jf_pmod_iic_sda_i,
      jx2_jf_pmod_iic_sda_o => jx2_jf_pmod_iic_sda_o,
      jx2_jf_pmod_iic_sda_t => jx2_jf_pmod_iic_sda_t,
      led_8bits_tri_o(7 downto 0) => led_8bits_tri_o(7 downto 0),
      push_buttons_5bits_tri_i(2 downto 0) => push_buttons_5bits_tri_i(2 downto 0)
    );
end STRUCTURE;
