-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Web Edition"

-- DATE "10/08/2015 13:40:43"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	labweek5 IS
    PORT (
	B : OUT std_logic;
	C : IN std_logic;
	H : IN std_logic;
	D : IN std_logic;
	I : OUT std_logic
	);
END labweek5;

-- Design Ports Information
-- B	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF labweek5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_H : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_I : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \H~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \ALT_INV_D~input_o\ : std_logic;
SIGNAL \ALT_INV_H~input_o\ : std_logic;
SIGNAL \ALT_INV_C~input_o\ : std_logic;

BEGIN

B <= ww_B;
ww_C <= C;
ww_H <= H;
ww_D <= D;
I <= ww_I;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_D~input_o\ <= NOT \D~input_o\;
\ALT_INV_H~input_o\ <= NOT \H~input_o\;
\ALT_INV_C~input_o\ <= NOT \C~input_o\;

-- Location: IOOBUF_X68_Y13_N56
\B~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => ww_B);

-- Location: IOOBUF_X68_Y13_N5
\I~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~0_combout\,
	devoe => ww_devoe,
	o => ww_I);

-- Location: IOIBUF_X68_Y12_N55
\C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X68_Y13_N21
\D~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X68_Y13_N38
\H~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H,
	o => \H~input_o\);

-- Location: LABCELL_X67_Y13_N0
inst : cyclonev_lcell_comb
-- Equation(s):
-- \inst~combout\ = ( \D~input_o\ & ( \H~input_o\ ) ) # ( !\D~input_o\ & ( \H~input_o\ & ( \C~input_o\ ) ) ) # ( \D~input_o\ & ( !\H~input_o\ ) ) # ( !\D~input_o\ & ( !\H~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_C~input_o\,
	datae => \ALT_INV_D~input_o\,
	dataf => \ALT_INV_H~input_o\,
	combout => \inst~combout\);

-- Location: LABCELL_X67_Y13_N9
\inst7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = ( !\D~input_o\ & ( \H~input_o\ ) ) # ( !\D~input_o\ & ( !\H~input_o\ & ( !\C~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_C~input_o\,
	datae => \ALT_INV_D~input_o\,
	dataf => \ALT_INV_H~input_o\,
	combout => \inst7~0_combout\);

-- Location: LABCELL_X17_Y38_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


