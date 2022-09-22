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

-- DATE "09/22/2022 16:50:00"

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

ENTITY 	mux_2bit_4to1_if_then_else IS
    PORT (
	S : IN std_logic_vector(3 DOWNTO 0);
	U : IN std_logic_vector(3 DOWNTO 0);
	V : IN std_logic_vector(3 DOWNTO 0);
	W : IN std_logic_vector(3 DOWNTO 0);
	X : IN std_logic_vector(3 DOWNTO 0);
	M : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END mux_2bit_4to1_if_then_else;

-- Design Ports Information
-- S[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[2]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux_2bit_4to1_if_then_else IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_U : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_V : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_W : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_M : std_logic_vector(3 DOWNTO 0);
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \S[3]~input_o\ : std_logic;
SIGNAL \M[0]~output_o\ : std_logic;
SIGNAL \M[1]~output_o\ : std_logic;
SIGNAL \M[2]~output_o\ : std_logic;
SIGNAL \M[3]~output_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \V[0]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \U[0]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \W[0]~input_o\ : std_logic;
SIGNAL \M[0]~0_combout\ : std_logic;
SIGNAL \M[0]~1_combout\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \W[1]~input_o\ : std_logic;
SIGNAL \U[1]~input_o\ : std_logic;
SIGNAL \V[1]~input_o\ : std_logic;
SIGNAL \M[1]~2_combout\ : std_logic;
SIGNAL \M[1]~3_combout\ : std_logic;
SIGNAL \W[2]~input_o\ : std_logic;
SIGNAL \U[2]~input_o\ : std_logic;
SIGNAL \M[2]~4_combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \V[2]~input_o\ : std_logic;
SIGNAL \M[2]~5_combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \W[3]~input_o\ : std_logic;
SIGNAL \V[3]~input_o\ : std_logic;
SIGNAL \U[3]~input_o\ : std_logic;
SIGNAL \M[3]~6_combout\ : std_logic;
SIGNAL \M[3]~7_combout\ : std_logic;

BEGIN

ww_S <= S;
ww_U <= U;
ww_V <= V;
ww_W <= W;
ww_X <= X;
M <= ww_M;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y13_N9
\M[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M[0]~1_combout\,
	devoe => ww_devoe,
	o => \M[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\M[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M[1]~3_combout\,
	devoe => ww_devoe,
	o => \M[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\M[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M[2]~5_combout\,
	devoe => ww_devoe,
	o => \M[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\M[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M[3]~7_combout\,
	devoe => ww_devoe,
	o => \M[3]~output_o\);

-- Location: IOIBUF_X0_Y9_N8
\S[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\V[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(0),
	o => \V[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\X[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\U[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(0),
	o => \U[0]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\S[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\W[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(0),
	o => \W[0]~input_o\);

-- Location: LCCOMB_X1_Y7_N0
\M[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[0]~0_combout\ = (\S[1]~input_o\ & (((\S[0]~input_o\)))) # (!\S[1]~input_o\ & ((\S[0]~input_o\ & ((\W[0]~input_o\))) # (!\S[0]~input_o\ & (\U[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \U[0]~input_o\,
	datac => \S[0]~input_o\,
	datad => \W[0]~input_o\,
	combout => \M[0]~0_combout\);

-- Location: LCCOMB_X1_Y7_N18
\M[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[0]~1_combout\ = (\S[1]~input_o\ & ((\M[0]~0_combout\ & ((\X[0]~input_o\))) # (!\M[0]~0_combout\ & (\V[0]~input_o\)))) # (!\S[1]~input_o\ & (((\M[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \V[0]~input_o\,
	datac => \X[0]~input_o\,
	datad => \M[0]~0_combout\,
	combout => \M[0]~1_combout\);

-- Location: IOIBUF_X0_Y24_N15
\X[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\W[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(1),
	o => \W[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\U[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(1),
	o => \U[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\V[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(1),
	o => \V[1]~input_o\);

-- Location: LCCOMB_X1_Y7_N12
\M[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[1]~2_combout\ = (\S[1]~input_o\ & (((\S[0]~input_o\) # (\V[1]~input_o\)))) # (!\S[1]~input_o\ & (\U[1]~input_o\ & (!\S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \U[1]~input_o\,
	datac => \S[0]~input_o\,
	datad => \V[1]~input_o\,
	combout => \M[1]~2_combout\);

-- Location: LCCOMB_X1_Y7_N6
\M[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[1]~3_combout\ = (\S[0]~input_o\ & ((\M[1]~2_combout\ & (\X[1]~input_o\)) # (!\M[1]~2_combout\ & ((\W[1]~input_o\))))) # (!\S[0]~input_o\ & (((\M[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \X[1]~input_o\,
	datac => \W[1]~input_o\,
	datad => \M[1]~2_combout\,
	combout => \M[1]~3_combout\);

-- Location: IOIBUF_X0_Y12_N8
\W[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(2),
	o => \W[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\U[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(2),
	o => \U[2]~input_o\);

-- Location: LCCOMB_X1_Y7_N24
\M[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[2]~4_combout\ = (\S[0]~input_o\ & ((\W[2]~input_o\) # ((\S[1]~input_o\)))) # (!\S[0]~input_o\ & (((\U[2]~input_o\ & !\S[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[2]~input_o\,
	datab => \U[2]~input_o\,
	datac => \S[0]~input_o\,
	datad => \S[1]~input_o\,
	combout => \M[2]~4_combout\);

-- Location: IOIBUF_X0_Y7_N8
\X[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\V[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(2),
	o => \V[2]~input_o\);

-- Location: LCCOMB_X1_Y7_N10
\M[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[2]~5_combout\ = (\S[1]~input_o\ & ((\M[2]~4_combout\ & (\X[2]~input_o\)) # (!\M[2]~4_combout\ & ((\V[2]~input_o\))))) # (!\S[1]~input_o\ & (\M[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \M[2]~4_combout\,
	datac => \X[2]~input_o\,
	datad => \V[2]~input_o\,
	combout => \M[2]~5_combout\);

-- Location: IOIBUF_X0_Y6_N22
\X[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\W[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(3),
	o => \W[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\V[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V(3),
	o => \V[3]~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\U[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(3),
	o => \U[3]~input_o\);

-- Location: LCCOMB_X1_Y7_N20
\M[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[3]~6_combout\ = (\S[1]~input_o\ & ((\V[3]~input_o\) # ((\S[0]~input_o\)))) # (!\S[1]~input_o\ & (((!\S[0]~input_o\ & \U[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \V[3]~input_o\,
	datac => \S[0]~input_o\,
	datad => \U[3]~input_o\,
	combout => \M[3]~6_combout\);

-- Location: LCCOMB_X1_Y7_N22
\M[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[3]~7_combout\ = (\S[0]~input_o\ & ((\M[3]~6_combout\ & (\X[3]~input_o\)) # (!\M[3]~6_combout\ & ((\W[3]~input_o\))))) # (!\S[0]~input_o\ & (((\M[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \W[3]~input_o\,
	datac => \S[0]~input_o\,
	datad => \M[3]~6_combout\,
	combout => \M[3]~7_combout\);

-- Location: IOIBUF_X32_Y29_N15
\S[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X23_Y29_N1
\S[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(3),
	o => \S[3]~input_o\);

ww_M(0) <= \M[0]~output_o\;

ww_M(1) <= \M[1]~output_o\;

ww_M(2) <= \M[2]~output_o\;

ww_M(3) <= \M[3]~output_o\;
END structure;


