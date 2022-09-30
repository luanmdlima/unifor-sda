-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/29/2022 22:44:08"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	adder IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	ze : IN std_logic;
	s : BUFFER std_logic_vector(3 DOWNTO 0);
	zs : BUFFER std_logic
	);
END adder;

-- Design Ports Information
-- s[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zs	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ze	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ze : std_logic;
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_zs : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \zs~output_o\ : std_logic;
SIGNAL \ze~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \s~0_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \processo1:v[1]~0_combout\ : std_logic;
SIGNAL \processo1:v[1]~1_combout\ : std_logic;
SIGNAL \s~1_combout\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \processo1:v[2]~0_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \s~2_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \processo1:v[3]~1_combout\ : std_logic;
SIGNAL \processo1:v[3]~0_combout\ : std_logic;
SIGNAL \s~3_combout\ : std_logic;
SIGNAL \v~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_ze <= ze;
s <= ww_s;
zs <= ww_zs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y13_N9
\s[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s~0_combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\s[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s~1_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\s[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s~2_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\s[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s~3_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\zs~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \v~0_combout\,
	devoe => ww_devoe,
	o => \zs~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\ze~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ze,
	o => \ze~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\y[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\x[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X1_Y13_N16
\s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s~0_combout\ = \ze~input_o\ $ (\y[0]~input_o\ $ (\x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ze~input_o\,
	datac => \y[0]~input_o\,
	datad => \x[0]~input_o\,
	combout => \s~0_combout\);

-- Location: IOIBUF_X0_Y13_N15
\x[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\y[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LCCOMB_X1_Y13_N26
\processo1:v[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \processo1:v[1]~0_combout\ = (\y[0]~input_o\ & \ze~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[0]~input_o\,
	datad => \ze~input_o\,
	combout => \processo1:v[1]~0_combout\);

-- Location: LCCOMB_X1_Y13_N28
\processo1:v[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \processo1:v[1]~1_combout\ = (\x[0]~input_o\ & ((\ze~input_o\) # (\y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ze~input_o\,
	datac => \y[0]~input_o\,
	datad => \x[0]~input_o\,
	combout => \processo1:v[1]~1_combout\);

-- Location: LCCOMB_X1_Y13_N14
\s~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s~1_combout\ = \x[1]~input_o\ $ (\y[1]~input_o\ $ (((\processo1:v[1]~0_combout\) # (\processo1:v[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \y[1]~input_o\,
	datac => \processo1:v[1]~0_combout\,
	datad => \processo1:v[1]~1_combout\,
	combout => \s~1_combout\);

-- Location: IOIBUF_X0_Y9_N22
\y[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LCCOMB_X1_Y13_N24
\processo1:v[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \processo1:v[2]~0_combout\ = (\x[1]~input_o\ & ((\y[1]~input_o\) # ((\processo1:v[1]~0_combout\) # (\processo1:v[1]~1_combout\)))) # (!\x[1]~input_o\ & (\y[1]~input_o\ & ((\processo1:v[1]~0_combout\) # (\processo1:v[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \y[1]~input_o\,
	datac => \processo1:v[1]~0_combout\,
	datad => \processo1:v[1]~1_combout\,
	combout => \processo1:v[2]~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\x[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: LCCOMB_X1_Y13_N10
\s~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s~2_combout\ = \y[2]~input_o\ $ (\processo1:v[2]~0_combout\ $ (\x[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \processo1:v[2]~0_combout\,
	datad => \x[2]~input_o\,
	combout => \s~2_combout\);

-- Location: IOIBUF_X0_Y7_N8
\x[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\y[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LCCOMB_X1_Y13_N22
\processo1:v[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \processo1:v[3]~1_combout\ = (\x[2]~input_o\ & ((\y[2]~input_o\) # (\processo1:v[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \processo1:v[2]~0_combout\,
	datad => \x[2]~input_o\,
	combout => \processo1:v[3]~1_combout\);

-- Location: LCCOMB_X1_Y13_N12
\processo1:v[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \processo1:v[3]~0_combout\ = (\y[2]~input_o\ & \processo1:v[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datad => \processo1:v[2]~0_combout\,
	combout => \processo1:v[3]~0_combout\);

-- Location: LCCOMB_X1_Y13_N0
\s~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s~3_combout\ = \x[3]~input_o\ $ (\y[3]~input_o\ $ (((\processo1:v[3]~1_combout\) # (\processo1:v[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \y[3]~input_o\,
	datac => \processo1:v[3]~1_combout\,
	datad => \processo1:v[3]~0_combout\,
	combout => \s~3_combout\);

-- Location: LCCOMB_X1_Y13_N2
\v~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v~0_combout\ = (\x[3]~input_o\ & ((\y[3]~input_o\) # ((\processo1:v[3]~1_combout\) # (\processo1:v[3]~0_combout\)))) # (!\x[3]~input_o\ & (\y[3]~input_o\ & ((\processo1:v[3]~1_combout\) # (\processo1:v[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \y[3]~input_o\,
	datac => \processo1:v[3]~1_combout\,
	datad => \processo1:v[3]~0_combout\,
	combout => \v~0_combout\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_zs <= \zs~output_o\;
END structure;


