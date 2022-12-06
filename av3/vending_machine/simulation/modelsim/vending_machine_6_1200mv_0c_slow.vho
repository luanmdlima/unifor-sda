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

-- DATE "12/06/2022 12:09:02"

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

ENTITY 	operational IS
    PORT (
	tot_lt_s : OUT std_logic;
	s : IN std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic;
	tot_ld : IN std_logic;
	tot_clr : IN std_logic;
	a : IN std_logic_vector(7 DOWNTO 0)
	);
END operational;

-- Design Ports Information
-- tot_lt_s	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tot_ld	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tot_clr	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF operational IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_tot_lt_s : std_logic;
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_tot_ld : std_logic;
SIGNAL ww_tot_clr : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tot_clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tot_lt_s~output_o\ : std_logic;
SIGNAL \s[7]~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \tot_clr~input_o\ : std_logic;
SIGNAL \tot_clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \tot_ld~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \inst3|totalR[0]~0_combout\ : std_logic;
SIGNAL \inst3|totalR[0]~1\ : std_logic;
SIGNAL \inst3|totalR[1]~2_combout\ : std_logic;
SIGNAL \inst3|totalR[1]~3\ : std_logic;
SIGNAL \inst3|totalR[2]~4_combout\ : std_logic;
SIGNAL \inst3|totalR[2]~5\ : std_logic;
SIGNAL \inst3|totalR[3]~6_combout\ : std_logic;
SIGNAL \inst3|totalR[3]~7\ : std_logic;
SIGNAL \inst3|totalR[4]~8_combout\ : std_logic;
SIGNAL \inst3|totalR[4]~9\ : std_logic;
SIGNAL \inst3|totalR[5]~10_combout\ : std_logic;
SIGNAL \inst3|totalR[5]~11\ : std_logic;
SIGNAL \inst3|totalR[6]~12_combout\ : std_logic;
SIGNAL \inst3|totalR[6]~13\ : std_logic;
SIGNAL \inst3|totalR[7]~14_combout\ : std_logic;
SIGNAL \inst2|totalC[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|totalC[7]~0_combout\ : std_logic;
SIGNAL \s[6]~input_o\ : std_logic;
SIGNAL \inst2|totalC[6]~feeder_combout\ : std_logic;
SIGNAL \s[5]~input_o\ : std_logic;
SIGNAL \inst2|totalC[5]~feeder_combout\ : std_logic;
SIGNAL \s[4]~input_o\ : std_logic;
SIGNAL \inst2|totalC[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|totalC[3]~feeder_combout\ : std_logic;
SIGNAL \s[3]~input_o\ : std_logic;
SIGNAL \s[2]~input_o\ : std_logic;
SIGNAL \inst2|totalC[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|totalC[1]~feeder_combout\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~14_combout\ : std_logic;
SIGNAL \inst2|totalS\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|totalC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_tot_clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~14_combout\ : std_logic;

BEGIN

tot_lt_s <= ww_tot_lt_s;
ww_s <= s;
ww_clock <= clock;
ww_tot_ld <= tot_ld;
ww_tot_clr <= tot_clr;
ww_a <= a;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\tot_clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tot_clr~input_o\);
\ALT_INV_tot_clr~inputclkctrl_outclk\ <= NOT \tot_clr~inputclkctrl_outclk\;
\inst|ALT_INV_LessThan0~14_combout\ <= NOT \inst|LessThan0~14_combout\;

-- Location: IOOBUF_X0_Y21_N2
\tot_lt_s~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_LessThan0~14_combout\,
	devoe => ww_devoe,
	o => \tot_lt_s~output_o\);

-- Location: IOIBUF_X0_Y23_N15
\s[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(7),
	o => \s[7]~input_o\);

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

-- Location: IOIBUF_X0_Y14_N8
\tot_clr~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tot_clr,
	o => \tot_clr~input_o\);

-- Location: CLKCTRL_G2
\tot_clr~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tot_clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tot_clr~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y25_N15
\tot_ld~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tot_ld,
	o => \tot_ld~input_o\);

-- Location: FF_X1_Y22_N25
\inst2|totalS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|totalR[7]~14_combout\,
	clrn => \ALT_INV_tot_clr~inputclkctrl_outclk\,
	ena => \tot_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalS\(7));

-- Location: IOIBUF_X0_Y22_N1
\a[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\a[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\a[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\a[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\a[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\a[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X0_Y22_N8
\a[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\a[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X1_Y22_N10
\inst3|totalR[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|totalR[0]~0_combout\ = (\inst2|totalS\(0) & (\a[0]~input_o\ $ (VCC))) # (!\inst2|totalS\(0) & (\a[0]~input_o\ & VCC))
-- \inst3|totalR[0]~1\ = CARRY((\inst2|totalS\(0) & \a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|totalS\(0),
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \inst3|totalR[0]~0_combout\,
	cout => \inst3|totalR[0]~1\);

-- Location: FF_X1_Y22_N11
\inst2|totalS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|totalR[0]~0_combout\,
	clrn => \ALT_INV_tot_clr~inputclkctrl_outclk\,
	ena => \tot_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalS\(0));

-- Location: LCCOMB_X1_Y22_N12
\inst3|totalR[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|totalR[1]~2_combout\ = (\inst2|totalS\(1) & ((\a[1]~input_o\ & (\inst3|totalR[0]~1\ & VCC)) # (!\a[1]~input_o\ & (!\inst3|totalR[0]~1\)))) # (!\inst2|totalS\(1) & ((\a[1]~input_o\ & (!\inst3|totalR[0]~1\)) # (!\a[1]~input_o\ & 
-- ((\inst3|totalR[0]~1\) # (GND)))))
-- \inst3|totalR[1]~3\ = CARRY((\inst2|totalS\(1) & (!\a[1]~input_o\ & !\inst3|totalR[0]~1\)) # (!\inst2|totalS\(1) & ((!\inst3|totalR[0]~1\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|totalS\(1),
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \inst3|totalR[0]~1\,
	combout => \inst3|totalR[1]~2_combout\,
	cout => \inst3|totalR[1]~3\);

-- Location: FF_X1_Y22_N13
\inst2|totalS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|totalR[1]~2_combout\,
	clrn => \ALT_INV_tot_clr~inputclkctrl_outclk\,
	ena => \tot_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalS\(1));

-- Location: LCCOMB_X1_Y22_N14
\inst3|totalR[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|totalR[2]~4_combout\ = ((\a[2]~input_o\ $ (\inst2|totalS\(2) $ (!\inst3|totalR[1]~3\)))) # (GND)
-- \inst3|totalR[2]~5\ = CARRY((\a[2]~input_o\ & ((\inst2|totalS\(2)) # (!\inst3|totalR[1]~3\))) # (!\a[2]~input_o\ & (\inst2|totalS\(2) & !\inst3|totalR[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \inst2|totalS\(2),
	datad => VCC,
	cin => \inst3|totalR[1]~3\,
	combout => \inst3|totalR[2]~4_combout\,
	cout => \inst3|totalR[2]~5\);

-- Location: FF_X1_Y22_N15
\inst2|totalS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|totalR[2]~4_combout\,
	clrn => \ALT_INV_tot_clr~inputclkctrl_outclk\,
	ena => \tot_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalS\(2));

-- Location: LCCOMB_X1_Y22_N16
\inst3|totalR[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|totalR[3]~6_combout\ = (\a[3]~input_o\ & ((\inst2|totalS\(3) & (\inst3|totalR[2]~5\ & VCC)) # (!\inst2|totalS\(3) & (!\inst3|totalR[2]~5\)))) # (!\a[3]~input_o\ & ((\inst2|totalS\(3) & (!\inst3|totalR[2]~5\)) # (!\inst2|totalS\(3) & 
-- ((\inst3|totalR[2]~5\) # (GND)))))
-- \inst3|totalR[3]~7\ = CARRY((\a[3]~input_o\ & (!\inst2|totalS\(3) & !\inst3|totalR[2]~5\)) # (!\a[3]~input_o\ & ((!\inst3|totalR[2]~5\) # (!\inst2|totalS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \inst2|totalS\(3),
	datad => VCC,
	cin => \inst3|totalR[2]~5\,
	combout => \inst3|totalR[3]~6_combout\,
	cout => \inst3|totalR[3]~7\);

-- Location: FF_X1_Y22_N17
\inst2|totalS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|totalR[3]~6_combout\,
	clrn => \ALT_INV_tot_clr~inputclkctrl_outclk\,
	ena => \tot_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalS\(3));

-- Location: LCCOMB_X1_Y22_N18
\inst3|totalR[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|totalR[4]~8_combout\ = ((\inst2|totalS\(4) $ (\a[4]~input_o\ $ (!\inst3|totalR[3]~7\)))) # (GND)
-- \inst3|totalR[4]~9\ = CARRY((\inst2|totalS\(4) & ((\a[4]~input_o\) # (!\inst3|totalR[3]~7\))) # (!\inst2|totalS\(4) & (\a[4]~input_o\ & !\inst3|totalR[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|totalS\(4),
	datab => \a[4]~input_o\,
	datad => VCC,
	cin => \inst3|totalR[3]~7\,
	combout => \inst3|totalR[4]~8_combout\,
	cout => \inst3|totalR[4]~9\);

-- Location: FF_X1_Y22_N19
\inst2|totalS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|totalR[4]~8_combout\,
	clrn => \ALT_INV_tot_clr~inputclkctrl_outclk\,
	ena => \tot_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalS\(4));

-- Location: LCCOMB_X1_Y22_N20
\inst3|totalR[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|totalR[5]~10_combout\ = (\inst2|totalS\(5) & ((\a[5]~input_o\ & (\inst3|totalR[4]~9\ & VCC)) # (!\a[5]~input_o\ & (!\inst3|totalR[4]~9\)))) # (!\inst2|totalS\(5) & ((\a[5]~input_o\ & (!\inst3|totalR[4]~9\)) # (!\a[5]~input_o\ & 
-- ((\inst3|totalR[4]~9\) # (GND)))))
-- \inst3|totalR[5]~11\ = CARRY((\inst2|totalS\(5) & (!\a[5]~input_o\ & !\inst3|totalR[4]~9\)) # (!\inst2|totalS\(5) & ((!\inst3|totalR[4]~9\) # (!\a[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|totalS\(5),
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \inst3|totalR[4]~9\,
	combout => \inst3|totalR[5]~10_combout\,
	cout => \inst3|totalR[5]~11\);

-- Location: FF_X1_Y22_N21
\inst2|totalS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|totalR[5]~10_combout\,
	clrn => \ALT_INV_tot_clr~inputclkctrl_outclk\,
	ena => \tot_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalS\(5));

-- Location: LCCOMB_X1_Y22_N22
\inst3|totalR[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|totalR[6]~12_combout\ = ((\a[6]~input_o\ $ (\inst2|totalS\(6) $ (!\inst3|totalR[5]~11\)))) # (GND)
-- \inst3|totalR[6]~13\ = CARRY((\a[6]~input_o\ & ((\inst2|totalS\(6)) # (!\inst3|totalR[5]~11\))) # (!\a[6]~input_o\ & (\inst2|totalS\(6) & !\inst3|totalR[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \inst2|totalS\(6),
	datad => VCC,
	cin => \inst3|totalR[5]~11\,
	combout => \inst3|totalR[6]~12_combout\,
	cout => \inst3|totalR[6]~13\);

-- Location: FF_X1_Y22_N23
\inst2|totalS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|totalR[6]~12_combout\,
	clrn => \ALT_INV_tot_clr~inputclkctrl_outclk\,
	ena => \tot_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalS\(6));

-- Location: LCCOMB_X1_Y22_N24
\inst3|totalR[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|totalR[7]~14_combout\ = \inst2|totalS\(7) $ (\a[7]~input_o\ $ (\inst3|totalR[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|totalS\(7),
	datab => \a[7]~input_o\,
	cin => \inst3|totalR[6]~13\,
	combout => \inst3|totalR[7]~14_combout\);

-- Location: LCCOMB_X1_Y22_N8
\inst2|totalC[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|totalC[7]~feeder_combout\ = \inst3|totalR[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|totalR[7]~14_combout\,
	combout => \inst2|totalC[7]~feeder_combout\);

-- Location: LCCOMB_X1_Y22_N2
\inst2|totalC[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|totalC[7]~0_combout\ = (!\tot_clr~input_o\ & \tot_ld~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tot_clr~input_o\,
	datad => \tot_ld~input_o\,
	combout => \inst2|totalC[7]~0_combout\);

-- Location: FF_X1_Y22_N9
\inst2|totalC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|totalC[7]~feeder_combout\,
	ena => \inst2|totalC[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalC\(7));

-- Location: IOIBUF_X0_Y24_N1
\s[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(6),
	o => \s[6]~input_o\);

-- Location: LCCOMB_X1_Y22_N6
\inst2|totalC[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|totalC[6]~feeder_combout\ = \inst3|totalR[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|totalR[6]~12_combout\,
	combout => \inst2|totalC[6]~feeder_combout\);

-- Location: FF_X1_Y22_N7
\inst2|totalC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|totalC[6]~feeder_combout\,
	ena => \inst2|totalC[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalC\(6));

-- Location: IOIBUF_X0_Y24_N15
\s[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(5),
	o => \s[5]~input_o\);

-- Location: LCCOMB_X1_Y22_N0
\inst2|totalC[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|totalC[5]~feeder_combout\ = \inst3|totalR[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|totalR[5]~10_combout\,
	combout => \inst2|totalC[5]~feeder_combout\);

-- Location: FF_X1_Y22_N1
\inst2|totalC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|totalC[5]~feeder_combout\,
	ena => \inst2|totalC[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalC\(5));

-- Location: IOIBUF_X0_Y21_N15
\s[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(4),
	o => \s[4]~input_o\);

-- Location: LCCOMB_X1_Y22_N26
\inst2|totalC[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|totalC[4]~feeder_combout\ = \inst3|totalR[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|totalR[4]~8_combout\,
	combout => \inst2|totalC[4]~feeder_combout\);

-- Location: FF_X1_Y22_N27
\inst2|totalC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|totalC[4]~feeder_combout\,
	ena => \inst2|totalC[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalC\(4));

-- Location: LCCOMB_X1_Y22_N28
\inst2|totalC[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|totalC[3]~feeder_combout\ = \inst3|totalR[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|totalR[3]~6_combout\,
	combout => \inst2|totalC[3]~feeder_combout\);

-- Location: FF_X1_Y22_N29
\inst2|totalC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|totalC[3]~feeder_combout\,
	ena => \inst2|totalC[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalC\(3));

-- Location: IOIBUF_X0_Y23_N1
\s[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(3),
	o => \s[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\s[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(2),
	o => \s[2]~input_o\);

-- Location: LCCOMB_X1_Y22_N30
\inst2|totalC[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|totalC[2]~feeder_combout\ = \inst3|totalR[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|totalR[2]~4_combout\,
	combout => \inst2|totalC[2]~feeder_combout\);

-- Location: FF_X1_Y22_N31
\inst2|totalC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|totalC[2]~feeder_combout\,
	ena => \inst2|totalC[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalC\(2));

-- Location: LCCOMB_X1_Y22_N4
\inst2|totalC[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|totalC[1]~feeder_combout\ = \inst3|totalR[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|totalR[1]~2_combout\,
	combout => \inst2|totalC[1]~feeder_combout\);

-- Location: FF_X1_Y22_N5
\inst2|totalC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|totalC[1]~feeder_combout\,
	ena => \inst2|totalC[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalC\(1));

-- Location: IOIBUF_X0_Y23_N8
\s[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(1),
	o => \s[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\s[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(0),
	o => \s[0]~input_o\);

-- Location: FF_X1_Y22_N3
\inst2|totalC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst3|totalR[0]~0_combout\,
	sload => VCC,
	ena => \inst2|totalC[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|totalC\(0));

-- Location: LCCOMB_X1_Y23_N12
\inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((!\s[0]~input_o\ & \inst2|totalC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \inst2|totalC\(0),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X1_Y23_N14
\inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\inst2|totalC\(1) & (\s[1]~input_o\ & !\inst|LessThan0~1_cout\)) # (!\inst2|totalC\(1) & ((\s[1]~input_o\) # (!\inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|totalC\(1),
	datab => \s[1]~input_o\,
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X1_Y23_N16
\inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\s[2]~input_o\ & (\inst2|totalC\(2) & !\inst|LessThan0~3_cout\)) # (!\s[2]~input_o\ & ((\inst2|totalC\(2)) # (!\inst|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[2]~input_o\,
	datab => \inst2|totalC\(2),
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X1_Y23_N18
\inst|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst2|totalC\(3) & (\s[3]~input_o\ & !\inst|LessThan0~5_cout\)) # (!\inst2|totalC\(3) & ((\s[3]~input_o\) # (!\inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|totalC\(3),
	datab => \s[3]~input_o\,
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X1_Y23_N20
\inst|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\s[4]~input_o\ & (\inst2|totalC\(4) & !\inst|LessThan0~7_cout\)) # (!\s[4]~input_o\ & ((\inst2|totalC\(4)) # (!\inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[4]~input_o\,
	datab => \inst2|totalC\(4),
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X1_Y23_N22
\inst|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\s[5]~input_o\ & ((!\inst|LessThan0~9_cout\) # (!\inst2|totalC\(5)))) # (!\s[5]~input_o\ & (!\inst2|totalC\(5) & !\inst|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[5]~input_o\,
	datab => \inst2|totalC\(5),
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X1_Y23_N24
\inst|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\s[6]~input_o\ & (\inst2|totalC\(6) & !\inst|LessThan0~11_cout\)) # (!\s[6]~input_o\ & ((\inst2|totalC\(6)) # (!\inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[6]~input_o\,
	datab => \inst2|totalC\(6),
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X1_Y23_N26
\inst|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~14_combout\ = (\s[7]~input_o\ & (\inst|LessThan0~13_cout\ & \inst2|totalC\(7))) # (!\s[7]~input_o\ & ((\inst|LessThan0~13_cout\) # (\inst2|totalC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s[7]~input_o\,
	datad => \inst2|totalC\(7),
	cin => \inst|LessThan0~13_cout\,
	combout => \inst|LessThan0~14_combout\);

ww_tot_lt_s <= \tot_lt_s~output_o\;
END structure;


