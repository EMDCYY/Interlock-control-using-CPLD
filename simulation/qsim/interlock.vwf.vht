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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/12/2018 17:02:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          interlock
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY interlock_vhd_vec_tst IS
END interlock_vhd_vec_tst;
ARCHITECTURE interlock_arch OF interlock_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d7 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d8 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s7 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s8 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT interlock
	PORT (
	clk : IN STD_LOGIC;
	d1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d6 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d7 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d8 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	s1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	s2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	s3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	s4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	s5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	s6 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	s7 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	s8 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : interlock
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	d4 => d4,
	d5 => d5,
	d6 => d6,
	d7 => d7,
	d8 => d8,
	s1 => s1,
	s2 => s2,
	s3 => s3,
	s4 => s4,
	s5 => s5,
	s6 => s6,
	s7 => s7,
	s8 => s8
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 500000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- d1[3]
t_prcs_d1_3: PROCESS
BEGIN
	d1(3) <= '0';
	WAIT FOR 17000 ps;
	d1(3) <= '1';
	WAIT FOR 34000 ps;
	d1(3) <= '0';
	WAIT FOR 34000 ps;
	d1(3) <= '1';
	WAIT FOR 17000 ps;
	d1(3) <= '0';
	WAIT FOR 17000 ps;
	d1(3) <= '1';
	WAIT FOR 17000 ps;
	d1(3) <= '0';
	WAIT FOR 17000 ps;
	d1(3) <= '1';
	WAIT FOR 17000 ps;
	d1(3) <= '0';
	WAIT FOR 17000 ps;
	d1(3) <= '1';
	WAIT FOR 51000 ps;
	d1(3) <= '0';
	WAIT FOR 17000 ps;
	d1(3) <= '1';
	WAIT FOR 17000 ps;
	d1(3) <= '0';
	WAIT FOR 51000 ps;
	d1(3) <= '1';
	WAIT FOR 34000 ps;
	d1(3) <= '0';
	WAIT FOR 34000 ps;
	d1(3) <= '1';
	WAIT FOR 17000 ps;
	d1(3) <= '0';
	WAIT FOR 17000 ps;
	d1(3) <= '1';
	WAIT FOR 34000 ps;
	d1(3) <= '0';
	WAIT FOR 17000 ps;
	d1(3) <= '1';
	WAIT FOR 17000 ps;
	d1(3) <= '0';
WAIT;
END PROCESS t_prcs_d1_3;
-- d1[2]
t_prcs_d1_2: PROCESS
BEGIN
	d1(2) <= '1';
	WAIT FOR 17000 ps;
	d1(2) <= '0';
	WAIT FOR 17000 ps;
	d1(2) <= '1';
	WAIT FOR 17000 ps;
	d1(2) <= '0';
	WAIT FOR 34000 ps;
	d1(2) <= '1';
	WAIT FOR 51000 ps;
	d1(2) <= '0';
	WAIT FOR 68000 ps;
	d1(2) <= '1';
	WAIT FOR 51000 ps;
	d1(2) <= '0';
	WAIT FOR 17000 ps;
	d1(2) <= '1';
	WAIT FOR 51000 ps;
	d1(2) <= '0';
	WAIT FOR 34000 ps;
	d1(2) <= '1';
	WAIT FOR 17000 ps;
	d1(2) <= '0';
	WAIT FOR 17000 ps;
	d1(2) <= '1';
	WAIT FOR 17000 ps;
	d1(2) <= '0';
	WAIT FOR 17000 ps;
	d1(2) <= '1';
	WAIT FOR 17000 ps;
	d1(2) <= '0';
	WAIT FOR 17000 ps;
	d1(2) <= '1';
	WAIT FOR 17000 ps;
	d1(2) <= '0';
WAIT;
END PROCESS t_prcs_d1_2;
-- d1[1]
t_prcs_d1_1: PROCESS
BEGIN
	d1(1) <= '0';
	WAIT FOR 17000 ps;
	d1(1) <= '1';
	WAIT FOR 51000 ps;
	d1(1) <= '0';
	WAIT FOR 85000 ps;
	d1(1) <= '1';
	WAIT FOR 17000 ps;
	d1(1) <= '0';
	WAIT FOR 17000 ps;
	d1(1) <= '1';
	WAIT FOR 17000 ps;
	d1(1) <= '0';
	WAIT FOR 51000 ps;
	d1(1) <= '1';
	WAIT FOR 34000 ps;
	d1(1) <= '0';
	WAIT FOR 17000 ps;
	d1(1) <= '1';
	WAIT FOR 17000 ps;
	d1(1) <= '0';
	WAIT FOR 68000 ps;
	d1(1) <= '1';
	WAIT FOR 17000 ps;
	d1(1) <= '0';
	WAIT FOR 34000 ps;
	d1(1) <= '1';
	WAIT FOR 51000 ps;
	d1(1) <= '0';
WAIT;
END PROCESS t_prcs_d1_1;
-- d1[0]
t_prcs_d1_0: PROCESS
BEGIN
	d1(0) <= '1';
	WAIT FOR 34000 ps;
	d1(0) <= '0';
	WAIT FOR 17000 ps;
	d1(0) <= '1';
	WAIT FOR 17000 ps;
	d1(0) <= '0';
	WAIT FOR 17000 ps;
	d1(0) <= '1';
	WAIT FOR 102000 ps;
	d1(0) <= '0';
	WAIT FOR 17000 ps;
	d1(0) <= '1';
	WAIT FOR 17000 ps;
	d1(0) <= '0';
	WAIT FOR 17000 ps;
	d1(0) <= '1';
	WAIT FOR 17000 ps;
	d1(0) <= '0';
	WAIT FOR 17000 ps;
	d1(0) <= '1';
	WAIT FOR 136000 ps;
	d1(0) <= '0';
	WAIT FOR 17000 ps;
	d1(0) <= '1';
	WAIT FOR 51000 ps;
	d1(0) <= '0';
	WAIT FOR 17000 ps;
	d1(0) <= '1';
WAIT;
END PROCESS t_prcs_d1_0;
END interlock_arch;
