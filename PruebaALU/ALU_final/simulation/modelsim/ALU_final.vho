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

-- DATE "11/17/2022 21:24:37"

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

ENTITY 	ALU_final IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Display0 : BUFFER std_logic_vector(6 DOWNTO 0);
	Display1 : BUFFER std_logic_vector(6 DOWNTO 0);
	Display2 : BUFFER std_logic_vector(6 DOWNTO 0);
	Display3 : BUFFER std_logic_vector(6 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	NZVC : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ALU_final;

-- Design Ports Information
-- Display0[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display0[2]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display0[3]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display0[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display0[5]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display0[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[2]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[5]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[6]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[2]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[3]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[5]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[4]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display3[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_final IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Display0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Display3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL \P5|Equal0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display0[0]~output_o\ : std_logic;
SIGNAL \Display0[1]~output_o\ : std_logic;
SIGNAL \Display0[2]~output_o\ : std_logic;
SIGNAL \Display0[3]~output_o\ : std_logic;
SIGNAL \Display0[4]~output_o\ : std_logic;
SIGNAL \Display0[5]~output_o\ : std_logic;
SIGNAL \Display0[6]~output_o\ : std_logic;
SIGNAL \Display1[0]~output_o\ : std_logic;
SIGNAL \Display1[1]~output_o\ : std_logic;
SIGNAL \Display1[2]~output_o\ : std_logic;
SIGNAL \Display1[3]~output_o\ : std_logic;
SIGNAL \Display1[4]~output_o\ : std_logic;
SIGNAL \Display1[5]~output_o\ : std_logic;
SIGNAL \Display1[6]~output_o\ : std_logic;
SIGNAL \Display2[0]~output_o\ : std_logic;
SIGNAL \Display2[1]~output_o\ : std_logic;
SIGNAL \Display2[2]~output_o\ : std_logic;
SIGNAL \Display2[3]~output_o\ : std_logic;
SIGNAL \Display2[4]~output_o\ : std_logic;
SIGNAL \Display2[5]~output_o\ : std_logic;
SIGNAL \Display2[6]~output_o\ : std_logic;
SIGNAL \Display3[0]~output_o\ : std_logic;
SIGNAL \Display3[1]~output_o\ : std_logic;
SIGNAL \Display3[2]~output_o\ : std_logic;
SIGNAL \Display3[3]~output_o\ : std_logic;
SIGNAL \Display3[4]~output_o\ : std_logic;
SIGNAL \Display3[5]~output_o\ : std_logic;
SIGNAL \Display3[6]~output_o\ : std_logic;
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \P5|Add0|auto_generated|_~7_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \P5|Add0|auto_generated|_~6_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \P5|Add0|auto_generated|_~5_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \P5|Add0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \P5|Add0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \P5|Add0|auto_generated|_~2_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \P5|Add0|auto_generated|_~3_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \P5|Add0|auto_generated|_~4_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \P5|Equal0~0_combout\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \P5|Equal0~1_combout\ : std_logic;
SIGNAL \P5|Equal0~1clkctrl_outclk\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \P1|Mux6~0_combout\ : std_logic;
SIGNAL \P1|Mux5~0_combout\ : std_logic;
SIGNAL \P1|Mux4~0_combout\ : std_logic;
SIGNAL \P1|Mux3~0_combout\ : std_logic;
SIGNAL \P1|Mux2~0_combout\ : std_logic;
SIGNAL \P1|Mux1~0_combout\ : std_logic;
SIGNAL \P1|Mux0~0_combout\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \P2|Mux6~0_combout\ : std_logic;
SIGNAL \P2|Mux5~0_combout\ : std_logic;
SIGNAL \P2|Mux4~0_combout\ : std_logic;
SIGNAL \P2|Mux3~0_combout\ : std_logic;
SIGNAL \P2|Mux2~0_combout\ : std_logic;
SIGNAL \P2|Mux1~0_combout\ : std_logic;
SIGNAL \P2|Mux0~0_combout\ : std_logic;
SIGNAL \P3|Mux6~0_combout\ : std_logic;
SIGNAL \P3|Mux5~0_combout\ : std_logic;
SIGNAL \P3|Mux4~0_combout\ : std_logic;
SIGNAL \P3|Mux3~0_combout\ : std_logic;
SIGNAL \P3|Mux2~0_combout\ : std_logic;
SIGNAL \P3|Mux1~0_combout\ : std_logic;
SIGNAL \P3|Mux0~0_combout\ : std_logic;
SIGNAL \P4|Mux6~0_combout\ : std_logic;
SIGNAL \P4|Mux5~0_combout\ : std_logic;
SIGNAL \P4|Mux4~0_combout\ : std_logic;
SIGNAL \P4|Mux3~0_combout\ : std_logic;
SIGNAL \P4|Mux2~0_combout\ : std_logic;
SIGNAL \P4|Mux1~0_combout\ : std_logic;
SIGNAL \P4|Mux0~0_combout\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \P5|Add0|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \P5|Add1~1\ : std_logic;
SIGNAL \P5|Add1~3\ : std_logic;
SIGNAL \P5|Add1~5\ : std_logic;
SIGNAL \P5|Add1~7\ : std_logic;
SIGNAL \P5|Add1~9\ : std_logic;
SIGNAL \P5|Add1~11\ : std_logic;
SIGNAL \P5|Add1~13\ : std_logic;
SIGNAL \P5|Add1~14_combout\ : std_logic;
SIGNAL \P5|LessThan0~1_cout\ : std_logic;
SIGNAL \P5|LessThan0~3_cout\ : std_logic;
SIGNAL \P5|LessThan0~5_cout\ : std_logic;
SIGNAL \P5|LessThan0~7_cout\ : std_logic;
SIGNAL \P5|LessThan0~9_cout\ : std_logic;
SIGNAL \P5|LessThan0~11_cout\ : std_logic;
SIGNAL \P5|LessThan0~13_cout\ : std_logic;
SIGNAL \P5|LessThan0~14_combout\ : std_logic;
SIGNAL \P5|NZVC[1]~1_combout\ : std_logic;
SIGNAL \P5|NZVC[1]~2_combout\ : std_logic;
SIGNAL \P5|Add0~1\ : std_logic;
SIGNAL \P5|Add0~3\ : std_logic;
SIGNAL \P5|Add0~5\ : std_logic;
SIGNAL \P5|Add0~7\ : std_logic;
SIGNAL \P5|Add0~9\ : std_logic;
SIGNAL \P5|Add0~11\ : std_logic;
SIGNAL \P5|Add0~13\ : std_logic;
SIGNAL \P5|Add0~14_combout\ : std_logic;
SIGNAL \P5|NZVC[1]~0_combout\ : std_logic;
SIGNAL \P5|Add1~12_combout\ : std_logic;
SIGNAL \P5|Add1~6_combout\ : std_logic;
SIGNAL \P5|Add1~10_combout\ : std_logic;
SIGNAL \P5|Add1~4_combout\ : std_logic;
SIGNAL \P5|Add1~8_combout\ : std_logic;
SIGNAL \P5|NZVC[2]~7_combout\ : std_logic;
SIGNAL \P5|Add0~8_combout\ : std_logic;
SIGNAL \P5|Add0~6_combout\ : std_logic;
SIGNAL \P5|Add0~10_combout\ : std_logic;
SIGNAL \P5|Add0~4_combout\ : std_logic;
SIGNAL \P5|NZVC[2]~4_combout\ : std_logic;
SIGNAL \P5|Add0~12_combout\ : std_logic;
SIGNAL \P5|Add0~0_combout\ : std_logic;
SIGNAL \P5|Add0~2_combout\ : std_logic;
SIGNAL \P5|NZVC[2]~3_combout\ : std_logic;
SIGNAL \P5|NZVC[2]~5_combout\ : std_logic;
SIGNAL \P5|Add1~2_combout\ : std_logic;
SIGNAL \P5|Add1~0_combout\ : std_logic;
SIGNAL \P5|NZVC[2]~6_combout\ : std_logic;
SIGNAL \P5|NZVC[2]~8_combout\ : std_logic;
SIGNAL \P5|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \P5|NZVC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \P4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \P3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \P2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \P1|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
Display0 <= ww_Display0;
Display1 <= ww_Display1;
Display2 <= ww_Display2;
Display3 <= ww_Display3;
ww_ALU_Sel <= ALU_Sel;
NZVC <= ww_NZVC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\P5|Equal0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \P5|Equal0~1_combout\);
\P4|ALT_INV_Mux6~0_combout\ <= NOT \P4|Mux6~0_combout\;
\P3|ALT_INV_Mux6~0_combout\ <= NOT \P3|Mux6~0_combout\;
\P2|ALT_INV_Mux6~0_combout\ <= NOT \P2|Mux6~0_combout\;
\P1|ALT_INV_Mux6~0_combout\ <= NOT \P1|Mux6~0_combout\;

-- Location: IOOBUF_X41_Y22_N16
\Display0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Display0[0]~output_o\);

-- Location: IOOBUF_X41_Y22_N23
\Display0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Display0[1]~output_o\);

-- Location: IOOBUF_X41_Y25_N23
\Display0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Display0[2]~output_o\);

-- Location: IOOBUF_X41_Y25_N16
\Display0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Display0[3]~output_o\);

-- Location: IOOBUF_X41_Y24_N16
\Display0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Display0[4]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\Display0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Display0[5]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\Display0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Display0[6]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\Display1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Display1[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\Display1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Display1[1]~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\Display1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Display1[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\Display1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Display1[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\Display1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Display1[4]~output_o\);

-- Location: IOOBUF_X41_Y23_N9
\Display1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Display1[5]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\Display1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Display1[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\Display2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Display2[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N16
\Display2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Display2[1]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
\Display2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Display2[2]~output_o\);

-- Location: IOOBUF_X41_Y27_N23
\Display2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Display2[3]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\Display2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Display2[4]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\Display2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Display2[5]~output_o\);

-- Location: IOOBUF_X35_Y29_N23
\Display2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Display2[6]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\Display3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Display3[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\Display3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Display3[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\Display3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Display3[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\Display3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Display3[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\Display3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Display3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\Display3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Display3[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\Display3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Display3[6]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P5|NZVC\(0),
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P5|NZVC\(1),
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P5|NZVC\(2),
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P5|Result\(7),
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOIBUF_X41_Y26_N22
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X41_Y27_N1
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: IOIBUF_X41_Y23_N1
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: IOIBUF_X41_Y27_N8
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: LCCOMB_X40_Y27_N16
\P5|Add0|auto_generated|_~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|_~7_combout\ = \B[7]~input_o\ $ (((!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \P5|Add0|auto_generated|_~7_combout\);

-- Location: IOIBUF_X41_Y27_N15
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X41_Y26_N15
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X40_Y27_N2
\P5|Add0|auto_generated|_~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|_~6_combout\ = \B[6]~input_o\ $ (((!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \B[6]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \P5|Add0|auto_generated|_~6_combout\);

-- Location: IOIBUF_X39_Y29_N22
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X37_Y29_N22
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X41_Y25_N1
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X40_Y27_N26
\P5|Add0|auto_generated|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|_~5_combout\ = \B[5]~input_o\ $ (((!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \P5|Add0|auto_generated|_~5_combout\);

-- Location: IOIBUF_X41_Y26_N8
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X40_Y27_N20
\P5|Add0|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|_~0_combout\ = \B[4]~input_o\ $ (((!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \P5|Add0|auto_generated|_~0_combout\);

-- Location: IOIBUF_X39_Y29_N8
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X41_Y26_N1
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X40_Y27_N12
\P5|Add0|auto_generated|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|_~1_combout\ = \B[3]~input_o\ $ (((!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \P5|Add0|auto_generated|_~1_combout\);

-- Location: IOIBUF_X35_Y29_N29
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X39_Y29_N1
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X37_Y29_N8
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X39_Y27_N28
\P5|Add0|auto_generated|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|_~2_combout\ = \B[2]~input_o\ $ (((!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \P5|Add0|auto_generated|_~2_combout\);

-- Location: IOIBUF_X39_Y29_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X39_Y27_N2
\P5|Add0|auto_generated|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|_~3_combout\ = \B[1]~input_o\ $ (((!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \P5|Add0|auto_generated|_~3_combout\);

-- Location: IOIBUF_X39_Y29_N29
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X32_Y29_N15
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X40_Y27_N28
\P5|Add0|auto_generated|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|_~4_combout\ = \B[0]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \P5|Add0|auto_generated|_~4_combout\);

-- Location: IOIBUF_X37_Y29_N29
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X40_Y27_N10
\P5|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Equal0~0_combout\ = (!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \P5|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y27_N4
\P5|Add0|auto_generated|result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|result_int[0]~1_cout\ = CARRY(!\P5|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P5|Equal0~0_combout\,
	datad => VCC,
	cout => \P5|Add0|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X39_Y27_N6
\P5|Add0|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|result_int[1]~2_combout\ = (\P5|Add0|auto_generated|_~4_combout\ & ((\A[0]~input_o\ & (!\P5|Add0|auto_generated|result_int[0]~1_cout\)) # (!\A[0]~input_o\ & ((\P5|Add0|auto_generated|result_int[0]~1_cout\) # (GND))))) # 
-- (!\P5|Add0|auto_generated|_~4_combout\ & ((\A[0]~input_o\ & (\P5|Add0|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\A[0]~input_o\ & (!\P5|Add0|auto_generated|result_int[0]~1_cout\))))
-- \P5|Add0|auto_generated|result_int[1]~3\ = CARRY((\P5|Add0|auto_generated|_~4_combout\ & ((!\P5|Add0|auto_generated|result_int[0]~1_cout\) # (!\A[0]~input_o\))) # (!\P5|Add0|auto_generated|_~4_combout\ & (!\A[0]~input_o\ & 
-- !\P5|Add0|auto_generated|result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add0|auto_generated|_~4_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \P5|Add0|auto_generated|result_int[0]~1_cout\,
	combout => \P5|Add0|auto_generated|result_int[1]~2_combout\,
	cout => \P5|Add0|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X39_Y27_N8
\P5|Add0|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|result_int[2]~4_combout\ = ((\P5|Add0|auto_generated|_~3_combout\ $ (\A[1]~input_o\ $ (\P5|Add0|auto_generated|result_int[1]~3\)))) # (GND)
-- \P5|Add0|auto_generated|result_int[2]~5\ = CARRY((\P5|Add0|auto_generated|_~3_combout\ & (\A[1]~input_o\ & !\P5|Add0|auto_generated|result_int[1]~3\)) # (!\P5|Add0|auto_generated|_~3_combout\ & ((\A[1]~input_o\) # 
-- (!\P5|Add0|auto_generated|result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add0|auto_generated|_~3_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \P5|Add0|auto_generated|result_int[1]~3\,
	combout => \P5|Add0|auto_generated|result_int[2]~4_combout\,
	cout => \P5|Add0|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X39_Y27_N10
\P5|Add0|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|result_int[3]~6_combout\ = (\A[2]~input_o\ & ((\P5|Add0|auto_generated|_~2_combout\ & (!\P5|Add0|auto_generated|result_int[2]~5\)) # (!\P5|Add0|auto_generated|_~2_combout\ & (\P5|Add0|auto_generated|result_int[2]~5\ & VCC)))) # 
-- (!\A[2]~input_o\ & ((\P5|Add0|auto_generated|_~2_combout\ & ((\P5|Add0|auto_generated|result_int[2]~5\) # (GND))) # (!\P5|Add0|auto_generated|_~2_combout\ & (!\P5|Add0|auto_generated|result_int[2]~5\))))
-- \P5|Add0|auto_generated|result_int[3]~7\ = CARRY((\A[2]~input_o\ & (\P5|Add0|auto_generated|_~2_combout\ & !\P5|Add0|auto_generated|result_int[2]~5\)) # (!\A[2]~input_o\ & ((\P5|Add0|auto_generated|_~2_combout\) # 
-- (!\P5|Add0|auto_generated|result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \P5|Add0|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \P5|Add0|auto_generated|result_int[2]~5\,
	combout => \P5|Add0|auto_generated|result_int[3]~6_combout\,
	cout => \P5|Add0|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X39_Y27_N12
\P5|Add0|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|result_int[4]~8_combout\ = ((\P5|Add0|auto_generated|_~1_combout\ $ (\A[3]~input_o\ $ (\P5|Add0|auto_generated|result_int[3]~7\)))) # (GND)
-- \P5|Add0|auto_generated|result_int[4]~9\ = CARRY((\P5|Add0|auto_generated|_~1_combout\ & (\A[3]~input_o\ & !\P5|Add0|auto_generated|result_int[3]~7\)) # (!\P5|Add0|auto_generated|_~1_combout\ & ((\A[3]~input_o\) # 
-- (!\P5|Add0|auto_generated|result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add0|auto_generated|_~1_combout\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \P5|Add0|auto_generated|result_int[3]~7\,
	combout => \P5|Add0|auto_generated|result_int[4]~8_combout\,
	cout => \P5|Add0|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X39_Y27_N14
\P5|Add0|auto_generated|result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|result_int[5]~10_combout\ = (\P5|Add0|auto_generated|_~0_combout\ & ((\A[4]~input_o\ & (!\P5|Add0|auto_generated|result_int[4]~9\)) # (!\A[4]~input_o\ & ((\P5|Add0|auto_generated|result_int[4]~9\) # (GND))))) # 
-- (!\P5|Add0|auto_generated|_~0_combout\ & ((\A[4]~input_o\ & (\P5|Add0|auto_generated|result_int[4]~9\ & VCC)) # (!\A[4]~input_o\ & (!\P5|Add0|auto_generated|result_int[4]~9\))))
-- \P5|Add0|auto_generated|result_int[5]~11\ = CARRY((\P5|Add0|auto_generated|_~0_combout\ & ((!\P5|Add0|auto_generated|result_int[4]~9\) # (!\A[4]~input_o\))) # (!\P5|Add0|auto_generated|_~0_combout\ & (!\A[4]~input_o\ & 
-- !\P5|Add0|auto_generated|result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add0|auto_generated|_~0_combout\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \P5|Add0|auto_generated|result_int[4]~9\,
	combout => \P5|Add0|auto_generated|result_int[5]~10_combout\,
	cout => \P5|Add0|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X39_Y27_N16
\P5|Add0|auto_generated|result_int[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|result_int[6]~12_combout\ = ((\A[5]~input_o\ $ (\P5|Add0|auto_generated|_~5_combout\ $ (\P5|Add0|auto_generated|result_int[5]~11\)))) # (GND)
-- \P5|Add0|auto_generated|result_int[6]~13\ = CARRY((\A[5]~input_o\ & ((!\P5|Add0|auto_generated|result_int[5]~11\) # (!\P5|Add0|auto_generated|_~5_combout\))) # (!\A[5]~input_o\ & (!\P5|Add0|auto_generated|_~5_combout\ & 
-- !\P5|Add0|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \P5|Add0|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \P5|Add0|auto_generated|result_int[5]~11\,
	combout => \P5|Add0|auto_generated|result_int[6]~12_combout\,
	cout => \P5|Add0|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X39_Y27_N18
\P5|Add0|auto_generated|result_int[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|result_int[7]~14_combout\ = (\P5|Add0|auto_generated|_~6_combout\ & ((\A[6]~input_o\ & (!\P5|Add0|auto_generated|result_int[6]~13\)) # (!\A[6]~input_o\ & ((\P5|Add0|auto_generated|result_int[6]~13\) # (GND))))) # 
-- (!\P5|Add0|auto_generated|_~6_combout\ & ((\A[6]~input_o\ & (\P5|Add0|auto_generated|result_int[6]~13\ & VCC)) # (!\A[6]~input_o\ & (!\P5|Add0|auto_generated|result_int[6]~13\))))
-- \P5|Add0|auto_generated|result_int[7]~15\ = CARRY((\P5|Add0|auto_generated|_~6_combout\ & ((!\P5|Add0|auto_generated|result_int[6]~13\) # (!\A[6]~input_o\))) # (!\P5|Add0|auto_generated|_~6_combout\ & (!\A[6]~input_o\ & 
-- !\P5|Add0|auto_generated|result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add0|auto_generated|_~6_combout\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \P5|Add0|auto_generated|result_int[6]~13\,
	combout => \P5|Add0|auto_generated|result_int[7]~14_combout\,
	cout => \P5|Add0|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X39_Y27_N20
\P5|Add0|auto_generated|result_int[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|result_int[8]~16_combout\ = ((\P5|Add0|auto_generated|_~7_combout\ $ (\A[7]~input_o\ $ (\P5|Add0|auto_generated|result_int[7]~15\)))) # (GND)
-- \P5|Add0|auto_generated|result_int[8]~17\ = CARRY((\P5|Add0|auto_generated|_~7_combout\ & (\A[7]~input_o\ & !\P5|Add0|auto_generated|result_int[7]~15\)) # (!\P5|Add0|auto_generated|_~7_combout\ & ((\A[7]~input_o\) # 
-- (!\P5|Add0|auto_generated|result_int[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add0|auto_generated|_~7_combout\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \P5|Add0|auto_generated|result_int[7]~15\,
	combout => \P5|Add0|auto_generated|result_int[8]~16_combout\,
	cout => \P5|Add0|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X40_Y27_N24
\P5|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Equal0~1_combout\ = (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \P5|Equal0~1_combout\);

-- Location: CLKCTRL_G7
\P5|Equal0~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \P5|Equal0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \P5|Equal0~1clkctrl_outclk\);

-- Location: LCCOMB_X39_Y27_N0
\P5|Result[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Result\(7) = (GLOBAL(\P5|Equal0~1clkctrl_outclk\) & (\P5|Add0|auto_generated|result_int[8]~16_combout\)) # (!GLOBAL(\P5|Equal0~1clkctrl_outclk\) & ((\P5|Result\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P5|Add0|auto_generated|result_int[8]~16_combout\,
	datac => \P5|Equal0~1clkctrl_outclk\,
	datad => \P5|Result\(7),
	combout => \P5|Result\(7));

-- Location: LCCOMB_X39_Y27_N26
\P5|Result[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Result\(6) = (GLOBAL(\P5|Equal0~1clkctrl_outclk\) & (\P5|Add0|auto_generated|result_int[7]~14_combout\)) # (!GLOBAL(\P5|Equal0~1clkctrl_outclk\) & ((\P5|Result\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P5|Add0|auto_generated|result_int[7]~14_combout\,
	datac => \P5|Result\(6),
	datad => \P5|Equal0~1clkctrl_outclk\,
	combout => \P5|Result\(6));

-- Location: LCCOMB_X39_Y27_N24
\P5|Result[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Result\(5) = (GLOBAL(\P5|Equal0~1clkctrl_outclk\) & ((\P5|Add0|auto_generated|result_int[6]~12_combout\))) # (!GLOBAL(\P5|Equal0~1clkctrl_outclk\) & (\P5|Result\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P5|Result\(5),
	datac => \P5|Equal0~1clkctrl_outclk\,
	datad => \P5|Add0|auto_generated|result_int[6]~12_combout\,
	combout => \P5|Result\(5));

-- Location: LCCOMB_X40_Y27_N8
\P5|Result[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Result\(4) = (GLOBAL(\P5|Equal0~1clkctrl_outclk\) & ((\P5|Add0|auto_generated|result_int[5]~10_combout\))) # (!GLOBAL(\P5|Equal0~1clkctrl_outclk\) & (\P5|Result\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P5|Result\(4),
	datac => \P5|Add0|auto_generated|result_int[5]~10_combout\,
	datad => \P5|Equal0~1clkctrl_outclk\,
	combout => \P5|Result\(4));

-- Location: LCCOMB_X40_Y25_N8
\P1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P1|Mux6~0_combout\ = (\P5|Result\(4) & ((\P5|Result\(7)) # (\P5|Result\(6) $ (\P5|Result\(5))))) # (!\P5|Result\(4) & ((\P5|Result\(5)) # (\P5|Result\(7) $ (\P5|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(7),
	datab => \P5|Result\(6),
	datac => \P5|Result\(5),
	datad => \P5|Result\(4),
	combout => \P1|Mux6~0_combout\);

-- Location: LCCOMB_X40_Y25_N6
\P1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P1|Mux5~0_combout\ = (\P5|Result\(6) & (\P5|Result\(4) & (\P5|Result\(7) $ (\P5|Result\(5))))) # (!\P5|Result\(6) & (!\P5|Result\(7) & ((\P5|Result\(5)) # (\P5|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(7),
	datab => \P5|Result\(6),
	datac => \P5|Result\(5),
	datad => \P5|Result\(4),
	combout => \P1|Mux5~0_combout\);

-- Location: LCCOMB_X40_Y25_N16
\P1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P1|Mux4~0_combout\ = (\P5|Result\(5) & (!\P5|Result\(7) & ((\P5|Result\(4))))) # (!\P5|Result\(5) & ((\P5|Result\(6) & (!\P5|Result\(7))) # (!\P5|Result\(6) & ((\P5|Result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(7),
	datab => \P5|Result\(6),
	datac => \P5|Result\(5),
	datad => \P5|Result\(4),
	combout => \P1|Mux4~0_combout\);

-- Location: LCCOMB_X40_Y25_N18
\P1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P1|Mux3~0_combout\ = (\P5|Result\(4) & ((\P5|Result\(6) $ (!\P5|Result\(5))))) # (!\P5|Result\(4) & ((\P5|Result\(7) & (!\P5|Result\(6) & \P5|Result\(5))) # (!\P5|Result\(7) & (\P5|Result\(6) & !\P5|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(7),
	datab => \P5|Result\(6),
	datac => \P5|Result\(5),
	datad => \P5|Result\(4),
	combout => \P1|Mux3~0_combout\);

-- Location: LCCOMB_X40_Y25_N4
\P1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P1|Mux2~0_combout\ = (\P5|Result\(7) & (\P5|Result\(6) & ((\P5|Result\(5)) # (!\P5|Result\(4))))) # (!\P5|Result\(7) & (!\P5|Result\(6) & (\P5|Result\(5) & !\P5|Result\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(7),
	datab => \P5|Result\(6),
	datac => \P5|Result\(5),
	datad => \P5|Result\(4),
	combout => \P1|Mux2~0_combout\);

-- Location: LCCOMB_X40_Y25_N10
\P1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P1|Mux1~0_combout\ = (\P5|Result\(7) & ((\P5|Result\(4) & ((\P5|Result\(5)))) # (!\P5|Result\(4) & (\P5|Result\(6))))) # (!\P5|Result\(7) & (\P5|Result\(6) & (\P5|Result\(5) $ (\P5|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(7),
	datab => \P5|Result\(6),
	datac => \P5|Result\(5),
	datad => \P5|Result\(4),
	combout => \P1|Mux1~0_combout\);

-- Location: LCCOMB_X40_Y25_N12
\P1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P1|Mux0~0_combout\ = (\P5|Result\(7) & (\P5|Result\(4) & (\P5|Result\(6) $ (\P5|Result\(5))))) # (!\P5|Result\(7) & (!\P5|Result\(5) & (\P5|Result\(6) $ (\P5|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(7),
	datab => \P5|Result\(6),
	datac => \P5|Result\(5),
	datad => \P5|Result\(4),
	combout => \P1|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y27_N26
\P5|Result[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Result\(0) = (GLOBAL(\P5|Equal0~1clkctrl_outclk\) & (\P5|Add0|auto_generated|result_int[1]~2_combout\)) # (!GLOBAL(\P5|Equal0~1clkctrl_outclk\) & ((\P5|Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add0|auto_generated|result_int[1]~2_combout\,
	datac => \P5|Result\(0),
	datad => \P5|Equal0~1clkctrl_outclk\,
	combout => \P5|Result\(0));

-- Location: LCCOMB_X37_Y27_N4
\P5|Result[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Result\(3) = (GLOBAL(\P5|Equal0~1clkctrl_outclk\) & ((\P5|Add0|auto_generated|result_int[4]~8_combout\))) # (!GLOBAL(\P5|Equal0~1clkctrl_outclk\) & (\P5|Result\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P5|Result\(3),
	datac => \P5|Add0|auto_generated|result_int[4]~8_combout\,
	datad => \P5|Equal0~1clkctrl_outclk\,
	combout => \P5|Result\(3));

-- Location: LCCOMB_X38_Y27_N8
\P5|Result[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Result\(1) = (GLOBAL(\P5|Equal0~1clkctrl_outclk\) & (\P5|Add0|auto_generated|result_int[2]~4_combout\)) # (!GLOBAL(\P5|Equal0~1clkctrl_outclk\) & ((\P5|Result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P5|Add0|auto_generated|result_int[2]~4_combout\,
	datac => \P5|Result\(1),
	datad => \P5|Equal0~1clkctrl_outclk\,
	combout => \P5|Result\(1));

-- Location: LCCOMB_X38_Y27_N26
\P5|Result[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Result\(2) = (GLOBAL(\P5|Equal0~1clkctrl_outclk\) & (\P5|Add0|auto_generated|result_int[3]~6_combout\)) # (!GLOBAL(\P5|Equal0~1clkctrl_outclk\) & ((\P5|Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P5|Add0|auto_generated|result_int[3]~6_combout\,
	datac => \P5|Result\(2),
	datad => \P5|Equal0~1clkctrl_outclk\,
	combout => \P5|Result\(2));

-- Location: LCCOMB_X37_Y27_N24
\P2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P2|Mux6~0_combout\ = (\P5|Result\(0) & ((\P5|Result\(3)) # (\P5|Result\(1) $ (\P5|Result\(2))))) # (!\P5|Result\(0) & ((\P5|Result\(1)) # (\P5|Result\(3) $ (\P5|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(0),
	datab => \P5|Result\(3),
	datac => \P5|Result\(1),
	datad => \P5|Result\(2),
	combout => \P2|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y27_N22
\P2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P2|Mux5~0_combout\ = (\P5|Result\(0) & (\P5|Result\(3) $ (((\P5|Result\(1)) # (!\P5|Result\(2)))))) # (!\P5|Result\(0) & (!\P5|Result\(3) & (\P5|Result\(1) & !\P5|Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(0),
	datab => \P5|Result\(3),
	datac => \P5|Result\(1),
	datad => \P5|Result\(2),
	combout => \P2|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y27_N20
\P2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P2|Mux4~0_combout\ = (\P5|Result\(1) & (\P5|Result\(0) & (!\P5|Result\(3)))) # (!\P5|Result\(1) & ((\P5|Result\(2) & ((!\P5|Result\(3)))) # (!\P5|Result\(2) & (\P5|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(0),
	datab => \P5|Result\(3),
	datac => \P5|Result\(1),
	datad => \P5|Result\(2),
	combout => \P2|Mux4~0_combout\);

-- Location: LCCOMB_X37_Y27_N18
\P2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P2|Mux3~0_combout\ = (\P5|Result\(0) & ((\P5|Result\(1) $ (!\P5|Result\(2))))) # (!\P5|Result\(0) & ((\P5|Result\(3) & (\P5|Result\(1) & !\P5|Result\(2))) # (!\P5|Result\(3) & (!\P5|Result\(1) & \P5|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(0),
	datab => \P5|Result\(3),
	datac => \P5|Result\(1),
	datad => \P5|Result\(2),
	combout => \P2|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y27_N16
\P2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P2|Mux2~0_combout\ = (\P5|Result\(3) & (\P5|Result\(2) & ((\P5|Result\(1)) # (!\P5|Result\(0))))) # (!\P5|Result\(3) & (!\P5|Result\(0) & (\P5|Result\(1) & !\P5|Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(0),
	datab => \P5|Result\(3),
	datac => \P5|Result\(1),
	datad => \P5|Result\(2),
	combout => \P2|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y27_N6
\P2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P2|Mux1~0_combout\ = (\P5|Result\(3) & ((\P5|Result\(0) & (\P5|Result\(1))) # (!\P5|Result\(0) & ((\P5|Result\(2)))))) # (!\P5|Result\(3) & (\P5|Result\(2) & (\P5|Result\(0) $ (\P5|Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(0),
	datab => \P5|Result\(3),
	datac => \P5|Result\(1),
	datad => \P5|Result\(2),
	combout => \P2|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y27_N28
\P2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P2|Mux0~0_combout\ = (\P5|Result\(3) & (\P5|Result\(0) & (\P5|Result\(1) $ (\P5|Result\(2))))) # (!\P5|Result\(3) & (!\P5|Result\(1) & (\P5|Result\(0) $ (\P5|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Result\(0),
	datab => \P5|Result\(3),
	datac => \P5|Result\(1),
	datad => \P5|Result\(2),
	combout => \P2|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y28_N0
\P3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P3|Mux6~0_combout\ = (\A[4]~input_o\ & ((\A[7]~input_o\) # (\A[6]~input_o\ $ (\A[5]~input_o\)))) # (!\A[4]~input_o\ & ((\A[5]~input_o\) # (\A[6]~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \P3|Mux6~0_combout\);

-- Location: LCCOMB_X39_Y28_N6
\P3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P3|Mux5~0_combout\ = (\A[4]~input_o\ & (\A[7]~input_o\ $ (((\A[5]~input_o\) # (!\A[6]~input_o\))))) # (!\A[4]~input_o\ & (!\A[6]~input_o\ & (\A[5]~input_o\ & !\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \P3|Mux5~0_combout\);

-- Location: LCCOMB_X39_Y28_N12
\P3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P3|Mux4~0_combout\ = (\A[5]~input_o\ & (\A[4]~input_o\ & ((!\A[7]~input_o\)))) # (!\A[5]~input_o\ & ((\A[6]~input_o\ & ((!\A[7]~input_o\))) # (!\A[6]~input_o\ & (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \P3|Mux4~0_combout\);

-- Location: LCCOMB_X38_Y27_N4
\P3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P3|Mux3~0_combout\ = (\A[4]~input_o\ & ((\A[6]~input_o\ $ (!\A[5]~input_o\)))) # (!\A[4]~input_o\ & ((\A[7]~input_o\ & (!\A[6]~input_o\ & \A[5]~input_o\)) # (!\A[7]~input_o\ & (\A[6]~input_o\ & !\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[5]~input_o\,
	combout => \P3|Mux3~0_combout\);

-- Location: LCCOMB_X39_Y28_N30
\P3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P3|Mux2~0_combout\ = (\A[6]~input_o\ & (\A[7]~input_o\ & ((\A[5]~input_o\) # (!\A[4]~input_o\)))) # (!\A[6]~input_o\ & (!\A[4]~input_o\ & (\A[5]~input_o\ & !\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \P3|Mux2~0_combout\);

-- Location: LCCOMB_X39_Y28_N4
\P3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P3|Mux1~0_combout\ = (\A[5]~input_o\ & ((\A[4]~input_o\ & ((\A[7]~input_o\))) # (!\A[4]~input_o\ & (\A[6]~input_o\)))) # (!\A[5]~input_o\ & (\A[6]~input_o\ & (\A[4]~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \P3|Mux1~0_combout\);

-- Location: LCCOMB_X39_Y28_N2
\P3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P3|Mux0~0_combout\ = (\A[6]~input_o\ & (!\A[5]~input_o\ & (\A[4]~input_o\ $ (!\A[7]~input_o\)))) # (!\A[6]~input_o\ & (\A[4]~input_o\ & (\A[5]~input_o\ $ (!\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \P3|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y27_N30
\P4|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P4|Mux6~0_combout\ = (\A[0]~input_o\ & ((\A[3]~input_o\) # (\A[2]~input_o\ $ (\A[1]~input_o\)))) # (!\A[0]~input_o\ & ((\A[1]~input_o\) # (\A[2]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[1]~input_o\,
	combout => \P4|Mux6~0_combout\);

-- Location: LCCOMB_X39_Y28_N8
\P4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P4|Mux5~0_combout\ = (\A[1]~input_o\ & (!\A[3]~input_o\ & ((\A[0]~input_o\) # (!\A[2]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\A[2]~input_o\ $ (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \P4|Mux5~0_combout\);

-- Location: LCCOMB_X38_Y28_N8
\P4|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P4|Mux4~0_combout\ = (\A[1]~input_o\ & (!\A[3]~input_o\ & ((\A[0]~input_o\)))) # (!\A[1]~input_o\ & ((\A[2]~input_o\ & (!\A[3]~input_o\)) # (!\A[2]~input_o\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \P4|Mux4~0_combout\);

-- Location: LCCOMB_X38_Y28_N10
\P4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P4|Mux3~0_combout\ = (\A[0]~input_o\ & ((\A[2]~input_o\ $ (!\A[1]~input_o\)))) # (!\A[0]~input_o\ & ((\A[3]~input_o\ & (!\A[2]~input_o\ & \A[1]~input_o\)) # (!\A[3]~input_o\ & (\A[2]~input_o\ & !\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \P4|Mux3~0_combout\);

-- Location: LCCOMB_X38_Y28_N28
\P4|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P4|Mux2~0_combout\ = (\A[3]~input_o\ & (\A[2]~input_o\ & ((\A[1]~input_o\) # (!\A[0]~input_o\)))) # (!\A[3]~input_o\ & (!\A[2]~input_o\ & (\A[1]~input_o\ & !\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \P4|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y28_N2
\P4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P4|Mux1~0_combout\ = (\A[3]~input_o\ & ((\A[0]~input_o\ & ((\A[1]~input_o\))) # (!\A[0]~input_o\ & (\A[2]~input_o\)))) # (!\A[3]~input_o\ & (\A[2]~input_o\ & (\A[1]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \P4|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y27_N0
\P4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P4|Mux0~0_combout\ = (\A[2]~input_o\ & (!\A[1]~input_o\ & (\A[0]~input_o\ $ (!\A[3]~input_o\)))) # (!\A[2]~input_o\ & (\A[0]~input_o\ & (\A[3]~input_o\ $ (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[1]~input_o\,
	combout => \P4|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y27_N22
\P5|Add0|auto_generated|result_int[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0|auto_generated|result_int[9]~18_combout\ = \P5|Equal0~0_combout\ $ (!\P5|Add0|auto_generated|result_int[8]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \P5|Equal0~0_combout\,
	cin => \P5|Add0|auto_generated|result_int[8]~17\,
	combout => \P5|Add0|auto_generated|result_int[9]~18_combout\);

-- Location: LCCOMB_X39_Y27_N30
\P5|NZVC[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|NZVC\(0) = (GLOBAL(\P5|Equal0~1clkctrl_outclk\) & (\P5|Add0|auto_generated|result_int[9]~18_combout\)) # (!GLOBAL(\P5|Equal0~1clkctrl_outclk\) & ((\P5|NZVC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add0|auto_generated|result_int[9]~18_combout\,
	datac => \P5|NZVC\(0),
	datad => \P5|Equal0~1clkctrl_outclk\,
	combout => \P5|NZVC\(0));

-- Location: LCCOMB_X38_Y27_N10
\P5|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add1~0_combout\ = (\A[0]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \P5|Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \P5|Add1~0_combout\,
	cout => \P5|Add1~1\);

-- Location: LCCOMB_X38_Y27_N12
\P5|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add1~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (!\P5|Add1~1\)) # (!\B[1]~input_o\ & (\P5|Add1~1\ & VCC)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & ((\P5|Add1~1\) # (GND))) # (!\B[1]~input_o\ & (!\P5|Add1~1\))))
-- \P5|Add1~3\ = CARRY((\A[1]~input_o\ & (\B[1]~input_o\ & !\P5|Add1~1\)) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # (!\P5|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \P5|Add1~1\,
	combout => \P5|Add1~2_combout\,
	cout => \P5|Add1~3\);

-- Location: LCCOMB_X38_Y27_N14
\P5|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add1~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (\P5|Add1~3\)))) # (GND)
-- \P5|Add1~5\ = CARRY((\B[2]~input_o\ & (\A[2]~input_o\ & !\P5|Add1~3\)) # (!\B[2]~input_o\ & ((\A[2]~input_o\) # (!\P5|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \P5|Add1~3\,
	combout => \P5|Add1~4_combout\,
	cout => \P5|Add1~5\);

-- Location: LCCOMB_X38_Y27_N16
\P5|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add1~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (!\P5|Add1~5\)) # (!\B[3]~input_o\ & (\P5|Add1~5\ & VCC)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & ((\P5|Add1~5\) # (GND))) # (!\B[3]~input_o\ & (!\P5|Add1~5\))))
-- \P5|Add1~7\ = CARRY((\A[3]~input_o\ & (\B[3]~input_o\ & !\P5|Add1~5\)) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # (!\P5|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \P5|Add1~5\,
	combout => \P5|Add1~6_combout\,
	cout => \P5|Add1~7\);

-- Location: LCCOMB_X38_Y27_N18
\P5|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add1~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (\P5|Add1~7\)))) # (GND)
-- \P5|Add1~9\ = CARRY((\B[4]~input_o\ & (\A[4]~input_o\ & !\P5|Add1~7\)) # (!\B[4]~input_o\ & ((\A[4]~input_o\) # (!\P5|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \P5|Add1~7\,
	combout => \P5|Add1~8_combout\,
	cout => \P5|Add1~9\);

-- Location: LCCOMB_X38_Y27_N20
\P5|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add1~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (!\P5|Add1~9\)) # (!\A[5]~input_o\ & ((\P5|Add1~9\) # (GND))))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (\P5|Add1~9\ & VCC)) # (!\A[5]~input_o\ & (!\P5|Add1~9\))))
-- \P5|Add1~11\ = CARRY((\B[5]~input_o\ & ((!\P5|Add1~9\) # (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (!\A[5]~input_o\ & !\P5|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \P5|Add1~9\,
	combout => \P5|Add1~10_combout\,
	cout => \P5|Add1~11\);

-- Location: LCCOMB_X38_Y27_N22
\P5|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add1~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (\P5|Add1~11\)))) # (GND)
-- \P5|Add1~13\ = CARRY((\B[6]~input_o\ & (\A[6]~input_o\ & !\P5|Add1~11\)) # (!\B[6]~input_o\ & ((\A[6]~input_o\) # (!\P5|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \P5|Add1~11\,
	combout => \P5|Add1~12_combout\,
	cout => \P5|Add1~13\);

-- Location: LCCOMB_X38_Y27_N24
\P5|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add1~14_combout\ = \B[7]~input_o\ $ (\P5|Add1~13\ $ (!\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	cin => \P5|Add1~13\,
	combout => \P5|Add1~14_combout\);

-- Location: LCCOMB_X39_Y28_N14
\P5|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|LessThan0~1_cout\ = CARRY((\B[0]~input_o\ & !\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cout => \P5|LessThan0~1_cout\);

-- Location: LCCOMB_X39_Y28_N16
\P5|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|LessThan0~3_cout\ = CARRY((\A[1]~input_o\ & ((!\P5|LessThan0~1_cout\) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & !\P5|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \P5|LessThan0~1_cout\,
	cout => \P5|LessThan0~3_cout\);

-- Location: LCCOMB_X39_Y28_N18
\P5|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|LessThan0~5_cout\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\P5|LessThan0~3_cout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\P5|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \P5|LessThan0~3_cout\,
	cout => \P5|LessThan0~5_cout\);

-- Location: LCCOMB_X39_Y28_N20
\P5|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|LessThan0~7_cout\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\P5|LessThan0~5_cout\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\P5|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \P5|LessThan0~5_cout\,
	cout => \P5|LessThan0~7_cout\);

-- Location: LCCOMB_X39_Y28_N22
\P5|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|LessThan0~9_cout\ = CARRY((\B[4]~input_o\ & ((!\P5|LessThan0~7_cout\) # (!\A[4]~input_o\))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & !\P5|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \P5|LessThan0~7_cout\,
	cout => \P5|LessThan0~9_cout\);

-- Location: LCCOMB_X39_Y28_N24
\P5|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|LessThan0~11_cout\ = CARRY((\B[5]~input_o\ & (\A[5]~input_o\ & !\P5|LessThan0~9_cout\)) # (!\B[5]~input_o\ & ((\A[5]~input_o\) # (!\P5|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \P5|LessThan0~9_cout\,
	cout => \P5|LessThan0~11_cout\);

-- Location: LCCOMB_X39_Y28_N26
\P5|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|LessThan0~13_cout\ = CARRY((\A[6]~input_o\ & (\B[6]~input_o\ & !\P5|LessThan0~11_cout\)) # (!\A[6]~input_o\ & ((\B[6]~input_o\) # (!\P5|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \P5|LessThan0~11_cout\,
	cout => \P5|LessThan0~13_cout\);

-- Location: LCCOMB_X39_Y28_N28
\P5|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|LessThan0~14_combout\ = (\B[7]~input_o\ & ((\P5|LessThan0~13_cout\) # (!\A[7]~input_o\))) # (!\B[7]~input_o\ & (\P5|LessThan0~13_cout\ & !\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	cin => \P5|LessThan0~13_cout\,
	combout => \P5|LessThan0~14_combout\);

-- Location: LCCOMB_X39_Y28_N10
\P5|NZVC[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|NZVC[1]~1_combout\ = (\P5|Add1~14_combout\ & ((\A[7]~input_o\ & (!\P5|LessThan0~14_combout\)) # (!\A[7]~input_o\ & ((!\B[7]~input_o\))))) # (!\P5|Add1~14_combout\ & ((\A[7]~input_o\ & ((\B[7]~input_o\))) # (!\A[7]~input_o\ & 
-- (!\P5|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add1~14_combout\,
	datab => \P5|LessThan0~14_combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \P5|NZVC[1]~1_combout\);

-- Location: LCCOMB_X40_Y27_N22
\P5|NZVC[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|NZVC[1]~2_combout\ = (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & ((\P5|NZVC[1]~1_combout\) # (!\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|NZVC[1]~1_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \P5|NZVC[1]~2_combout\);

-- Location: LCCOMB_X38_Y28_N12
\P5|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & VCC))
-- \P5|Add0~1\ = CARRY((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \P5|Add0~0_combout\,
	cout => \P5|Add0~1\);

-- Location: LCCOMB_X38_Y28_N14
\P5|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (\P5|Add0~1\ & VCC)) # (!\B[1]~input_o\ & (!\P5|Add0~1\)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & (!\P5|Add0~1\)) # (!\B[1]~input_o\ & ((\P5|Add0~1\) # (GND)))))
-- \P5|Add0~3\ = CARRY((\A[1]~input_o\ & (!\B[1]~input_o\ & !\P5|Add0~1\)) # (!\A[1]~input_o\ & ((!\P5|Add0~1\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \P5|Add0~1\,
	combout => \P5|Add0~2_combout\,
	cout => \P5|Add0~3\);

-- Location: LCCOMB_X38_Y28_N16
\P5|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (!\P5|Add0~3\)))) # (GND)
-- \P5|Add0~5\ = CARRY((\B[2]~input_o\ & ((\A[2]~input_o\) # (!\P5|Add0~3\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & !\P5|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \P5|Add0~3\,
	combout => \P5|Add0~4_combout\,
	cout => \P5|Add0~5\);

-- Location: LCCOMB_X38_Y28_N18
\P5|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\P5|Add0~5\ & VCC)) # (!\B[3]~input_o\ & (!\P5|Add0~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\P5|Add0~5\)) # (!\B[3]~input_o\ & ((\P5|Add0~5\) # (GND)))))
-- \P5|Add0~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\P5|Add0~5\)) # (!\A[3]~input_o\ & ((!\P5|Add0~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \P5|Add0~5\,
	combout => \P5|Add0~6_combout\,
	cout => \P5|Add0~7\);

-- Location: LCCOMB_X38_Y28_N20
\P5|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (!\P5|Add0~7\)))) # (GND)
-- \P5|Add0~9\ = CARRY((\B[4]~input_o\ & ((\A[4]~input_o\) # (!\P5|Add0~7\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & !\P5|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \P5|Add0~7\,
	combout => \P5|Add0~8_combout\,
	cout => \P5|Add0~9\);

-- Location: LCCOMB_X38_Y28_N22
\P5|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (\P5|Add0~9\ & VCC)) # (!\A[5]~input_o\ & (!\P5|Add0~9\)))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (!\P5|Add0~9\)) # (!\A[5]~input_o\ & ((\P5|Add0~9\) # (GND)))))
-- \P5|Add0~11\ = CARRY((\B[5]~input_o\ & (!\A[5]~input_o\ & !\P5|Add0~9\)) # (!\B[5]~input_o\ & ((!\P5|Add0~9\) # (!\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \P5|Add0~9\,
	combout => \P5|Add0~10_combout\,
	cout => \P5|Add0~11\);

-- Location: LCCOMB_X38_Y28_N24
\P5|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (!\P5|Add0~11\)))) # (GND)
-- \P5|Add0~13\ = CARRY((\A[6]~input_o\ & ((\B[6]~input_o\) # (!\P5|Add0~11\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & !\P5|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \P5|Add0~11\,
	combout => \P5|Add0~12_combout\,
	cout => \P5|Add0~13\);

-- Location: LCCOMB_X38_Y28_N26
\P5|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|Add0~14_combout\ = \B[7]~input_o\ $ (\P5|Add0~13\ $ (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	cin => \P5|Add0~13\,
	combout => \P5|Add0~14_combout\);

-- Location: LCCOMB_X40_Y27_N6
\P5|NZVC[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|NZVC[1]~0_combout\ = ((\B[7]~input_o\ & ((\P5|Add0~14_combout\) # (!\A[7]~input_o\))) # (!\B[7]~input_o\ & ((\A[7]~input_o\) # (!\P5|Add0~14_combout\)))) # (!\P5|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \P5|Add0~14_combout\,
	datad => \P5|Equal0~0_combout\,
	combout => \P5|NZVC[1]~0_combout\);

-- Location: LCCOMB_X40_Y27_N30
\P5|NZVC[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|NZVC\(1) = (\P5|NZVC[1]~2_combout\ & ((!\P5|NZVC[1]~0_combout\))) # (!\P5|NZVC[1]~2_combout\ & (\P5|NZVC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|NZVC\(1),
	datac => \P5|NZVC[1]~2_combout\,
	datad => \P5|NZVC[1]~0_combout\,
	combout => \P5|NZVC\(1));

-- Location: LCCOMB_X38_Y27_N28
\P5|NZVC[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|NZVC[2]~7_combout\ = (!\P5|Add1~6_combout\ & (!\P5|Add1~10_combout\ & (!\P5|Add1~4_combout\ & !\P5|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add1~6_combout\,
	datab => \P5|Add1~10_combout\,
	datac => \P5|Add1~4_combout\,
	datad => \P5|Add1~8_combout\,
	combout => \P5|NZVC[2]~7_combout\);

-- Location: LCCOMB_X38_Y28_N6
\P5|NZVC[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|NZVC[2]~4_combout\ = (!\P5|Add0~8_combout\ & (!\P5|Add0~6_combout\ & (!\P5|Add0~10_combout\ & !\P5|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add0~8_combout\,
	datab => \P5|Add0~6_combout\,
	datac => \P5|Add0~10_combout\,
	datad => \P5|Add0~4_combout\,
	combout => \P5|NZVC[2]~4_combout\);

-- Location: LCCOMB_X38_Y28_N0
\P5|NZVC[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|NZVC[2]~3_combout\ = (!\P5|Add0~0_combout\ & (!\P5|Add0~2_combout\ & (!\P5|Add0~14_combout\ & !\ALU_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add0~0_combout\,
	datab => \P5|Add0~2_combout\,
	datac => \P5|Add0~14_combout\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \P5|NZVC[2]~3_combout\);

-- Location: LCCOMB_X38_Y28_N4
\P5|NZVC[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|NZVC[2]~5_combout\ = (\P5|NZVC[2]~4_combout\ & (!\P5|Add0~12_combout\ & \P5|NZVC[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|NZVC[2]~4_combout\,
	datab => \P5|Add0~12_combout\,
	datad => \P5|NZVC[2]~3_combout\,
	combout => \P5|NZVC[2]~5_combout\);

-- Location: LCCOMB_X38_Y27_N6
\P5|NZVC[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|NZVC[2]~6_combout\ = (!\P5|Add1~2_combout\ & (!\P5|Add1~14_combout\ & (\ALU_Sel[0]~input_o\ & !\P5|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add1~2_combout\,
	datab => \P5|Add1~14_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \P5|Add1~0_combout\,
	combout => \P5|NZVC[2]~6_combout\);

-- Location: LCCOMB_X38_Y27_N2
\P5|NZVC[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|NZVC[2]~8_combout\ = (\P5|NZVC[2]~5_combout\) # ((!\P5|Add1~12_combout\ & (\P5|NZVC[2]~7_combout\ & \P5|NZVC[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|Add1~12_combout\,
	datab => \P5|NZVC[2]~7_combout\,
	datac => \P5|NZVC[2]~5_combout\,
	datad => \P5|NZVC[2]~6_combout\,
	combout => \P5|NZVC[2]~8_combout\);

-- Location: LCCOMB_X37_Y27_N30
\P5|NZVC[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P5|NZVC\(2) = (GLOBAL(\P5|Equal0~1clkctrl_outclk\) & (\P5|NZVC[2]~8_combout\)) # (!GLOBAL(\P5|Equal0~1clkctrl_outclk\) & ((\P5|NZVC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P5|NZVC[2]~8_combout\,
	datac => \P5|NZVC\(2),
	datad => \P5|Equal0~1clkctrl_outclk\,
	combout => \P5|NZVC\(2));

ww_Display0(0) <= \Display0[0]~output_o\;

ww_Display0(1) <= \Display0[1]~output_o\;

ww_Display0(2) <= \Display0[2]~output_o\;

ww_Display0(3) <= \Display0[3]~output_o\;

ww_Display0(4) <= \Display0[4]~output_o\;

ww_Display0(5) <= \Display0[5]~output_o\;

ww_Display0(6) <= \Display0[6]~output_o\;

ww_Display1(0) <= \Display1[0]~output_o\;

ww_Display1(1) <= \Display1[1]~output_o\;

ww_Display1(2) <= \Display1[2]~output_o\;

ww_Display1(3) <= \Display1[3]~output_o\;

ww_Display1(4) <= \Display1[4]~output_o\;

ww_Display1(5) <= \Display1[5]~output_o\;

ww_Display1(6) <= \Display1[6]~output_o\;

ww_Display2(0) <= \Display2[0]~output_o\;

ww_Display2(1) <= \Display2[1]~output_o\;

ww_Display2(2) <= \Display2[2]~output_o\;

ww_Display2(3) <= \Display2[3]~output_o\;

ww_Display2(4) <= \Display2[4]~output_o\;

ww_Display2(5) <= \Display2[5]~output_o\;

ww_Display2(6) <= \Display2[6]~output_o\;

ww_Display3(0) <= \Display3[0]~output_o\;

ww_Display3(1) <= \Display3[1]~output_o\;

ww_Display3(2) <= \Display3[2]~output_o\;

ww_Display3(3) <= \Display3[3]~output_o\;

ww_Display3(4) <= \Display3[4]~output_o\;

ww_Display3(5) <= \Display3[5]~output_o\;

ww_Display3(6) <= \Display3[6]~output_o\;

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;
END structure;


