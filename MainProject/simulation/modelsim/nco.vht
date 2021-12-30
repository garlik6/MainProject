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
-- Generated on "12/30/2021 12:28:09"
                                                            
-- Vhdl Test Bench template for design  :  nco
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY nco_vhd_tst IS
END nco_vhd_tst;
ARCHITECTURE nco_arch OF nco_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL i_clk : STD_LOGIC;
SIGNAL i_fcw : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL i_rstb : STD_LOGIC;
SIGNAL i_start_phase : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL i_sync_reset : STD_LOGIC;
SIGNAL o_nco : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT nco
	PORT (
	i_clk : IN STD_LOGIC;
	i_fcw : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	i_rstb : IN STD_LOGIC;
	i_start_phase : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	i_sync_reset : IN STD_LOGIC;
	o_nco : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : nco
	PORT MAP (
-- list connections between master ports and signals
	i_clk => i_clk,
	i_fcw => i_fcw,
	i_rstb => i_rstb,
	i_start_phase => i_start_phase,
	i_sync_reset => i_sync_reset,
	o_nco => o_nco
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
END nco_arch;
