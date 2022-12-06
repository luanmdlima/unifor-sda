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

-- DATE "12/01/2022 20:24:27"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	semaphore_state_machine IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	counter : IN std_logic_vector(4 DOWNTO 0);
	red : BUFFER std_logic_vector(2 DOWNTO 0);
	green : BUFFER std_logic_vector(2 DOWNTO 0);
	yellow : BUFFER std_logic_vector(2 DOWNTO 0);
	reset_counter : BUFFER std_logic
	);
END semaphore_state_machine;

-- Design Ports Information
-- red[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_counter	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter[4]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter[2]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF semaphore_state_machine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_counter : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_yellow : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reset_counter : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \red[0]~output_o\ : std_logic;
SIGNAL \red[1]~output_o\ : std_logic;
SIGNAL \red[2]~output_o\ : std_logic;
SIGNAL \green[0]~output_o\ : std_logic;
SIGNAL \green[1]~output_o\ : std_logic;
SIGNAL \green[2]~output_o\ : std_logic;
SIGNAL \yellow[0]~output_o\ : std_logic;
SIGNAL \yellow[1]~output_o\ : std_logic;
SIGNAL \yellow[2]~output_o\ : std_logic;
SIGNAL \reset_counter~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[2]~input_o\ : std_logic;
SIGNAL \counter[4]~input_o\ : std_logic;
SIGNAL \counter[3]~input_o\ : std_logic;
SIGNAL \counter[0]~input_o\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \counter[1]~input_o\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \fstate.state1~q\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \fstate.state2~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \fstate.state3~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \fstate.state4~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \fstate.state5~q\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \fstate.state6~q\ : std_logic;
SIGNAL \red~0_combout\ : std_logic;
SIGNAL \red~1_combout\ : std_logic;
SIGNAL \red~2_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_red~2_combout\ : std_logic;
SIGNAL \ALT_INV_fstate.state1~q\ : std_logic;
SIGNAL \ALT_INV_red~1_combout\ : std_logic;
SIGNAL \ALT_INV_red~0_combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_counter <= counter;
red <= ww_red;
green <= ww_green;
yellow <= ww_yellow;
reset_counter <= ww_reset_counter;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_red~2_combout\ <= NOT \red~2_combout\;
\ALT_INV_fstate.state1~q\ <= NOT \fstate.state1~q\;
\ALT_INV_red~1_combout\ <= NOT \red~1_combout\;
\ALT_INV_red~0_combout\ <= NOT \red~0_combout\;

-- Location: IOOBUF_X0_Y5_N23
\red[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_red~0_combout\,
	devoe => ww_devoe,
	o => \red[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\red[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_red~1_combout\,
	devoe => ww_devoe,
	o => \red[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\red[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_red~2_combout\,
	devoe => ww_devoe,
	o => \red[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\green[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fstate.state5~q\,
	devoe => ww_devoe,
	o => \green[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\green[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fstate.state3~q\,
	devoe => ww_devoe,
	o => \green[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\green[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_fstate.state1~q\,
	devoe => ww_devoe,
	o => \green[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\yellow[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fstate.state6~q\,
	devoe => ww_devoe,
	o => \yellow[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\yellow[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fstate.state4~q\,
	devoe => ww_devoe,
	o => \yellow[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\yellow[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fstate.state2~q\,
	devoe => ww_devoe,
	o => \yellow[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\reset_counter~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector6~0_combout\,
	devoe => ww_devoe,
	o => \reset_counter~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y6_N22
\counter[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_counter(2),
	o => \counter[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\counter[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_counter(4),
	o => \counter[4]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\counter[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_counter(3),
	o => \counter[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\counter[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_counter(0),
	o => \counter[0]~input_o\);

-- Location: LCCOMB_X1_Y6_N14
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\counter[3]~input_o\ & \counter[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[3]~input_o\,
	datad => \counter[0]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: IOIBUF_X0_Y6_N8
\counter[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_counter(1),
	o => \counter[1]~input_o\);

-- Location: LCCOMB_X1_Y6_N8
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!\counter[2]~input_o\ & (\counter[4]~input_o\ & (\Equal4~0_combout\ & \counter[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[2]~input_o\,
	datab => \counter[4]~input_o\,
	datac => \Equal4~0_combout\,
	datad => \counter[1]~input_o\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X1_Y6_N26
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\counter[0]~input_o\ & (!\counter[4]~input_o\ & (\counter[2]~input_o\ & \counter[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~input_o\,
	datab => \counter[4]~input_o\,
	datac => \counter[2]~input_o\,
	datad => \counter[3]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X1_Y6_N0
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\counter[1]~input_o\ & (!\counter[3]~input_o\ & (\counter[2]~input_o\ & \counter[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[1]~input_o\,
	datab => \counter[3]~input_o\,
	datac => \counter[2]~input_o\,
	datad => \counter[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y6_N22
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\counter[4]~input_o\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X1_Y6_N4
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\counter[2]~input_o\ & (!\counter[4]~input_o\ & (\Equal4~0_combout\ & \counter[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[2]~input_o\,
	datab => \counter[4]~input_o\,
	datac => \Equal4~0_combout\,
	datad => \counter[1]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X1_Y6_N10
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Equal0~0_combout\ & (((\fstate.state1~q\ & !\fstate.state6~q\)) # (!\counter[4]~input_o\))) # (!\Equal0~0_combout\ & (((\fstate.state1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[4]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \fstate.state1~q\,
	datad => \fstate.state6~q\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y6_N11
\fstate.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state1~q\);

-- Location: LCCOMB_X1_Y6_N28
\Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\ & (((!\Equal5~0_combout\ & \fstate.state2~q\)) # (!\fstate.state1~q\))) # (!\Selector5~0_combout\ & (!\Equal5~0_combout\ & (\fstate.state2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \Equal5~0_combout\,
	datac => \fstate.state2~q\,
	datad => \fstate.state1~q\,
	combout => \Selector5~1_combout\);

-- Location: FF_X1_Y6_N29
\fstate.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state2~q\);

-- Location: LCCOMB_X1_Y6_N18
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\fstate.state3~q\ & ((\counter[1]~input_o\) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \counter[1]~input_o\,
	datad => \fstate.state3~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X1_Y6_N2
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\fstate.state2~q\ & \Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fstate.state2~q\,
	datac => \Equal5~0_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X1_Y6_N3
\fstate.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state3~q\);

-- Location: LCCOMB_X1_Y6_N12
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Equal2~0_combout\ & (!\counter[1]~input_o\ & ((\fstate.state4~q\) # (\fstate.state3~q\)))) # (!\Equal2~0_combout\ & (((\fstate.state4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \counter[1]~input_o\,
	datac => \fstate.state4~q\,
	datad => \fstate.state3~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X1_Y6_N13
\fstate.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state4~q\);

-- Location: LCCOMB_X1_Y6_N24
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Equal2~0_combout\ & (\counter[1]~input_o\ & \fstate.state4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \counter[1]~input_o\,
	datad => \fstate.state4~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X1_Y6_N30
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((!\Equal4~1_combout\ & \fstate.state5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~1_combout\,
	datac => \fstate.state5~q\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X1_Y6_N31
\fstate.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state5~q\);

-- Location: LCCOMB_X1_Y6_N16
\Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\fstate.state6~q\ & ((!\counter[4]~input_o\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \counter[4]~input_o\,
	datad => \fstate.state6~q\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X1_Y6_N20
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Selector6~1_combout\) # ((\Equal4~1_combout\ & \fstate.state5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~1_combout\,
	datac => \fstate.state5~q\,
	datad => \Selector6~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X1_Y6_N21
\fstate.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state6~q\);

-- Location: LCCOMB_X1_Y5_N16
\red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~0_combout\ = (\fstate.state6~q\) # (\fstate.state5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fstate.state6~q\,
	datac => \fstate.state5~q\,
	combout => \red~0_combout\);

-- Location: LCCOMB_X1_Y3_N16
\red~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~1_combout\ = (\fstate.state4~q\) # (\fstate.state3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fstate.state4~q\,
	datac => \fstate.state3~q\,
	combout => \red~1_combout\);

-- Location: LCCOMB_X1_Y4_N16
\red~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~2_combout\ = (\fstate.state2~q\) # (!\fstate.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state2~q\,
	datac => \fstate.state1~q\,
	combout => \red~2_combout\);

-- Location: LCCOMB_X1_Y6_N6
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\fstate.state6~q\ & (\counter[4]~input_o\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state6~q\,
	datac => \counter[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Selector6~0_combout\);

ww_red(0) <= \red[0]~output_o\;

ww_red(1) <= \red[1]~output_o\;

ww_red(2) <= \red[2]~output_o\;

ww_green(0) <= \green[0]~output_o\;

ww_green(1) <= \green[1]~output_o\;

ww_green(2) <= \green[2]~output_o\;

ww_yellow(0) <= \yellow[0]~output_o\;

ww_yellow(1) <= \yellow[1]~output_o\;

ww_yellow(2) <= \yellow[2]~output_o\;

ww_reset_counter <= \reset_counter~output_o\;
END structure;


