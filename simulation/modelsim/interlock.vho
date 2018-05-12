-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "05/12/2018 17:20:01"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	interlock IS
    PORT (
	clk : IN std_logic;
	d1 : IN std_logic_vector(3 DOWNTO 0);
	d2 : IN std_logic_vector(3 DOWNTO 0);
	d3 : IN std_logic_vector(3 DOWNTO 0);
	d4 : IN std_logic_vector(3 DOWNTO 0);
	d5 : IN std_logic_vector(3 DOWNTO 0);
	d6 : IN std_logic_vector(3 DOWNTO 0);
	d7 : IN std_logic_vector(3 DOWNTO 0);
	d8 : IN std_logic_vector(3 DOWNTO 0);
	s1 : BUFFER std_logic_vector(3 DOWNTO 0);
	s2 : BUFFER std_logic_vector(3 DOWNTO 0);
	s3 : BUFFER std_logic_vector(3 DOWNTO 0);
	s4 : BUFFER std_logic_vector(3 DOWNTO 0);
	s5 : BUFFER std_logic_vector(3 DOWNTO 0);
	s6 : BUFFER std_logic_vector(3 DOWNTO 0);
	s7 : BUFFER std_logic_vector(3 DOWNTO 0);
	s8 : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END interlock;

-- Design Ports Information


ARCHITECTURE structure OF interlock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_d1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d6 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d7 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d8 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s6 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s7 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s8 : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~2\ : std_logic;
SIGNAL \Mux10~0\ : std_logic;
SIGNAL \Mux13~14_combout\ : std_logic;
SIGNAL \Mux11~1\ : std_logic;
SIGNAL \Mux13~3\ : std_logic;
SIGNAL \Mux13~15_combout\ : std_logic;
SIGNAL \Mux13~13\ : std_logic;
SIGNAL \Mux0~0\ : std_logic;
SIGNAL \Mux12~0\ : std_logic;
SIGNAL \Mux13~16\ : std_logic;
SIGNAL \Mux13~17_combout\ : std_logic;
SIGNAL \s1[0]~reg0_regout\ : std_logic;
SIGNAL \s1[1]~reg0_regout\ : std_logic;
SIGNAL \s1[2]~reg0_regout\ : std_logic;
SIGNAL \s1[3]~reg0_regout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2\ : std_logic;
SIGNAL \Mux27~3\ : std_logic;
SIGNAL \Mux27~15_combout\ : std_logic;
SIGNAL \Mux27~13\ : std_logic;
SIGNAL \Mux14~0\ : std_logic;
SIGNAL \Mux26~0\ : std_logic;
SIGNAL \Mux24~0\ : std_logic;
SIGNAL \Mux27~14_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1\ : std_logic;
SIGNAL \Mux27~16\ : std_logic;
SIGNAL \Mux27~17_combout\ : std_logic;
SIGNAL \s2[0]~reg0_regout\ : std_logic;
SIGNAL \s2[1]~reg0_regout\ : std_logic;
SIGNAL \s2[2]~reg0_regout\ : std_logic;
SIGNAL \s2[3]~reg0_regout\ : std_logic;
SIGNAL \Mux41~3\ : std_logic;
SIGNAL \Mux41~15_combout\ : std_logic;
SIGNAL \Mux41~13\ : std_logic;
SIGNAL \Mux28~0\ : std_logic;
SIGNAL \Mux40~0\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~2\ : std_logic;
SIGNAL \Mux38~0\ : std_logic;
SIGNAL \Mux41~14_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux39~1\ : std_logic;
SIGNAL \Mux41~16\ : std_logic;
SIGNAL \Mux41~17_combout\ : std_logic;
SIGNAL \s3[0]~reg0_regout\ : std_logic;
SIGNAL \s3[1]~reg0_regout\ : std_logic;
SIGNAL \s3[2]~reg0_regout\ : std_logic;
SIGNAL \s3[3]~reg0_regout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Mux52~2\ : std_logic;
SIGNAL \Mux52~0\ : std_logic;
SIGNAL \Mux55~14_combout\ : std_logic;
SIGNAL \Mux53~1\ : std_logic;
SIGNAL \Mux55~3\ : std_logic;
SIGNAL \Mux55~15_combout\ : std_logic;
SIGNAL \Mux55~13\ : std_logic;
SIGNAL \Mux42~0\ : std_logic;
SIGNAL \Mux54~0\ : std_logic;
SIGNAL \Mux55~16\ : std_logic;
SIGNAL \Mux55~17_combout\ : std_logic;
SIGNAL \s4[0]~reg0_regout\ : std_logic;
SIGNAL \s4[1]~reg0_regout\ : std_logic;
SIGNAL \s4[2]~reg0_regout\ : std_logic;
SIGNAL \s4[3]~reg0_regout\ : std_logic;
SIGNAL \Mux66~1_combout\ : std_logic;
SIGNAL \Mux66~2\ : std_logic;
SIGNAL \Mux69~3\ : std_logic;
SIGNAL \Mux69~15_combout\ : std_logic;
SIGNAL \Mux69~13\ : std_logic;
SIGNAL \Mux56~0\ : std_logic;
SIGNAL \Mux68~0\ : std_logic;
SIGNAL \Mux66~0\ : std_logic;
SIGNAL \Mux69~14_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux67~1\ : std_logic;
SIGNAL \Mux69~16\ : std_logic;
SIGNAL \Mux69~17_combout\ : std_logic;
SIGNAL \s5[0]~reg0_regout\ : std_logic;
SIGNAL \s5[1]~reg0_regout\ : std_logic;
SIGNAL \s5[2]~reg0_regout\ : std_logic;
SIGNAL \s5[3]~reg0_regout\ : std_logic;
SIGNAL \Mux80~1_combout\ : std_logic;
SIGNAL \Mux80~2\ : std_logic;
SIGNAL \Mux80~0\ : std_logic;
SIGNAL \Mux83~14_combout\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \Mux81~1\ : std_logic;
SIGNAL \Mux83~16\ : std_logic;
SIGNAL \Mux83~17_combout\ : std_logic;
SIGNAL \Mux83~13\ : std_logic;
SIGNAL \Mux70~0\ : std_logic;
SIGNAL \Mux82~0\ : std_logic;
SIGNAL \Mux83~3\ : std_logic;
SIGNAL \Mux83~15_combout\ : std_logic;
SIGNAL \s6[0]~reg0_regout\ : std_logic;
SIGNAL \s6[1]~reg0_regout\ : std_logic;
SIGNAL \s6[2]~reg0_regout\ : std_logic;
SIGNAL \s6[3]~reg0_regout\ : std_logic;
SIGNAL \Mux94~1_combout\ : std_logic;
SIGNAL \Mux94~2\ : std_logic;
SIGNAL \Mux97~3\ : std_logic;
SIGNAL \Mux97~15_combout\ : std_logic;
SIGNAL \Mux97~13\ : std_logic;
SIGNAL \Mux94~0\ : std_logic;
SIGNAL \Mux97~14_combout\ : std_logic;
SIGNAL \Mux95~0_combout\ : std_logic;
SIGNAL \Mux95~1\ : std_logic;
SIGNAL \Mux84~0\ : std_logic;
SIGNAL \Mux96~0\ : std_logic;
SIGNAL \Mux97~16\ : std_logic;
SIGNAL \Mux97~17_combout\ : std_logic;
SIGNAL \s7[0]~reg0_regout\ : std_logic;
SIGNAL \s7[1]~reg0_regout\ : std_logic;
SIGNAL \s7[2]~reg0_regout\ : std_logic;
SIGNAL \s7[3]~reg0_regout\ : std_logic;
SIGNAL \Mux108~1_combout\ : std_logic;
SIGNAL \Mux108~0\ : std_logic;
SIGNAL \Mux108~2\ : std_logic;
SIGNAL \Mux111~3\ : std_logic;
SIGNAL \Mux111~15_combout\ : std_logic;
SIGNAL \Mux111~13\ : std_logic;
SIGNAL \Mux98~0\ : std_logic;
SIGNAL \Mux110~0\ : std_logic;
SIGNAL \Mux109~0_combout\ : std_logic;
SIGNAL \Mux111~14_combout\ : std_logic;
SIGNAL \Mux109~1\ : std_logic;
SIGNAL \Mux111~16\ : std_logic;
SIGNAL \Mux111~17_combout\ : std_logic;
SIGNAL \s8[0]~reg0_regout\ : std_logic;
SIGNAL \s8[1]~reg0_regout\ : std_logic;
SIGNAL \s8[2]~reg0_regout\ : std_logic;
SIGNAL \s8[3]~reg0_regout\ : std_logic;
SIGNAL last_s1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \d1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL last_s2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \d2~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL last_s3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \d3~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL last_s4 : std_logic_vector(3 DOWNTO 0);
SIGNAL \d4~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d5~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL last_s5 : std_logic_vector(3 DOWNTO 0);
SIGNAL \d6~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL last_s6 : std_logic_vector(3 DOWNTO 0);
SIGNAL \d7~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL last_s7 : std_logic_vector(3 DOWNTO 0);
SIGNAL \d8~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL last_s8 : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_d1 <= d1;
ww_d2 <= d2;
ww_d3 <= d3;
ww_d4 <= d4;
ww_d5 <= d5;
ww_d6 <= d6;
ww_d7 <= d7;
ww_d8 <= d8;
s1 <= ww_s1;
s2 <= ww_s2;
s3 <= ww_s3;
s4 <= ww_s4;
s5 <= ww_s5;
s6 <= ww_s6;
s7 <= ww_s7;
s8 <= ww_s8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(2),
	combout => \d1~combout\(2));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(0),
	combout => \d1~combout\(0));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(1),
	combout => \d1~combout\(1));

-- Location: LC_X5_Y4_N4
\Mux10~1\ : maxii_lcell
-- Equation(s):
-- \Mux10~1_combout\ = (((!\d1~combout\(1) & !\d1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \d1~combout\(1),
	datad => \d1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~1_combout\);

-- Location: LC_X3_Y1_N2
\Mux11~0\ : maxii_lcell
-- Equation(s):
-- \Mux11~0_combout\ = (!last_s1(3) & (!last_s1(0) & (!last_s1(1) & last_s1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(3),
	datab => last_s1(0),
	datac => last_s1(1),
	datad => last_s1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~0_combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d1(3),
	combout => \d1~combout\(3));

-- Location: LC_X3_Y1_N0
\s1[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux10~2\ = (\d1~combout\(3) & ((\Mux10~0\) # ((\Mux10~1_combout\ & !\d1~combout\(2)))))
-- \s1[3]~reg0_regout\ = DFFEAS(\Mux10~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux10~1_combout\,
	datab => \d1~combout\(2),
	datac => \Mux10~0\,
	datad => \d1~combout\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~2\,
	regout => \s1[3]~reg0_regout\);

-- Location: LC_X3_Y1_N5
\last_s1[3]\ : maxii_lcell
-- Equation(s):
-- \Mux10~0\ = (!last_s1(1) & (!last_s1(0) & (last_s1[3] & !last_s1(2))))
-- last_s1(3) = DFFEAS(\Mux10~0\, GLOBAL(\clk~combout\), VCC, , , \Mux10~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s1(1),
	datab => last_s1(0),
	datac => \Mux10~2\,
	datad => last_s1(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0\,
	regout => last_s1(3));

-- Location: LC_X3_Y1_N6
\Mux13~14\ : maxii_lcell
-- Equation(s):
-- \Mux13~14_combout\ = (((!\d1~combout\(3)) # (!\Mux10~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mux10~0\,
	datad => \d1~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~14_combout\);

-- Location: LC_X3_Y1_N7
\s1[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux11~1\ = (\d1~combout\(2) & ((\Mux10~1_combout\ & ((\Mux13~14_combout\))) # (!\Mux10~1_combout\ & (\Mux11~0_combout\))))
-- \s1[2]~reg0_regout\ = DFFEAS(\Mux11~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c840",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux10~1_combout\,
	datab => \d1~combout\(2),
	datac => \Mux11~0_combout\,
	datad => \Mux13~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~1\,
	regout => \s1[2]~reg0_regout\);

-- Location: LC_X3_Y1_N1
\last_s1[2]\ : maxii_lcell
-- Equation(s):
-- \Mux13~3\ = (last_s1(3) & (((last_s1[2]) # (!\d1~combout\(3))))) # (!last_s1(3) & (((!last_s1[2])) # (!\d1~combout\(2))))
-- last_s1(2) = DFFEAS(\Mux13~3\, GLOBAL(\clk~combout\), VCC, , , \Mux11~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b5bf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s1(3),
	datab => \d1~combout\(2),
	datac => \Mux11~1\,
	datad => \d1~combout\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~3\,
	regout => last_s1(2));

-- Location: LC_X3_Y1_N9
\last_s1[0]\ : maxii_lcell
-- Equation(s):
-- \Mux0~0\ = (!last_s1(3) & (last_s1(1) & (!last_s1[0] & !last_s1(2))))
-- last_s1(0) = DFFEAS(\Mux0~0\, GLOBAL(\clk~combout\), VCC, , , \Mux13~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s1(3),
	datab => last_s1(1),
	datac => \Mux13~13\,
	datad => last_s1(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0\,
	regout => last_s1(0));

-- Location: LC_X3_Y1_N3
\Mux13~15\ : maxii_lcell
-- Equation(s):
-- \Mux13~15_combout\ = ((last_s1(0)) # ((\Mux13~3\) # (last_s1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => last_s1(0),
	datac => \Mux13~3\,
	datad => last_s1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~15_combout\);

-- Location: LC_X5_Y4_N5
\s1[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux13~13\ = (\d1~combout\(0) & ((\d1~combout\(1) & (!\Mux13~17_combout\)) # (!\d1~combout\(1) & ((\Mux13~15_combout\)))))
-- \s1[0]~reg0_regout\ = DFFEAS(\Mux13~13\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c40",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux13~17_combout\,
	datab => \d1~combout\(0),
	datac => \d1~combout\(1),
	datad => \Mux13~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~13\,
	regout => \s1[0]~reg0_regout\);

-- Location: LC_X5_Y4_N2
\s1[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux12~0\ = (\d1~combout\(1) & ((\d1~combout\(0) & (\Mux0~0\)) # (!\d1~combout\(0) & ((\Mux13~15_combout\)))))
-- \s1[1]~reg0_regout\ = DFFEAS(\Mux12~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux0~0\,
	datab => \d1~combout\(0),
	datac => \d1~combout\(1),
	datad => \Mux13~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~0\,
	regout => \s1[1]~reg0_regout\);

-- Location: LC_X3_Y1_N4
\last_s1[1]\ : maxii_lcell
-- Equation(s):
-- \Mux13~16\ = (last_s1(2) & (!last_s1(3) & (\d1~combout\(2) & !last_s1[1]))) # (!last_s1(2) & (last_s1(3) $ (((last_s1[1])))))
-- last_s1(1) = DFFEAS(\Mux13~16\, GLOBAL(\clk~combout\), VCC, , , \Mux12~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "045a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s1(3),
	datab => \d1~combout\(2),
	datac => \Mux12~0\,
	datad => last_s1(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~16\,
	regout => last_s1(1));

-- Location: LC_X3_Y1_N8
\Mux13~17\ : maxii_lcell
-- Equation(s):
-- \Mux13~17_combout\ = (!last_s1(0) & (\Mux13~16\ & ((\d1~combout\(3)) # (!last_s1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s1(3),
	datab => last_s1(0),
	datac => \Mux13~16\,
	datad => \d1~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~17_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(0),
	combout => \d2~combout\(0));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(3),
	combout => \d2~combout\(3));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(2),
	combout => \d2~combout\(2));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d2(1),
	combout => \d2~combout\(1));

-- Location: LC_X6_Y4_N7
\Mux24~1\ : maxii_lcell
-- Equation(s):
-- \Mux24~1_combout\ = (((!\d2~combout\(1) & !\d2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \d2~combout\(1),
	datad => \d2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux24~1_combout\);

-- Location: LC_X4_Y4_N0
\s2[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux24~2\ = (\d2~combout\(3) & ((\Mux24~0\) # ((!\d2~combout\(2) & \Mux24~1_combout\))))
-- \s2[3]~reg0_regout\ = DFFEAS(\Mux24~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc40",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d2~combout\(2),
	datab => \d2~combout\(3),
	datac => \Mux24~1_combout\,
	datad => \Mux24~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux24~2\,
	regout => \s2[3]~reg0_regout\);

-- Location: LC_X4_Y4_N9
\last_s2[3]\ : maxii_lcell
-- Equation(s):
-- \Mux24~0\ = (!last_s2(1) & (!last_s2(2) & (last_s2[3] & !last_s2(0))))
-- last_s2(3) = DFFEAS(\Mux24~0\, GLOBAL(\clk~combout\), VCC, , , \Mux24~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s2(1),
	datab => last_s2(2),
	datac => \Mux24~2\,
	datad => last_s2(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux24~0\,
	regout => last_s2(3));

-- Location: LC_X4_Y4_N7
\last_s2[2]\ : maxii_lcell
-- Equation(s):
-- \Mux27~3\ = (last_s2[2] & (((last_s2(3))) # (!\d2~combout\(2)))) # (!last_s2[2] & (((!last_s2(3)) # (!\d2~combout\(3)))))
-- last_s2(2) = DFFEAS(\Mux27~3\, GLOBAL(\clk~combout\), VCC, , , \Mux25~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f35f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d2~combout\(2),
	datab => \d2~combout\(3),
	datac => \Mux25~1\,
	datad => last_s2(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux27~3\,
	regout => last_s2(2));

-- Location: LC_X4_Y4_N2
\Mux27~15\ : maxii_lcell
-- Equation(s):
-- \Mux27~15_combout\ = (last_s2(1)) # ((last_s2(0)) # ((\Mux27~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(1),
	datab => last_s2(0),
	datac => \Mux27~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux27~15_combout\);

-- Location: LC_X6_Y4_N4
\s2[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux27~13\ = (\d2~combout\(0) & ((\d2~combout\(1) & (!\Mux27~17_combout\)) # (!\d2~combout\(1) & ((\Mux27~15_combout\)))))
-- \s2[0]~reg0_regout\ = DFFEAS(\Mux27~13\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a20",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d2~combout\(0),
	datab => \Mux27~17_combout\,
	datac => \d2~combout\(1),
	datad => \Mux27~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux27~13\,
	regout => \s2[0]~reg0_regout\);

-- Location: LC_X4_Y4_N1
\last_s2[0]\ : maxii_lcell
-- Equation(s):
-- \Mux14~0\ = (!last_s2(2) & (!last_s2(3) & (!last_s2[0] & last_s2(1))))
-- last_s2(0) = DFFEAS(\Mux14~0\, GLOBAL(\clk~combout\), VCC, , , \Mux27~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s2(2),
	datab => last_s2(3),
	datac => \Mux27~13\,
	datad => last_s2(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~0\,
	regout => last_s2(0));

-- Location: LC_X6_Y4_N5
\s2[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux26~0\ = (\d2~combout\(1) & ((\d2~combout\(0) & ((\Mux14~0\))) # (!\d2~combout\(0) & (\Mux27~15_combout\))))
-- \s2[1]~reg0_regout\ = DFFEAS(\Mux26~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d2~combout\(0),
	datab => \Mux27~15_combout\,
	datac => \d2~combout\(1),
	datad => \Mux14~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux26~0\,
	regout => \s2[1]~reg0_regout\);

-- Location: LC_X4_Y4_N8
\last_s2[1]\ : maxii_lcell
-- Equation(s):
-- \Mux27~16\ = (last_s2(2) & (\d2~combout\(2) & (!last_s2[1] & !last_s2(3)))) # (!last_s2(2) & ((last_s2[1] $ (last_s2(3)))))
-- last_s2(1) = DFFEAS(\Mux27~16\, GLOBAL(\clk~combout\), VCC, , , \Mux26~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0558",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s2(2),
	datab => \d2~combout\(2),
	datac => \Mux26~0\,
	datad => last_s2(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux27~16\,
	regout => last_s2(1));

-- Location: LC_X4_Y4_N5
\Mux27~14\ : maxii_lcell
-- Equation(s):
-- \Mux27~14_combout\ = (((!\Mux24~0\)) # (!\d2~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d2~combout\(3),
	datad => \Mux24~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux27~14_combout\);

-- Location: LC_X4_Y4_N3
\Mux25~0\ : maxii_lcell
-- Equation(s):
-- \Mux25~0_combout\ = (last_s2(2) & (!last_s2(3) & (!last_s2(0) & !last_s2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s2(2),
	datab => last_s2(3),
	datac => last_s2(0),
	datad => last_s2(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~0_combout\);

-- Location: LC_X4_Y4_N4
\s2[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux25~1\ = (\d2~combout\(2) & ((\Mux24~1_combout\ & (\Mux27~14_combout\)) # (!\Mux24~1_combout\ & ((\Mux25~0_combout\)))))
-- \s2[2]~reg0_regout\ = DFFEAS(\Mux25~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux27~14_combout\,
	datab => \d2~combout\(2),
	datac => \Mux24~1_combout\,
	datad => \Mux25~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~1\,
	regout => \s2[2]~reg0_regout\);

-- Location: LC_X4_Y4_N6
\Mux27~17\ : maxii_lcell
-- Equation(s):
-- \Mux27~17_combout\ = (!last_s2(0) & (\Mux27~16\ & ((\d2~combout\(3)) # (!last_s2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d2~combout\(3),
	datab => last_s2(0),
	datac => \Mux27~16\,
	datad => last_s2(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux27~17_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(3),
	combout => \d3~combout\(3));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(2),
	combout => \d3~combout\(2));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(0),
	combout => \d3~combout\(0));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d3[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d3(1),
	combout => \d3~combout\(1));

-- Location: LC_X5_Y1_N8
\last_s3[0]\ : maxii_lcell
-- Equation(s):
-- \Mux28~0\ = (!last_s3(2) & (last_s3(1) & (!last_s3[0] & !last_s3(3))))
-- last_s3(0) = DFFEAS(\Mux28~0\, GLOBAL(\clk~combout\), VCC, , , \Mux41~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s3(2),
	datab => last_s3(1),
	datac => \Mux41~13\,
	datad => last_s3(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux28~0\,
	regout => last_s3(0));

-- Location: LC_X5_Y1_N3
\last_s3[2]\ : maxii_lcell
-- Equation(s):
-- \Mux41~3\ = (last_s3[2] & (((last_s3(3)) # (!\d3~combout\(2))))) # (!last_s3[2] & (((!last_s3(3))) # (!\d3~combout\(3))))
-- last_s3(2) = DFFEAS(\Mux41~3\, GLOBAL(\clk~combout\), VCC, , , \Mux39~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f53f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d3~combout\(3),
	datab => \d3~combout\(2),
	datac => \Mux39~1\,
	datad => last_s3(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~3\,
	regout => last_s3(2));

-- Location: LC_X5_Y1_N6
\Mux41~15\ : maxii_lcell
-- Equation(s):
-- \Mux41~15_combout\ = (last_s3(0)) # ((last_s3(1)) # ((\Mux41~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(0),
	datab => last_s3(1),
	datad => \Mux41~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~15_combout\);

-- Location: LC_X4_Y2_N7
\s3[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux41~13\ = (\d3~combout\(0) & ((\d3~combout\(1) & (!\Mux41~17_combout\)) # (!\d3~combout\(1) & ((\Mux41~15_combout\)))))
-- \s3[0]~reg0_regout\ = DFFEAS(\Mux41~13\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c40",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux41~17_combout\,
	datab => \d3~combout\(0),
	datac => \d3~combout\(1),
	datad => \Mux41~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~13\,
	regout => \s3[0]~reg0_regout\);

-- Location: LC_X4_Y2_N5
\s3[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux40~0\ = (\d3~combout\(1) & ((\d3~combout\(0) & (\Mux28~0\)) # (!\d3~combout\(0) & ((\Mux41~15_combout\)))))
-- \s3[1]~reg0_regout\ = DFFEAS(\Mux40~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux28~0\,
	datab => \d3~combout\(0),
	datac => \d3~combout\(1),
	datad => \Mux41~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux40~0\,
	regout => \s3[1]~reg0_regout\);

-- Location: LC_X5_Y1_N7
\last_s3[1]\ : maxii_lcell
-- Equation(s):
-- \Mux41~16\ = (last_s3(2) & (\d3~combout\(2) & (!last_s3[1] & !last_s3(3)))) # (!last_s3(2) & ((last_s3[1] $ (last_s3(3)))))
-- last_s3(1) = DFFEAS(\Mux41~16\, GLOBAL(\clk~combout\), VCC, , , \Mux40~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0558",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s3(2),
	datab => \d3~combout\(2),
	datac => \Mux40~0\,
	datad => last_s3(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~16\,
	regout => last_s3(1));

-- Location: LC_X4_Y2_N0
\Mux38~1\ : maxii_lcell
-- Equation(s):
-- \Mux38~1_combout\ = (((!\d3~combout\(1) & !\d3~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \d3~combout\(1),
	datad => \d3~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux38~1_combout\);

-- Location: LC_X5_Y1_N4
\s3[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux38~2\ = (\d3~combout\(3) & ((\Mux38~0\) # ((\Mux38~1_combout\ & !\d3~combout\(2)))))
-- \s3[3]~reg0_regout\ = DFFEAS(\Mux38~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d3~combout\(3),
	datab => \Mux38~1_combout\,
	datac => \Mux38~0\,
	datad => \d3~combout\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux38~2\,
	regout => \s3[3]~reg0_regout\);

-- Location: LC_X5_Y1_N2
\last_s3[3]\ : maxii_lcell
-- Equation(s):
-- \Mux38~0\ = (!last_s3(2) & (!last_s3(1) & (last_s3[3] & !last_s3(0))))
-- last_s3(3) = DFFEAS(\Mux38~0\, GLOBAL(\clk~combout\), VCC, , , \Mux38~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s3(2),
	datab => last_s3(1),
	datac => \Mux38~2\,
	datad => last_s3(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux38~0\,
	regout => last_s3(3));

-- Location: LC_X5_Y1_N5
\Mux41~14\ : maxii_lcell
-- Equation(s):
-- \Mux41~14_combout\ = (((!\Mux38~0\))) # (!\d3~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3~combout\(3),
	datac => \Mux38~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~14_combout\);

-- Location: LC_X5_Y1_N9
\Mux39~0\ : maxii_lcell
-- Equation(s):
-- \Mux39~0_combout\ = (!last_s3(0) & (!last_s3(1) & (last_s3(2) & !last_s3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s3(0),
	datab => last_s3(1),
	datac => last_s3(2),
	datad => last_s3(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux39~0_combout\);

-- Location: LC_X5_Y1_N0
\s3[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux39~1\ = (\d3~combout\(2) & ((\Mux38~1_combout\ & (\Mux41~14_combout\)) # (!\Mux38~1_combout\ & ((\Mux39~0_combout\)))))
-- \s3[2]~reg0_regout\ = DFFEAS(\Mux39~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux41~14_combout\,
	datab => \Mux38~1_combout\,
	datac => \d3~combout\(2),
	datad => \Mux39~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux39~1\,
	regout => \s3[2]~reg0_regout\);

-- Location: LC_X5_Y1_N1
\Mux41~17\ : maxii_lcell
-- Equation(s):
-- \Mux41~17_combout\ = (\Mux41~16\ & (!last_s3(0) & ((\d3~combout\(3)) # (!last_s3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d3~combout\(3),
	datab => last_s3(3),
	datac => \Mux41~16\,
	datad => last_s3(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux41~17_combout\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d4[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d4(2),
	combout => \d4~combout\(2));

-- Location: LC_X3_Y3_N9
\Mux53~0\ : maxii_lcell
-- Equation(s):
-- \Mux53~0_combout\ = (!last_s4(0) & (last_s4(2) & (!last_s4(3) & !last_s4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(0),
	datab => last_s4(2),
	datac => last_s4(3),
	datad => last_s4(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux53~0_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d4[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d4(3),
	combout => \d4~combout\(3));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d4[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d4(1),
	combout => \d4~combout\(1));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d4[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d4(0),
	combout => \d4~combout\(0));

-- Location: LC_X7_Y2_N4
\Mux52~1\ : maxii_lcell
-- Equation(s):
-- \Mux52~1_combout\ = ((!\d4~combout\(1) & ((!\d4~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d4~combout\(1),
	datad => \d4~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux52~1_combout\);

-- Location: LC_X3_Y3_N4
\s4[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux52~2\ = (\d4~combout\(3) & ((\Mux52~0\) # ((!\d4~combout\(2) & \Mux52~1_combout\))))
-- \s4[3]~reg0_regout\ = DFFEAS(\Mux52~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d4~combout\(2),
	datab => \Mux52~0\,
	datac => \d4~combout\(3),
	datad => \Mux52~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux52~2\,
	regout => \s4[3]~reg0_regout\);

-- Location: LC_X3_Y3_N1
\last_s4[3]\ : maxii_lcell
-- Equation(s):
-- \Mux52~0\ = (!last_s4(1) & (!last_s4(2) & (last_s4[3] & !last_s4(0))))
-- last_s4(3) = DFFEAS(\Mux52~0\, GLOBAL(\clk~combout\), VCC, , , \Mux52~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s4(1),
	datab => last_s4(2),
	datac => \Mux52~2\,
	datad => last_s4(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux52~0\,
	regout => last_s4(3));

-- Location: LC_X3_Y3_N0
\Mux55~14\ : maxii_lcell
-- Equation(s):
-- \Mux55~14_combout\ = (((!\d4~combout\(3))) # (!\Mux52~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux52~0\,
	datad => \d4~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux55~14_combout\);

-- Location: LC_X3_Y3_N5
\s4[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux53~1\ = (\d4~combout\(2) & ((\Mux52~1_combout\ & ((\Mux55~14_combout\))) # (!\Mux52~1_combout\ & (\Mux53~0_combout\))))
-- \s4[2]~reg0_regout\ = DFFEAS(\Mux53~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d4~combout\(2),
	datab => \Mux53~0_combout\,
	datac => \Mux55~14_combout\,
	datad => \Mux52~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux53~1\,
	regout => \s4[2]~reg0_regout\);

-- Location: LC_X3_Y3_N2
\last_s4[2]\ : maxii_lcell
-- Equation(s):
-- \Mux55~3\ = (last_s4(3) & (((last_s4[2]) # (!\d4~combout\(3))))) # (!last_s4(3) & (((!last_s4[2])) # (!\d4~combout\(2))))
-- last_s4(2) = DFFEAS(\Mux55~3\, GLOBAL(\clk~combout\), VCC, , , \Mux53~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b5bf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s4(3),
	datab => \d4~combout\(2),
	datac => \Mux53~1\,
	datad => \d4~combout\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux55~3\,
	regout => last_s4(2));

-- Location: LC_X3_Y3_N6
\Mux55~15\ : maxii_lcell
-- Equation(s):
-- \Mux55~15_combout\ = (\Mux55~3\) # (((last_s4(1)) # (last_s4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~3\,
	datac => last_s4(1),
	datad => last_s4(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux55~15_combout\);

-- Location: LC_X7_Y2_N5
\s4[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux55~13\ = (\d4~combout\(0) & ((\d4~combout\(1) & (!\Mux55~17_combout\)) # (!\d4~combout\(1) & ((\Mux55~15_combout\)))))
-- \s4[0]~reg0_regout\ = DFFEAS(\Mux55~13\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux55~17_combout\,
	datab => \d4~combout\(0),
	datac => \Mux55~15_combout\,
	datad => \d4~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux55~13\,
	regout => \s4[0]~reg0_regout\);

-- Location: LC_X3_Y3_N3
\last_s4[0]\ : maxii_lcell
-- Equation(s):
-- \Mux42~0\ = (!last_s4(3) & (!last_s4(2) & (!last_s4[0] & last_s4(1))))
-- last_s4(0) = DFFEAS(\Mux42~0\, GLOBAL(\clk~combout\), VCC, , , \Mux55~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s4(3),
	datab => last_s4(2),
	datac => \Mux55~13\,
	datad => last_s4(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux42~0\,
	regout => last_s4(0));

-- Location: LC_X7_Y2_N2
\s4[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux54~0\ = (\d4~combout\(1) & ((\d4~combout\(0) & (\Mux42~0\)) # (!\d4~combout\(0) & ((\Mux55~15_combout\)))))
-- \s4[1]~reg0_regout\ = DFFEAS(\Mux54~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux42~0\,
	datab => \d4~combout\(0),
	datac => \Mux55~15_combout\,
	datad => \d4~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux54~0\,
	regout => \s4[1]~reg0_regout\);

-- Location: LC_X3_Y3_N7
\last_s4[1]\ : maxii_lcell
-- Equation(s):
-- \Mux55~16\ = (last_s4(2) & (!last_s4(3) & (\d4~combout\(2) & !last_s4[1]))) # (!last_s4(2) & (last_s4(3) $ (((last_s4[1])))))
-- last_s4(1) = DFFEAS(\Mux55~16\, GLOBAL(\clk~combout\), VCC, , , \Mux54~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "045a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s4(3),
	datab => \d4~combout\(2),
	datac => \Mux54~0\,
	datad => last_s4(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux55~16\,
	regout => last_s4(1));

-- Location: LC_X3_Y3_N8
\Mux55~17\ : maxii_lcell
-- Equation(s):
-- \Mux55~17_combout\ = (!last_s4(0) & (\Mux55~16\ & ((\d4~combout\(3)) # (!last_s4(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s4(0),
	datab => \Mux55~16\,
	datac => last_s4(3),
	datad => \d4~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux55~17_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d5[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d5(3),
	combout => \d5~combout\(3));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d5[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d5(2),
	combout => \d5~combout\(2));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d5[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d5(1),
	combout => \d5~combout\(1));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d5[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d5(0),
	combout => \d5~combout\(0));

-- Location: LC_X3_Y4_N9
\Mux66~1\ : maxii_lcell
-- Equation(s):
-- \Mux66~1_combout\ = (((!\d5~combout\(1) & !\d5~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \d5~combout\(1),
	datad => \d5~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux66~1_combout\);

-- Location: LC_X3_Y4_N6
\s5[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux66~2\ = (\d5~combout\(3) & ((\Mux66~0\) # ((!\d5~combout\(2) & \Mux66~1_combout\))))
-- \s5[3]~reg0_regout\ = DFFEAS(\Mux66~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d5~combout\(2),
	datab => \Mux66~1_combout\,
	datac => \Mux66~0\,
	datad => \d5~combout\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux66~2\,
	regout => \s5[3]~reg0_regout\);

-- Location: LC_X3_Y4_N7
\last_s5[2]\ : maxii_lcell
-- Equation(s):
-- \Mux69~3\ = (last_s5[2] & (((last_s5(3)) # (!\d5~combout\(2))))) # (!last_s5[2] & (((!last_s5(3))) # (!\d5~combout\(3))))
-- last_s5(2) = DFFEAS(\Mux69~3\, GLOBAL(\clk~combout\), VCC, , , \Mux67~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f53f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d5~combout\(3),
	datab => \d5~combout\(2),
	datac => \Mux67~1\,
	datad => last_s5(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux69~3\,
	regout => last_s5(2));

-- Location: LC_X3_Y4_N3
\Mux69~15\ : maxii_lcell
-- Equation(s):
-- \Mux69~15_combout\ = (last_s5(1)) # ((last_s5(0)) # ((\Mux69~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(1),
	datab => last_s5(0),
	datac => \Mux69~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux69~15_combout\);

-- Location: LC_X3_Y2_N9
\s5[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux69~13\ = (\d5~combout\(0) & ((\d5~combout\(1) & (!\Mux69~17_combout\)) # (!\d5~combout\(1) & ((\Mux69~15_combout\)))))
-- \s5[0]~reg0_regout\ = DFFEAS(\Mux69~13\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c40",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux69~17_combout\,
	datab => \d5~combout\(0),
	datac => \d5~combout\(1),
	datad => \Mux69~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux69~13\,
	regout => \s5[0]~reg0_regout\);

-- Location: LC_X3_Y2_N7
\last_s5[0]\ : maxii_lcell
-- Equation(s):
-- \Mux56~0\ = (!last_s5(2) & (last_s5(1) & (!last_s5[0] & !last_s5(3))))
-- last_s5(0) = DFFEAS(\Mux56~0\, GLOBAL(\clk~combout\), VCC, , , \Mux69~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s5(2),
	datab => last_s5(1),
	datac => \Mux69~13\,
	datad => last_s5(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux56~0\,
	regout => last_s5(0));

-- Location: LC_X3_Y4_N0
\s5[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux68~0\ = (\d5~combout\(1) & ((\d5~combout\(0) & (\Mux56~0\)) # (!\d5~combout\(0) & ((\Mux69~15_combout\)))))
-- \s5[1]~reg0_regout\ = DFFEAS(\Mux68~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d5~combout\(0),
	datab => \Mux56~0\,
	datac => \d5~combout\(1),
	datad => \Mux69~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux68~0\,
	regout => \s5[1]~reg0_regout\);

-- Location: LC_X3_Y4_N5
\last_s5[1]\ : maxii_lcell
-- Equation(s):
-- \Mux69~16\ = (last_s5(2) & (\d5~combout\(2) & (!last_s5[1] & !last_s5(3)))) # (!last_s5(2) & ((last_s5[1] $ (last_s5(3)))))
-- last_s5(1) = DFFEAS(\Mux69~16\, GLOBAL(\clk~combout\), VCC, , , \Mux68~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0558",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s5(2),
	datab => \d5~combout\(2),
	datac => \Mux68~0\,
	datad => last_s5(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux69~16\,
	regout => last_s5(1));

-- Location: LC_X3_Y4_N1
\last_s5[3]\ : maxii_lcell
-- Equation(s):
-- \Mux66~0\ = (!last_s5(0) & (!last_s5(2) & (last_s5[3] & !last_s5(1))))
-- last_s5(3) = DFFEAS(\Mux66~0\, GLOBAL(\clk~combout\), VCC, , , \Mux66~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s5(0),
	datab => last_s5(2),
	datac => \Mux66~2\,
	datad => last_s5(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux66~0\,
	regout => last_s5(3));

-- Location: LC_X3_Y4_N8
\Mux69~14\ : maxii_lcell
-- Equation(s):
-- \Mux69~14_combout\ = (((!\d5~combout\(3)) # (!\Mux66~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mux66~0\,
	datad => \d5~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux69~14_combout\);

-- Location: LC_X3_Y4_N2
\Mux67~0\ : maxii_lcell
-- Equation(s):
-- \Mux67~0_combout\ = (!last_s5(1) & (last_s5(2) & (!last_s5(3) & !last_s5(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s5(1),
	datab => last_s5(2),
	datac => last_s5(3),
	datad => last_s5(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux67~0_combout\);

-- Location: LC_X3_Y4_N4
\s5[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux67~1\ = (\d5~combout\(2) & ((\Mux66~1_combout\ & (\Mux69~14_combout\)) # (!\Mux66~1_combout\ & ((\Mux67~0_combout\)))))
-- \s5[2]~reg0_regout\ = DFFEAS(\Mux67~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux69~14_combout\,
	datab => \d5~combout\(2),
	datac => \Mux66~1_combout\,
	datad => \Mux67~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux67~1\,
	regout => \s5[2]~reg0_regout\);

-- Location: LC_X3_Y2_N8
\Mux69~17\ : maxii_lcell
-- Equation(s):
-- \Mux69~17_combout\ = (!last_s5(0) & (\Mux69~16\ & ((\d5~combout\(3)) # (!last_s5(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d5~combout\(3),
	datab => last_s5(3),
	datac => last_s5(0),
	datad => \Mux69~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux69~17_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d6[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d6(0),
	combout => \d6~combout\(0));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d6[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d6(2),
	combout => \d6~combout\(2));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d6[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d6(1),
	combout => \d6~combout\(1));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d6[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d6(3),
	combout => \d6~combout\(3));

-- Location: LC_X3_Y2_N2
\Mux80~1\ : maxii_lcell
-- Equation(s):
-- \Mux80~1_combout\ = (!\d6~combout\(0) & (((!\d6~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d6~combout\(0),
	datac => \d6~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux80~1_combout\);

-- Location: LC_X4_Y3_N4
\s6[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux80~2\ = (\d6~combout\(3) & ((\Mux80~0\) # ((\Mux80~1_combout\ & !\d6~combout\(2)))))
-- \s6[3]~reg0_regout\ = DFFEAS(\Mux80~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux80~1_combout\,
	datab => \d6~combout\(2),
	datac => \Mux80~0\,
	datad => \d6~combout\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux80~2\,
	regout => \s6[3]~reg0_regout\);

-- Location: LC_X4_Y3_N7
\last_s6[3]\ : maxii_lcell
-- Equation(s):
-- \Mux80~0\ = (!last_s6(0) & (!last_s6(1) & (last_s6[3] & !last_s6(2))))
-- last_s6(3) = DFFEAS(\Mux80~0\, GLOBAL(\clk~combout\), VCC, , , \Mux80~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s6(0),
	datab => last_s6(1),
	datac => \Mux80~2\,
	datad => last_s6(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux80~0\,
	regout => last_s6(3));

-- Location: LC_X4_Y3_N5
\Mux83~14\ : maxii_lcell
-- Equation(s):
-- \Mux83~14_combout\ = (((!\d6~combout\(3)) # (!\Mux80~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mux80~0\,
	datad => \d6~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~14_combout\);

-- Location: LC_X4_Y3_N1
\Mux81~0\ : maxii_lcell
-- Equation(s):
-- \Mux81~0_combout\ = (last_s6(2) & (!last_s6(1) & (!last_s6(3) & !last_s6(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(2),
	datab => last_s6(1),
	datac => last_s6(3),
	datad => last_s6(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux81~0_combout\);

-- Location: LC_X4_Y3_N6
\s6[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux81~1\ = (\d6~combout\(2) & ((\Mux80~1_combout\ & (\Mux83~14_combout\)) # (!\Mux80~1_combout\ & ((\Mux81~0_combout\)))))
-- \s6[2]~reg0_regout\ = DFFEAS(\Mux81~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux83~14_combout\,
	datab => \d6~combout\(2),
	datac => \Mux80~1_combout\,
	datad => \Mux81~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux81~1\,
	regout => \s6[2]~reg0_regout\);

-- Location: LC_X4_Y3_N8
\last_s6[2]\ : maxii_lcell
-- Equation(s):
-- \Mux83~3\ = (last_s6(3) & (((last_s6[2])) # (!\d6~combout\(3)))) # (!last_s6(3) & (((!\d6~combout\(2)) # (!last_s6[2]))))
-- last_s6(2) = DFFEAS(\Mux83~3\, GLOBAL(\clk~combout\), VCC, , , \Mux81~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a7f7",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s6(3),
	datab => \d6~combout\(3),
	datac => \Mux81~1\,
	datad => \d6~combout\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~3\,
	regout => last_s6(2));

-- Location: LC_X4_Y3_N0
\last_s6[1]\ : maxii_lcell
-- Equation(s):
-- \Mux83~16\ = (last_s6(2) & (!last_s6(3) & (\d6~combout\(2) & !last_s6[1]))) # (!last_s6(2) & (last_s6(3) $ (((last_s6[1])))))
-- last_s6(1) = DFFEAS(\Mux83~16\, GLOBAL(\clk~combout\), VCC, , , \Mux82~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "045a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s6(3),
	datab => \d6~combout\(2),
	datac => \Mux82~0\,
	datad => last_s6(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~16\,
	regout => last_s6(1));

-- Location: LC_X4_Y3_N2
\Mux83~17\ : maxii_lcell
-- Equation(s):
-- \Mux83~17_combout\ = (!last_s6(0) & (\Mux83~16\ & ((\d6~combout\(3)) # (!last_s6(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(0),
	datab => \Mux83~16\,
	datac => last_s6(3),
	datad => \d6~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~17_combout\);

-- Location: LC_X3_Y2_N0
\s6[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux83~13\ = (\d6~combout\(0) & ((\d6~combout\(1) & ((!\Mux83~17_combout\))) # (!\d6~combout\(1) & (\Mux83~15_combout\))))
-- \s6[0]~reg0_regout\ = DFFEAS(\Mux83~13\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d6~combout\(0),
	datab => \Mux83~15_combout\,
	datac => \d6~combout\(1),
	datad => \Mux83~17_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~13\,
	regout => \s6[0]~reg0_regout\);

-- Location: LC_X4_Y3_N3
\last_s6[0]\ : maxii_lcell
-- Equation(s):
-- \Mux70~0\ = (!last_s6(3) & (last_s6(1) & (!last_s6[0] & !last_s6(2))))
-- last_s6(0) = DFFEAS(\Mux70~0\, GLOBAL(\clk~combout\), VCC, , , \Mux83~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s6(3),
	datab => last_s6(1),
	datac => \Mux83~13\,
	datad => last_s6(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux70~0\,
	regout => last_s6(0));

-- Location: LC_X3_Y2_N6
\s6[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux82~0\ = (\d6~combout\(1) & ((\d6~combout\(0) & (\Mux70~0\)) # (!\d6~combout\(0) & ((\Mux83~15_combout\)))))
-- \s6[1]~reg0_regout\ = DFFEAS(\Mux82~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d6~combout\(0),
	datab => \d6~combout\(1),
	datac => \Mux70~0\,
	datad => \Mux83~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux82~0\,
	regout => \s6[1]~reg0_regout\);

-- Location: LC_X4_Y3_N9
\Mux83~15\ : maxii_lcell
-- Equation(s):
-- \Mux83~15_combout\ = (last_s6(0)) # ((last_s6(1)) # ((\Mux83~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s6(0),
	datab => last_s6(1),
	datad => \Mux83~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux83~15_combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d7[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d7(2),
	combout => \d7~combout\(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d7[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d7(3),
	combout => \d7~combout\(3));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d7[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d7(1),
	combout => \d7~combout\(1));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d7[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d7(0),
	combout => \d7~combout\(0));

-- Location: LC_X6_Y3_N7
\Mux94~1\ : maxii_lcell
-- Equation(s):
-- \Mux94~1_combout\ = ((!\d7~combout\(1) & ((!\d7~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d7~combout\(1),
	datad => \d7~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux94~1_combout\);

-- Location: LC_X7_Y3_N7
\s7[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux94~2\ = (\d7~combout\(3) & ((\Mux94~0\) # ((!\d7~combout\(2) & \Mux94~1_combout\))))
-- \s7[3]~reg0_regout\ = DFFEAS(\Mux94~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d7~combout\(2),
	datab => \Mux94~1_combout\,
	datac => \d7~combout\(3),
	datad => \Mux94~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux94~2\,
	regout => \s7[3]~reg0_regout\);

-- Location: LC_X7_Y3_N9
\last_s7[2]\ : maxii_lcell
-- Equation(s):
-- \Mux97~3\ = (last_s7[2] & (((last_s7(3))) # (!\d7~combout\(2)))) # (!last_s7[2] & (((!last_s7(3)) # (!\d7~combout\(3)))))
-- last_s7(2) = DFFEAS(\Mux97~3\, GLOBAL(\clk~combout\), VCC, , , \Mux95~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f35f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d7~combout\(2),
	datab => \d7~combout\(3),
	datac => \Mux95~1\,
	datad => last_s7(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux97~3\,
	regout => last_s7(2));

-- Location: LC_X7_Y3_N4
\Mux97~15\ : maxii_lcell
-- Equation(s):
-- \Mux97~15_combout\ = (last_s7(1)) # (((\Mux97~3\) # (last_s7(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(1),
	datac => \Mux97~3\,
	datad => last_s7(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux97~15_combout\);

-- Location: LC_X6_Y3_N9
\s7[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux97~13\ = (\d7~combout\(0) & ((\d7~combout\(1) & (!\Mux97~17_combout\)) # (!\d7~combout\(1) & ((\Mux97~15_combout\)))))
-- \s7[0]~reg0_regout\ = DFFEAS(\Mux97~13\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux97~17_combout\,
	datab => \d7~combout\(1),
	datac => \d7~combout\(0),
	datad => \Mux97~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux97~13\,
	regout => \s7[0]~reg0_regout\);

-- Location: LC_X7_Y3_N1
\last_s7[0]\ : maxii_lcell
-- Equation(s):
-- \Mux84~0\ = (last_s7(1) & (!last_s7(2) & (!last_s7[0] & !last_s7(3))))
-- last_s7(0) = DFFEAS(\Mux84~0\, GLOBAL(\clk~combout\), VCC, , , \Mux97~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s7(1),
	datab => last_s7(2),
	datac => \Mux97~13\,
	datad => last_s7(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux84~0\,
	regout => last_s7(0));

-- Location: LC_X7_Y3_N8
\last_s7[3]\ : maxii_lcell
-- Equation(s):
-- \Mux94~0\ = (!last_s7(1) & (!last_s7(2) & (last_s7[3] & !last_s7(0))))
-- last_s7(3) = DFFEAS(\Mux94~0\, GLOBAL(\clk~combout\), VCC, , , \Mux94~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s7(1),
	datab => last_s7(2),
	datac => \Mux94~2\,
	datad => last_s7(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux94~0\,
	regout => last_s7(3));

-- Location: LC_X7_Y3_N0
\Mux97~14\ : maxii_lcell
-- Equation(s):
-- \Mux97~14_combout\ = (((!\Mux94~0\)) # (!\d7~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d7~combout\(3),
	datad => \Mux94~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux97~14_combout\);

-- Location: LC_X7_Y3_N2
\Mux95~0\ : maxii_lcell
-- Equation(s):
-- \Mux95~0_combout\ = (!last_s7(3) & (last_s7(2) & (!last_s7(1) & !last_s7(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(3),
	datab => last_s7(2),
	datac => last_s7(1),
	datad => last_s7(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux95~0_combout\);

-- Location: LC_X7_Y3_N3
\s7[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux95~1\ = (\d7~combout\(2) & ((\Mux94~1_combout\ & (\Mux97~14_combout\)) # (!\Mux94~1_combout\ & ((\Mux95~0_combout\)))))
-- \s7[2]~reg0_regout\ = DFFEAS(\Mux95~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a280",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d7~combout\(2),
	datab => \Mux94~1_combout\,
	datac => \Mux97~14_combout\,
	datad => \Mux95~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux95~1\,
	regout => \s7[2]~reg0_regout\);

-- Location: LC_X6_Y3_N6
\s7[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux96~0\ = (\d7~combout\(1) & ((\d7~combout\(0) & (\Mux84~0\)) # (!\d7~combout\(0) & ((\Mux97~15_combout\)))))
-- \s7[1]~reg0_regout\ = DFFEAS(\Mux96~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux84~0\,
	datab => \d7~combout\(1),
	datac => \d7~combout\(0),
	datad => \Mux97~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux96~0\,
	regout => \s7[1]~reg0_regout\);

-- Location: LC_X7_Y3_N5
\last_s7[1]\ : maxii_lcell
-- Equation(s):
-- \Mux97~16\ = (last_s7(2) & (\d7~combout\(2) & (!last_s7[1] & !last_s7(3)))) # (!last_s7(2) & ((last_s7[1] $ (last_s7(3)))))
-- last_s7(1) = DFFEAS(\Mux97~16\, GLOBAL(\clk~combout\), VCC, , , \Mux96~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0338",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d7~combout\(2),
	datab => last_s7(2),
	datac => \Mux96~0\,
	datad => last_s7(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux97~16\,
	regout => last_s7(1));

-- Location: LC_X7_Y3_N6
\Mux97~17\ : maxii_lcell
-- Equation(s):
-- \Mux97~17_combout\ = (!last_s7(0) & (\Mux97~16\ & ((\d7~combout\(3)) # (!last_s7(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s7(3),
	datab => last_s7(0),
	datac => \d7~combout\(3),
	datad => \Mux97~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux97~17_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d8[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d8(3),
	combout => \d8~combout\(3));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d8[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d8(2),
	combout => \d8~combout\(2));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d8[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d8(1),
	combout => \d8~combout\(1));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d8[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d8(0),
	combout => \d8~combout\(0));

-- Location: LC_X6_Y1_N7
\Mux108~1\ : maxii_lcell
-- Equation(s):
-- \Mux108~1_combout\ = (((!\d8~combout\(1) & !\d8~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \d8~combout\(1),
	datad => \d8~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux108~1_combout\);

-- Location: LC_X6_Y2_N1
\last_s8[3]\ : maxii_lcell
-- Equation(s):
-- \Mux108~0\ = (!last_s8(2) & (!last_s8(1) & (last_s8[3] & !last_s8(0))))
-- last_s8(3) = DFFEAS(\Mux108~0\, GLOBAL(\clk~combout\), VCC, , , \Mux108~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s8(2),
	datab => last_s8(1),
	datac => \Mux108~2\,
	datad => last_s8(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux108~0\,
	regout => last_s8(3));

-- Location: LC_X6_Y2_N0
\s8[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux108~2\ = (\d8~combout\(3) & ((\Mux108~0\) # ((\Mux108~1_combout\ & !\d8~combout\(2)))))
-- \s8[3]~reg0_regout\ = DFFEAS(\Mux108~2\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux108~1_combout\,
	datab => \d8~combout\(2),
	datac => \Mux108~0\,
	datad => \d8~combout\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux108~2\,
	regout => \s8[3]~reg0_regout\);

-- Location: LC_X6_Y2_N2
\last_s8[2]\ : maxii_lcell
-- Equation(s):
-- \Mux111~3\ = (last_s8[2] & (((last_s8(3)) # (!\d8~combout\(2))))) # (!last_s8[2] & (((!last_s8(3))) # (!\d8~combout\(3))))
-- last_s8(2) = DFFEAS(\Mux111~3\, GLOBAL(\clk~combout\), VCC, , , \Mux109~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f53f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d8~combout\(3),
	datab => \d8~combout\(2),
	datac => \Mux109~1\,
	datad => last_s8(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux111~3\,
	regout => last_s8(2));

-- Location: LC_X6_Y2_N6
\Mux111~15\ : maxii_lcell
-- Equation(s):
-- \Mux111~15_combout\ = (last_s8(0)) # ((last_s8(1)) # ((\Mux111~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(0),
	datab => last_s8(1),
	datad => \Mux111~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux111~15_combout\);

-- Location: LC_X6_Y1_N4
\s8[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux111~13\ = (\d8~combout\(0) & ((\d8~combout\(1) & (!\Mux111~17_combout\)) # (!\d8~combout\(1) & ((\Mux111~15_combout\)))))
-- \s8[0]~reg0_regout\ = DFFEAS(\Mux111~13\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c40",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux111~17_combout\,
	datab => \d8~combout\(0),
	datac => \d8~combout\(1),
	datad => \Mux111~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux111~13\,
	regout => \s8[0]~reg0_regout\);

-- Location: LC_X6_Y2_N3
\last_s8[0]\ : maxii_lcell
-- Equation(s):
-- \Mux98~0\ = (!last_s8(2) & (last_s8(1) & (!last_s8[0] & !last_s8(3))))
-- last_s8(0) = DFFEAS(\Mux98~0\, GLOBAL(\clk~combout\), VCC, , , \Mux111~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s8(2),
	datab => last_s8(1),
	datac => \Mux111~13\,
	datad => last_s8(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux98~0\,
	regout => last_s8(0));

-- Location: LC_X6_Y1_N5
\s8[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux110~0\ = (\d8~combout\(1) & ((\d8~combout\(0) & ((\Mux98~0\))) # (!\d8~combout\(0) & (\Mux111~15_combout\))))
-- \s8[1]~reg0_regout\ = DFFEAS(\Mux110~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e020",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux111~15_combout\,
	datab => \d8~combout\(0),
	datac => \d8~combout\(1),
	datad => \Mux98~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux110~0\,
	regout => \s8[1]~reg0_regout\);

-- Location: LC_X6_Y2_N9
\last_s8[1]\ : maxii_lcell
-- Equation(s):
-- \Mux111~16\ = (last_s8(2) & (\d8~combout\(2) & (!last_s8[1] & !last_s8(3)))) # (!last_s8(2) & ((last_s8[1] $ (last_s8(3)))))
-- last_s8(1) = DFFEAS(\Mux111~16\, GLOBAL(\clk~combout\), VCC, , , \Mux110~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0558",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => last_s8(2),
	datab => \d8~combout\(2),
	datac => \Mux110~0\,
	datad => last_s8(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux111~16\,
	regout => last_s8(1));

-- Location: LC_X6_Y2_N8
\Mux109~0\ : maxii_lcell
-- Equation(s):
-- \Mux109~0_combout\ = (!last_s8(0) & (!last_s8(1) & (last_s8(2) & !last_s8(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(0),
	datab => last_s8(1),
	datac => last_s8(2),
	datad => last_s8(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux109~0_combout\);

-- Location: LC_X6_Y2_N4
\Mux111~14\ : maxii_lcell
-- Equation(s):
-- \Mux111~14_combout\ = (((!\d8~combout\(3))) # (!\Mux108~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux108~0\,
	datac => \d8~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux111~14_combout\);

-- Location: LC_X6_Y2_N7
\s8[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Mux109~1\ = (\d8~combout\(2) & ((\Mux108~1_combout\ & ((\Mux111~14_combout\))) # (!\Mux108~1_combout\ & (\Mux109~0_combout\))))
-- \s8[2]~reg0_regout\ = DFFEAS(\Mux109~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Mux109~0_combout\,
	datab => \d8~combout\(2),
	datac => \Mux108~1_combout\,
	datad => \Mux111~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux109~1\,
	regout => \s8[2]~reg0_regout\);

-- Location: LC_X6_Y2_N5
\Mux111~17\ : maxii_lcell
-- Equation(s):
-- \Mux111~17_combout\ = (!last_s8(0) & (\Mux111~16\ & ((\d8~combout\(3)) # (!last_s8(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => last_s8(0),
	datab => \Mux111~16\,
	datac => \d8~combout\(3),
	datad => last_s8(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux111~17_combout\);

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s1[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s1(0));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s1[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s1(1));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s1[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s1(2));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s1[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s1(3));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s2[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s2(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s2[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s2(1));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s2[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s2(2));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s2[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s2(3));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s3[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s3[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s3(0));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s3[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s3[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s3(1));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s3[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s3[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s3(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s3[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s3[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s3(3));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s4[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s4[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s4(0));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s4[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s4[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s4(1));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s4[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s4[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s4(2));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s4[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s4[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s4(3));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s5[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s5[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s5(0));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s5[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s5[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s5(1));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s5[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s5[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s5(2));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s5[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s5[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s5(3));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s6[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s6[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s6(0));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s6[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s6[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s6(1));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s6[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s6[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s6(2));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s6[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s6[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s6(3));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s7[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s7(0));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s7[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s7(1));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s7[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s7(2));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s7[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s7(3));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s8[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s8[0]~reg0_regout\,
	oe => VCC,
	padio => ww_s8(0));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s8[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s8[1]~reg0_regout\,
	oe => VCC,
	padio => ww_s8(1));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s8[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s8[2]~reg0_regout\,
	oe => VCC,
	padio => ww_s8(2));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s8[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s8[3]~reg0_regout\,
	oe => VCC,
	padio => ww_s8(3));
END structure;


