-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/30/2021 13:02:43"
                                                            
-- Vhdl Test Bench template for design  :  mixing
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mixing_vhd_tst IS
END mixing_vhd_tst;
ARCHITECTURE mixing_arch OF mixing_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL fcw : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL o_nco : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL o_X_result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL o_Y_result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL o_Z_result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL rstb : STD_LOGIC;
SIGNAL start_phase : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT mixing
	PORT (
	clock : IN STD_LOGIC;
	fcw : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	o_nco : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	o_X_result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	o_Y_result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	o_Z_result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	reset : IN STD_LOGIC;
	rstb : IN STD_LOGIC;
	start_phase : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mixing
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	fcw => fcw,
	o_nco => o_nco,
	o_X_result => o_X_result,
	o_Y_result => o_Y_result,
	o_Z_result => o_Z_result,
	reset => reset,
	rstb => rstb,
	start_phase => start_phase
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END mixing_arch;
