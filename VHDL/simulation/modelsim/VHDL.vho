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

-- DATE "11/05/2015 14:03:07"

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

ENTITY 	Prelab9 IS
    PORT (
	X : IN std_logic_vector(1 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	Z : OUT std_logic_vector(4 DOWNTO 0)
	);
END Prelab9;

-- Design Ports Information
-- Z[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Prelab9 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Z : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \CLA4_0|FA_GEN:0:FAX|HA1|sum~combout\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \CLA4_0|FA_GEN:1:FAX|HA2|sum~combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \CLA4_0|FA_GEN:2:FAX|HA2|sum~combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \CLA4_0|FA_GEN:3:FAX|HA2|sum~combout\ : std_logic;
SIGNAL \CLA4_0|CLC_0|carry~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[0]~input_o\ : std_logic;
SIGNAL \CLA4_0|FA_GEN:1:FAX|HA2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \CLA4_0|FA_GEN:0:FAX|HA1|ALT_INV_sum~combout\ : std_logic;

BEGIN

ww_X <= X;
ww_Y <= Y;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Y[3]~input_o\ <= NOT \Y[3]~input_o\;
\ALT_INV_Y[2]~input_o\ <= NOT \Y[2]~input_o\;
\ALT_INV_Y[1]~input_o\ <= NOT \Y[1]~input_o\;
\ALT_INV_X[1]~input_o\ <= NOT \X[1]~input_o\;
\ALT_INV_Y[0]~input_o\ <= NOT \Y[0]~input_o\;
\ALT_INV_X[0]~input_o\ <= NOT \X[0]~input_o\;
\CLA4_0|FA_GEN:1:FAX|HA2|ALT_INV_sum~combout\ <= NOT \CLA4_0|FA_GEN:1:FAX|HA2|sum~combout\;
\CLA4_0|FA_GEN:0:FAX|HA1|ALT_INV_sum~combout\ <= NOT \CLA4_0|FA_GEN:0:FAX|HA1|sum~combout\;

-- Location: IOOBUF_X68_Y12_N22
\Z[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA4_0|FA_GEN:0:FAX|HA1|ALT_INV_sum~combout\,
	devoe => ww_devoe,
	o => ww_Z(0));

-- Location: IOOBUF_X68_Y13_N39
\Z[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA4_0|FA_GEN:1:FAX|HA2|ALT_INV_sum~combout\,
	devoe => ww_devoe,
	o => ww_Z(1));

-- Location: IOOBUF_X68_Y13_N5
\Z[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA4_0|FA_GEN:2:FAX|HA2|sum~combout\,
	devoe => ww_devoe,
	o => ww_Z(2));

-- Location: IOOBUF_X68_Y13_N22
\Z[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA4_0|FA_GEN:3:FAX|HA2|sum~combout\,
	devoe => ww_devoe,
	o => ww_Z(3));

-- Location: IOOBUF_X68_Y10_N79
\Z[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA4_0|CLC_0|carry~0_combout\,
	devoe => ww_devoe,
	o => ww_Z(4));

-- Location: IOIBUF_X46_Y0_N35
\X[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X4_Y61_N1
\Y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: LABCELL_X51_Y13_N0
\CLA4_0|FA_GEN:0:FAX|HA1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA4_0|FA_GEN:0:FAX|HA1|sum~combout\ = ( !\X[0]~input_o\ & ( \Y[0]~input_o\ ) ) # ( \X[0]~input_o\ & ( !\Y[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_X[0]~input_o\,
	dataf => \ALT_INV_Y[0]~input_o\,
	combout => \CLA4_0|FA_GEN:0:FAX|HA1|sum~combout\);

-- Location: IOIBUF_X4_Y61_N18
\Y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: IOIBUF_X46_Y0_N52
\X[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LABCELL_X51_Y13_N9
\CLA4_0|FA_GEN:1:FAX|HA2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA4_0|FA_GEN:1:FAX|HA2|sum~combout\ = ( \X[0]~input_o\ & ( !\Y[1]~input_o\ $ (!\X[1]~input_o\) ) ) # ( !\X[0]~input_o\ & ( !\Y[1]~input_o\ $ (!\X[1]~input_o\ $ (\Y[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011001100110011001101001011010010110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y[1]~input_o\,
	datab => \ALT_INV_X[1]~input_o\,
	datac => \ALT_INV_Y[0]~input_o\,
	datae => \ALT_INV_X[0]~input_o\,
	combout => \CLA4_0|FA_GEN:1:FAX|HA2|sum~combout\);

-- Location: IOIBUF_X4_Y61_N35
\Y[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: LABCELL_X51_Y13_N12
\CLA4_0|FA_GEN:2:FAX|HA2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA4_0|FA_GEN:2:FAX|HA2|sum~combout\ = ( \X[0]~input_o\ & ( !\Y[2]~input_o\ $ (((!\Y[1]~input_o\) # (\X[1]~input_o\))) ) ) # ( !\X[0]~input_o\ & ( !\Y[2]~input_o\ $ (((!\Y[0]~input_o\ & ((!\Y[1]~input_o\) # (\X[1]~input_o\))) # (\Y[0]~input_o\ & 
-- (!\Y[1]~input_o\ & \X[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001010110010110100101010101101010010101100101101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y[2]~input_o\,
	datab => \ALT_INV_Y[0]~input_o\,
	datac => \ALT_INV_Y[1]~input_o\,
	datad => \ALT_INV_X[1]~input_o\,
	datae => \ALT_INV_X[0]~input_o\,
	combout => \CLA4_0|FA_GEN:2:FAX|HA2|sum~combout\);

-- Location: IOIBUF_X4_Y61_N52
\Y[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LABCELL_X51_Y13_N18
\CLA4_0|FA_GEN:3:FAX|HA2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA4_0|FA_GEN:3:FAX|HA2|sum~combout\ = ( \X[0]~input_o\ & ( \Y[3]~input_o\ & ( (!\Y[2]~input_o\) # ((!\Y[1]~input_o\) # (\X[1]~input_o\)) ) ) ) # ( !\X[0]~input_o\ & ( \Y[3]~input_o\ & ( (!\Y[2]~input_o\) # ((!\Y[0]~input_o\ & ((!\Y[1]~input_o\) # 
-- (\X[1]~input_o\))) # (\Y[0]~input_o\ & (!\Y[1]~input_o\ & \X[1]~input_o\))) ) ) ) # ( \X[0]~input_o\ & ( !\Y[3]~input_o\ & ( (\Y[2]~input_o\ & (\Y[1]~input_o\ & !\X[1]~input_o\)) ) ) ) # ( !\X[0]~input_o\ & ( !\Y[3]~input_o\ & ( (\Y[2]~input_o\ & 
-- ((!\Y[0]~input_o\ & (\Y[1]~input_o\ & !\X[1]~input_o\)) # (\Y[0]~input_o\ & ((!\X[1]~input_o\) # (\Y[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000001000001010000000011101010111111101111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y[2]~input_o\,
	datab => \ALT_INV_Y[0]~input_o\,
	datac => \ALT_INV_Y[1]~input_o\,
	datad => \ALT_INV_X[1]~input_o\,
	datae => \ALT_INV_X[0]~input_o\,
	dataf => \ALT_INV_Y[3]~input_o\,
	combout => \CLA4_0|FA_GEN:3:FAX|HA2|sum~combout\);

-- Location: LABCELL_X51_Y13_N24
\CLA4_0|CLC_0|carry~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CLA4_0|CLC_0|carry~0_combout\ = ( \X[0]~input_o\ & ( \Y[3]~input_o\ & ( (\Y[2]~input_o\ & (\Y[1]~input_o\ & !\X[1]~input_o\)) ) ) ) # ( !\X[0]~input_o\ & ( \Y[3]~input_o\ & ( (\Y[2]~input_o\ & ((!\Y[0]~input_o\ & (\Y[1]~input_o\ & !\X[1]~input_o\)) # 
-- (\Y[0]~input_o\ & ((!\X[1]~input_o\) # (\Y[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101000000010000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y[2]~input_o\,
	datab => \ALT_INV_Y[0]~input_o\,
	datac => \ALT_INV_Y[1]~input_o\,
	datad => \ALT_INV_X[1]~input_o\,
	datae => \ALT_INV_X[0]~input_o\,
	dataf => \ALT_INV_Y[3]~input_o\,
	combout => \CLA4_0|CLC_0|carry~0_combout\);

-- Location: LABCELL_X27_Y46_N0
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


