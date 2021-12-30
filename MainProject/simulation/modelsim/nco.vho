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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/30/2021 13:55:01"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mixing IS
    PORT (
	clock : IN std_logic;
	rstb : IN std_logic;
	reset : IN std_logic;
	start_phase : IN std_logic_vector(31 DOWNTO 0);
	fcw : IN std_logic_vector(31 DOWNTO 0);
	o_X_result : BUFFER std_logic_vector(31 DOWNTO 0);
	o_Y_result : BUFFER std_logic_vector(31 DOWNTO 0);
	o_Z_result : BUFFER std_logic_vector(31 DOWNTO 0);
	o_nco : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END mixing;

-- Design Ports Information
-- rstb	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[0]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[7]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[10]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[11]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[12]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[13]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[14]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[15]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[16]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[17]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[18]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[19]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[20]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[21]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[22]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[23]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[24]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[25]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[26]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[27]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[28]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[29]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[30]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_phase[31]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[2]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[7]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[8]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[9]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[10]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[11]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[12]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[13]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[14]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[16]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[17]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[18]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[19]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[20]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[21]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[22]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[23]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[24]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[25]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[26]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[27]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[28]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[29]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[30]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcw[31]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[2]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[6]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[7]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[8]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[9]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[10]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[11]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[12]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[13]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[14]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[15]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[16]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[17]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[18]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[19]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[20]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[21]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[22]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[23]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[24]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[25]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[26]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[27]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[28]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[29]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[30]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_X_result[31]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[7]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[8]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[9]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[10]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[11]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[12]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[13]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[14]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[15]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[16]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[17]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[18]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[19]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[20]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[21]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[22]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[23]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[24]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[25]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[26]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[27]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[28]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[29]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[30]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y_result[31]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[8]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[9]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[10]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[11]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[12]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[13]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[14]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[15]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[16]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[17]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[19]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[20]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[21]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[22]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[23]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[24]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[25]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[26]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[27]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[28]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[29]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[30]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z_result[31]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[0]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[6]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[8]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[9]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[12]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[13]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[14]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[15]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[16]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[17]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[18]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[19]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[20]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[21]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[22]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[23]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[24]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[25]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[26]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[27]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[28]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[29]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[30]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[31]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mixing IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_rstb : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_start_phase : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_fcw : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_o_X_result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_o_Y_result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_o_Z_result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_o_nco : std_logic_vector(31 DOWNTO 0);
SIGNAL \rstb~input_o\ : std_logic;
SIGNAL \start_phase[0]~input_o\ : std_logic;
SIGNAL \start_phase[1]~input_o\ : std_logic;
SIGNAL \start_phase[2]~input_o\ : std_logic;
SIGNAL \start_phase[3]~input_o\ : std_logic;
SIGNAL \start_phase[4]~input_o\ : std_logic;
SIGNAL \start_phase[5]~input_o\ : std_logic;
SIGNAL \start_phase[6]~input_o\ : std_logic;
SIGNAL \start_phase[7]~input_o\ : std_logic;
SIGNAL \start_phase[8]~input_o\ : std_logic;
SIGNAL \start_phase[9]~input_o\ : std_logic;
SIGNAL \start_phase[10]~input_o\ : std_logic;
SIGNAL \start_phase[11]~input_o\ : std_logic;
SIGNAL \start_phase[12]~input_o\ : std_logic;
SIGNAL \start_phase[13]~input_o\ : std_logic;
SIGNAL \start_phase[14]~input_o\ : std_logic;
SIGNAL \start_phase[15]~input_o\ : std_logic;
SIGNAL \start_phase[16]~input_o\ : std_logic;
SIGNAL \start_phase[17]~input_o\ : std_logic;
SIGNAL \start_phase[18]~input_o\ : std_logic;
SIGNAL \start_phase[19]~input_o\ : std_logic;
SIGNAL \start_phase[20]~input_o\ : std_logic;
SIGNAL \start_phase[21]~input_o\ : std_logic;
SIGNAL \start_phase[22]~input_o\ : std_logic;
SIGNAL \start_phase[23]~input_o\ : std_logic;
SIGNAL \start_phase[24]~input_o\ : std_logic;
SIGNAL \start_phase[25]~input_o\ : std_logic;
SIGNAL \start_phase[26]~input_o\ : std_logic;
SIGNAL \start_phase[27]~input_o\ : std_logic;
SIGNAL \start_phase[28]~input_o\ : std_logic;
SIGNAL \start_phase[29]~input_o\ : std_logic;
SIGNAL \start_phase[30]~input_o\ : std_logic;
SIGNAL \start_phase[31]~input_o\ : std_logic;
SIGNAL \fcw[0]~input_o\ : std_logic;
SIGNAL \fcw[1]~input_o\ : std_logic;
SIGNAL \fcw[2]~input_o\ : std_logic;
SIGNAL \fcw[3]~input_o\ : std_logic;
SIGNAL \fcw[4]~input_o\ : std_logic;
SIGNAL \fcw[5]~input_o\ : std_logic;
SIGNAL \fcw[6]~input_o\ : std_logic;
SIGNAL \fcw[7]~input_o\ : std_logic;
SIGNAL \fcw[8]~input_o\ : std_logic;
SIGNAL \fcw[9]~input_o\ : std_logic;
SIGNAL \fcw[10]~input_o\ : std_logic;
SIGNAL \fcw[11]~input_o\ : std_logic;
SIGNAL \fcw[12]~input_o\ : std_logic;
SIGNAL \fcw[13]~input_o\ : std_logic;
SIGNAL \fcw[14]~input_o\ : std_logic;
SIGNAL \fcw[15]~input_o\ : std_logic;
SIGNAL \fcw[16]~input_o\ : std_logic;
SIGNAL \fcw[17]~input_o\ : std_logic;
SIGNAL \fcw[18]~input_o\ : std_logic;
SIGNAL \fcw[19]~input_o\ : std_logic;
SIGNAL \fcw[20]~input_o\ : std_logic;
SIGNAL \fcw[21]~input_o\ : std_logic;
SIGNAL \fcw[22]~input_o\ : std_logic;
SIGNAL \fcw[23]~input_o\ : std_logic;
SIGNAL \fcw[24]~input_o\ : std_logic;
SIGNAL \fcw[25]~input_o\ : std_logic;
SIGNAL \fcw[26]~input_o\ : std_logic;
SIGNAL \fcw[27]~input_o\ : std_logic;
SIGNAL \fcw[28]~input_o\ : std_logic;
SIGNAL \fcw[29]~input_o\ : std_logic;
SIGNAL \fcw[30]~input_o\ : std_logic;
SIGNAL \fcw[31]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \conect_2|cur_iter[0]~1_combout\ : std_logic;
SIGNAL \conect_2|cur_iter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|cur_iter[1]~0_combout\ : std_logic;
SIGNAL \conect_2|cur_iter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|cur_iter[2]~3_combout\ : std_logic;
SIGNAL \conect_2|cur_iter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|cur_iter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|cur_iter[3]~2_combout\ : std_logic;
SIGNAL \conect_2|Equal0~0_combout\ : std_logic;
SIGNAL \conect_2|zr[31]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|Mux17~0_combout\ : std_logic;
SIGNAL \conect_2|Add2~130_cout\ : std_logic;
SIGNAL \conect_2|Add2~1_sumout\ : std_logic;
SIGNAL \conect_2|Add2~2\ : std_logic;
SIGNAL \conect_2|Add2~5_sumout\ : std_logic;
SIGNAL \conect_2|Add2~6\ : std_logic;
SIGNAL \conect_2|Add2~9_sumout\ : std_logic;
SIGNAL \conect_2|Add2~10\ : std_logic;
SIGNAL \conect_2|Add2~13_sumout\ : std_logic;
SIGNAL \conect_2|zr[3]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|Add2~14\ : std_logic;
SIGNAL \conect_2|Add2~17_sumout\ : std_logic;
SIGNAL \conect_2|Add2~18\ : std_logic;
SIGNAL \conect_2|Add2~21_sumout\ : std_logic;
SIGNAL \conect_2|Add2~22\ : std_logic;
SIGNAL \conect_2|Add2~25_sumout\ : std_logic;
SIGNAL \conect_2|Add2~26\ : std_logic;
SIGNAL \conect_2|Add2~29_sumout\ : std_logic;
SIGNAL \conect_2|Add2~30\ : std_logic;
SIGNAL \conect_2|Add2~33_sumout\ : std_logic;
SIGNAL \conect_2|Add2~34\ : std_logic;
SIGNAL \conect_2|Add2~37_sumout\ : std_logic;
SIGNAL \conect_2|Add2~38\ : std_logic;
SIGNAL \conect_2|Add2~41_sumout\ : std_logic;
SIGNAL \conect_2|Add2~42\ : std_logic;
SIGNAL \conect_2|Add2~45_sumout\ : std_logic;
SIGNAL \conect_2|Add2~46\ : std_logic;
SIGNAL \conect_2|Add2~49_sumout\ : std_logic;
SIGNAL \conect_2|Add2~50\ : std_logic;
SIGNAL \conect_2|Add2~53_sumout\ : std_logic;
SIGNAL \conect_2|Add2~54\ : std_logic;
SIGNAL \conect_2|Add2~57_sumout\ : std_logic;
SIGNAL \conect_2|Add2~58\ : std_logic;
SIGNAL \conect_2|Add2~61_sumout\ : std_logic;
SIGNAL \conect_2|Add2~62\ : std_logic;
SIGNAL \conect_2|Add2~65_sumout\ : std_logic;
SIGNAL \conect_2|Add2~66\ : std_logic;
SIGNAL \conect_2|Add2~69_sumout\ : std_logic;
SIGNAL \conect_2|Add2~70\ : std_logic;
SIGNAL \conect_2|Add2~73_sumout\ : std_logic;
SIGNAL \conect_2|Add2~74\ : std_logic;
SIGNAL \conect_2|Add2~77_sumout\ : std_logic;
SIGNAL \conect_2|Add2~78\ : std_logic;
SIGNAL \conect_2|Add2~81_sumout\ : std_logic;
SIGNAL \conect_2|Add2~82\ : std_logic;
SIGNAL \conect_2|Add2~85_sumout\ : std_logic;
SIGNAL \conect_2|Add2~86\ : std_logic;
SIGNAL \conect_2|Add2~89_sumout\ : std_logic;
SIGNAL \conect_2|Add2~90\ : std_logic;
SIGNAL \conect_2|Add2~93_sumout\ : std_logic;
SIGNAL \conect_2|zr[23]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|Add2~94\ : std_logic;
SIGNAL \conect_2|Add2~97_sumout\ : std_logic;
SIGNAL \conect_2|Add2~98\ : std_logic;
SIGNAL \conect_2|Add2~101_sumout\ : std_logic;
SIGNAL \conect_2|Add2~102\ : std_logic;
SIGNAL \conect_2|Add2~105_sumout\ : std_logic;
SIGNAL \conect_2|Add2~106\ : std_logic;
SIGNAL \conect_2|Add2~109_sumout\ : std_logic;
SIGNAL \conect_2|Add2~110\ : std_logic;
SIGNAL \conect_2|Add2~113_sumout\ : std_logic;
SIGNAL \conect_2|Add2~114\ : std_logic;
SIGNAL \conect_2|Add2~117_sumout\ : std_logic;
SIGNAL \conect_2|Add2~118\ : std_logic;
SIGNAL \conect_2|Add2~121_sumout\ : std_logic;
SIGNAL \conect_2|Add2~122\ : std_logic;
SIGNAL \conect_2|Add2~125_sumout\ : std_logic;
SIGNAL \conect_2|yr[14]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~58_combout\ : std_logic;
SIGNAL \conect_2|xr[27]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~40_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~57_combout\ : std_logic;
SIGNAL \conect_2|yr[26]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|xr[24]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~36_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~55_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~53_combout\ : std_logic;
SIGNAL \conect_2|yr[22]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|yr[24]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~36_combout\ : std_logic;
SIGNAL \conect_2|xr[20]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|xr[18]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|yr[19]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~24_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~32_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~49_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~22_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~47_combout\ : std_logic;
SIGNAL \conect_2|yr[17]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~13_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~41_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~37_combout\ : std_logic;
SIGNAL \conect_2|xr[11]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~16_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~35_combout\ : std_logic;
SIGNAL \conect_2|xr[12]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|yr[11]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|yr[9]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|xr[16]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~13_combout\ : std_logic;
SIGNAL \conect_2|xr[8]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~7_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~23_combout\ : std_logic;
SIGNAL \conect_2|yr[7]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|yr[4]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|xr[5]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~2_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~21_combout\ : std_logic;
SIGNAL \conect_2|xr[3]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|xr[2]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|yr[2]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~10_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~14_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~5_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~9_combout\ : std_logic;
SIGNAL \conect_2|xr[1]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~0_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~4_combout\ : std_logic;
SIGNAL \conect_2|Add4~130_cout\ : std_logic;
SIGNAL \conect_2|Add4~1_sumout\ : std_logic;
SIGNAL \conect_2|Add4~2\ : std_logic;
SIGNAL \conect_2|Add4~5_sumout\ : std_logic;
SIGNAL \conect_2|yr[1]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~5_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~9_combout\ : std_logic;
SIGNAL \conect_2|Add0~130_cout\ : std_logic;
SIGNAL \conect_2|Add0~2\ : std_logic;
SIGNAL \conect_2|Add0~5_sumout\ : std_logic;
SIGNAL \conect_2|Add0~6\ : std_logic;
SIGNAL \conect_2|Add0~9_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~10_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~14_combout\ : std_logic;
SIGNAL \conect_2|Add4~6\ : std_logic;
SIGNAL \conect_2|Add4~9_sumout\ : std_logic;
SIGNAL \conect_2|Add4~10\ : std_logic;
SIGNAL \conect_2|Add4~13_sumout\ : std_logic;
SIGNAL \conect_2|yr[3]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~15_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~19_combout\ : std_logic;
SIGNAL \conect_2|Add0~10\ : std_logic;
SIGNAL \conect_2|Add0~13_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~15_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~19_combout\ : std_logic;
SIGNAL \conect_2|Add4~14\ : std_logic;
SIGNAL \conect_2|Add4~17_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~2_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~21_combout\ : std_logic;
SIGNAL \conect_2|Add0~14\ : std_logic;
SIGNAL \conect_2|Add0~17_sumout\ : std_logic;
SIGNAL \conect_2|xr[4]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|Add0~18\ : std_logic;
SIGNAL \conect_2|Add0~21_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~7_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~23_combout\ : std_logic;
SIGNAL \conect_2|Add4~18\ : std_logic;
SIGNAL \conect_2|Add4~21_sumout\ : std_logic;
SIGNAL \conect_2|yr[5]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|Add4~22\ : std_logic;
SIGNAL \conect_2|Add4~25_sumout\ : std_logic;
SIGNAL \conect_2|yr[6]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~12_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~25_combout\ : std_logic;
SIGNAL \conect_2|Add0~22\ : std_logic;
SIGNAL \conect_2|Add0~25_sumout\ : std_logic;
SIGNAL \conect_2|xr[6]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~12_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~25_combout\ : std_logic;
SIGNAL \conect_2|Add4~26\ : std_logic;
SIGNAL \conect_2|Add4~29_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~17_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~27_combout\ : std_logic;
SIGNAL \conect_2|Add0~26\ : std_logic;
SIGNAL \conect_2|Add0~29_sumout\ : std_logic;
SIGNAL \conect_2|xr[7]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~17_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~27_combout\ : std_logic;
SIGNAL \conect_2|Add4~30\ : std_logic;
SIGNAL \conect_2|Add4~33_sumout\ : std_logic;
SIGNAL \conect_2|yr[8]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~1_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~29_combout\ : std_logic;
SIGNAL \conect_2|Add0~30\ : std_logic;
SIGNAL \conect_2|Add0~33_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~1_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~29_combout\ : std_logic;
SIGNAL \conect_2|Add4~34\ : std_logic;
SIGNAL \conect_2|Add4~37_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~6_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~31_combout\ : std_logic;
SIGNAL \conect_2|Add0~34\ : std_logic;
SIGNAL \conect_2|Add0~37_sumout\ : std_logic;
SIGNAL \conect_2|xr[9]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~6_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~31_combout\ : std_logic;
SIGNAL \conect_2|Add4~38\ : std_logic;
SIGNAL \conect_2|Add4~41_sumout\ : std_logic;
SIGNAL \conect_2|yr[10]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~11_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~33_combout\ : std_logic;
SIGNAL \conect_2|Add0~38\ : std_logic;
SIGNAL \conect_2|Add0~41_sumout\ : std_logic;
SIGNAL \conect_2|xr[10]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~11_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~33_combout\ : std_logic;
SIGNAL \conect_2|Add4~42\ : std_logic;
SIGNAL \conect_2|Add4~45_sumout\ : std_logic;
SIGNAL \conect_2|Add4~46\ : std_logic;
SIGNAL \conect_2|Add4~49_sumout\ : std_logic;
SIGNAL \conect_2|yr[12]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~16_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~35_combout\ : std_logic;
SIGNAL \conect_2|Add0~42\ : std_logic;
SIGNAL \conect_2|Add0~45_sumout\ : std_logic;
SIGNAL \conect_2|Add0~46\ : std_logic;
SIGNAL \conect_2|Add0~49_sumout\ : std_logic;
SIGNAL \conect_2|Add0~50\ : std_logic;
SIGNAL \conect_2|Add0~53_sumout\ : std_logic;
SIGNAL \conect_2|xr[13]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~3_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~37_combout\ : std_logic;
SIGNAL \conect_2|Add4~50\ : std_logic;
SIGNAL \conect_2|Add4~53_sumout\ : std_logic;
SIGNAL \conect_2|yr[13]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~8_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~39_combout\ : std_logic;
SIGNAL \conect_2|Add0~54\ : std_logic;
SIGNAL \conect_2|Add0~57_sumout\ : std_logic;
SIGNAL \conect_2|xr[14]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~8_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~39_combout\ : std_logic;
SIGNAL \conect_2|Add4~54\ : std_logic;
SIGNAL \conect_2|Add4~58\ : std_logic;
SIGNAL \conect_2|Add4~61_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~18_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~43_combout\ : std_logic;
SIGNAL \conect_2|Add0~58\ : std_logic;
SIGNAL \conect_2|Add0~61_sumout\ : std_logic;
SIGNAL \conect_2|xr[15]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~18_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~43_combout\ : std_logic;
SIGNAL \conect_2|Add4~62\ : std_logic;
SIGNAL \conect_2|Add4~65_sumout\ : std_logic;
SIGNAL \conect_2|yr[16]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~20_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~45_combout\ : std_logic;
SIGNAL \conect_2|Add0~62\ : std_logic;
SIGNAL \conect_2|Add0~65_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~20_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~45_combout\ : std_logic;
SIGNAL \conect_2|Add4~66\ : std_logic;
SIGNAL \conect_2|Add4~69_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~22_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~47_combout\ : std_logic;
SIGNAL \conect_2|Add0~66\ : std_logic;
SIGNAL \conect_2|Add0~69_sumout\ : std_logic;
SIGNAL \conect_2|Add0~70\ : std_logic;
SIGNAL \conect_2|Add0~73_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~24_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~49_combout\ : std_logic;
SIGNAL \conect_2|Add4~70\ : std_logic;
SIGNAL \conect_2|Add4~73_sumout\ : std_logic;
SIGNAL \conect_2|Add4~74\ : std_logic;
SIGNAL \conect_2|Add4~77_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~26_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~50_combout\ : std_logic;
SIGNAL \conect_2|Add0~74\ : std_logic;
SIGNAL \conect_2|Add0~77_sumout\ : std_logic;
SIGNAL \conect_2|xr[19]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~53_combout\ : std_logic;
SIGNAL \conect_2|Add0~78\ : std_logic;
SIGNAL \conect_2|Add0~82\ : std_logic;
SIGNAL \conect_2|Add0~86\ : std_logic;
SIGNAL \conect_2|Add0~89_sumout\ : std_logic;
SIGNAL \conect_2|xr[22]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~26_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~50_combout\ : std_logic;
SIGNAL \conect_2|Add4~78\ : std_logic;
SIGNAL \conect_2|Add4~81_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~28_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~51_combout\ : std_logic;
SIGNAL \conect_2|Add0~81_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~28_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~51_combout\ : std_logic;
SIGNAL \conect_2|Add4~82\ : std_logic;
SIGNAL \conect_2|Add4~85_sumout\ : std_logic;
SIGNAL \conect_2|yr[21]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~30_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~52_combout\ : std_logic;
SIGNAL \conect_2|Add0~85_sumout\ : std_logic;
SIGNAL \conect_2|xr[21]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~30_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~52_combout\ : std_logic;
SIGNAL \conect_2|Add4~86\ : std_logic;
SIGNAL \conect_2|Add4~89_sumout\ : std_logic;
SIGNAL \conect_2|Add4~90\ : std_logic;
SIGNAL \conect_2|Add4~93_sumout\ : std_logic;
SIGNAL \conect_2|yr[23]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~34_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~54_combout\ : std_logic;
SIGNAL \conect_2|Add0~90\ : std_logic;
SIGNAL \conect_2|Add0~93_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~34_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~54_combout\ : std_logic;
SIGNAL \conect_2|Add4~94\ : std_logic;
SIGNAL \conect_2|Add4~97_sumout\ : std_logic;
SIGNAL \conect_2|Add4~98\ : std_logic;
SIGNAL \conect_2|Add4~101_sumout\ : std_logic;
SIGNAL \conect_2|yr[25]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~38_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~56_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~55_combout\ : std_logic;
SIGNAL \conect_2|Add0~94\ : std_logic;
SIGNAL \conect_2|Add0~98\ : std_logic;
SIGNAL \conect_2|Add0~101_sumout\ : std_logic;
SIGNAL \conect_2|xr[25]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~38_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~56_combout\ : std_logic;
SIGNAL \conect_2|Add4~102\ : std_logic;
SIGNAL \conect_2|Add4~105_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~40_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~57_combout\ : std_logic;
SIGNAL \conect_2|Add0~102\ : std_logic;
SIGNAL \conect_2|Add0~105_sumout\ : std_logic;
SIGNAL \conect_2|xr[26]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|Add0~106\ : std_logic;
SIGNAL \conect_2|Add0~109_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~42_combout\ : std_logic;
SIGNAL \conect_2|Add4~106\ : std_logic;
SIGNAL \conect_2|Add4~109_sumout\ : std_logic;
SIGNAL \conect_2|yr[27]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~42_combout\ : std_logic;
SIGNAL \conect_2|Add0~110\ : std_logic;
SIGNAL \conect_2|Add0~113_sumout\ : std_logic;
SIGNAL \conect_2|xr[28]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~44_combout\ : std_logic;
SIGNAL \conect_2|Add4~110\ : std_logic;
SIGNAL \conect_2|Add4~113_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~44_combout\ : std_logic;
SIGNAL \conect_2|Add0~114\ : std_logic;
SIGNAL \conect_2|Add0~117_sumout\ : std_logic;
SIGNAL \conect_2|xr[29]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight0~46_combout\ : std_logic;
SIGNAL \conect_2|Add4~114\ : std_logic;
SIGNAL \conect_2|Add4~117_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~46_combout\ : std_logic;
SIGNAL \conect_2|Add0~118\ : std_logic;
SIGNAL \conect_2|Add0~121_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~48_combout\ : std_logic;
SIGNAL \conect_2|Add4~118\ : std_logic;
SIGNAL \conect_2|Add4~121_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~48_combout\ : std_logic;
SIGNAL \conect_2|Add0~122\ : std_logic;
SIGNAL \conect_2|Add0~125_sumout\ : std_logic;
SIGNAL \conect_2|xr[31]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|Add4~122\ : std_logic;
SIGNAL \conect_2|Add4~125_sumout\ : std_logic;
SIGNAL \conect_2|yr[31]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|Add0~97_sumout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~32_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight0~41_combout\ : std_logic;
SIGNAL \conect_2|Add4~57_sumout\ : std_logic;
SIGNAL \conect_2|yr[15]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ShiftRight1~3_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~0_combout\ : std_logic;
SIGNAL \conect_2|ShiftRight1~4_combout\ : std_logic;
SIGNAL \conect_2|Add0~1_sumout\ : std_logic;
SIGNAL \conect_2|xr[0]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|yr[20]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|zr[0]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|zr[1]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|zr[4]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|zr[11]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|zr[13]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|zr[21]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|zr[22]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|zr[29]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|xr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \conect_2|yr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \conect_2|zr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \conect_2|cur_iter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \conect_2|ALT_INV_yr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \conect_2|ALT_INV_xr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \conect_2|ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~58_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~57_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~56_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~55_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~54_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~53_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~52_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~51_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~50_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~49_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~48_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~47_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~46_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~45_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~44_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~43_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~42_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~41_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~40_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~39_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~38_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~37_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~36_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~35_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~34_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~33_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~32_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~31_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~30_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~29_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~28_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~27_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~26_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~25_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~24_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~23_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~22_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~21_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~20_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~19_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~18_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~17_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~16_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~15_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~14_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~13_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~12_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~11_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~10_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~9_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~8_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~7_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~6_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~5_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~4_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~3_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~2_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~1_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight1~0_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_cur_iter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \conect_2|ALT_INV_zr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \conect_2|ALT_INV_xr[3]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[2]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[1]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \conect_2|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~57_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~56_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~55_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~54_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~53_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~52_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~51_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~50_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~49_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~48_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~47_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~46_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~45_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~44_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~43_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~42_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~41_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~40_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~39_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~38_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~37_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~36_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~35_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~34_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~33_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~32_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~31_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~30_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~29_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~28_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~27_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~26_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~25_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~24_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~23_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~22_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~21_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~20_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~19_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~18_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~17_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~16_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~15_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~14_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~13_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~12_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~11_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~10_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~9_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~8_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~7_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~6_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_ShiftRight0~5_combout\ : std_logic;
SIGNAL \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_zr[31]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_zr[23]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_zr[3]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[31]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[27]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[26]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[25]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[24]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[23]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[22]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[21]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[19]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[17]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[16]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[15]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[14]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[13]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[12]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[11]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[10]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[9]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[8]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[7]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[6]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[5]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[4]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[3]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[2]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_yr[1]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[31]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[29]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[28]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[27]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[26]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[25]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[24]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[22]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[21]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[20]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[19]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[18]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[16]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[15]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[14]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[13]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[12]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[11]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[10]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[9]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[8]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[7]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[6]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[5]~DUPLICATE_q\ : std_logic;
SIGNAL \conect_2|ALT_INV_xr[4]~DUPLICATE_q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_rstb <= rstb;
ww_reset <= reset;
ww_start_phase <= start_phase;
ww_fcw <= fcw;
o_X_result <= ww_o_X_result;
o_Y_result <= ww_o_Y_result;
o_Z_result <= ww_o_Z_result;
o_nco <= ww_o_nco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\conect_2|ALT_INV_yr\(11) <= NOT \conect_2|yr\(11);
\conect_2|ALT_INV_yr\(10) <= NOT \conect_2|yr\(10);
\conect_2|ALT_INV_yr\(9) <= NOT \conect_2|yr\(9);
\conect_2|ALT_INV_yr\(8) <= NOT \conect_2|yr\(8);
\conect_2|ALT_INV_yr\(7) <= NOT \conect_2|yr\(7);
\conect_2|ALT_INV_yr\(6) <= NOT \conect_2|yr\(6);
\conect_2|ALT_INV_yr\(5) <= NOT \conect_2|yr\(5);
\conect_2|ALT_INV_yr\(4) <= NOT \conect_2|yr\(4);
\conect_2|ALT_INV_yr\(3) <= NOT \conect_2|yr\(3);
\conect_2|ALT_INV_yr\(2) <= NOT \conect_2|yr\(2);
\conect_2|ALT_INV_yr\(1) <= NOT \conect_2|yr\(1);
\conect_2|ALT_INV_yr\(0) <= NOT \conect_2|yr\(0);
\conect_2|ALT_INV_xr\(31) <= NOT \conect_2|xr\(31);
\conect_2|ALT_INV_xr\(30) <= NOT \conect_2|xr\(30);
\conect_2|ALT_INV_xr\(29) <= NOT \conect_2|xr\(29);
\conect_2|ALT_INV_xr\(28) <= NOT \conect_2|xr\(28);
\conect_2|ALT_INV_xr\(27) <= NOT \conect_2|xr\(27);
\conect_2|ALT_INV_xr\(26) <= NOT \conect_2|xr\(26);
\conect_2|ALT_INV_xr\(25) <= NOT \conect_2|xr\(25);
\conect_2|ALT_INV_xr\(24) <= NOT \conect_2|xr\(24);
\conect_2|ALT_INV_xr\(23) <= NOT \conect_2|xr\(23);
\conect_2|ALT_INV_xr\(22) <= NOT \conect_2|xr\(22);
\conect_2|ALT_INV_xr\(21) <= NOT \conect_2|xr\(21);
\conect_2|ALT_INV_xr\(20) <= NOT \conect_2|xr\(20);
\conect_2|ALT_INV_xr\(18) <= NOT \conect_2|xr\(18);
\conect_2|ALT_INV_xr\(17) <= NOT \conect_2|xr\(17);
\conect_2|ALT_INV_xr\(16) <= NOT \conect_2|xr\(16);
\conect_2|ALT_INV_xr\(15) <= NOT \conect_2|xr\(15);
\conect_2|ALT_INV_xr\(14) <= NOT \conect_2|xr\(14);
\conect_2|ALT_INV_xr\(13) <= NOT \conect_2|xr\(13);
\conect_2|ALT_INV_xr\(12) <= NOT \conect_2|xr\(12);
\conect_2|ALT_INV_xr\(11) <= NOT \conect_2|xr\(11);
\conect_2|ALT_INV_xr\(10) <= NOT \conect_2|xr\(10);
\conect_2|ALT_INV_xr\(9) <= NOT \conect_2|xr\(9);
\conect_2|ALT_INV_xr\(8) <= NOT \conect_2|xr\(8);
\conect_2|ALT_INV_xr\(7) <= NOT \conect_2|xr\(7);
\conect_2|ALT_INV_xr\(6) <= NOT \conect_2|xr\(6);
\conect_2|ALT_INV_xr\(5) <= NOT \conect_2|xr\(5);
\conect_2|ALT_INV_xr\(4) <= NOT \conect_2|xr\(4);
\conect_2|ALT_INV_xr\(3) <= NOT \conect_2|xr\(3);
\conect_2|ALT_INV_xr\(2) <= NOT \conect_2|xr\(2);
\conect_2|ALT_INV_xr\(1) <= NOT \conect_2|xr\(1);
\conect_2|ALT_INV_xr\(0) <= NOT \conect_2|xr\(0);
\conect_2|ALT_INV_ShiftRight0~4_combout\ <= NOT \conect_2|ShiftRight0~4_combout\;
\conect_2|ALT_INV_ShiftRight0~3_combout\ <= NOT \conect_2|ShiftRight0~3_combout\;
\conect_2|ALT_INV_ShiftRight0~2_combout\ <= NOT \conect_2|ShiftRight0~2_combout\;
\conect_2|ALT_INV_ShiftRight0~1_combout\ <= NOT \conect_2|ShiftRight0~1_combout\;
\conect_2|ALT_INV_ShiftRight0~0_combout\ <= NOT \conect_2|ShiftRight0~0_combout\;
\conect_2|ALT_INV_ShiftRight1~58_combout\ <= NOT \conect_2|ShiftRight1~58_combout\;
\conect_2|ALT_INV_ShiftRight1~57_combout\ <= NOT \conect_2|ShiftRight1~57_combout\;
\conect_2|ALT_INV_ShiftRight1~56_combout\ <= NOT \conect_2|ShiftRight1~56_combout\;
\conect_2|ALT_INV_ShiftRight1~55_combout\ <= NOT \conect_2|ShiftRight1~55_combout\;
\conect_2|ALT_INV_ShiftRight1~54_combout\ <= NOT \conect_2|ShiftRight1~54_combout\;
\conect_2|ALT_INV_ShiftRight1~53_combout\ <= NOT \conect_2|ShiftRight1~53_combout\;
\conect_2|ALT_INV_ShiftRight1~52_combout\ <= NOT \conect_2|ShiftRight1~52_combout\;
\conect_2|ALT_INV_ShiftRight1~51_combout\ <= NOT \conect_2|ShiftRight1~51_combout\;
\conect_2|ALT_INV_ShiftRight1~50_combout\ <= NOT \conect_2|ShiftRight1~50_combout\;
\conect_2|ALT_INV_ShiftRight1~49_combout\ <= NOT \conect_2|ShiftRight1~49_combout\;
\conect_2|ALT_INV_ShiftRight1~48_combout\ <= NOT \conect_2|ShiftRight1~48_combout\;
\conect_2|ALT_INV_ShiftRight1~47_combout\ <= NOT \conect_2|ShiftRight1~47_combout\;
\conect_2|ALT_INV_ShiftRight1~46_combout\ <= NOT \conect_2|ShiftRight1~46_combout\;
\conect_2|ALT_INV_ShiftRight1~45_combout\ <= NOT \conect_2|ShiftRight1~45_combout\;
\conect_2|ALT_INV_ShiftRight1~44_combout\ <= NOT \conect_2|ShiftRight1~44_combout\;
\conect_2|ALT_INV_ShiftRight1~43_combout\ <= NOT \conect_2|ShiftRight1~43_combout\;
\conect_2|ALT_INV_ShiftRight1~42_combout\ <= NOT \conect_2|ShiftRight1~42_combout\;
\conect_2|ALT_INV_ShiftRight1~41_combout\ <= NOT \conect_2|ShiftRight1~41_combout\;
\conect_2|ALT_INV_ShiftRight1~40_combout\ <= NOT \conect_2|ShiftRight1~40_combout\;
\conect_2|ALT_INV_ShiftRight1~39_combout\ <= NOT \conect_2|ShiftRight1~39_combout\;
\conect_2|ALT_INV_ShiftRight1~38_combout\ <= NOT \conect_2|ShiftRight1~38_combout\;
\conect_2|ALT_INV_ShiftRight1~37_combout\ <= NOT \conect_2|ShiftRight1~37_combout\;
\conect_2|ALT_INV_ShiftRight1~36_combout\ <= NOT \conect_2|ShiftRight1~36_combout\;
\conect_2|ALT_INV_ShiftRight1~35_combout\ <= NOT \conect_2|ShiftRight1~35_combout\;
\conect_2|ALT_INV_ShiftRight1~34_combout\ <= NOT \conect_2|ShiftRight1~34_combout\;
\conect_2|ALT_INV_ShiftRight1~33_combout\ <= NOT \conect_2|ShiftRight1~33_combout\;
\conect_2|ALT_INV_ShiftRight1~32_combout\ <= NOT \conect_2|ShiftRight1~32_combout\;
\conect_2|ALT_INV_ShiftRight1~31_combout\ <= NOT \conect_2|ShiftRight1~31_combout\;
\conect_2|ALT_INV_ShiftRight1~30_combout\ <= NOT \conect_2|ShiftRight1~30_combout\;
\conect_2|ALT_INV_ShiftRight1~29_combout\ <= NOT \conect_2|ShiftRight1~29_combout\;
\conect_2|ALT_INV_ShiftRight1~28_combout\ <= NOT \conect_2|ShiftRight1~28_combout\;
\conect_2|ALT_INV_ShiftRight1~27_combout\ <= NOT \conect_2|ShiftRight1~27_combout\;
\conect_2|ALT_INV_ShiftRight1~26_combout\ <= NOT \conect_2|ShiftRight1~26_combout\;
\conect_2|ALT_INV_ShiftRight1~25_combout\ <= NOT \conect_2|ShiftRight1~25_combout\;
\conect_2|ALT_INV_ShiftRight1~24_combout\ <= NOT \conect_2|ShiftRight1~24_combout\;
\conect_2|ALT_INV_ShiftRight1~23_combout\ <= NOT \conect_2|ShiftRight1~23_combout\;
\conect_2|ALT_INV_ShiftRight1~22_combout\ <= NOT \conect_2|ShiftRight1~22_combout\;
\conect_2|ALT_INV_ShiftRight1~21_combout\ <= NOT \conect_2|ShiftRight1~21_combout\;
\conect_2|ALT_INV_ShiftRight1~20_combout\ <= NOT \conect_2|ShiftRight1~20_combout\;
\conect_2|ALT_INV_ShiftRight1~19_combout\ <= NOT \conect_2|ShiftRight1~19_combout\;
\conect_2|ALT_INV_ShiftRight1~18_combout\ <= NOT \conect_2|ShiftRight1~18_combout\;
\conect_2|ALT_INV_ShiftRight1~17_combout\ <= NOT \conect_2|ShiftRight1~17_combout\;
\conect_2|ALT_INV_ShiftRight1~16_combout\ <= NOT \conect_2|ShiftRight1~16_combout\;
\conect_2|ALT_INV_ShiftRight1~15_combout\ <= NOT \conect_2|ShiftRight1~15_combout\;
\conect_2|ALT_INV_ShiftRight1~14_combout\ <= NOT \conect_2|ShiftRight1~14_combout\;
\conect_2|ALT_INV_ShiftRight1~13_combout\ <= NOT \conect_2|ShiftRight1~13_combout\;
\conect_2|ALT_INV_ShiftRight1~12_combout\ <= NOT \conect_2|ShiftRight1~12_combout\;
\conect_2|ALT_INV_ShiftRight1~11_combout\ <= NOT \conect_2|ShiftRight1~11_combout\;
\conect_2|ALT_INV_ShiftRight1~10_combout\ <= NOT \conect_2|ShiftRight1~10_combout\;
\conect_2|ALT_INV_ShiftRight1~9_combout\ <= NOT \conect_2|ShiftRight1~9_combout\;
\conect_2|ALT_INV_ShiftRight1~8_combout\ <= NOT \conect_2|ShiftRight1~8_combout\;
\conect_2|ALT_INV_ShiftRight1~7_combout\ <= NOT \conect_2|ShiftRight1~7_combout\;
\conect_2|ALT_INV_ShiftRight1~6_combout\ <= NOT \conect_2|ShiftRight1~6_combout\;
\conect_2|ALT_INV_ShiftRight1~5_combout\ <= NOT \conect_2|ShiftRight1~5_combout\;
\conect_2|ALT_INV_ShiftRight1~4_combout\ <= NOT \conect_2|ShiftRight1~4_combout\;
\conect_2|ALT_INV_ShiftRight1~3_combout\ <= NOT \conect_2|ShiftRight1~3_combout\;
\conect_2|ALT_INV_ShiftRight1~2_combout\ <= NOT \conect_2|ShiftRight1~2_combout\;
\conect_2|ALT_INV_ShiftRight1~1_combout\ <= NOT \conect_2|ShiftRight1~1_combout\;
\conect_2|ALT_INV_ShiftRight1~0_combout\ <= NOT \conect_2|ShiftRight1~0_combout\;
\conect_2|ALT_INV_Equal0~0_combout\ <= NOT \conect_2|Equal0~0_combout\;
\conect_2|ALT_INV_cur_iter\(2) <= NOT \conect_2|cur_iter\(2);
\conect_2|ALT_INV_cur_iter\(3) <= NOT \conect_2|cur_iter\(3);
\conect_2|ALT_INV_cur_iter\(0) <= NOT \conect_2|cur_iter\(0);
\conect_2|ALT_INV_cur_iter\(1) <= NOT \conect_2|cur_iter\(1);
\conect_2|ALT_INV_zr\(31) <= NOT \conect_2|zr\(31);
\conect_2|ALT_INV_zr\(30) <= NOT \conect_2|zr\(30);
\conect_2|ALT_INV_zr\(29) <= NOT \conect_2|zr\(29);
\conect_2|ALT_INV_zr\(28) <= NOT \conect_2|zr\(28);
\conect_2|ALT_INV_zr\(27) <= NOT \conect_2|zr\(27);
\conect_2|ALT_INV_zr\(26) <= NOT \conect_2|zr\(26);
\conect_2|ALT_INV_zr\(25) <= NOT \conect_2|zr\(25);
\conect_2|ALT_INV_zr\(24) <= NOT \conect_2|zr\(24);
\conect_2|ALT_INV_zr\(22) <= NOT \conect_2|zr\(22);
\conect_2|ALT_INV_zr\(21) <= NOT \conect_2|zr\(21);
\conect_2|ALT_INV_zr\(20) <= NOT \conect_2|zr\(20);
\conect_2|ALT_INV_zr\(19) <= NOT \conect_2|zr\(19);
\conect_2|ALT_INV_zr\(18) <= NOT \conect_2|zr\(18);
\conect_2|ALT_INV_zr\(17) <= NOT \conect_2|zr\(17);
\conect_2|ALT_INV_zr\(16) <= NOT \conect_2|zr\(16);
\conect_2|ALT_INV_zr\(15) <= NOT \conect_2|zr\(15);
\conect_2|ALT_INV_zr\(14) <= NOT \conect_2|zr\(14);
\conect_2|ALT_INV_zr\(13) <= NOT \conect_2|zr\(13);
\conect_2|ALT_INV_zr\(12) <= NOT \conect_2|zr\(12);
\conect_2|ALT_INV_zr\(11) <= NOT \conect_2|zr\(11);
\conect_2|ALT_INV_zr\(10) <= NOT \conect_2|zr\(10);
\conect_2|ALT_INV_zr\(9) <= NOT \conect_2|zr\(9);
\conect_2|ALT_INV_zr\(8) <= NOT \conect_2|zr\(8);
\conect_2|ALT_INV_zr\(7) <= NOT \conect_2|zr\(7);
\conect_2|ALT_INV_zr\(6) <= NOT \conect_2|zr\(6);
\conect_2|ALT_INV_zr\(5) <= NOT \conect_2|zr\(5);
\conect_2|ALT_INV_zr\(4) <= NOT \conect_2|zr\(4);
\conect_2|ALT_INV_zr\(2) <= NOT \conect_2|zr\(2);
\conect_2|ALT_INV_zr\(1) <= NOT \conect_2|zr\(1);
\conect_2|ALT_INV_zr\(0) <= NOT \conect_2|zr\(0);
\conect_2|ALT_INV_yr\(31) <= NOT \conect_2|yr\(31);
\conect_2|ALT_INV_yr\(30) <= NOT \conect_2|yr\(30);
\conect_2|ALT_INV_yr\(29) <= NOT \conect_2|yr\(29);
\conect_2|ALT_INV_yr\(28) <= NOT \conect_2|yr\(28);
\conect_2|ALT_INV_yr\(27) <= NOT \conect_2|yr\(27);
\conect_2|ALT_INV_yr\(26) <= NOT \conect_2|yr\(26);
\conect_2|ALT_INV_yr\(25) <= NOT \conect_2|yr\(25);
\conect_2|ALT_INV_yr\(24) <= NOT \conect_2|yr\(24);
\conect_2|ALT_INV_yr\(23) <= NOT \conect_2|yr\(23);
\conect_2|ALT_INV_yr\(22) <= NOT \conect_2|yr\(22);
\conect_2|ALT_INV_yr\(21) <= NOT \conect_2|yr\(21);
\conect_2|ALT_INV_yr\(20) <= NOT \conect_2|yr\(20);
\conect_2|ALT_INV_yr\(19) <= NOT \conect_2|yr\(19);
\conect_2|ALT_INV_yr\(18) <= NOT \conect_2|yr\(18);
\conect_2|ALT_INV_yr\(17) <= NOT \conect_2|yr\(17);
\conect_2|ALT_INV_yr\(16) <= NOT \conect_2|yr\(16);
\conect_2|ALT_INV_yr\(15) <= NOT \conect_2|yr\(15);
\conect_2|ALT_INV_yr\(14) <= NOT \conect_2|yr\(14);
\conect_2|ALT_INV_yr\(13) <= NOT \conect_2|yr\(13);
\conect_2|ALT_INV_yr\(12) <= NOT \conect_2|yr\(12);
\conect_2|ALT_INV_xr[3]~DUPLICATE_q\ <= NOT \conect_2|xr[3]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[2]~DUPLICATE_q\ <= NOT \conect_2|xr[2]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[1]~DUPLICATE_q\ <= NOT \conect_2|xr[1]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[0]~DUPLICATE_q\ <= NOT \conect_2|xr[0]~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\conect_2|ALT_INV_Mux17~0_combout\ <= NOT \conect_2|Mux17~0_combout\;
\conect_2|ALT_INV_ShiftRight0~57_combout\ <= NOT \conect_2|ShiftRight0~57_combout\;
\conect_2|ALT_INV_ShiftRight0~56_combout\ <= NOT \conect_2|ShiftRight0~56_combout\;
\conect_2|ALT_INV_ShiftRight0~55_combout\ <= NOT \conect_2|ShiftRight0~55_combout\;
\conect_2|ALT_INV_ShiftRight0~54_combout\ <= NOT \conect_2|ShiftRight0~54_combout\;
\conect_2|ALT_INV_ShiftRight0~53_combout\ <= NOT \conect_2|ShiftRight0~53_combout\;
\conect_2|ALT_INV_ShiftRight0~52_combout\ <= NOT \conect_2|ShiftRight0~52_combout\;
\conect_2|ALT_INV_ShiftRight0~51_combout\ <= NOT \conect_2|ShiftRight0~51_combout\;
\conect_2|ALT_INV_ShiftRight0~50_combout\ <= NOT \conect_2|ShiftRight0~50_combout\;
\conect_2|ALT_INV_ShiftRight0~49_combout\ <= NOT \conect_2|ShiftRight0~49_combout\;
\conect_2|ALT_INV_ShiftRight0~48_combout\ <= NOT \conect_2|ShiftRight0~48_combout\;
\conect_2|ALT_INV_ShiftRight0~47_combout\ <= NOT \conect_2|ShiftRight0~47_combout\;
\conect_2|ALT_INV_ShiftRight0~46_combout\ <= NOT \conect_2|ShiftRight0~46_combout\;
\conect_2|ALT_INV_ShiftRight0~45_combout\ <= NOT \conect_2|ShiftRight0~45_combout\;
\conect_2|ALT_INV_ShiftRight0~44_combout\ <= NOT \conect_2|ShiftRight0~44_combout\;
\conect_2|ALT_INV_ShiftRight0~43_combout\ <= NOT \conect_2|ShiftRight0~43_combout\;
\conect_2|ALT_INV_ShiftRight0~42_combout\ <= NOT \conect_2|ShiftRight0~42_combout\;
\conect_2|ALT_INV_ShiftRight0~41_combout\ <= NOT \conect_2|ShiftRight0~41_combout\;
\conect_2|ALT_INV_ShiftRight0~40_combout\ <= NOT \conect_2|ShiftRight0~40_combout\;
\conect_2|ALT_INV_ShiftRight0~39_combout\ <= NOT \conect_2|ShiftRight0~39_combout\;
\conect_2|ALT_INV_ShiftRight0~38_combout\ <= NOT \conect_2|ShiftRight0~38_combout\;
\conect_2|ALT_INV_ShiftRight0~37_combout\ <= NOT \conect_2|ShiftRight0~37_combout\;
\conect_2|ALT_INV_ShiftRight0~36_combout\ <= NOT \conect_2|ShiftRight0~36_combout\;
\conect_2|ALT_INV_ShiftRight0~35_combout\ <= NOT \conect_2|ShiftRight0~35_combout\;
\conect_2|ALT_INV_ShiftRight0~34_combout\ <= NOT \conect_2|ShiftRight0~34_combout\;
\conect_2|ALT_INV_ShiftRight0~33_combout\ <= NOT \conect_2|ShiftRight0~33_combout\;
\conect_2|ALT_INV_ShiftRight0~32_combout\ <= NOT \conect_2|ShiftRight0~32_combout\;
\conect_2|ALT_INV_ShiftRight0~31_combout\ <= NOT \conect_2|ShiftRight0~31_combout\;
\conect_2|ALT_INV_ShiftRight0~30_combout\ <= NOT \conect_2|ShiftRight0~30_combout\;
\conect_2|ALT_INV_ShiftRight0~29_combout\ <= NOT \conect_2|ShiftRight0~29_combout\;
\conect_2|ALT_INV_ShiftRight0~28_combout\ <= NOT \conect_2|ShiftRight0~28_combout\;
\conect_2|ALT_INV_ShiftRight0~27_combout\ <= NOT \conect_2|ShiftRight0~27_combout\;
\conect_2|ALT_INV_ShiftRight0~26_combout\ <= NOT \conect_2|ShiftRight0~26_combout\;
\conect_2|ALT_INV_ShiftRight0~25_combout\ <= NOT \conect_2|ShiftRight0~25_combout\;
\conect_2|ALT_INV_ShiftRight0~24_combout\ <= NOT \conect_2|ShiftRight0~24_combout\;
\conect_2|ALT_INV_ShiftRight0~23_combout\ <= NOT \conect_2|ShiftRight0~23_combout\;
\conect_2|ALT_INV_ShiftRight0~22_combout\ <= NOT \conect_2|ShiftRight0~22_combout\;
\conect_2|ALT_INV_ShiftRight0~21_combout\ <= NOT \conect_2|ShiftRight0~21_combout\;
\conect_2|ALT_INV_ShiftRight0~20_combout\ <= NOT \conect_2|ShiftRight0~20_combout\;
\conect_2|ALT_INV_ShiftRight0~19_combout\ <= NOT \conect_2|ShiftRight0~19_combout\;
\conect_2|ALT_INV_ShiftRight0~18_combout\ <= NOT \conect_2|ShiftRight0~18_combout\;
\conect_2|ALT_INV_ShiftRight0~17_combout\ <= NOT \conect_2|ShiftRight0~17_combout\;
\conect_2|ALT_INV_ShiftRight0~16_combout\ <= NOT \conect_2|ShiftRight0~16_combout\;
\conect_2|ALT_INV_ShiftRight0~15_combout\ <= NOT \conect_2|ShiftRight0~15_combout\;
\conect_2|ALT_INV_ShiftRight0~14_combout\ <= NOT \conect_2|ShiftRight0~14_combout\;
\conect_2|ALT_INV_ShiftRight0~13_combout\ <= NOT \conect_2|ShiftRight0~13_combout\;
\conect_2|ALT_INV_ShiftRight0~12_combout\ <= NOT \conect_2|ShiftRight0~12_combout\;
\conect_2|ALT_INV_ShiftRight0~11_combout\ <= NOT \conect_2|ShiftRight0~11_combout\;
\conect_2|ALT_INV_ShiftRight0~10_combout\ <= NOT \conect_2|ShiftRight0~10_combout\;
\conect_2|ALT_INV_ShiftRight0~9_combout\ <= NOT \conect_2|ShiftRight0~9_combout\;
\conect_2|ALT_INV_ShiftRight0~8_combout\ <= NOT \conect_2|ShiftRight0~8_combout\;
\conect_2|ALT_INV_ShiftRight0~7_combout\ <= NOT \conect_2|ShiftRight0~7_combout\;
\conect_2|ALT_INV_ShiftRight0~6_combout\ <= NOT \conect_2|ShiftRight0~6_combout\;
\conect_2|ALT_INV_ShiftRight0~5_combout\ <= NOT \conect_2|ShiftRight0~5_combout\;
\conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\ <= NOT \conect_2|cur_iter[2]~DUPLICATE_q\;
\conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\ <= NOT \conect_2|cur_iter[3]~DUPLICATE_q\;
\conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\ <= NOT \conect_2|cur_iter[0]~DUPLICATE_q\;
\conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\ <= NOT \conect_2|cur_iter[1]~DUPLICATE_q\;
\conect_2|ALT_INV_zr[31]~DUPLICATE_q\ <= NOT \conect_2|zr[31]~DUPLICATE_q\;
\conect_2|ALT_INV_zr[23]~DUPLICATE_q\ <= NOT \conect_2|zr[23]~DUPLICATE_q\;
\conect_2|ALT_INV_zr[3]~DUPLICATE_q\ <= NOT \conect_2|zr[3]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[31]~DUPLICATE_q\ <= NOT \conect_2|yr[31]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[27]~DUPLICATE_q\ <= NOT \conect_2|yr[27]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[26]~DUPLICATE_q\ <= NOT \conect_2|yr[26]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[25]~DUPLICATE_q\ <= NOT \conect_2|yr[25]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[24]~DUPLICATE_q\ <= NOT \conect_2|yr[24]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[23]~DUPLICATE_q\ <= NOT \conect_2|yr[23]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[22]~DUPLICATE_q\ <= NOT \conect_2|yr[22]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[21]~DUPLICATE_q\ <= NOT \conect_2|yr[21]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[19]~DUPLICATE_q\ <= NOT \conect_2|yr[19]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[17]~DUPLICATE_q\ <= NOT \conect_2|yr[17]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[16]~DUPLICATE_q\ <= NOT \conect_2|yr[16]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[15]~DUPLICATE_q\ <= NOT \conect_2|yr[15]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[14]~DUPLICATE_q\ <= NOT \conect_2|yr[14]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[13]~DUPLICATE_q\ <= NOT \conect_2|yr[13]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[12]~DUPLICATE_q\ <= NOT \conect_2|yr[12]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[11]~DUPLICATE_q\ <= NOT \conect_2|yr[11]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[10]~DUPLICATE_q\ <= NOT \conect_2|yr[10]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[9]~DUPLICATE_q\ <= NOT \conect_2|yr[9]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[8]~DUPLICATE_q\ <= NOT \conect_2|yr[8]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[7]~DUPLICATE_q\ <= NOT \conect_2|yr[7]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[6]~DUPLICATE_q\ <= NOT \conect_2|yr[6]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[5]~DUPLICATE_q\ <= NOT \conect_2|yr[5]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[4]~DUPLICATE_q\ <= NOT \conect_2|yr[4]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[3]~DUPLICATE_q\ <= NOT \conect_2|yr[3]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[2]~DUPLICATE_q\ <= NOT \conect_2|yr[2]~DUPLICATE_q\;
\conect_2|ALT_INV_yr[1]~DUPLICATE_q\ <= NOT \conect_2|yr[1]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[31]~DUPLICATE_q\ <= NOT \conect_2|xr[31]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[29]~DUPLICATE_q\ <= NOT \conect_2|xr[29]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[28]~DUPLICATE_q\ <= NOT \conect_2|xr[28]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[27]~DUPLICATE_q\ <= NOT \conect_2|xr[27]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[26]~DUPLICATE_q\ <= NOT \conect_2|xr[26]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[25]~DUPLICATE_q\ <= NOT \conect_2|xr[25]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[24]~DUPLICATE_q\ <= NOT \conect_2|xr[24]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[22]~DUPLICATE_q\ <= NOT \conect_2|xr[22]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[21]~DUPLICATE_q\ <= NOT \conect_2|xr[21]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[20]~DUPLICATE_q\ <= NOT \conect_2|xr[20]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[19]~DUPLICATE_q\ <= NOT \conect_2|xr[19]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[18]~DUPLICATE_q\ <= NOT \conect_2|xr[18]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[16]~DUPLICATE_q\ <= NOT \conect_2|xr[16]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[15]~DUPLICATE_q\ <= NOT \conect_2|xr[15]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[14]~DUPLICATE_q\ <= NOT \conect_2|xr[14]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[13]~DUPLICATE_q\ <= NOT \conect_2|xr[13]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[12]~DUPLICATE_q\ <= NOT \conect_2|xr[12]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[11]~DUPLICATE_q\ <= NOT \conect_2|xr[11]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[10]~DUPLICATE_q\ <= NOT \conect_2|xr[10]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[9]~DUPLICATE_q\ <= NOT \conect_2|xr[9]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[8]~DUPLICATE_q\ <= NOT \conect_2|xr[8]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[7]~DUPLICATE_q\ <= NOT \conect_2|xr[7]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[6]~DUPLICATE_q\ <= NOT \conect_2|xr[6]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[5]~DUPLICATE_q\ <= NOT \conect_2|xr[5]~DUPLICATE_q\;
\conect_2|ALT_INV_xr[4]~DUPLICATE_q\ <= NOT \conect_2|xr[4]~DUPLICATE_q\;

-- Location: IOOBUF_X89_Y6_N56
\o_X_result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(0));

-- Location: IOOBUF_X40_Y0_N53
\o_X_result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(1));

-- Location: IOOBUF_X70_Y0_N19
\o_X_result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(2));

-- Location: IOOBUF_X58_Y0_N59
\o_X_result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(3));

-- Location: IOOBUF_X62_Y0_N36
\o_X_result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(4));

-- Location: IOOBUF_X68_Y0_N36
\o_X_result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(5));

-- Location: IOOBUF_X60_Y0_N2
\o_X_result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr\(6),
	devoe => ww_devoe,
	o => ww_o_X_result(6));

-- Location: IOOBUF_X68_Y0_N2
\o_X_result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr\(7),
	devoe => ww_devoe,
	o => ww_o_X_result(7));

-- Location: IOOBUF_X62_Y0_N53
\o_X_result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(8));

-- Location: IOOBUF_X89_Y9_N56
\o_X_result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr\(9),
	devoe => ww_devoe,
	o => ww_o_X_result(9));

-- Location: IOOBUF_X89_Y9_N5
\o_X_result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[10]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(10));

-- Location: IOOBUF_X58_Y0_N76
\o_X_result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(11));

-- Location: IOOBUF_X62_Y0_N19
\o_X_result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr\(12),
	devoe => ww_devoe,
	o => ww_o_X_result(12));

-- Location: IOOBUF_X68_Y0_N53
\o_X_result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[13]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(13));

-- Location: IOOBUF_X62_Y0_N2
\o_X_result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[14]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(14));

-- Location: IOOBUF_X68_Y0_N19
\o_X_result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[15]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(15));

-- Location: IOOBUF_X56_Y0_N36
\o_X_result[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr\(16),
	devoe => ww_devoe,
	o => ww_o_X_result(16));

-- Location: IOOBUF_X89_Y9_N39
\o_X_result[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr\(17),
	devoe => ww_devoe,
	o => ww_o_X_result(17));

-- Location: IOOBUF_X60_Y0_N36
\o_X_result[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[18]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(18));

-- Location: IOOBUF_X60_Y0_N19
\o_X_result[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr\(19),
	devoe => ww_devoe,
	o => ww_o_X_result(19));

-- Location: IOOBUF_X56_Y0_N19
\o_X_result[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[20]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(20));

-- Location: IOOBUF_X58_Y0_N42
\o_X_result[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[21]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(21));

-- Location: IOOBUF_X50_Y0_N59
\o_X_result[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr\(22),
	devoe => ww_devoe,
	o => ww_o_X_result(22));

-- Location: IOOBUF_X50_Y0_N42
\o_X_result[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr\(23),
	devoe => ww_devoe,
	o => ww_o_X_result(23));

-- Location: IOOBUF_X34_Y0_N93
\o_X_result[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[24]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(24));

-- Location: IOOBUF_X72_Y0_N2
\o_X_result[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[25]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(25));

-- Location: IOOBUF_X54_Y0_N53
\o_X_result[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr\(26),
	devoe => ww_devoe,
	o => ww_o_X_result(26));

-- Location: IOOBUF_X34_Y0_N59
\o_X_result[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr\(27),
	devoe => ww_devoe,
	o => ww_o_X_result(27));

-- Location: IOOBUF_X36_Y0_N19
\o_X_result[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr\(28),
	devoe => ww_devoe,
	o => ww_o_X_result(28));

-- Location: IOOBUF_X34_Y0_N42
\o_X_result[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[29]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(29));

-- Location: IOOBUF_X32_Y0_N36
\o_X_result[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr\(30),
	devoe => ww_devoe,
	o => ww_o_X_result(30));

-- Location: IOOBUF_X89_Y9_N22
\o_X_result[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|xr[31]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X_result(31));

-- Location: IOOBUF_X66_Y81_N93
\o_Y_result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(0),
	devoe => ww_devoe,
	o => ww_o_Y_result(0));

-- Location: IOOBUF_X34_Y0_N76
\o_Y_result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(1),
	devoe => ww_devoe,
	o => ww_o_Y_result(1));

-- Location: IOOBUF_X89_Y6_N5
\o_Y_result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(2),
	devoe => ww_devoe,
	o => ww_o_Y_result(2));

-- Location: IOOBUF_X64_Y0_N36
\o_Y_result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(3));

-- Location: IOOBUF_X70_Y0_N36
\o_Y_result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(4));

-- Location: IOOBUF_X72_Y0_N53
\o_Y_result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(5),
	devoe => ww_devoe,
	o => ww_o_Y_result(5));

-- Location: IOOBUF_X70_Y0_N53
\o_Y_result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(6));

-- Location: IOOBUF_X70_Y0_N2
\o_Y_result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(7));

-- Location: IOOBUF_X66_Y0_N59
\o_Y_result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(8),
	devoe => ww_devoe,
	o => ww_o_Y_result(8));

-- Location: IOOBUF_X89_Y4_N62
\o_Y_result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[9]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(9));

-- Location: IOOBUF_X72_Y0_N19
\o_Y_result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[10]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(10));

-- Location: IOOBUF_X64_Y0_N53
\o_Y_result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(11));

-- Location: IOOBUF_X72_Y0_N36
\o_Y_result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(12));

-- Location: IOOBUF_X89_Y8_N22
\o_Y_result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[13]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(13));

-- Location: IOOBUF_X66_Y0_N76
\o_Y_result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(14),
	devoe => ww_devoe,
	o => ww_o_Y_result(14));

-- Location: IOOBUF_X66_Y0_N42
\o_Y_result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[15]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(15));

-- Location: IOOBUF_X52_Y0_N53
\o_Y_result[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(16),
	devoe => ww_devoe,
	o => ww_o_Y_result(16));

-- Location: IOOBUF_X89_Y8_N5
\o_Y_result[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(17),
	devoe => ww_devoe,
	o => ww_o_Y_result(17));

-- Location: IOOBUF_X52_Y0_N36
\o_Y_result[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(18),
	devoe => ww_devoe,
	o => ww_o_Y_result(18));

-- Location: IOOBUF_X54_Y0_N2
\o_Y_result[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(19),
	devoe => ww_devoe,
	o => ww_o_Y_result(19));

-- Location: IOOBUF_X36_Y0_N53
\o_Y_result[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[20]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(20));

-- Location: IOOBUF_X38_Y0_N19
\o_Y_result[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(21),
	devoe => ww_devoe,
	o => ww_o_Y_result(21));

-- Location: IOOBUF_X32_Y0_N53
\o_Y_result[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[22]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(22));

-- Location: IOOBUF_X64_Y0_N19
\o_Y_result[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(23),
	devoe => ww_devoe,
	o => ww_o_Y_result(23));

-- Location: IOOBUF_X89_Y4_N45
\o_Y_result[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[24]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(24));

-- Location: IOOBUF_X64_Y0_N2
\o_Y_result[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[25]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(25));

-- Location: IOOBUF_X66_Y0_N93
\o_Y_result[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[26]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(26));

-- Location: IOOBUF_X89_Y8_N56
\o_Y_result[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(27),
	devoe => ww_devoe,
	o => ww_o_Y_result(27));

-- Location: IOOBUF_X89_Y6_N39
\o_Y_result[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(28),
	devoe => ww_devoe,
	o => ww_o_Y_result(28));

-- Location: IOOBUF_X58_Y0_N93
\o_Y_result[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(29),
	devoe => ww_devoe,
	o => ww_o_Y_result(29));

-- Location: IOOBUF_X56_Y0_N53
\o_Y_result[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr\(30),
	devoe => ww_devoe,
	o => ww_o_Y_result(30));

-- Location: IOOBUF_X89_Y8_N39
\o_Y_result[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|yr[31]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y_result(31));

-- Location: IOOBUF_X58_Y81_N59
\o_Z_result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Z_result(0));

-- Location: IOOBUF_X36_Y0_N36
\o_Z_result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Z_result(1));

-- Location: IOOBUF_X89_Y35_N96
\o_Z_result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(2),
	devoe => ww_devoe,
	o => ww_o_Z_result(2));

-- Location: IOOBUF_X60_Y81_N2
\o_Z_result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(3),
	devoe => ww_devoe,
	o => ww_o_Z_result(3));

-- Location: IOOBUF_X89_Y35_N45
\o_Z_result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Z_result(4));

-- Location: IOOBUF_X30_Y0_N53
\o_Z_result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(5),
	devoe => ww_devoe,
	o => ww_o_Z_result(5));

-- Location: IOOBUF_X38_Y0_N2
\o_Z_result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(6),
	devoe => ww_devoe,
	o => ww_o_Z_result(6));

-- Location: IOOBUF_X28_Y0_N53
\o_Z_result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(7),
	devoe => ww_devoe,
	o => ww_o_Z_result(7));

-- Location: IOOBUF_X60_Y81_N53
\o_Z_result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(8),
	devoe => ww_devoe,
	o => ww_o_Z_result(8));

-- Location: IOOBUF_X32_Y0_N19
\o_Z_result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(9),
	devoe => ww_devoe,
	o => ww_o_Z_result(9));

-- Location: IOOBUF_X36_Y0_N2
\o_Z_result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(10),
	devoe => ww_devoe,
	o => ww_o_Z_result(10));

-- Location: IOOBUF_X40_Y0_N19
\o_Z_result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Z_result(11));

-- Location: IOOBUF_X60_Y81_N19
\o_Z_result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(12),
	devoe => ww_devoe,
	o => ww_o_Z_result(12));

-- Location: IOOBUF_X8_Y0_N36
\o_Z_result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr[13]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Z_result(13));

-- Location: IOOBUF_X54_Y0_N19
\o_Z_result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(14),
	devoe => ww_devoe,
	o => ww_o_Z_result(14));

-- Location: IOOBUF_X32_Y0_N2
\o_Z_result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(15),
	devoe => ww_devoe,
	o => ww_o_Z_result(15));

-- Location: IOOBUF_X60_Y81_N36
\o_Z_result[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(16),
	devoe => ww_devoe,
	o => ww_o_Z_result(16));

-- Location: IOOBUF_X40_Y0_N2
\o_Z_result[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(17),
	devoe => ww_devoe,
	o => ww_o_Z_result(17));

-- Location: IOOBUF_X30_Y0_N36
\o_Z_result[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(18),
	devoe => ww_devoe,
	o => ww_o_Z_result(18));

-- Location: IOOBUF_X58_Y81_N42
\o_Z_result[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(19),
	devoe => ww_devoe,
	o => ww_o_Z_result(19));

-- Location: IOOBUF_X38_Y0_N53
\o_Z_result[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(20),
	devoe => ww_devoe,
	o => ww_o_Z_result(20));

-- Location: IOOBUF_X40_Y0_N36
\o_Z_result[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr[21]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Z_result(21));

-- Location: IOOBUF_X52_Y0_N19
\o_Z_result[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr[22]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Z_result(22));

-- Location: IOOBUF_X54_Y0_N36
\o_Z_result[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(23),
	devoe => ww_devoe,
	o => ww_o_Z_result(23));

-- Location: IOOBUF_X38_Y0_N36
\o_Z_result[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(24),
	devoe => ww_devoe,
	o => ww_o_Z_result(24));

-- Location: IOOBUF_X52_Y0_N2
\o_Z_result[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(25),
	devoe => ww_devoe,
	o => ww_o_Z_result(25));

-- Location: IOOBUF_X50_Y0_N93
\o_Z_result[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(26),
	devoe => ww_devoe,
	o => ww_o_Z_result(26));

-- Location: IOOBUF_X50_Y0_N76
\o_Z_result[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(27),
	devoe => ww_devoe,
	o => ww_o_Z_result(27));

-- Location: IOOBUF_X89_Y6_N22
\o_Z_result[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(28),
	devoe => ww_devoe,
	o => ww_o_Z_result(28));

-- Location: IOOBUF_X89_Y35_N79
\o_Z_result[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr[29]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Z_result(29));

-- Location: IOOBUF_X58_Y81_N93
\o_Z_result[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr\(30),
	devoe => ww_devoe,
	o => ww_o_Z_result(30));

-- Location: IOOBUF_X56_Y0_N2
\o_Z_result[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conect_2|zr[31]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Z_result(31));

-- Location: IOOBUF_X82_Y81_N59
\o_nco[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(0));

-- Location: IOOBUF_X8_Y0_N53
\o_nco[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(1));

-- Location: IOOBUF_X58_Y81_N76
\o_nco[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(2));

-- Location: IOOBUF_X2_Y0_N93
\o_nco[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(3));

-- Location: IOOBUF_X52_Y81_N53
\o_nco[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(4));

-- Location: IOOBUF_X54_Y81_N19
\o_nco[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(5));

-- Location: IOOBUF_X38_Y81_N53
\o_nco[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(6));

-- Location: IOOBUF_X28_Y81_N53
\o_nco[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(7));

-- Location: IOOBUF_X56_Y81_N2
\o_nco[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(8));

-- Location: IOOBUF_X28_Y0_N19
\o_nco[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(9));

-- Location: IOOBUF_X66_Y81_N42
\o_nco[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(10));

-- Location: IOOBUF_X26_Y81_N76
\o_nco[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(11));

-- Location: IOOBUF_X34_Y81_N76
\o_nco[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(12));

-- Location: IOOBUF_X38_Y81_N36
\o_nco[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(13));

-- Location: IOOBUF_X64_Y81_N19
\o_nco[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(14));

-- Location: IOOBUF_X70_Y81_N36
\o_nco[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(15));

-- Location: IOOBUF_X40_Y81_N53
\o_nco[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(16));

-- Location: IOOBUF_X4_Y0_N2
\o_nco[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(17));

-- Location: IOOBUF_X89_Y38_N22
\o_nco[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(18));

-- Location: IOOBUF_X72_Y81_N53
\o_nco[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(19));

-- Location: IOOBUF_X52_Y81_N19
\o_nco[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(20));

-- Location: IOOBUF_X4_Y0_N19
\o_nco[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(21));

-- Location: IOOBUF_X88_Y81_N54
\o_nco[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(22));

-- Location: IOOBUF_X56_Y81_N53
\o_nco[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(23));

-- Location: IOOBUF_X89_Y38_N56
\o_nco[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(24));

-- Location: IOOBUF_X54_Y81_N36
\o_nco[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(25));

-- Location: IOOBUF_X84_Y81_N36
\o_nco[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(26));

-- Location: IOOBUF_X82_Y81_N42
\o_nco[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(27));

-- Location: IOOBUF_X70_Y81_N53
\o_nco[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(28));

-- Location: IOOBUF_X8_Y0_N19
\o_nco[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(29));

-- Location: IOOBUF_X89_Y37_N22
\o_nco[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(30));

-- Location: IOOBUF_X4_Y0_N53
\o_nco[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_nco(31));

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X60_Y0_N52
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X64_Y10_N45
\conect_2|cur_iter[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|cur_iter[0]~1_combout\ = (\conect_2|Equal0~0_combout\ & !\conect_2|cur_iter\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_2|ALT_INV_Equal0~0_combout\,
	datad => \conect_2|ALT_INV_cur_iter\(0),
	combout => \conect_2|cur_iter[0]~1_combout\);

-- Location: FF_X64_Y10_N47
\conect_2|cur_iter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|cur_iter[0]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|cur_iter\(0));

-- Location: FF_X64_Y10_N46
\conect_2|cur_iter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|cur_iter[0]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|cur_iter[0]~DUPLICATE_q\);

-- Location: FF_X64_Y10_N10
\conect_2|cur_iter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \conect_2|cur_iter[1]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|cur_iter\(1));

-- Location: LABCELL_X66_Y9_N12
\conect_2|cur_iter[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|cur_iter[1]~0_combout\ = ( \conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter\(1),
	combout => \conect_2|cur_iter[1]~0_combout\);

-- Location: FF_X64_Y10_N11
\conect_2|cur_iter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \conect_2|cur_iter[1]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|cur_iter[1]~DUPLICATE_q\);

-- Location: FF_X64_Y10_N43
\conect_2|cur_iter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|cur_iter[2]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|cur_iter\(2));

-- Location: LABCELL_X64_Y10_N42
\conect_2|cur_iter[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|cur_iter[2]~3_combout\ = ( \conect_2|cur_iter\(1) & ( !\conect_2|cur_iter\(0) $ (!\conect_2|cur_iter\(2)) ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_cur_iter\(2),
	dataf => \conect_2|ALT_INV_cur_iter\(1),
	combout => \conect_2|cur_iter[2]~3_combout\);

-- Location: FF_X64_Y10_N44
\conect_2|cur_iter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|cur_iter[2]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|cur_iter[2]~DUPLICATE_q\);

-- Location: FF_X65_Y9_N52
\conect_2|cur_iter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \conect_2|cur_iter[3]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|cur_iter[3]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y9_N39
\conect_2|cur_iter[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|cur_iter[3]~2_combout\ = ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|cur_iter\(1) & ( !\conect_2|cur_iter\(2) $ (!\conect_2|cur_iter[3]~DUPLICATE_q\) ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|cur_iter\(1) & ( 
-- \conect_2|cur_iter[3]~DUPLICATE_q\ ) ) ) # ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[3]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(1) & ( 
-- \conect_2|cur_iter[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(2),
	datac => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter\(1),
	combout => \conect_2|cur_iter[3]~2_combout\);

-- Location: FF_X65_Y9_N53
\conect_2|cur_iter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \conect_2|cur_iter[3]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|cur_iter\(3));

-- Location: LABCELL_X63_Y11_N15
\conect_2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Equal0~0_combout\ = ( \conect_2|cur_iter[2]~DUPLICATE_q\ & ( \conect_2|cur_iter\(3) ) ) # ( !\conect_2|cur_iter[2]~DUPLICATE_q\ & ( \conect_2|cur_iter\(3) & ( (\conect_2|cur_iter[1]~DUPLICATE_q\) # (\conect_2|cur_iter\(0)) ) ) ) # ( 
-- \conect_2|cur_iter[2]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(3) ) ) # ( !\conect_2|cur_iter[2]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter\(3),
	combout => \conect_2|Equal0~0_combout\);

-- Location: FF_X63_Y10_N5
\conect_2|xr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(0));

-- Location: FF_X61_Y10_N38
\conect_2|zr[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~125_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr[31]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y11_N0
\conect_2|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Mux17~0_combout\ = ( \conect_2|cur_iter\(1) & ( \conect_2|cur_iter[2]~DUPLICATE_q\ ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[2]~DUPLICATE_q\ ) ) # ( !\conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	combout => \conect_2|Mux17~0_combout\);

-- Location: LABCELL_X61_Y11_N0
\conect_2|Add2~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~130_cout\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	cin => GND,
	cout => \conect_2|Add2~130_cout\);

-- Location: LABCELL_X61_Y11_N3
\conect_2|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~1_sumout\ = SUM(( \conect_2|zr\(0) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(0) & ((\conect_2|cur_iter[2]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (\conect_2|cur_iter\(1) & !\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) + 
-- ( \conect_2|Add2~130_cout\ ))
-- \conect_2|Add2~2\ = CARRY(( \conect_2|zr\(0) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(0) & ((\conect_2|cur_iter[2]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (\conect_2|cur_iter\(1) & !\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) + ( 
-- \conect_2|Add2~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_zr\(0),
	dataf => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	cin => \conect_2|Add2~130_cout\,
	sumout => \conect_2|Add2~1_sumout\,
	cout => \conect_2|Add2~2\);

-- Location: FF_X61_Y11_N5
\conect_2|zr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(0));

-- Location: LABCELL_X61_Y11_N6
\conect_2|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~5_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(1) & (\conect_2|cur_iter\(0) & \conect_2|cur_iter[2]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1) & ((\conect_2|cur_iter[2]~DUPLICATE_q\) # (\conect_2|cur_iter\(0)))))) 
-- ) + ( \conect_2|zr\(1) ) + ( \conect_2|Add2~2\ ))
-- \conect_2|Add2~6\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(1) & (\conect_2|cur_iter\(0) & \conect_2|cur_iter[2]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1) & ((\conect_2|cur_iter[2]~DUPLICATE_q\) # (\conect_2|cur_iter\(0)))))) ) + ( 
-- \conect_2|zr\(1) ) + ( \conect_2|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_zr\(1),
	cin => \conect_2|Add2~2\,
	sumout => \conect_2|Add2~5_sumout\,
	cout => \conect_2|Add2~6\);

-- Location: FF_X61_Y11_N8
\conect_2|zr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(1));

-- Location: LABCELL_X61_Y11_N9
\conect_2|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~9_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0)) # (\conect_2|cur_iter\(1)))))) ) + ( \conect_2|zr\(2) ) + ( \conect_2|Add2~6\ ))
-- \conect_2|Add2~10\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0)) # (\conect_2|cur_iter\(1)))))) ) + ( \conect_2|zr\(2) ) + ( \conect_2|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011100111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_zr\(2),
	cin => \conect_2|Add2~6\,
	sumout => \conect_2|Add2~9_sumout\,
	cout => \conect_2|Add2~10\);

-- Location: FF_X61_Y11_N11
\conect_2|zr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(2));

-- Location: LABCELL_X61_Y11_N12
\conect_2|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~13_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(0) & !\conect_2|cur_iter[2]~DUPLICATE_q\))) ) + ( \conect_2|zr[3]~DUPLICATE_q\ ) + ( \conect_2|Add2~10\ ))
-- \conect_2|Add2~14\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(0) & !\conect_2|cur_iter[2]~DUPLICATE_q\))) ) + ( \conect_2|zr[3]~DUPLICATE_q\ ) + ( \conect_2|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_zr[3]~DUPLICATE_q\,
	cin => \conect_2|Add2~10\,
	sumout => \conect_2|Add2~13_sumout\,
	cout => \conect_2|Add2~14\);

-- Location: FF_X61_Y11_N14
\conect_2|zr[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr[3]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y11_N15
\conect_2|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~17_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(0) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (\conect_2|cur_iter\(1))))) ) + ( \conect_2|zr\(4) ) + ( \conect_2|Add2~14\ ))
-- \conect_2|Add2~18\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(0) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (\conect_2|cur_iter\(1))))) ) + ( \conect_2|zr\(4) ) + ( \conect_2|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110001111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(1),
	datad => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_zr\(4),
	cin => \conect_2|Add2~14\,
	sumout => \conect_2|Add2~17_sumout\,
	cout => \conect_2|Add2~18\);

-- Location: FF_X61_Y11_N17
\conect_2|zr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(4));

-- Location: LABCELL_X61_Y11_N18
\conect_2|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~21_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (!\conect_2|cur_iter\(1) $ (((\conect_2|cur_iter[2]~DUPLICATE_q\ & !\conect_2|cur_iter\(0))))) ) + ( \conect_2|zr\(5) ) + ( \conect_2|Add2~18\ ))
-- \conect_2|Add2~22\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (!\conect_2|cur_iter\(1) $ (((\conect_2|cur_iter[2]~DUPLICATE_q\ & !\conect_2|cur_iter\(0))))) ) + ( \conect_2|zr\(5) ) + ( \conect_2|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110001110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_zr\(5),
	cin => \conect_2|Add2~18\,
	sumout => \conect_2|Add2~21_sumout\,
	cout => \conect_2|Add2~22\);

-- Location: FF_X61_Y11_N20
\conect_2|zr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(5));

-- Location: LABCELL_X61_Y11_N21
\conect_2|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~25_sumout\ = SUM(( \conect_2|zr\(6) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0)) # (\conect_2|cur_iter\(1)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1)) # 
-- (\conect_2|cur_iter\(0)))))) ) + ( \conect_2|Add2~22\ ))
-- \conect_2|Add2~26\ = CARRY(( \conect_2|zr\(6) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0)) # (\conect_2|cur_iter\(1)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1)) # 
-- (\conect_2|cur_iter\(0)))))) ) + ( \conect_2|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_zr\(6),
	dataf => \conect_2|ALT_INV_cur_iter\(1),
	cin => \conect_2|Add2~22\,
	sumout => \conect_2|Add2~25_sumout\,
	cout => \conect_2|Add2~26\);

-- Location: FF_X61_Y11_N23
\conect_2|zr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(6));

-- Location: LABCELL_X61_Y11_N24
\conect_2|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~29_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(0) & (!\conect_2|cur_iter\(1) & !\conect_2|cur_iter[2]~DUPLICATE_q\)) # (\conect_2|cur_iter\(0) & (!\conect_2|cur_iter\(1) $ 
-- (!\conect_2|cur_iter[2]~DUPLICATE_q\))))) ) + ( \conect_2|zr\(7) ) + ( \conect_2|Add2~26\ ))
-- \conect_2|Add2~30\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(0) & (!\conect_2|cur_iter\(1) & !\conect_2|cur_iter[2]~DUPLICATE_q\)) # (\conect_2|cur_iter\(0) & (!\conect_2|cur_iter\(1) $ (!\conect_2|cur_iter[2]~DUPLICATE_q\))))) ) 
-- + ( \conect_2|zr\(7) ) + ( \conect_2|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110100110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(1),
	datad => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_zr\(7),
	cin => \conect_2|Add2~26\,
	sumout => \conect_2|Add2~29_sumout\,
	cout => \conect_2|Add2~30\);

-- Location: FF_X61_Y11_N26
\conect_2|zr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(7));

-- Location: LABCELL_X61_Y11_N27
\conect_2|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~33_sumout\ = SUM(( \conect_2|zr\(8) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(1)) # ((\conect_2|cur_iter\(0) & !\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) + ( \conect_2|Add2~30\ ))
-- \conect_2|Add2~34\ = CARRY(( \conect_2|zr\(8) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(1)) # ((\conect_2|cur_iter\(0) & !\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) + ( \conect_2|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_zr\(8),
	dataf => \conect_2|ALT_INV_cur_iter\(1),
	cin => \conect_2|Add2~30\,
	sumout => \conect_2|Add2~33_sumout\,
	cout => \conect_2|Add2~34\);

-- Location: FF_X61_Y11_N29
\conect_2|zr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(8));

-- Location: LABCELL_X61_Y11_N30
\conect_2|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~37_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(0) & (!\conect_2|cur_iter\(1) $ (\conect_2|cur_iter[2]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (!\conect_2|cur_iter\(1) & \conect_2|cur_iter[2]~DUPLICATE_q\)))) 
-- ) + ( \conect_2|zr\(9) ) + ( \conect_2|Add2~34\ ))
-- \conect_2|Add2~38\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(0) & (!\conect_2|cur_iter\(1) $ (\conect_2|cur_iter[2]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (!\conect_2|cur_iter\(1) & \conect_2|cur_iter[2]~DUPLICATE_q\)))) ) + 
-- ( \conect_2|zr\(9) ) + ( \conect_2|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110110010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(1),
	datad => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_zr\(9),
	cin => \conect_2|Add2~34\,
	sumout => \conect_2|Add2~37_sumout\,
	cout => \conect_2|Add2~38\);

-- Location: FF_X61_Y11_N31
\conect_2|zr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(9));

-- Location: LABCELL_X61_Y11_N33
\conect_2|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~41_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|Mux17~0_combout\) ) + ( \conect_2|zr\(10) ) + ( \conect_2|Add2~38\ ))
-- \conect_2|Add2~42\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|Mux17~0_combout\) ) + ( \conect_2|zr\(10) ) + ( \conect_2|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_Mux17~0_combout\,
	dataf => \conect_2|ALT_INV_zr\(10),
	cin => \conect_2|Add2~38\,
	sumout => \conect_2|Add2~41_sumout\,
	cout => \conect_2|Add2~42\);

-- Location: FF_X61_Y11_N35
\conect_2|zr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(10));

-- Location: LABCELL_X61_Y11_N36
\conect_2|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~45_sumout\ = SUM(( \conect_2|zr\(11) ) + ( !\conect_2|cur_iter\(0) $ (!\conect_2|zr[31]~DUPLICATE_q\ $ (((\conect_2|cur_iter\(1) & \conect_2|cur_iter[2]~DUPLICATE_q\)))) ) + ( \conect_2|Add2~42\ ))
-- \conect_2|Add2~46\ = CARRY(( \conect_2|zr\(11) ) + ( !\conect_2|cur_iter\(0) $ (!\conect_2|zr[31]~DUPLICATE_q\ $ (((\conect_2|cur_iter\(1) & \conect_2|cur_iter[2]~DUPLICATE_q\)))) ) + ( \conect_2|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110011001011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(1),
	datad => \conect_2|ALT_INV_zr\(11),
	dataf => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	cin => \conect_2|Add2~42\,
	sumout => \conect_2|Add2~45_sumout\,
	cout => \conect_2|Add2~46\);

-- Location: FF_X61_Y11_N38
\conect_2|zr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(11));

-- Location: LABCELL_X61_Y11_N39
\conect_2|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~49_sumout\ = SUM(( \conect_2|zr\(12) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(0) $ (\conect_2|cur_iter[2]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1)))) ) + ( \conect_2|Add2~46\ ))
-- \conect_2|Add2~50\ = CARRY(( \conect_2|zr\(12) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(0) $ (\conect_2|cur_iter[2]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1)))) ) + ( \conect_2|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100111000110110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(1),
	datad => \conect_2|ALT_INV_zr\(12),
	dataf => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	cin => \conect_2|Add2~46\,
	sumout => \conect_2|Add2~49_sumout\,
	cout => \conect_2|Add2~50\);

-- Location: FF_X61_Y11_N40
\conect_2|zr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(12));

-- Location: LABCELL_X61_Y11_N42
\conect_2|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~53_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|cur_iter\(1))))) ) + ( \conect_2|zr\(13) ) + ( \conect_2|Add2~50\ 
-- ))
-- \conect_2|Add2~54\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|cur_iter\(1))))) ) + ( \conect_2|zr\(13) ) + ( \conect_2|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_zr\(13),
	cin => \conect_2|Add2~50\,
	sumout => \conect_2|Add2~53_sumout\,
	cout => \conect_2|Add2~54\);

-- Location: FF_X61_Y11_N44
\conect_2|zr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(13));

-- Location: LABCELL_X61_Y11_N45
\conect_2|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~57_sumout\ = SUM(( \conect_2|zr\(14) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (!\conect_2|cur_iter[2]~DUPLICATE_q\ $ (((\conect_2|cur_iter\(0)) # (\conect_2|cur_iter\(1))))) ) + ( \conect_2|Add2~54\ ))
-- \conect_2|Add2~58\ = CARRY(( \conect_2|zr\(14) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (!\conect_2|cur_iter[2]~DUPLICATE_q\ $ (((\conect_2|cur_iter\(0)) # (\conect_2|cur_iter\(1))))) ) + ( \conect_2|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100100110110110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_zr\(14),
	dataf => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	cin => \conect_2|Add2~54\,
	sumout => \conect_2|Add2~57_sumout\,
	cout => \conect_2|Add2~58\);

-- Location: FF_X61_Y11_N47
\conect_2|zr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(14));

-- Location: LABCELL_X61_Y11_N48
\conect_2|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~61_sumout\ = SUM(( \conect_2|zr\(15) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (!\conect_2|cur_iter\(0) & !\conect_2|cur_iter\(1))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (!\conect_2|cur_iter\(0) $ 
-- (!\conect_2|cur_iter\(1)))))) ) + ( \conect_2|Add2~58\ ))
-- \conect_2|Add2~62\ = CARRY(( \conect_2|zr\(15) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (!\conect_2|cur_iter\(0) & !\conect_2|cur_iter\(1))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (!\conect_2|cur_iter\(0) $ 
-- (!\conect_2|cur_iter\(1)))))) ) + ( \conect_2|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101100100101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(0),
	datac => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_zr\(15),
	dataf => \conect_2|ALT_INV_cur_iter\(1),
	cin => \conect_2|Add2~58\,
	sumout => \conect_2|Add2~61_sumout\,
	cout => \conect_2|Add2~62\);

-- Location: FF_X61_Y11_N49
\conect_2|zr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(15));

-- Location: LABCELL_X61_Y11_N51
\conect_2|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~65_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0)) # (\conect_2|cur_iter\(1)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1)) # 
-- (\conect_2|cur_iter\(0)))))) ) + ( \conect_2|zr\(16) ) + ( \conect_2|Add2~62\ ))
-- \conect_2|Add2~66\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0)) # (\conect_2|cur_iter\(1)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1)) # 
-- (\conect_2|cur_iter\(0)))))) ) + ( \conect_2|zr\(16) ) + ( \conect_2|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010110101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(0),
	datac => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_zr\(16),
	cin => \conect_2|Add2~62\,
	sumout => \conect_2|Add2~65_sumout\,
	cout => \conect_2|Add2~66\);

-- Location: FF_X61_Y11_N53
\conect_2|zr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(16));

-- Location: LABCELL_X61_Y11_N54
\conect_2|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~69_sumout\ = SUM(( \conect_2|zr\(17) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (!\conect_2|cur_iter\(0)) ) + ( \conect_2|Add2~66\ ))
-- \conect_2|Add2~70\ = CARRY(( \conect_2|zr\(17) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (!\conect_2|cur_iter\(0)) ) + ( \conect_2|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_zr\(17),
	cin => \conect_2|Add2~66\,
	sumout => \conect_2|Add2~69_sumout\,
	cout => \conect_2|Add2~70\);

-- Location: FF_X61_Y11_N56
\conect_2|zr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(17));

-- Location: LABCELL_X61_Y11_N57
\conect_2|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~73_sumout\ = SUM(( \conect_2|zr\(18) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\) # (\conect_2|cur_iter\(0)))))) ) + ( \conect_2|Add2~70\ ))
-- \conect_2|Add2~74\ = CARRY(( \conect_2|zr\(18) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\) # (\conect_2|cur_iter\(0)))))) ) + ( \conect_2|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110010011100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_zr\(18),
	dataf => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	cin => \conect_2|Add2~70\,
	sumout => \conect_2|Add2~73_sumout\,
	cout => \conect_2|Add2~74\);

-- Location: FF_X61_Y11_N59
\conect_2|zr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(18));

-- Location: LABCELL_X61_Y10_N0
\conect_2|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~77_sumout\ = SUM(( \conect_2|zr\(19) ) + ( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter[2]~DUPLICATE_q\) # (!\conect_2|cur_iter\(1)))))) ) + ( \conect_2|Add2~74\ ))
-- \conect_2|Add2~78\ = CARRY(( \conect_2|zr\(19) ) + ( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter[2]~DUPLICATE_q\) # (!\conect_2|cur_iter\(1)))))) ) + ( \conect_2|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010010011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_cur_iter\(1),
	datad => \conect_2|ALT_INV_zr\(19),
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	cin => \conect_2|Add2~74\,
	sumout => \conect_2|Add2~77_sumout\,
	cout => \conect_2|Add2~78\);

-- Location: FF_X61_Y10_N2
\conect_2|zr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(19));

-- Location: LABCELL_X61_Y10_N3
\conect_2|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~81_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (!\conect_2|cur_iter[2]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|cur_iter\(1)))))) ) + ( \conect_2|zr\(20) ) + ( \conect_2|Add2~78\ 
-- ))
-- \conect_2|Add2~82\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (!\conect_2|cur_iter[2]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|cur_iter\(1)))))) ) + ( \conect_2|zr\(20) ) + ( \conect_2|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110110001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_zr\(20),
	cin => \conect_2|Add2~78\,
	sumout => \conect_2|Add2~81_sumout\,
	cout => \conect_2|Add2~82\);

-- Location: FF_X61_Y10_N4
\conect_2|zr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~81_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(20));

-- Location: LABCELL_X61_Y10_N6
\conect_2|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~85_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter\(2)))) # (\conect_2|cur_iter\(1) & (!\conect_2|cur_iter[0]~DUPLICATE_q\)))) ) + ( \conect_2|zr\(21) ) + ( \conect_2|Add2~82\ ))
-- \conect_2|Add2~86\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter\(2)))) # (\conect_2|cur_iter\(1) & (!\conect_2|cur_iter[0]~DUPLICATE_q\)))) ) + ( \conect_2|zr\(21) ) + ( \conect_2|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_cur_iter\(1),
	datad => \conect_2|ALT_INV_cur_iter\(2),
	dataf => \conect_2|ALT_INV_zr\(21),
	cin => \conect_2|Add2~82\,
	sumout => \conect_2|Add2~85_sumout\,
	cout => \conect_2|Add2~86\);

-- Location: FF_X61_Y10_N8
\conect_2|zr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(21));

-- Location: LABCELL_X61_Y10_N9
\conect_2|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~89_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (!\conect_2|cur_iter\(2))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1)) # (\conect_2|cur_iter\(2)))))) ) + ( \conect_2|zr\(22) ) + ( 
-- \conect_2|Add2~86\ ))
-- \conect_2|Add2~90\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (!\conect_2|cur_iter\(2))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1)) # (\conect_2|cur_iter\(2)))))) ) + ( \conect_2|zr\(22) ) + ( 
-- \conect_2|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_cur_iter\(2),
	datad => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_zr\(22),
	cin => \conect_2|Add2~86\,
	sumout => \conect_2|Add2~89_sumout\,
	cout => \conect_2|Add2~90\);

-- Location: FF_X61_Y10_N11
\conect_2|zr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(22));

-- Location: LABCELL_X61_Y10_N12
\conect_2|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~93_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[0]~DUPLICATE_q\) # ((!\conect_2|cur_iter\(1) & !\conect_2|cur_iter\(2))))) ) + ( \conect_2|zr[23]~DUPLICATE_q\ ) + ( \conect_2|Add2~90\ ))
-- \conect_2|Add2~94\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[0]~DUPLICATE_q\) # ((!\conect_2|cur_iter\(1) & !\conect_2|cur_iter\(2))))) ) + ( \conect_2|zr[23]~DUPLICATE_q\ ) + ( \conect_2|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_cur_iter\(2),
	dataf => \conect_2|ALT_INV_zr[23]~DUPLICATE_q\,
	cin => \conect_2|Add2~90\,
	sumout => \conect_2|Add2~93_sumout\,
	cout => \conect_2|Add2~94\);

-- Location: FF_X61_Y10_N14
\conect_2|zr[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr[23]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y10_N15
\conect_2|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~97_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|cur_iter\(2) $ (((!\conect_2|cur_iter\(1) & \conect_2|cur_iter[0]~DUPLICATE_q\)))) ) + ( \conect_2|zr\(24) ) + ( \conect_2|Add2~94\ ))
-- \conect_2|Add2~98\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|cur_iter\(2) $ (((!\conect_2|cur_iter\(1) & \conect_2|cur_iter[0]~DUPLICATE_q\)))) ) + ( \conect_2|zr\(24) ) + ( \conect_2|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000010110111010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_cur_iter\(2),
	dataf => \conect_2|ALT_INV_zr\(24),
	cin => \conect_2|Add2~94\,
	sumout => \conect_2|Add2~97_sumout\,
	cout => \conect_2|Add2~98\);

-- Location: FF_X61_Y10_N17
\conect_2|zr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~97_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(24));

-- Location: LABCELL_X61_Y10_N18
\conect_2|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~101_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[0]~DUPLICATE_q\) # (!\conect_2|cur_iter\(2)))))) ) + ( \conect_2|zr\(25) ) + ( \conect_2|Add2~98\ ))
-- \conect_2|Add2~102\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[0]~DUPLICATE_q\) # (!\conect_2|cur_iter\(2)))))) ) + ( \conect_2|zr\(25) ) + ( \conect_2|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_cur_iter\(2),
	dataf => \conect_2|ALT_INV_zr\(25),
	cin => \conect_2|Add2~98\,
	sumout => \conect_2|Add2~101_sumout\,
	cout => \conect_2|Add2~102\);

-- Location: FF_X61_Y10_N20
\conect_2|zr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~101_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(25));

-- Location: LABCELL_X61_Y10_N21
\conect_2|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~105_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter\(2) & (!\conect_2|cur_iter\(1) $ (\conect_2|cur_iter[0]~DUPLICATE_q\))))) ) + ( \conect_2|zr\(26) ) + ( \conect_2|Add2~102\ ))
-- \conect_2|Add2~106\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter\(2) & (!\conect_2|cur_iter\(1) $ (\conect_2|cur_iter[0]~DUPLICATE_q\))))) ) + ( \conect_2|zr\(26) ) + ( \conect_2|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110100111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_cur_iter\(2),
	dataf => \conect_2|ALT_INV_zr\(26),
	cin => \conect_2|Add2~102\,
	sumout => \conect_2|Add2~105_sumout\,
	cout => \conect_2|Add2~106\);

-- Location: FF_X61_Y10_N22
\conect_2|zr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~105_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(26));

-- Location: LABCELL_X61_Y10_N24
\conect_2|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~109_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[0]~DUPLICATE_q\ & !\conect_2|cur_iter\(2)))) ) + ( \conect_2|zr\(27) ) + ( \conect_2|Add2~106\ ))
-- \conect_2|Add2~110\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter[0]~DUPLICATE_q\ & !\conect_2|cur_iter\(2)))) ) + ( \conect_2|zr\(27) ) + ( \conect_2|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_zr\(27),
	datad => \conect_2|ALT_INV_cur_iter\(2),
	cin => \conect_2|Add2~106\,
	sumout => \conect_2|Add2~109_sumout\,
	cout => \conect_2|Add2~110\);

-- Location: FF_X61_Y10_N26
\conect_2|zr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~109_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(27));

-- Location: LABCELL_X61_Y10_N27
\conect_2|Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~113_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(1) & !\conect_2|cur_iter\(2)))) ) + ( \conect_2|zr\(28) ) + ( \conect_2|Add2~110\ ))
-- \conect_2|Add2~114\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (((!\conect_2|cur_iter\(1) & !\conect_2|cur_iter\(2)))) ) + ( \conect_2|zr\(28) ) + ( \conect_2|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(1),
	datad => \conect_2|ALT_INV_cur_iter\(2),
	dataf => \conect_2|ALT_INV_zr\(28),
	cin => \conect_2|Add2~110\,
	sumout => \conect_2|Add2~113_sumout\,
	cout => \conect_2|Add2~114\);

-- Location: FF_X61_Y10_N28
\conect_2|zr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~113_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(28));

-- Location: LABCELL_X61_Y10_N30
\conect_2|Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~117_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ ) + ( \conect_2|zr\(29) ) + ( \conect_2|Add2~114\ ))
-- \conect_2|Add2~118\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ ) + ( \conect_2|zr\(29) ) + ( \conect_2|Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_zr\(29),
	datad => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	cin => \conect_2|Add2~114\,
	sumout => \conect_2|Add2~117_sumout\,
	cout => \conect_2|Add2~118\);

-- Location: FF_X61_Y10_N32
\conect_2|zr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(29));

-- Location: LABCELL_X61_Y10_N33
\conect_2|Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~121_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ ) + ( \conect_2|zr\(30) ) + ( \conect_2|Add2~118\ ))
-- \conect_2|Add2~122\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ ) + ( \conect_2|zr\(30) ) + ( \conect_2|Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(30),
	datad => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	cin => \conect_2|Add2~118\,
	sumout => \conect_2|Add2~121_sumout\,
	cout => \conect_2|Add2~122\);

-- Location: FF_X61_Y10_N35
\conect_2|zr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~121_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(30));

-- Location: LABCELL_X61_Y10_N36
\conect_2|Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add2~125_sumout\ = SUM(( \conect_2|zr[31]~DUPLICATE_q\ ) + ( !\conect_2|zr[31]~DUPLICATE_q\ ) + ( \conect_2|Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	cin => \conect_2|Add2~122\,
	sumout => \conect_2|Add2~125_sumout\);

-- Location: FF_X61_Y10_N37
\conect_2|zr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~125_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(31));

-- Location: FF_X65_Y10_N47
\conect_2|yr[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[14]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y9_N54
\conect_2|ShiftRight1~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~58_combout\ = ( \conect_2|cur_iter\(2) ) # ( !\conect_2|cur_iter\(2) & ( \conect_2|cur_iter[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter\(2),
	combout => \conect_2|ShiftRight1~58_combout\);

-- Location: FF_X63_Y9_N38
\conect_2|xr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~125_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(31));

-- Location: FF_X63_Y9_N32
\conect_2|xr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(29));

-- Location: FF_X65_Y9_N25
\conect_2|yr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~109_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(27));

-- Location: FF_X63_Y9_N26
\conect_2|xr[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~109_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[27]~DUPLICATE_q\);

-- Location: FF_X63_Y9_N22
\conect_2|xr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~105_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(26));

-- Location: FF_X63_Y9_N29
\conect_2|xr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~113_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(28));

-- Location: LABCELL_X66_Y9_N48
\conect_2|ShiftRight0~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~40_combout\ = ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|cur_iter\(1) & ( \conect_2|xr[29]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|cur_iter\(1) & ( \conect_2|xr\(28) ) ) ) # ( 
-- \conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(1) & ( \conect_2|xr\(27) ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(1) & ( \conect_2|xr\(26) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr\(26),
	datab => \conect_2|ALT_INV_xr[29]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr\(27),
	datad => \conect_2|ALT_INV_xr\(28),
	datae => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter\(1),
	combout => \conect_2|ShiftRight0~40_combout\);

-- Location: LABCELL_X66_Y9_N57
\conect_2|ShiftRight0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~57_combout\ = ( \conect_2|ShiftRight0~40_combout\ & ( (!\conect_2|cur_iter\(2)) # (\conect_2|ShiftRight0~48_combout\) ) ) # ( !\conect_2|ShiftRight0~40_combout\ & ( (\conect_2|cur_iter\(2) & \conect_2|ShiftRight0~48_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_cur_iter\(2),
	datac => \conect_2|ALT_INV_ShiftRight0~48_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~40_combout\,
	combout => \conect_2|ShiftRight0~57_combout\);

-- Location: FF_X65_Y9_N22
\conect_2|yr[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~105_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[26]~DUPLICATE_q\);

-- Location: FF_X63_Y9_N19
\conect_2|xr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~101_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(25));

-- Location: FF_X63_Y9_N17
\conect_2|xr[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~97_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[24]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y9_N54
\conect_2|ShiftRight0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~36_combout\ = ( \conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[27]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr\(25) ) ) ) # ( 
-- \conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[26]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[24]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[27]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_xr\(25),
	datac => \conect_2|ALT_INV_xr[26]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr[24]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~36_combout\);

-- Location: LABCELL_X62_Y9_N24
\conect_2|ShiftRight0~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~55_combout\ = ( \conect_2|ShiftRight0~36_combout\ & ( \conect_2|ShiftRight0~44_combout\ ) ) # ( !\conect_2|ShiftRight0~36_combout\ & ( \conect_2|ShiftRight0~44_combout\ & ( \conect_2|cur_iter\(2) ) ) ) # ( 
-- \conect_2|ShiftRight0~36_combout\ & ( !\conect_2|ShiftRight0~44_combout\ & ( !\conect_2|cur_iter\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_2|ALT_INV_cur_iter\(2),
	datae => \conect_2|ALT_INV_ShiftRight0~36_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~44_combout\,
	combout => \conect_2|ShiftRight0~55_combout\);

-- Location: FF_X65_Y9_N14
\conect_2|yr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(23));

-- Location: LABCELL_X66_Y9_N0
\conect_2|ShiftRight0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~53_combout\ = ( \conect_2|ShiftRight0~40_combout\ & ( \conect_2|ShiftRight0~32_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\) # ((!\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight0~48_combout\))) # (\conect_2|cur_iter\(2) & 
-- (\conect_2|xr\(31)))) ) ) ) # ( !\conect_2|ShiftRight0~40_combout\ & ( \conect_2|ShiftRight0~32_combout\ & ( (!\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter[3]~DUPLICATE_q\) # (\conect_2|ShiftRight0~48_combout\)))) # (\conect_2|cur_iter\(2) & 
-- (\conect_2|xr\(31) & (\conect_2|cur_iter[3]~DUPLICATE_q\))) ) ) ) # ( \conect_2|ShiftRight0~40_combout\ & ( !\conect_2|ShiftRight0~32_combout\ & ( (!\conect_2|cur_iter\(2) & (((\conect_2|cur_iter[3]~DUPLICATE_q\ & \conect_2|ShiftRight0~48_combout\)))) # 
-- (\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter[3]~DUPLICATE_q\)) # (\conect_2|xr\(31)))) ) ) ) # ( !\conect_2|ShiftRight0~40_combout\ & ( !\conect_2|ShiftRight0~32_combout\ & ( (\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(2) & 
-- ((\conect_2|ShiftRight0~48_combout\))) # (\conect_2|cur_iter\(2) & (\conect_2|xr\(31))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr\(31),
	datab => \conect_2|ALT_INV_cur_iter\(2),
	datac => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight0~48_combout\,
	datae => \conect_2|ALT_INV_ShiftRight0~40_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~32_combout\,
	combout => \conect_2|ShiftRight0~53_combout\);

-- Location: FF_X65_Y9_N10
\conect_2|yr[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[22]~DUPLICATE_q\);

-- Location: FF_X65_Y9_N8
\conect_2|yr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(21));

-- Location: FF_X65_Y9_N16
\conect_2|yr[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~97_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[24]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y8_N3
\conect_2|ShiftRight1~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~36_combout\ = ( \conect_2|yr[27]~DUPLICATE_q\ & ( \conect_2|yr[25]~DUPLICATE_q\ & ( ((!\conect_2|cur_iter\(1) & (\conect_2|yr[24]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1) & ((\conect_2|yr[26]~DUPLICATE_q\)))) # 
-- (\conect_2|cur_iter[0]~DUPLICATE_q\) ) ) ) # ( !\conect_2|yr[27]~DUPLICATE_q\ & ( \conect_2|yr[25]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1) & (\conect_2|yr[24]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1) & 
-- ((\conect_2|yr[26]~DUPLICATE_q\))))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & (!\conect_2|cur_iter\(1))) ) ) ) # ( \conect_2|yr[27]~DUPLICATE_q\ & ( !\conect_2|yr[25]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1) & 
-- (\conect_2|yr[24]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1) & ((\conect_2|yr[26]~DUPLICATE_q\))))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|cur_iter\(1))) ) ) ) # ( !\conect_2|yr[27]~DUPLICATE_q\ & ( !\conect_2|yr[25]~DUPLICATE_q\ & ( 
-- (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1) & (\conect_2|yr[24]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1) & ((\conect_2|yr[26]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(1),
	datac => \conect_2|ALT_INV_yr[24]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_yr[26]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_yr[27]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr[25]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~36_combout\);

-- Location: FF_X63_Y9_N7
\conect_2|xr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(21));

-- Location: FF_X63_Y9_N4
\conect_2|xr[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~81_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[20]~DUPLICATE_q\);

-- Location: FF_X65_Y9_N38
\conect_2|yr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~125_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(31));

-- Location: FF_X63_Y10_N59
\conect_2|xr[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[18]~DUPLICATE_q\);

-- Location: FF_X65_Y9_N1
\conect_2|yr[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[19]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y11_N12
\conect_2|ShiftRight1~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~24_combout\ = ( \conect_2|yr[19]~DUPLICATE_q\ & ( \conect_2|yr\(20) & ( (!\conect_2|cur_iter\(0) & (((\conect_2|yr\(18))) # (\conect_2|cur_iter[1]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & ((!\conect_2|cur_iter[1]~DUPLICATE_q\) # 
-- ((\conect_2|yr[21]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|yr[19]~DUPLICATE_q\ & ( \conect_2|yr\(20) & ( (!\conect_2|cur_iter\(0) & (((\conect_2|yr\(18))) # (\conect_2|cur_iter[1]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & 
-- (\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr[21]~DUPLICATE_q\))) ) ) ) # ( \conect_2|yr[19]~DUPLICATE_q\ & ( !\conect_2|yr\(20) & ( (!\conect_2|cur_iter\(0) & (!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr\(18))))) # (\conect_2|cur_iter\(0) 
-- & ((!\conect_2|cur_iter[1]~DUPLICATE_q\) # ((\conect_2|yr[21]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|yr[19]~DUPLICATE_q\ & ( !\conect_2|yr\(20) & ( (!\conect_2|cur_iter\(0) & (!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr\(18))))) # 
-- (\conect_2|cur_iter\(0) & (\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr[21]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_yr[21]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_yr\(18),
	datae => \conect_2|ALT_INV_yr[19]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr\(20),
	combout => \conect_2|ShiftRight1~24_combout\);

-- Location: FF_X65_Y9_N19
\conect_2|yr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~101_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(25));

-- Location: LABCELL_X64_Y11_N36
\conect_2|ShiftRight1~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~32_combout\ = ( \conect_2|yr[22]~DUPLICATE_q\ & ( \conect_2|yr[23]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\) # ((!\conect_2|cur_iter\(0) & ((\conect_2|yr\(24)))) # (\conect_2|cur_iter\(0) & (\conect_2|yr\(25)))) ) ) ) # 
-- ( !\conect_2|yr[22]~DUPLICATE_q\ & ( \conect_2|yr[23]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(0) & (((\conect_2|yr\(24) & \conect_2|cur_iter[1]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(0) & (((!\conect_2|cur_iter[1]~DUPLICATE_q\)) # (\conect_2|yr\(25)))) ) 
-- ) ) # ( \conect_2|yr[22]~DUPLICATE_q\ & ( !\conect_2|yr[23]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(0) & (((!\conect_2|cur_iter[1]~DUPLICATE_q\) # (\conect_2|yr\(24))))) # (\conect_2|cur_iter\(0) & (\conect_2|yr\(25) & 
-- ((\conect_2|cur_iter[1]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|yr[22]~DUPLICATE_q\ & ( !\conect_2|yr[23]~DUPLICATE_q\ & ( (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0) & ((\conect_2|yr\(24)))) # (\conect_2|cur_iter\(0) & 
-- (\conect_2|yr\(25))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_yr\(25),
	datac => \conect_2|ALT_INV_yr\(24),
	datad => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_yr[22]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr[23]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~32_combout\);

-- Location: LABCELL_X63_Y11_N48
\conect_2|ShiftRight1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~49_combout\ = ( \conect_2|ShiftRight1~32_combout\ & ( \conect_2|ShiftRight1~40_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|cur_iter\(3))) # (\conect_2|ShiftRight1~24_combout\))) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(3)) # (\conect_2|ShiftRight1~48_combout\)))) ) ) ) # ( !\conect_2|ShiftRight1~32_combout\ & ( \conect_2|ShiftRight1~40_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- (((\conect_2|cur_iter\(3))) # (\conect_2|ShiftRight1~24_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|ShiftRight1~48_combout\ & \conect_2|cur_iter\(3))))) ) ) ) # ( \conect_2|ShiftRight1~32_combout\ & ( 
-- !\conect_2|ShiftRight1~40_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~24_combout\ & ((!\conect_2|cur_iter\(3))))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(3)) # (\conect_2|ShiftRight1~48_combout\)))) ) 
-- ) ) # ( !\conect_2|ShiftRight1~32_combout\ & ( !\conect_2|ShiftRight1~40_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~24_combout\ & ((!\conect_2|cur_iter\(3))))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- (((\conect_2|ShiftRight1~48_combout\ & \conect_2|cur_iter\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~24_combout\,
	datac => \conect_2|ALT_INV_ShiftRight1~48_combout\,
	datad => \conect_2|ALT_INV_cur_iter\(3),
	datae => \conect_2|ALT_INV_ShiftRight1~32_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~40_combout\,
	combout => \conect_2|ShiftRight1~49_combout\);

-- Location: LABCELL_X62_Y10_N6
\conect_2|ShiftRight0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~22_combout\ = ( \conect_2|xr[18]~DUPLICATE_q\ & ( \conect_2|xr[20]~DUPLICATE_q\ & ( ((!\conect_2|cur_iter\(1) & (\conect_2|xr\(17))) # (\conect_2|cur_iter\(1) & ((\conect_2|xr[19]~DUPLICATE_q\)))) # 
-- (\conect_2|cur_iter[0]~DUPLICATE_q\) ) ) ) # ( !\conect_2|xr[18]~DUPLICATE_q\ & ( \conect_2|xr[20]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (\conect_2|xr\(17) & (!\conect_2|cur_iter[0]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & 
-- (((\conect_2|xr[19]~DUPLICATE_q\) # (\conect_2|cur_iter[0]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|xr[18]~DUPLICATE_q\ & ( !\conect_2|xr[20]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (((\conect_2|cur_iter[0]~DUPLICATE_q\)) # (\conect_2|xr\(17)))) # 
-- (\conect_2|cur_iter\(1) & (((!\conect_2|cur_iter[0]~DUPLICATE_q\ & \conect_2|xr[19]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|xr[18]~DUPLICATE_q\ & ( !\conect_2|xr[20]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1) & 
-- (\conect_2|xr\(17))) # (\conect_2|cur_iter\(1) & ((\conect_2|xr[19]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_xr\(17),
	datac => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr[19]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_xr[18]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_xr[20]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~22_combout\);

-- Location: LABCELL_X66_Y10_N30
\conect_2|ShiftRight0~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~47_combout\ = ( \conect_2|ShiftRight0~46_combout\ & ( \conect_2|ShiftRight0~38_combout\ & ( ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~22_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight0~30_combout\)))) # (\conect_2|cur_iter\(3)) ) ) ) # ( !\conect_2|ShiftRight0~46_combout\ & ( \conect_2|ShiftRight0~38_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight0~22_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~30_combout\))))) # (\conect_2|cur_iter\(3) & (((!\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|ShiftRight0~46_combout\ & ( 
-- !\conect_2|ShiftRight0~38_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~22_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~30_combout\))))) # (\conect_2|cur_iter\(3) & 
-- (((\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|ShiftRight0~46_combout\ & ( !\conect_2|ShiftRight0~38_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~22_combout\)) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~30_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(3),
	datab => \conect_2|ALT_INV_ShiftRight0~22_combout\,
	datac => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight0~30_combout\,
	datae => \conect_2|ALT_INV_ShiftRight0~46_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~38_combout\,
	combout => \conect_2|ShiftRight0~47_combout\);

-- Location: FF_X65_Y10_N56
\conect_2|yr[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[17]~DUPLICATE_q\);

-- Location: FF_X65_Y10_N53
\conect_2|yr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(16));

-- Location: LABCELL_X64_Y11_N24
\conect_2|ShiftRight1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~13_combout\ = ( \conect_2|yr[16]~DUPLICATE_q\ & ( \conect_2|yr\(15) & ( (!\conect_2|cur_iter\(0) & (((\conect_2|cur_iter[1]~DUPLICATE_q\) # (\conect_2|yr[14]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(0) & 
-- (((!\conect_2|cur_iter[1]~DUPLICATE_q\)) # (\conect_2|yr\(17)))) ) ) ) # ( !\conect_2|yr[16]~DUPLICATE_q\ & ( \conect_2|yr\(15) & ( (!\conect_2|cur_iter\(0) & (((\conect_2|yr[14]~DUPLICATE_q\ & !\conect_2|cur_iter[1]~DUPLICATE_q\)))) # 
-- (\conect_2|cur_iter\(0) & (((!\conect_2|cur_iter[1]~DUPLICATE_q\)) # (\conect_2|yr\(17)))) ) ) ) # ( \conect_2|yr[16]~DUPLICATE_q\ & ( !\conect_2|yr\(15) & ( (!\conect_2|cur_iter\(0) & (((\conect_2|cur_iter[1]~DUPLICATE_q\) # 
-- (\conect_2|yr[14]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(0) & (\conect_2|yr\(17) & ((\conect_2|cur_iter[1]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|yr[16]~DUPLICATE_q\ & ( !\conect_2|yr\(15) & ( (!\conect_2|cur_iter\(0) & (((\conect_2|yr[14]~DUPLICATE_q\ & 
-- !\conect_2|cur_iter[1]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(0) & (\conect_2|yr\(17) & ((\conect_2|cur_iter[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_yr\(17),
	datac => \conect_2|ALT_INV_yr[14]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_yr[16]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr\(15),
	combout => \conect_2|ShiftRight1~13_combout\);

-- Location: LABCELL_X64_Y11_N18
\conect_2|ShiftRight1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~41_combout\ = ( \conect_2|ShiftRight1~40_combout\ & ( \conect_2|ShiftRight1~24_combout\ & ( ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight1~13_combout\)) # (\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight1~32_combout\)))) # 
-- (\conect_2|cur_iter\(2)) ) ) ) # ( !\conect_2|ShiftRight1~40_combout\ & ( \conect_2|ShiftRight1~24_combout\ & ( (!\conect_2|cur_iter\(2) & ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight1~13_combout\)) # (\conect_2|cur_iter\(3) & 
-- ((\conect_2|ShiftRight1~32_combout\))))) # (\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter\(3))))) ) ) ) # ( \conect_2|ShiftRight1~40_combout\ & ( !\conect_2|ShiftRight1~24_combout\ & ( (!\conect_2|cur_iter\(2) & ((!\conect_2|cur_iter\(3) & 
-- (\conect_2|ShiftRight1~13_combout\)) # (\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight1~32_combout\))))) # (\conect_2|cur_iter\(2) & (((\conect_2|cur_iter\(3))))) ) ) ) # ( !\conect_2|ShiftRight1~40_combout\ & ( !\conect_2|ShiftRight1~24_combout\ & ( 
-- (!\conect_2|cur_iter\(2) & ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight1~13_combout\)) # (\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight1~32_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight1~13_combout\,
	datab => \conect_2|ALT_INV_cur_iter\(2),
	datac => \conect_2|ALT_INV_ShiftRight1~32_combout\,
	datad => \conect_2|ALT_INV_cur_iter\(3),
	datae => \conect_2|ALT_INV_ShiftRight1~40_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~24_combout\,
	combout => \conect_2|ShiftRight1~41_combout\);

-- Location: FF_X63_Y10_N46
\conect_2|xr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(14));

-- Location: FF_X63_Y10_N44
\conect_2|xr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(13));

-- Location: LABCELL_X67_Y10_N12
\conect_2|ShiftRight1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~37_combout\ = ( \conect_2|ShiftRight1~28_combout\ & ( \conect_2|ShiftRight1~36_combout\ & ( ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~3_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~20_combout\)))) # (\conect_2|cur_iter\(3)) ) ) ) # ( !\conect_2|ShiftRight1~28_combout\ & ( \conect_2|ShiftRight1~36_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight1~3_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~20_combout\))))) # (\conect_2|cur_iter\(3) & (((\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|ShiftRight1~28_combout\ & ( 
-- !\conect_2|ShiftRight1~36_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~3_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~20_combout\))))) # (\conect_2|cur_iter\(3) & 
-- (((!\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|ShiftRight1~28_combout\ & ( !\conect_2|ShiftRight1~36_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~3_combout\)) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~20_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(3),
	datab => \conect_2|ALT_INV_ShiftRight1~3_combout\,
	datac => \conect_2|ALT_INV_ShiftRight1~20_combout\,
	datad => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_ShiftRight1~28_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~36_combout\,
	combout => \conect_2|ShiftRight1~37_combout\);

-- Location: FF_X65_Y10_N43
\conect_2|yr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(13));

-- Location: FF_X63_Y10_N37
\conect_2|xr[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[11]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y9_N36
\conect_2|ShiftRight0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~16_combout\ = ( \conect_2|cur_iter[1]~DUPLICATE_q\ & ( \conect_2|xr[11]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(0) & (\conect_2|xr\(13))) # (\conect_2|cur_iter\(0) & ((\conect_2|xr[14]~DUPLICATE_q\))) ) ) ) # ( 
-- !\conect_2|cur_iter[1]~DUPLICATE_q\ & ( \conect_2|xr[11]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(0)) # (\conect_2|xr\(12)) ) ) ) # ( \conect_2|cur_iter[1]~DUPLICATE_q\ & ( !\conect_2|xr[11]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(0) & (\conect_2|xr\(13))) # 
-- (\conect_2|cur_iter\(0) & ((\conect_2|xr[14]~DUPLICATE_q\))) ) ) ) # ( !\conect_2|cur_iter[1]~DUPLICATE_q\ & ( !\conect_2|xr[11]~DUPLICATE_q\ & ( (\conect_2|xr\(12) & \conect_2|cur_iter\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111110101111101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr\(12),
	datab => \conect_2|ALT_INV_xr\(13),
	datac => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_xr[14]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_xr[11]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~16_combout\);

-- Location: LABCELL_X64_Y9_N42
\conect_2|ShiftRight0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~35_combout\ = ( \conect_2|ShiftRight0~34_combout\ & ( \conect_2|ShiftRight0~18_combout\ & ( ((!\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight0~16_combout\))) # (\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~26_combout\))) # 
-- (\conect_2|cur_iter\(2)) ) ) ) # ( !\conect_2|ShiftRight0~34_combout\ & ( \conect_2|ShiftRight0~18_combout\ & ( (!\conect_2|cur_iter\(3) & (((\conect_2|ShiftRight0~16_combout\)) # (\conect_2|cur_iter\(2)))) # (\conect_2|cur_iter\(3) & 
-- (!\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~26_combout\))) ) ) ) # ( \conect_2|ShiftRight0~34_combout\ & ( !\conect_2|ShiftRight0~18_combout\ & ( (!\conect_2|cur_iter\(3) & (!\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight0~16_combout\)))) # 
-- (\conect_2|cur_iter\(3) & (((\conect_2|ShiftRight0~26_combout\)) # (\conect_2|cur_iter\(2)))) ) ) ) # ( !\conect_2|ShiftRight0~34_combout\ & ( !\conect_2|ShiftRight0~18_combout\ & ( (!\conect_2|cur_iter\(2) & ((!\conect_2|cur_iter\(3) & 
-- ((\conect_2|ShiftRight0~16_combout\))) # (\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(3),
	datab => \conect_2|ALT_INV_cur_iter\(2),
	datac => \conect_2|ALT_INV_ShiftRight0~26_combout\,
	datad => \conect_2|ALT_INV_ShiftRight0~16_combout\,
	datae => \conect_2|ALT_INV_ShiftRight0~34_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~18_combout\,
	combout => \conect_2|ShiftRight0~35_combout\);

-- Location: FF_X63_Y10_N41
\conect_2|xr[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[12]~DUPLICATE_q\);

-- Location: FF_X65_Y10_N37
\conect_2|yr[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[11]~DUPLICATE_q\);

-- Location: FF_X65_Y10_N40
\conect_2|yr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(12));

-- Location: FF_X65_Y10_N32
\conect_2|yr[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[9]~DUPLICATE_q\);

-- Location: FF_X63_Y10_N31
\conect_2|xr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(9));

-- Location: FF_X63_Y10_N34
\conect_2|xr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(10));

-- Location: FF_X65_Y10_N34
\conect_2|yr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(10));

-- Location: FF_X65_Y10_N29
\conect_2|yr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(8));

-- Location: FF_X63_Y10_N53
\conect_2|xr[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[16]~DUPLICATE_q\);

-- Location: FF_X63_Y10_N49
\conect_2|xr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(15));

-- Location: LABCELL_X67_Y10_N42
\conect_2|ShiftRight0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~13_combout\ = ( \conect_2|xr[14]~DUPLICATE_q\ & ( \conect_2|xr\(15) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\) # ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|xr[16]~DUPLICATE_q\))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- (\conect_2|xr\(17)))) ) ) ) # ( !\conect_2|xr[14]~DUPLICATE_q\ & ( \conect_2|xr\(15) & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr[16]~DUPLICATE_q\)))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- ((!\conect_2|cur_iter[1]~DUPLICATE_q\) # ((\conect_2|xr\(17))))) ) ) ) # ( \conect_2|xr[14]~DUPLICATE_q\ & ( !\conect_2|xr\(15) & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter[1]~DUPLICATE_q\) # ((\conect_2|xr[16]~DUPLICATE_q\)))) # 
-- (\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr\(17)))) ) ) ) # ( !\conect_2|xr[14]~DUPLICATE_q\ & ( !\conect_2|xr\(15) & ( (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- ((\conect_2|xr[16]~DUPLICATE_q\))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|xr\(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr\(17),
	datad => \conect_2|ALT_INV_xr[16]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_xr[14]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_xr\(15),
	combout => \conect_2|ShiftRight0~13_combout\);

-- Location: FF_X65_Y10_N23
\conect_2|yr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(6));

-- Location: FF_X63_Y10_N29
\conect_2|xr[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[8]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y12_N6
\conect_2|ShiftRight1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~7_combout\ = ( \conect_2|yr[6]~DUPLICATE_q\ & ( \conect_2|cur_iter\(0) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\) # (\conect_2|yr[8]~DUPLICATE_q\) ) ) ) # ( !\conect_2|yr[6]~DUPLICATE_q\ & ( \conect_2|cur_iter\(0) & ( 
-- (\conect_2|yr[8]~DUPLICATE_q\ & \conect_2|cur_iter[1]~DUPLICATE_q\) ) ) ) # ( \conect_2|yr[6]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(0) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr[5]~DUPLICATE_q\))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & 
-- (\conect_2|yr\(7))) ) ) ) # ( !\conect_2|yr[6]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(0) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr[5]~DUPLICATE_q\))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr\(7),
	datab => \conect_2|ALT_INV_yr[8]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_yr[5]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_yr[6]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter\(0),
	combout => \conect_2|ShiftRight1~7_combout\);

-- Location: LABCELL_X64_Y12_N36
\conect_2|ShiftRight1~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~23_combout\ = ( \conect_2|ShiftRight1~6_combout\ & ( \conect_2|ShiftRight1~22_combout\ & ( ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight1~7_combout\)) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~8_combout\)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\) ) ) ) # ( !\conect_2|ShiftRight1~6_combout\ & ( \conect_2|ShiftRight1~22_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight1~7_combout\)) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~8_combout\))))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|ShiftRight1~6_combout\ & ( 
-- !\conect_2|ShiftRight1~22_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight1~7_combout\)) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~8_combout\))))) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|ShiftRight1~6_combout\ & ( !\conect_2|ShiftRight1~22_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight1~7_combout\)) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~7_combout\,
	datac => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~8_combout\,
	datae => \conect_2|ALT_INV_ShiftRight1~6_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~22_combout\,
	combout => \conect_2|ShiftRight1~23_combout\);

-- Location: FF_X65_Y10_N25
\conect_2|yr[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[7]~DUPLICATE_q\);

-- Location: FF_X65_Y10_N17
\conect_2|yr[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[4]~DUPLICATE_q\);

-- Location: FF_X63_Y10_N22
\conect_2|xr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(6));

-- Location: FF_X63_Y10_N25
\conect_2|xr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(7));

-- Location: FF_X63_Y10_N19
\conect_2|xr[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[5]~DUPLICATE_q\);

-- Location: FF_X63_Y10_N16
\conect_2|xr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(4));

-- Location: LABCELL_X64_Y10_N0
\conect_2|ShiftRight0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~2_combout\ = ( \conect_2|xr[5]~DUPLICATE_q\ & ( \conect_2|xr\(4) & ( (!\conect_2|cur_iter\(1)) # ((!\conect_2|cur_iter\(0) & (\conect_2|xr\(6))) # (\conect_2|cur_iter\(0) & ((\conect_2|xr\(7))))) ) ) ) # ( 
-- !\conect_2|xr[5]~DUPLICATE_q\ & ( \conect_2|xr\(4) & ( (!\conect_2|cur_iter\(1) & (!\conect_2|cur_iter\(0))) # (\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter\(0) & (\conect_2|xr\(6))) # (\conect_2|cur_iter\(0) & ((\conect_2|xr\(7)))))) ) ) ) # ( 
-- \conect_2|xr[5]~DUPLICATE_q\ & ( !\conect_2|xr\(4) & ( (!\conect_2|cur_iter\(1) & (\conect_2|cur_iter\(0))) # (\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter\(0) & (\conect_2|xr\(6))) # (\conect_2|cur_iter\(0) & ((\conect_2|xr\(7)))))) ) ) ) # ( 
-- !\conect_2|xr[5]~DUPLICATE_q\ & ( !\conect_2|xr\(4) & ( (\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter\(0) & (\conect_2|xr\(6))) # (\conect_2|cur_iter\(0) & ((\conect_2|xr\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_cur_iter\(0),
	datac => \conect_2|ALT_INV_xr\(6),
	datad => \conect_2|ALT_INV_xr\(7),
	datae => \conect_2|ALT_INV_xr[5]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_xr\(4),
	combout => \conect_2|ShiftRight0~2_combout\);

-- Location: LABCELL_X64_Y10_N12
\conect_2|ShiftRight0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~21_combout\ = ( \conect_2|cur_iter\(3) & ( \conect_2|ShiftRight0~20_combout\ & ( (\conect_2|cur_iter[2]~DUPLICATE_q\) # (\conect_2|ShiftRight0~3_combout\) ) ) ) # ( !\conect_2|cur_iter\(3) & ( \conect_2|ShiftRight0~20_combout\ & ( 
-- (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~2_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~1_combout\))) ) ) ) # ( \conect_2|cur_iter\(3) & ( !\conect_2|ShiftRight0~20_combout\ & ( 
-- (\conect_2|ShiftRight0~3_combout\ & !\conect_2|cur_iter[2]~DUPLICATE_q\) ) ) ) # ( !\conect_2|cur_iter\(3) & ( !\conect_2|ShiftRight0~20_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~2_combout\)) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight0~2_combout\,
	datab => \conect_2|ALT_INV_ShiftRight0~3_combout\,
	datac => \conect_2|ALT_INV_ShiftRight0~1_combout\,
	datad => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_cur_iter\(3),
	dataf => \conect_2|ALT_INV_ShiftRight0~20_combout\,
	combout => \conect_2|ShiftRight0~21_combout\);

-- Location: FF_X63_Y10_N14
\conect_2|xr[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[3]~DUPLICATE_q\);

-- Location: FF_X63_Y10_N11
\conect_2|xr[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[2]~DUPLICATE_q\);

-- Location: FF_X65_Y10_N10
\conect_2|yr[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[2]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y11_N54
\conect_2|ShiftRight1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~10_combout\ = ( \conect_2|cur_iter[1]~DUPLICATE_q\ & ( \conect_2|yr[3]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(0) & ((\conect_2|yr[4]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (\conect_2|yr[5]~DUPLICATE_q\)) ) ) ) # ( 
-- !\conect_2|cur_iter[1]~DUPLICATE_q\ & ( \conect_2|yr[3]~DUPLICATE_q\ & ( (\conect_2|yr[2]~DUPLICATE_q\) # (\conect_2|cur_iter\(0)) ) ) ) # ( \conect_2|cur_iter[1]~DUPLICATE_q\ & ( !\conect_2|yr[3]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(0) & 
-- ((\conect_2|yr[4]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (\conect_2|yr[5]~DUPLICATE_q\)) ) ) ) # ( !\conect_2|cur_iter[1]~DUPLICATE_q\ & ( !\conect_2|yr[3]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(0) & \conect_2|yr[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000001011010111101110111011101110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_yr[2]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_yr[5]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_yr[4]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr[3]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~10_combout\);

-- Location: LABCELL_X64_Y11_N30
\conect_2|ShiftRight1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~14_combout\ = ( \conect_2|ShiftRight1~12_combout\ & ( \conect_2|ShiftRight1~13_combout\ & ( ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight1~10_combout\)) # (\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight1~11_combout\)))) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\) ) ) ) # ( !\conect_2|ShiftRight1~12_combout\ & ( \conect_2|ShiftRight1~13_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight1~10_combout\)) # (\conect_2|cur_iter\(3) & 
-- ((\conect_2|ShiftRight1~11_combout\))))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|cur_iter\(3))) ) ) ) # ( \conect_2|ShiftRight1~12_combout\ & ( !\conect_2|ShiftRight1~13_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight1~10_combout\)) # (\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight1~11_combout\))))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (!\conect_2|cur_iter\(3))) ) ) ) # ( !\conect_2|ShiftRight1~12_combout\ & ( 
-- !\conect_2|ShiftRight1~13_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight1~10_combout\)) # (\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight1~11_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(3),
	datac => \conect_2|ALT_INV_ShiftRight1~10_combout\,
	datad => \conect_2|ALT_INV_ShiftRight1~11_combout\,
	datae => \conect_2|ALT_INV_ShiftRight1~12_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~13_combout\,
	combout => \conect_2|ShiftRight1~14_combout\);

-- Location: LABCELL_X62_Y10_N42
\conect_2|ShiftRight0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~5_combout\ = ( \conect_2|xr\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr[2]~DUPLICATE_q\)) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr[4]~DUPLICATE_q\))) ) ) ) # ( 
-- !\conect_2|xr\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr[2]~DUPLICATE_q\)) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr[4]~DUPLICATE_q\))) ) ) ) # ( \conect_2|xr\(1) & ( 
-- !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\) # (\conect_2|xr[3]~DUPLICATE_q\) ) ) ) # ( !\conect_2|xr\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( (\conect_2|cur_iter[1]~DUPLICATE_q\ & \conect_2|xr[3]~DUPLICATE_q\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[4]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr[3]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_xr\(1),
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~5_combout\);

-- Location: LABCELL_X62_Y10_N54
\conect_2|ShiftRight0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~9_combout\ = ( \conect_2|ShiftRight0~8_combout\ & ( \conect_2|ShiftRight0~6_combout\ & ( ((!\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight0~5_combout\))) # (\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~7_combout\))) # 
-- (\conect_2|cur_iter\(3)) ) ) ) # ( !\conect_2|ShiftRight0~8_combout\ & ( \conect_2|ShiftRight0~6_combout\ & ( (!\conect_2|cur_iter\(2) & (((\conect_2|ShiftRight0~5_combout\)) # (\conect_2|cur_iter\(3)))) # (\conect_2|cur_iter\(2) & 
-- (!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~7_combout\))) ) ) ) # ( \conect_2|ShiftRight0~8_combout\ & ( !\conect_2|ShiftRight0~6_combout\ & ( (!\conect_2|cur_iter\(2) & (!\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight0~5_combout\)))) # 
-- (\conect_2|cur_iter\(2) & (((\conect_2|ShiftRight0~7_combout\)) # (\conect_2|cur_iter\(3)))) ) ) ) # ( !\conect_2|ShiftRight0~8_combout\ & ( !\conect_2|ShiftRight0~6_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter\(2) & 
-- ((\conect_2|ShiftRight0~5_combout\))) # (\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(2),
	datab => \conect_2|ALT_INV_cur_iter\(3),
	datac => \conect_2|ALT_INV_ShiftRight0~7_combout\,
	datad => \conect_2|ALT_INV_ShiftRight0~5_combout\,
	datae => \conect_2|ALT_INV_ShiftRight0~8_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~6_combout\,
	combout => \conect_2|ShiftRight0~9_combout\);

-- Location: FF_X63_Y10_N7
\conect_2|xr[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[1]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y10_N6
\conect_2|ShiftRight0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~0_combout\ = ( \conect_2|xr\(3) & ( \conect_2|xr[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter\(0)) # ((\conect_2|xr[1]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(1) & (((\conect_2|xr\(2))) # 
-- (\conect_2|cur_iter\(0)))) ) ) ) # ( !\conect_2|xr\(3) & ( \conect_2|xr[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter\(0)) # ((\conect_2|xr[1]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(1) & (!\conect_2|cur_iter\(0) & 
-- ((\conect_2|xr\(2))))) ) ) ) # ( \conect_2|xr\(3) & ( !\conect_2|xr[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (\conect_2|cur_iter\(0) & (\conect_2|xr[1]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (((\conect_2|xr\(2))) # (\conect_2|cur_iter\(0)))) ) 
-- ) ) # ( !\conect_2|xr\(3) & ( !\conect_2|xr[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (\conect_2|cur_iter\(0) & (\conect_2|xr[1]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (!\conect_2|cur_iter\(0) & ((\conect_2|xr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_cur_iter\(0),
	datac => \conect_2|ALT_INV_xr[1]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr\(2),
	datae => \conect_2|ALT_INV_xr\(3),
	dataf => \conect_2|ALT_INV_xr[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~0_combout\);

-- Location: LABCELL_X64_Y10_N54
\conect_2|ShiftRight0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~4_combout\ = ( \conect_2|cur_iter\(3) & ( \conect_2|ShiftRight0~0_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~1_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~3_combout\))) ) 
-- ) ) # ( !\conect_2|cur_iter\(3) & ( \conect_2|ShiftRight0~0_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\) # (\conect_2|ShiftRight0~2_combout\) ) ) ) # ( \conect_2|cur_iter\(3) & ( !\conect_2|ShiftRight0~0_combout\ & ( 
-- (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~1_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~3_combout\))) ) ) ) # ( !\conect_2|cur_iter\(3) & ( !\conect_2|ShiftRight0~0_combout\ & ( 
-- (\conect_2|ShiftRight0~2_combout\ & \conect_2|cur_iter[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight0~2_combout\,
	datab => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight0~1_combout\,
	datad => \conect_2|ALT_INV_ShiftRight0~3_combout\,
	datae => \conect_2|ALT_INV_cur_iter\(3),
	dataf => \conect_2|ALT_INV_ShiftRight0~0_combout\,
	combout => \conect_2|ShiftRight0~4_combout\);

-- Location: MLABCELL_X65_Y10_N0
\conect_2|Add4~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~130_cout\ = CARRY(( \conect_2|zr\(31) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_2|ALT_INV_zr\(31),
	cin => GND,
	cout => \conect_2|Add4~130_cout\);

-- Location: MLABCELL_X65_Y10_N3
\conect_2|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~1_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~4_combout\) ) + ( \conect_2|yr\(0) ) + ( \conect_2|Add4~130_cout\ ))
-- \conect_2|Add4~2\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~4_combout\) ) + ( \conect_2|yr\(0) ) + ( \conect_2|Add4~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_yr\(0),
	datad => \conect_2|ALT_INV_ShiftRight0~4_combout\,
	cin => \conect_2|Add4~130_cout\,
	sumout => \conect_2|Add4~1_sumout\,
	cout => \conect_2|Add4~2\);

-- Location: FF_X65_Y10_N4
\conect_2|yr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(0));

-- Location: MLABCELL_X65_Y10_N6
\conect_2|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~5_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~9_combout\) ) + ( \conect_2|yr[1]~DUPLICATE_q\ ) + ( \conect_2|Add4~2\ ))
-- \conect_2|Add4~6\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~9_combout\) ) + ( \conect_2|yr[1]~DUPLICATE_q\ ) + ( \conect_2|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight0~9_combout\,
	dataf => \conect_2|ALT_INV_yr[1]~DUPLICATE_q\,
	cin => \conect_2|Add4~2\,
	sumout => \conect_2|Add4~5_sumout\,
	cout => \conect_2|Add4~6\);

-- Location: FF_X65_Y10_N8
\conect_2|yr[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[1]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y12_N54
\conect_2|ShiftRight1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~5_combout\ = ( \conect_2|yr\(4) & ( \conect_2|yr[3]~DUPLICATE_q\ & ( ((!\conect_2|cur_iter\(0) & ((\conect_2|yr[1]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (\conect_2|yr[2]~DUPLICATE_q\))) # (\conect_2|cur_iter[1]~DUPLICATE_q\) ) 
-- ) ) # ( !\conect_2|yr\(4) & ( \conect_2|yr[3]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0) & ((\conect_2|yr[1]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (\conect_2|yr[2]~DUPLICATE_q\)))) # 
-- (\conect_2|cur_iter[1]~DUPLICATE_q\ & (!\conect_2|cur_iter\(0))) ) ) ) # ( \conect_2|yr\(4) & ( !\conect_2|yr[3]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0) & ((\conect_2|yr[1]~DUPLICATE_q\))) # 
-- (\conect_2|cur_iter\(0) & (\conect_2|yr[2]~DUPLICATE_q\)))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|cur_iter\(0))) ) ) ) # ( !\conect_2|yr\(4) & ( !\conect_2|yr[3]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & 
-- ((!\conect_2|cur_iter\(0) & ((\conect_2|yr[1]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (\conect_2|yr[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(0),
	datac => \conect_2|ALT_INV_yr[2]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_yr[1]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_yr\(4),
	dataf => \conect_2|ALT_INV_yr[3]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~5_combout\);

-- Location: LABCELL_X64_Y12_N30
\conect_2|ShiftRight1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~9_combout\ = ( \conect_2|ShiftRight1~5_combout\ & ( \conect_2|ShiftRight1~7_combout\ & ( (!\conect_2|cur_iter\(3)) # ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~6_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~8_combout\)))) ) ) ) # ( !\conect_2|ShiftRight1~5_combout\ & ( \conect_2|ShiftRight1~7_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|cur_iter\(3) & (\conect_2|ShiftRight1~6_combout\))) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(3)) # ((\conect_2|ShiftRight1~8_combout\)))) ) ) ) # ( \conect_2|ShiftRight1~5_combout\ & ( !\conect_2|ShiftRight1~7_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((!\conect_2|cur_iter\(3)) # ((\conect_2|ShiftRight1~6_combout\)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight1~8_combout\)))) ) ) ) # ( !\conect_2|ShiftRight1~5_combout\ & ( !\conect_2|ShiftRight1~7_combout\ 
-- & ( (\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~6_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(3),
	datac => \conect_2|ALT_INV_ShiftRight1~6_combout\,
	datad => \conect_2|ALT_INV_ShiftRight1~8_combout\,
	datae => \conect_2|ALT_INV_ShiftRight1~5_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~7_combout\,
	combout => \conect_2|ShiftRight1~9_combout\);

-- Location: LABCELL_X63_Y10_N0
\conect_2|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~130_cout\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	cin => GND,
	cout => \conect_2|Add0~130_cout\);

-- Location: LABCELL_X63_Y10_N3
\conect_2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~1_sumout\ = SUM(( !\conect_2|zr\(31) $ (\conect_2|ShiftRight1~4_combout\) ) + ( \conect_2|xr\(0) ) + ( \conect_2|Add0~130_cout\ ))
-- \conect_2|Add0~2\ = CARRY(( !\conect_2|zr\(31) $ (\conect_2|ShiftRight1~4_combout\) ) + ( \conect_2|xr\(0) ) + ( \conect_2|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr\(0),
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight1~4_combout\,
	cin => \conect_2|Add0~130_cout\,
	sumout => \conect_2|Add0~1_sumout\,
	cout => \conect_2|Add0~2\);

-- Location: LABCELL_X63_Y10_N6
\conect_2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~5_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~9_combout\) ) + ( \conect_2|xr\(1) ) + ( \conect_2|Add0~2\ ))
-- \conect_2|Add0~6\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~9_combout\) ) + ( \conect_2|xr\(1) ) + ( \conect_2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_xr\(1),
	datac => \conect_2|ALT_INV_ShiftRight1~9_combout\,
	cin => \conect_2|Add0~2\,
	sumout => \conect_2|Add0~5_sumout\,
	cout => \conect_2|Add0~6\);

-- Location: FF_X63_Y10_N8
\conect_2|xr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(1));

-- Location: LABCELL_X63_Y10_N9
\conect_2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~9_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~14_combout\) ) + ( \conect_2|xr[2]~DUPLICATE_q\ ) + ( \conect_2|Add0~6\ ))
-- \conect_2|Add0~10\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~14_combout\) ) + ( \conect_2|xr[2]~DUPLICATE_q\ ) + ( \conect_2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[2]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~14_combout\,
	cin => \conect_2|Add0~6\,
	sumout => \conect_2|Add0~9_sumout\,
	cout => \conect_2|Add0~10\);

-- Location: FF_X63_Y10_N10
\conect_2|xr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(2));

-- Location: LABCELL_X67_Y10_N6
\conect_2|ShiftRight0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~10_combout\ = ( \conect_2|xr\(2) & ( \conect_2|xr\(4) & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\) # ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr\(3))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr[5]~DUPLICATE_q\)))) 
-- ) ) ) # ( !\conect_2|xr\(2) & ( \conect_2|xr\(4) & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (((\conect_2|cur_iter[1]~DUPLICATE_q\)))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr\(3))) # 
-- (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr[5]~DUPLICATE_q\))))) ) ) ) # ( \conect_2|xr\(2) & ( !\conect_2|xr\(4) & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (((!\conect_2|cur_iter[1]~DUPLICATE_q\)))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr\(3))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr[5]~DUPLICATE_q\))))) ) ) ) # ( !\conect_2|xr\(2) & ( !\conect_2|xr\(4) & ( (\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr\(3))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_xr\(3),
	datac => \conect_2|ALT_INV_xr[5]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_xr\(2),
	dataf => \conect_2|ALT_INV_xr\(4),
	combout => \conect_2|ShiftRight0~10_combout\);

-- Location: LABCELL_X66_Y10_N48
\conect_2|ShiftRight0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~14_combout\ = ( \conect_2|ShiftRight0~10_combout\ & ( \conect_2|ShiftRight0~11_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\) # ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~12_combout\)) # (\conect_2|cur_iter\(3) & 
-- ((\conect_2|ShiftRight0~13_combout\)))) ) ) ) # ( !\conect_2|ShiftRight0~10_combout\ & ( \conect_2|ShiftRight0~11_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|cur_iter\(3))))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~12_combout\)) # (\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight0~13_combout\))))) ) ) ) # ( \conect_2|ShiftRight0~10_combout\ & ( !\conect_2|ShiftRight0~11_combout\ & ( 
-- (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(3))))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~12_combout\)) # (\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight0~13_combout\))))) ) ) ) # ( 
-- !\conect_2|ShiftRight0~10_combout\ & ( !\conect_2|ShiftRight0~11_combout\ & ( (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~12_combout\)) # (\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight0~13_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight0~12_combout\,
	datac => \conect_2|ALT_INV_cur_iter\(3),
	datad => \conect_2|ALT_INV_ShiftRight0~13_combout\,
	datae => \conect_2|ALT_INV_ShiftRight0~10_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~11_combout\,
	combout => \conect_2|ShiftRight0~14_combout\);

-- Location: MLABCELL_X65_Y10_N9
\conect_2|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~9_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~14_combout\) ) + ( \conect_2|yr\(2) ) + ( \conect_2|Add4~6\ ))
-- \conect_2|Add4~10\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~14_combout\) ) + ( \conect_2|yr\(2) ) + ( \conect_2|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_yr\(2),
	datad => \conect_2|ALT_INV_ShiftRight0~14_combout\,
	cin => \conect_2|Add4~6\,
	sumout => \conect_2|Add4~9_sumout\,
	cout => \conect_2|Add4~10\);

-- Location: FF_X65_Y10_N11
\conect_2|yr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(2));

-- Location: MLABCELL_X65_Y10_N12
\conect_2|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~13_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~19_combout\) ) + ( \conect_2|yr[3]~DUPLICATE_q\ ) + ( \conect_2|Add4~10\ ))
-- \conect_2|Add4~14\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~19_combout\) ) + ( \conect_2|yr[3]~DUPLICATE_q\ ) + ( \conect_2|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_ShiftRight0~19_combout\,
	dataf => \conect_2|ALT_INV_yr[3]~DUPLICATE_q\,
	cin => \conect_2|Add4~10\,
	sumout => \conect_2|Add4~13_sumout\,
	cout => \conect_2|Add4~14\);

-- Location: FF_X65_Y10_N14
\conect_2|yr[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[3]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y8_N36
\conect_2|ShiftRight1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~15_combout\ = ( \conect_2|yr[6]~DUPLICATE_q\ & ( \conect_2|yr\(4) & ( ((!\conect_2|cur_iter\(1) & (\conect_2|yr[3]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1) & ((\conect_2|yr[5]~DUPLICATE_q\)))) # (\conect_2|cur_iter[0]~DUPLICATE_q\) ) 
-- ) ) # ( !\conect_2|yr[6]~DUPLICATE_q\ & ( \conect_2|yr\(4) & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1) & (\conect_2|yr[3]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1) & ((\conect_2|yr[5]~DUPLICATE_q\))))) # 
-- (\conect_2|cur_iter[0]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(1))))) ) ) ) # ( \conect_2|yr[6]~DUPLICATE_q\ & ( !\conect_2|yr\(4) & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1) & (\conect_2|yr[3]~DUPLICATE_q\)) # 
-- (\conect_2|cur_iter\(1) & ((\conect_2|yr[5]~DUPLICATE_q\))))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & (((\conect_2|cur_iter\(1))))) ) ) ) # ( !\conect_2|yr[6]~DUPLICATE_q\ & ( !\conect_2|yr\(4) & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- ((!\conect_2|cur_iter\(1) & (\conect_2|yr[3]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1) & ((\conect_2|yr[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr[3]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_yr[5]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_cur_iter\(1),
	datae => \conect_2|ALT_INV_yr[6]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr\(4),
	combout => \conect_2|ShiftRight1~15_combout\);

-- Location: LABCELL_X64_Y8_N12
\conect_2|ShiftRight1~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~19_combout\ = ( \conect_2|ShiftRight1~15_combout\ & ( \conect_2|ShiftRight1~18_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(2))) # (\conect_2|ShiftRight1~17_combout\))) # 
-- (\conect_2|cur_iter[3]~DUPLICATE_q\ & (((\conect_2|cur_iter\(2)) # (\conect_2|ShiftRight1~16_combout\)))) ) ) ) # ( !\conect_2|ShiftRight1~15_combout\ & ( \conect_2|ShiftRight1~18_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight1~17_combout\ & ((\conect_2|cur_iter\(2))))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (((\conect_2|cur_iter\(2)) # (\conect_2|ShiftRight1~16_combout\)))) ) ) ) # ( \conect_2|ShiftRight1~15_combout\ & ( 
-- !\conect_2|ShiftRight1~18_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(2))) # (\conect_2|ShiftRight1~17_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (((\conect_2|ShiftRight1~16_combout\ & !\conect_2|cur_iter\(2))))) ) 
-- ) ) # ( !\conect_2|ShiftRight1~15_combout\ & ( !\conect_2|ShiftRight1~18_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight1~17_combout\ & ((\conect_2|cur_iter\(2))))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & 
-- (((\conect_2|ShiftRight1~16_combout\ & !\conect_2|cur_iter\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight1~17_combout\,
	datab => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight1~16_combout\,
	datad => \conect_2|ALT_INV_cur_iter\(2),
	datae => \conect_2|ALT_INV_ShiftRight1~15_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~18_combout\,
	combout => \conect_2|ShiftRight1~19_combout\);

-- Location: LABCELL_X63_Y10_N12
\conect_2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~13_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~19_combout\) ) + ( \conect_2|xr[3]~DUPLICATE_q\ ) + ( \conect_2|Add0~10\ ))
-- \conect_2|Add0~14\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~19_combout\) ) + ( \conect_2|xr[3]~DUPLICATE_q\ ) + ( \conect_2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_xr[3]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~19_combout\,
	cin => \conect_2|Add0~10\,
	sumout => \conect_2|Add0~13_sumout\,
	cout => \conect_2|Add0~14\);

-- Location: FF_X63_Y10_N13
\conect_2|xr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(3));

-- Location: LABCELL_X64_Y9_N54
\conect_2|ShiftRight0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~15_combout\ = ( \conect_2|xr[4]~DUPLICATE_q\ & ( \conect_2|xr\(6) & ( ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr\(3))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr[5]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(0)) ) 
-- ) ) # ( !\conect_2|xr[4]~DUPLICATE_q\ & ( \conect_2|xr\(6) & ( (!\conect_2|cur_iter\(0) & ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr\(3))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr[5]~DUPLICATE_q\))))) # (\conect_2|cur_iter\(0) & 
-- (((\conect_2|cur_iter[1]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|xr[4]~DUPLICATE_q\ & ( !\conect_2|xr\(6) & ( (!\conect_2|cur_iter\(0) & ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr\(3))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & 
-- ((\conect_2|xr[5]~DUPLICATE_q\))))) # (\conect_2|cur_iter\(0) & (((!\conect_2|cur_iter[1]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|xr[4]~DUPLICATE_q\ & ( !\conect_2|xr\(6) & ( (!\conect_2|cur_iter\(0) & ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & 
-- (\conect_2|xr\(3))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr\(3),
	datab => \conect_2|ALT_INV_xr[5]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(0),
	datad => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_xr[4]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_xr\(6),
	combout => \conect_2|ShiftRight0~15_combout\);

-- Location: LABCELL_X64_Y9_N6
\conect_2|ShiftRight0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~19_combout\ = ( \conect_2|ShiftRight0~15_combout\ & ( \conect_2|ShiftRight0~18_combout\ & ( (!\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter[3]~DUPLICATE_q\)) # (\conect_2|ShiftRight0~16_combout\))) # (\conect_2|cur_iter\(2) & 
-- (((\conect_2|cur_iter[3]~DUPLICATE_q\) # (\conect_2|ShiftRight0~17_combout\)))) ) ) ) # ( !\conect_2|ShiftRight0~15_combout\ & ( \conect_2|ShiftRight0~18_combout\ & ( (!\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~16_combout\ & 
-- ((\conect_2|cur_iter[3]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(2) & (((\conect_2|cur_iter[3]~DUPLICATE_q\) # (\conect_2|ShiftRight0~17_combout\)))) ) ) ) # ( \conect_2|ShiftRight0~15_combout\ & ( !\conect_2|ShiftRight0~18_combout\ & ( 
-- (!\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter[3]~DUPLICATE_q\)) # (\conect_2|ShiftRight0~16_combout\))) # (\conect_2|cur_iter\(2) & (((\conect_2|ShiftRight0~17_combout\ & !\conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\conect_2|ShiftRight0~15_combout\ & ( !\conect_2|ShiftRight0~18_combout\ & ( (!\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~16_combout\ & ((\conect_2|cur_iter[3]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(2) & (((\conect_2|ShiftRight0~17_combout\ & 
-- !\conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight0~16_combout\,
	datab => \conect_2|ALT_INV_cur_iter\(2),
	datac => \conect_2|ALT_INV_ShiftRight0~17_combout\,
	datad => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_ShiftRight0~15_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~18_combout\,
	combout => \conect_2|ShiftRight0~19_combout\);

-- Location: MLABCELL_X65_Y10_N15
\conect_2|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~17_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~21_combout\) ) + ( \conect_2|yr[4]~DUPLICATE_q\ ) + ( \conect_2|Add4~14\ ))
-- \conect_2|Add4~18\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~21_combout\) ) + ( \conect_2|yr[4]~DUPLICATE_q\ ) + ( \conect_2|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_yr[4]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight0~21_combout\,
	cin => \conect_2|Add4~14\,
	sumout => \conect_2|Add4~17_sumout\,
	cout => \conect_2|Add4~18\);

-- Location: FF_X65_Y10_N16
\conect_2|yr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(4));

-- Location: FF_X65_Y10_N19
\conect_2|yr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(5));

-- Location: LABCELL_X66_Y10_N24
\conect_2|ShiftRight1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~2_combout\ = ( \conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr[7]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr\(5) ) ) ) # ( 
-- \conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr[6]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr[7]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_yr\(4),
	datac => \conect_2|ALT_INV_yr[6]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_yr\(5),
	datae => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~2_combout\);

-- Location: LABCELL_X66_Y10_N6
\conect_2|ShiftRight1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~21_combout\ = ( \conect_2|ShiftRight1~3_combout\ & ( \conect_2|ShiftRight1~20_combout\ & ( ((!\conect_2|cur_iter\(2) & (\conect_2|ShiftRight1~2_combout\)) # (\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight1~1_combout\)))) # 
-- (\conect_2|cur_iter\(3)) ) ) ) # ( !\conect_2|ShiftRight1~3_combout\ & ( \conect_2|ShiftRight1~20_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter\(2) & (\conect_2|ShiftRight1~2_combout\)) # (\conect_2|cur_iter\(2) & 
-- ((\conect_2|ShiftRight1~1_combout\))))) # (\conect_2|cur_iter\(3) & (\conect_2|cur_iter\(2))) ) ) ) # ( \conect_2|ShiftRight1~3_combout\ & ( !\conect_2|ShiftRight1~20_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter\(2) & 
-- (\conect_2|ShiftRight1~2_combout\)) # (\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight1~1_combout\))))) # (\conect_2|cur_iter\(3) & (!\conect_2|cur_iter\(2))) ) ) ) # ( !\conect_2|ShiftRight1~3_combout\ & ( !\conect_2|ShiftRight1~20_combout\ & ( 
-- (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter\(2) & (\conect_2|ShiftRight1~2_combout\)) # (\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight1~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(3),
	datab => \conect_2|ALT_INV_cur_iter\(2),
	datac => \conect_2|ALT_INV_ShiftRight1~2_combout\,
	datad => \conect_2|ALT_INV_ShiftRight1~1_combout\,
	datae => \conect_2|ALT_INV_ShiftRight1~3_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~20_combout\,
	combout => \conect_2|ShiftRight1~21_combout\);

-- Location: LABCELL_X63_Y10_N15
\conect_2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~17_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~21_combout\) ) + ( \conect_2|xr[4]~DUPLICATE_q\ ) + ( \conect_2|Add0~14\ ))
-- \conect_2|Add0~18\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~21_combout\) ) + ( \conect_2|xr[4]~DUPLICATE_q\ ) + ( \conect_2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[4]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~21_combout\,
	cin => \conect_2|Add0~14\,
	sumout => \conect_2|Add0~17_sumout\,
	cout => \conect_2|Add0~18\);

-- Location: FF_X63_Y10_N17
\conect_2|xr[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[4]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y10_N18
\conect_2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~21_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~23_combout\) ) + ( \conect_2|xr\(5) ) + ( \conect_2|Add0~18\ ))
-- \conect_2|Add0~22\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~23_combout\) ) + ( \conect_2|xr\(5) ) + ( \conect_2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight1~23_combout\,
	dataf => \conect_2|ALT_INV_xr\(5),
	cin => \conect_2|Add0~18\,
	sumout => \conect_2|Add0~21_sumout\,
	cout => \conect_2|Add0~22\);

-- Location: FF_X63_Y10_N20
\conect_2|xr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(5));

-- Location: LABCELL_X62_Y10_N36
\conect_2|ShiftRight0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~7_combout\ = ( \conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[8]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[6]~DUPLICATE_q\ ) ) ) # ( 
-- \conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[7]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[8]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_xr\(5),
	datac => \conect_2|ALT_INV_xr[6]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr[7]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~7_combout\);

-- Location: LABCELL_X62_Y10_N18
\conect_2|ShiftRight0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~23_combout\ = ( \conect_2|ShiftRight0~8_combout\ & ( \conect_2|ShiftRight0~22_combout\ & ( ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~7_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight0~6_combout\))) # (\conect_2|cur_iter\(3)) ) ) ) # ( !\conect_2|ShiftRight0~8_combout\ & ( \conect_2|ShiftRight0~22_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~7_combout\))) 
-- # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~6_combout\)))) # (\conect_2|cur_iter\(3) & (((\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|ShiftRight0~8_combout\ & ( !\conect_2|ShiftRight0~22_combout\ & ( 
-- (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~7_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~6_combout\)))) # (\conect_2|cur_iter\(3) & (((!\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) 
-- ) ) # ( !\conect_2|ShiftRight0~8_combout\ & ( !\conect_2|ShiftRight0~22_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~7_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight0~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight0~6_combout\,
	datab => \conect_2|ALT_INV_cur_iter\(3),
	datac => \conect_2|ALT_INV_ShiftRight0~7_combout\,
	datad => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_ShiftRight0~8_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~22_combout\,
	combout => \conect_2|ShiftRight0~23_combout\);

-- Location: MLABCELL_X65_Y10_N18
\conect_2|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~21_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~23_combout\) ) + ( \conect_2|yr[5]~DUPLICATE_q\ ) + ( \conect_2|Add4~18\ ))
-- \conect_2|Add4~22\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~23_combout\) ) + ( \conect_2|yr[5]~DUPLICATE_q\ ) + ( \conect_2|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_yr[5]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight0~23_combout\,
	cin => \conect_2|Add4~18\,
	sumout => \conect_2|Add4~21_sumout\,
	cout => \conect_2|Add4~22\);

-- Location: FF_X65_Y10_N20
\conect_2|yr[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[5]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y10_N21
\conect_2|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~25_sumout\ = SUM(( \conect_2|yr\(6) ) + ( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~25_combout\) ) + ( \conect_2|Add4~22\ ))
-- \conect_2|Add4~26\ = CARRY(( \conect_2|yr\(6) ) + ( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~25_combout\) ) + ( \conect_2|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_ShiftRight0~25_combout\,
	datad => \conect_2|ALT_INV_yr\(6),
	cin => \conect_2|Add4~22\,
	sumout => \conect_2|Add4~25_sumout\,
	cout => \conect_2|Add4~26\);

-- Location: FF_X65_Y10_N22
\conect_2|yr[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[6]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y11_N0
\conect_2|ShiftRight1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~12_combout\ = ( \conect_2|yr\(7) & ( \conect_2|yr\(9) & ( ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr[6]~DUPLICATE_q\)) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr[8]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(0)) ) 
-- ) ) # ( !\conect_2|yr\(7) & ( \conect_2|yr\(9) & ( (!\conect_2|cur_iter\(0) & ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr[6]~DUPLICATE_q\)) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr[8]~DUPLICATE_q\))))) # (\conect_2|cur_iter\(0) & 
-- (\conect_2|cur_iter[1]~DUPLICATE_q\)) ) ) ) # ( \conect_2|yr\(7) & ( !\conect_2|yr\(9) & ( (!\conect_2|cur_iter\(0) & ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr[6]~DUPLICATE_q\)) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & 
-- ((\conect_2|yr[8]~DUPLICATE_q\))))) # (\conect_2|cur_iter\(0) & (!\conect_2|cur_iter[1]~DUPLICATE_q\)) ) ) ) # ( !\conect_2|yr\(7) & ( !\conect_2|yr\(9) & ( (!\conect_2|cur_iter\(0) & ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr[6]~DUPLICATE_q\)) 
-- # (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr[8]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_yr[6]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_yr[8]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_yr\(7),
	dataf => \conect_2|ALT_INV_yr\(9),
	combout => \conect_2|ShiftRight1~12_combout\);

-- Location: LABCELL_X64_Y11_N42
\conect_2|ShiftRight1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~25_combout\ = ( \conect_2|ShiftRight1~12_combout\ & ( \conect_2|ShiftRight1~24_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(3)) # ((\conect_2|ShiftRight1~13_combout\)))) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|ShiftRight1~11_combout\)) # (\conect_2|cur_iter\(3)))) ) ) ) # ( !\conect_2|ShiftRight1~12_combout\ & ( \conect_2|ShiftRight1~24_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|cur_iter\(3) 
-- & (\conect_2|ShiftRight1~13_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|ShiftRight1~11_combout\)) # (\conect_2|cur_iter\(3)))) ) ) ) # ( \conect_2|ShiftRight1~12_combout\ & ( !\conect_2|ShiftRight1~24_combout\ & ( 
-- (!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(3)) # ((\conect_2|ShiftRight1~13_combout\)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (!\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight1~11_combout\)))) ) ) ) # ( 
-- !\conect_2|ShiftRight1~12_combout\ & ( !\conect_2|ShiftRight1~24_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|cur_iter\(3) & (\conect_2|ShiftRight1~13_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (!\conect_2|cur_iter\(3) & 
-- ((\conect_2|ShiftRight1~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(3),
	datac => \conect_2|ALT_INV_ShiftRight1~13_combout\,
	datad => \conect_2|ALT_INV_ShiftRight1~11_combout\,
	datae => \conect_2|ALT_INV_ShiftRight1~12_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~24_combout\,
	combout => \conect_2|ShiftRight1~25_combout\);

-- Location: LABCELL_X63_Y10_N21
\conect_2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~25_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~25_combout\) ) + ( \conect_2|xr[6]~DUPLICATE_q\ ) + ( \conect_2|Add0~22\ ))
-- \conect_2|Add0~26\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~25_combout\) ) + ( \conect_2|xr[6]~DUPLICATE_q\ ) + ( \conect_2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[6]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~25_combout\,
	cin => \conect_2|Add0~22\,
	sumout => \conect_2|Add0~25_sumout\,
	cout => \conect_2|Add0~26\);

-- Location: FF_X63_Y10_N23
\conect_2|xr[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[6]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y10_N48
\conect_2|ShiftRight0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~12_combout\ = ( \conect_2|xr\(9) & ( \conect_2|xr[8]~DUPLICATE_q\ & ( ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|xr[6]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|xr\(7))))) # 
-- (\conect_2|cur_iter[1]~DUPLICATE_q\) ) ) ) # ( !\conect_2|xr\(9) & ( \conect_2|xr[8]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (((\conect_2|xr[6]~DUPLICATE_q\)) # (\conect_2|cur_iter[1]~DUPLICATE_q\))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- (!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr\(7))))) ) ) ) # ( \conect_2|xr\(9) & ( !\conect_2|xr[8]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr[6]~DUPLICATE_q\))) # 
-- (\conect_2|cur_iter[0]~DUPLICATE_q\ & (((\conect_2|xr\(7))) # (\conect_2|cur_iter[1]~DUPLICATE_q\))) ) ) ) # ( !\conect_2|xr\(9) & ( !\conect_2|xr[8]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- (\conect_2|xr[6]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|xr\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[6]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr\(7),
	datae => \conect_2|ALT_INV_xr\(9),
	dataf => \conect_2|ALT_INV_xr[8]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~12_combout\);

-- Location: LABCELL_X66_Y10_N36
\conect_2|ShiftRight0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~25_combout\ = ( \conect_2|ShiftRight0~12_combout\ & ( \conect_2|ShiftRight0~24_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(3))) # (\conect_2|ShiftRight0~13_combout\))) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|ShiftRight0~11_combout\) # (\conect_2|cur_iter\(3))))) ) ) ) # ( !\conect_2|ShiftRight0~12_combout\ & ( \conect_2|ShiftRight0~24_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight0~13_combout\ & (\conect_2|cur_iter\(3)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|ShiftRight0~11_combout\) # (\conect_2|cur_iter\(3))))) ) ) ) # ( \conect_2|ShiftRight0~12_combout\ & ( !\conect_2|ShiftRight0~24_combout\ 
-- & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(3))) # (\conect_2|ShiftRight0~13_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(3) & \conect_2|ShiftRight0~11_combout\)))) ) ) ) # ( 
-- !\conect_2|ShiftRight0~12_combout\ & ( !\conect_2|ShiftRight0~24_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~13_combout\ & (\conect_2|cur_iter\(3)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(3) & 
-- \conect_2|ShiftRight0~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight0~13_combout\,
	datac => \conect_2|ALT_INV_cur_iter\(3),
	datad => \conect_2|ALT_INV_ShiftRight0~11_combout\,
	datae => \conect_2|ALT_INV_ShiftRight0~12_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~24_combout\,
	combout => \conect_2|ShiftRight0~25_combout\);

-- Location: MLABCELL_X65_Y10_N24
\conect_2|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~29_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~27_combout\) ) + ( \conect_2|yr\(7) ) + ( \conect_2|Add4~26\ ))
-- \conect_2|Add4~30\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~27_combout\) ) + ( \conect_2|yr\(7) ) + ( \conect_2|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight0~27_combout\,
	dataf => \conect_2|ALT_INV_yr\(7),
	cin => \conect_2|Add4~26\,
	sumout => \conect_2|Add4~29_sumout\,
	cout => \conect_2|Add4~30\);

-- Location: FF_X65_Y10_N26
\conect_2|yr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(7));

-- Location: LABCELL_X64_Y8_N48
\conect_2|ShiftRight1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~17_combout\ = ( \conect_2|yr\(7) & ( \conect_2|yr\(8) & ( (!\conect_2|cur_iter\(1)) # ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|yr[9]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|yr\(10))))) ) ) ) # ( 
-- !\conect_2|yr\(7) & ( \conect_2|yr\(8) & ( (!\conect_2|cur_iter\(1) & (((\conect_2|cur_iter[0]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|yr[9]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- ((\conect_2|yr\(10)))))) ) ) ) # ( \conect_2|yr\(7) & ( !\conect_2|yr\(8) & ( (!\conect_2|cur_iter\(1) & (((!\conect_2|cur_iter[0]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|yr[9]~DUPLICATE_q\)) # 
-- (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|yr\(10)))))) ) ) ) # ( !\conect_2|yr\(7) & ( !\conect_2|yr\(8) & ( (\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|yr[9]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- ((\conect_2|yr\(10)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr[9]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(1),
	datac => \conect_2|ALT_INV_yr\(10),
	datad => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_yr\(7),
	dataf => \conect_2|ALT_INV_yr\(8),
	combout => \conect_2|ShiftRight1~17_combout\);

-- Location: LABCELL_X64_Y8_N6
\conect_2|ShiftRight1~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~27_combout\ = ( \conect_2|ShiftRight1~17_combout\ & ( \conect_2|ShiftRight1~26_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter[3]~DUPLICATE_q\) # (\conect_2|ShiftRight1~18_combout\)))) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|cur_iter[3]~DUPLICATE_q\)) # (\conect_2|ShiftRight1~16_combout\))) ) ) ) # ( !\conect_2|ShiftRight1~17_combout\ & ( \conect_2|ShiftRight1~26_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- (((\conect_2|ShiftRight1~18_combout\ & \conect_2|cur_iter[3]~DUPLICATE_q\)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|cur_iter[3]~DUPLICATE_q\)) # (\conect_2|ShiftRight1~16_combout\))) ) ) ) # ( \conect_2|ShiftRight1~17_combout\ & ( 
-- !\conect_2|ShiftRight1~26_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter[3]~DUPLICATE_q\) # (\conect_2|ShiftRight1~18_combout\)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~16_combout\ & 
-- ((!\conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|ShiftRight1~17_combout\ & ( !\conect_2|ShiftRight1~26_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|ShiftRight1~18_combout\ & \conect_2|cur_iter[3]~DUPLICATE_q\)))) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~16_combout\ & ((!\conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight1~16_combout\,
	datab => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight1~18_combout\,
	datad => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_ShiftRight1~17_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~26_combout\,
	combout => \conect_2|ShiftRight1~27_combout\);

-- Location: LABCELL_X63_Y10_N24
\conect_2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~29_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~27_combout\) ) + ( \conect_2|xr[7]~DUPLICATE_q\ ) + ( \conect_2|Add0~26\ ))
-- \conect_2|Add0~30\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~27_combout\) ) + ( \conect_2|xr[7]~DUPLICATE_q\ ) + ( \conect_2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[7]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~27_combout\,
	cin => \conect_2|Add0~26\,
	sumout => \conect_2|Add0~29_sumout\,
	cout => \conect_2|Add0~30\);

-- Location: FF_X63_Y10_N26
\conect_2|xr[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[7]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y9_N24
\conect_2|ShiftRight0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~17_combout\ = ( \conect_2|xr[7]~DUPLICATE_q\ & ( \conect_2|xr[8]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1)) # ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|xr[9]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- ((\conect_2|xr\(10))))) ) ) ) # ( !\conect_2|xr[7]~DUPLICATE_q\ & ( \conect_2|xr[8]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (\conect_2|cur_iter[0]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- (\conect_2|xr[9]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|xr\(10)))))) ) ) ) # ( \conect_2|xr[7]~DUPLICATE_q\ & ( !\conect_2|xr[8]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (!\conect_2|cur_iter[0]~DUPLICATE_q\)) # 
-- (\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|xr[9]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|xr\(10)))))) ) ) ) # ( !\conect_2|xr[7]~DUPLICATE_q\ & ( !\conect_2|xr[8]~DUPLICATE_q\ & ( 
-- (\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|xr[9]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|xr\(10)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[9]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr\(10),
	datae => \conect_2|ALT_INV_xr[7]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_xr[8]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~17_combout\);

-- Location: LABCELL_X64_Y9_N30
\conect_2|ShiftRight0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~27_combout\ = ( \conect_2|ShiftRight0~26_combout\ & ( \conect_2|ShiftRight0~18_combout\ & ( ((!\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight0~17_combout\))) # (\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~16_combout\))) # 
-- (\conect_2|cur_iter[3]~DUPLICATE_q\) ) ) ) # ( !\conect_2|ShiftRight0~26_combout\ & ( \conect_2|ShiftRight0~18_combout\ & ( (!\conect_2|cur_iter\(2) & (((\conect_2|ShiftRight0~17_combout\)) # (\conect_2|cur_iter[3]~DUPLICATE_q\))) # 
-- (\conect_2|cur_iter\(2) & (!\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight0~16_combout\))) ) ) ) # ( \conect_2|ShiftRight0~26_combout\ & ( !\conect_2|ShiftRight0~18_combout\ & ( (!\conect_2|cur_iter\(2) & (!\conect_2|cur_iter[3]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight0~17_combout\)))) # (\conect_2|cur_iter\(2) & (((\conect_2|ShiftRight0~16_combout\)) # (\conect_2|cur_iter[3]~DUPLICATE_q\))) ) ) ) # ( !\conect_2|ShiftRight0~26_combout\ & ( !\conect_2|ShiftRight0~18_combout\ & ( 
-- (!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight0~17_combout\))) # (\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(2),
	datab => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight0~16_combout\,
	datad => \conect_2|ALT_INV_ShiftRight0~17_combout\,
	datae => \conect_2|ALT_INV_ShiftRight0~26_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~18_combout\,
	combout => \conect_2|ShiftRight0~27_combout\);

-- Location: MLABCELL_X65_Y10_N27
\conect_2|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~33_sumout\ = SUM(( \conect_2|yr\(8) ) + ( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~29_combout\) ) + ( \conect_2|Add4~30\ ))
-- \conect_2|Add4~34\ = CARRY(( \conect_2|yr\(8) ) + ( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~29_combout\) ) + ( \conect_2|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_ShiftRight0~29_combout\,
	datad => \conect_2|ALT_INV_yr\(8),
	cin => \conect_2|Add4~30\,
	sumout => \conect_2|Add4~33_sumout\,
	cout => \conect_2|Add4~34\);

-- Location: FF_X65_Y10_N28
\conect_2|yr[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[8]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y10_N18
\conect_2|ShiftRight1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~1_combout\ = ( \conect_2|yr[8]~DUPLICATE_q\ & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & ((\conect_2|yr\(9)))) # (\conect_2|cur_iter\(1) & (\conect_2|yr[11]~DUPLICATE_q\)) ) ) ) # ( 
-- !\conect_2|yr[8]~DUPLICATE_q\ & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & ((\conect_2|yr\(9)))) # (\conect_2|cur_iter\(1) & (\conect_2|yr[11]~DUPLICATE_q\)) ) ) ) # ( \conect_2|yr[8]~DUPLICATE_q\ & ( 
-- !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1)) # (\conect_2|yr\(10)) ) ) ) # ( !\conect_2|yr[8]~DUPLICATE_q\ & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( (\conect_2|yr\(10) & \conect_2|cur_iter\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr[11]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_yr\(10),
	datac => \conect_2|ALT_INV_yr\(9),
	datad => \conect_2|ALT_INV_cur_iter\(1),
	datae => \conect_2|ALT_INV_yr[8]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~1_combout\);

-- Location: LABCELL_X64_Y10_N27
\conect_2|ShiftRight1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~29_combout\ = ( \conect_2|ShiftRight1~20_combout\ & ( \conect_2|ShiftRight1~28_combout\ & ( ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~1_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~3_combout\)))) # (\conect_2|cur_iter\(3)) ) ) ) # ( !\conect_2|ShiftRight1~20_combout\ & ( \conect_2|ShiftRight1~28_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~1_combout\)) 
-- # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~3_combout\))))) # (\conect_2|cur_iter\(3) & (\conect_2|cur_iter[2]~DUPLICATE_q\)) ) ) ) # ( \conect_2|ShiftRight1~20_combout\ & ( !\conect_2|ShiftRight1~28_combout\ & ( 
-- (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~1_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~3_combout\))))) # (\conect_2|cur_iter\(3) & (!\conect_2|cur_iter[2]~DUPLICATE_q\)) ) ) ) 
-- # ( !\conect_2|ShiftRight1~20_combout\ & ( !\conect_2|ShiftRight1~28_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~1_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(3),
	datab => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight1~1_combout\,
	datad => \conect_2|ALT_INV_ShiftRight1~3_combout\,
	datae => \conect_2|ALT_INV_ShiftRight1~20_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~28_combout\,
	combout => \conect_2|ShiftRight1~29_combout\);

-- Location: LABCELL_X63_Y10_N27
\conect_2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~33_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~29_combout\) ) + ( \conect_2|xr\(8) ) + ( \conect_2|Add0~30\ ))
-- \conect_2|Add0~34\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~29_combout\) ) + ( \conect_2|xr\(8) ) + ( \conect_2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr\(8),
	datad => \conect_2|ALT_INV_ShiftRight1~29_combout\,
	cin => \conect_2|Add0~30\,
	sumout => \conect_2|Add0~33_sumout\,
	cout => \conect_2|Add0~34\);

-- Location: FF_X63_Y10_N28
\conect_2|xr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(8));

-- Location: LABCELL_X64_Y10_N48
\conect_2|ShiftRight0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~1_combout\ = ( \conect_2|xr\(8) & ( \conect_2|xr[11]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter\(0)) # ((\conect_2|xr\(9))))) # (\conect_2|cur_iter\(1) & (((\conect_2|xr\(10))) # (\conect_2|cur_iter\(0)))) ) ) 
-- ) # ( !\conect_2|xr\(8) & ( \conect_2|xr[11]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (\conect_2|cur_iter\(0) & (\conect_2|xr\(9)))) # (\conect_2|cur_iter\(1) & (((\conect_2|xr\(10))) # (\conect_2|cur_iter\(0)))) ) ) ) # ( \conect_2|xr\(8) & ( 
-- !\conect_2|xr[11]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter\(0)) # ((\conect_2|xr\(9))))) # (\conect_2|cur_iter\(1) & (!\conect_2|cur_iter\(0) & ((\conect_2|xr\(10))))) ) ) ) # ( !\conect_2|xr\(8) & ( !\conect_2|xr[11]~DUPLICATE_q\ 
-- & ( (!\conect_2|cur_iter\(1) & (\conect_2|cur_iter\(0) & (\conect_2|xr\(9)))) # (\conect_2|cur_iter\(1) & (!\conect_2|cur_iter\(0) & ((\conect_2|xr\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_cur_iter\(0),
	datac => \conect_2|ALT_INV_xr\(9),
	datad => \conect_2|ALT_INV_xr\(10),
	datae => \conect_2|ALT_INV_xr\(8),
	dataf => \conect_2|ALT_INV_xr[11]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~1_combout\);

-- Location: LABCELL_X64_Y10_N18
\conect_2|ShiftRight0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~29_combout\ = ( \conect_2|ShiftRight0~20_combout\ & ( \conect_2|ShiftRight0~28_combout\ & ( ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~1_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight0~3_combout\)))) # (\conect_2|cur_iter\(3)) ) ) ) # ( !\conect_2|ShiftRight0~20_combout\ & ( \conect_2|ShiftRight0~28_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~1_combout\)) 
-- # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~3_combout\))))) # (\conect_2|cur_iter\(3) & (((\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|ShiftRight0~20_combout\ & ( !\conect_2|ShiftRight0~28_combout\ & ( 
-- (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~1_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~3_combout\))))) # (\conect_2|cur_iter\(3) & (((!\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) 
-- ) ) # ( !\conect_2|ShiftRight0~20_combout\ & ( !\conect_2|ShiftRight0~28_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~1_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight0~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight0~1_combout\,
	datab => \conect_2|ALT_INV_ShiftRight0~3_combout\,
	datac => \conect_2|ALT_INV_cur_iter\(3),
	datad => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_ShiftRight0~20_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~28_combout\,
	combout => \conect_2|ShiftRight0~29_combout\);

-- Location: MLABCELL_X65_Y10_N30
\conect_2|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~37_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~31_combout\) ) + ( \conect_2|yr[9]~DUPLICATE_q\ ) + ( \conect_2|Add4~34\ ))
-- \conect_2|Add4~38\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~31_combout\) ) + ( \conect_2|yr[9]~DUPLICATE_q\ ) + ( \conect_2|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight0~31_combout\,
	dataf => \conect_2|ALT_INV_yr[9]~DUPLICATE_q\,
	cin => \conect_2|Add4~34\,
	sumout => \conect_2|Add4~37_sumout\,
	cout => \conect_2|Add4~38\);

-- Location: FF_X65_Y10_N31
\conect_2|yr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(9));

-- Location: LABCELL_X64_Y12_N0
\conect_2|ShiftRight1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~6_combout\ = ( \conect_2|yr\(12) & ( \conect_2|yr\(9) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(0))) # (\conect_2|yr[10]~DUPLICATE_q\))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (((\conect_2|cur_iter\(0)) # 
-- (\conect_2|yr[11]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|yr\(12) & ( \conect_2|yr\(9) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(0))) # (\conect_2|yr[10]~DUPLICATE_q\))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & 
-- (((\conect_2|yr[11]~DUPLICATE_q\ & !\conect_2|cur_iter\(0))))) ) ) ) # ( \conect_2|yr\(12) & ( !\conect_2|yr\(9) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr[10]~DUPLICATE_q\ & ((\conect_2|cur_iter\(0))))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ 
-- & (((\conect_2|cur_iter\(0)) # (\conect_2|yr[11]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|yr\(12) & ( !\conect_2|yr\(9) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr[10]~DUPLICATE_q\ & ((\conect_2|cur_iter\(0))))) # 
-- (\conect_2|cur_iter[1]~DUPLICATE_q\ & (((\conect_2|yr[11]~DUPLICATE_q\ & !\conect_2|cur_iter\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_yr[10]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_yr[11]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_cur_iter\(0),
	datae => \conect_2|ALT_INV_yr\(12),
	dataf => \conect_2|ALT_INV_yr\(9),
	combout => \conect_2|ShiftRight1~6_combout\);

-- Location: LABCELL_X64_Y12_N48
\conect_2|ShiftRight1~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~31_combout\ = ( \conect_2|ShiftRight1~6_combout\ & ( \conect_2|ShiftRight1~30_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & (((!\conect_2|cur_iter[2]~DUPLICATE_q\) # (\conect_2|ShiftRight1~8_combout\)))) # 
-- (\conect_2|cur_iter[3]~DUPLICATE_q\ & (((\conect_2|cur_iter[2]~DUPLICATE_q\)) # (\conect_2|ShiftRight1~22_combout\))) ) ) ) # ( !\conect_2|ShiftRight1~6_combout\ & ( \conect_2|ShiftRight1~30_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & 
-- (((\conect_2|cur_iter[2]~DUPLICATE_q\ & \conect_2|ShiftRight1~8_combout\)))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (((\conect_2|cur_iter[2]~DUPLICATE_q\)) # (\conect_2|ShiftRight1~22_combout\))) ) ) ) # ( \conect_2|ShiftRight1~6_combout\ & ( 
-- !\conect_2|ShiftRight1~30_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & (((!\conect_2|cur_iter[2]~DUPLICATE_q\) # (\conect_2|ShiftRight1~8_combout\)))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight1~22_combout\ & 
-- (!\conect_2|cur_iter[2]~DUPLICATE_q\))) ) ) ) # ( !\conect_2|ShiftRight1~6_combout\ & ( !\conect_2|ShiftRight1~30_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & (((\conect_2|cur_iter[2]~DUPLICATE_q\ & \conect_2|ShiftRight1~8_combout\)))) # 
-- (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight1~22_combout\ & (!\conect_2|cur_iter[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~22_combout\,
	datac => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~8_combout\,
	datae => \conect_2|ALT_INV_ShiftRight1~6_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~30_combout\,
	combout => \conect_2|ShiftRight1~31_combout\);

-- Location: LABCELL_X63_Y10_N30
\conect_2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~37_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~31_combout\) ) + ( \conect_2|xr[9]~DUPLICATE_q\ ) + ( \conect_2|Add0~34\ ))
-- \conect_2|Add0~38\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~31_combout\) ) + ( \conect_2|xr[9]~DUPLICATE_q\ ) + ( \conect_2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight1~31_combout\,
	dataf => \conect_2|ALT_INV_xr[9]~DUPLICATE_q\,
	cin => \conect_2|Add0~34\,
	sumout => \conect_2|Add0~37_sumout\,
	cout => \conect_2|Add0~38\);

-- Location: FF_X63_Y10_N32
\conect_2|xr[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[9]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y10_N48
\conect_2|ShiftRight0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~6_combout\ = ( \conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[12]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[10]~DUPLICATE_q\ ) ) ) # ( 
-- \conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr\(11) ) ) ) # ( !\conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[9]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[12]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_xr[10]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[9]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr\(11),
	datae => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~6_combout\);

-- Location: LABCELL_X62_Y10_N12
\conect_2|ShiftRight0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~31_combout\ = ( \conect_2|ShiftRight0~8_combout\ & ( \conect_2|ShiftRight0~30_combout\ & ( ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~6_combout\)) # (\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight0~22_combout\)))) # 
-- (\conect_2|cur_iter\(2)) ) ) ) # ( !\conect_2|ShiftRight0~8_combout\ & ( \conect_2|ShiftRight0~30_combout\ & ( (!\conect_2|cur_iter\(2) & ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~6_combout\)) # (\conect_2|cur_iter\(3) & 
-- ((\conect_2|ShiftRight0~22_combout\))))) # (\conect_2|cur_iter\(2) & (\conect_2|cur_iter\(3))) ) ) ) # ( \conect_2|ShiftRight0~8_combout\ & ( !\conect_2|ShiftRight0~30_combout\ & ( (!\conect_2|cur_iter\(2) & ((!\conect_2|cur_iter\(3) & 
-- (\conect_2|ShiftRight0~6_combout\)) # (\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight0~22_combout\))))) # (\conect_2|cur_iter\(2) & (!\conect_2|cur_iter\(3))) ) ) ) # ( !\conect_2|ShiftRight0~8_combout\ & ( !\conect_2|ShiftRight0~30_combout\ & ( 
-- (!\conect_2|cur_iter\(2) & ((!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~6_combout\)) # (\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight0~22_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(2),
	datab => \conect_2|ALT_INV_cur_iter\(3),
	datac => \conect_2|ALT_INV_ShiftRight0~6_combout\,
	datad => \conect_2|ALT_INV_ShiftRight0~22_combout\,
	datae => \conect_2|ALT_INV_ShiftRight0~8_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~30_combout\,
	combout => \conect_2|ShiftRight0~31_combout\);

-- Location: MLABCELL_X65_Y10_N33
\conect_2|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~41_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~33_combout\) ) + ( \conect_2|yr[10]~DUPLICATE_q\ ) + ( \conect_2|Add4~38\ ))
-- \conect_2|Add4~42\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~33_combout\) ) + ( \conect_2|yr[10]~DUPLICATE_q\ ) + ( \conect_2|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight0~33_combout\,
	dataf => \conect_2|ALT_INV_yr[10]~DUPLICATE_q\,
	cin => \conect_2|Add4~38\,
	sumout => \conect_2|Add4~41_sumout\,
	cout => \conect_2|Add4~42\);

-- Location: FF_X65_Y10_N35
\conect_2|yr[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[10]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y11_N6
\conect_2|ShiftRight1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~11_combout\ = ( \conect_2|cur_iter[1]~DUPLICATE_q\ & ( \conect_2|yr\(11) & ( (!\conect_2|cur_iter\(0) & ((\conect_2|yr\(12)))) # (\conect_2|cur_iter\(0) & (\conect_2|yr[13]~DUPLICATE_q\)) ) ) ) # ( !\conect_2|cur_iter[1]~DUPLICATE_q\ 
-- & ( \conect_2|yr\(11) & ( (\conect_2|yr[10]~DUPLICATE_q\) # (\conect_2|cur_iter\(0)) ) ) ) # ( \conect_2|cur_iter[1]~DUPLICATE_q\ & ( !\conect_2|yr\(11) & ( (!\conect_2|cur_iter\(0) & ((\conect_2|yr\(12)))) # (\conect_2|cur_iter\(0) & 
-- (\conect_2|yr[13]~DUPLICATE_q\)) ) ) ) # ( !\conect_2|cur_iter[1]~DUPLICATE_q\ & ( !\conect_2|yr\(11) & ( (!\conect_2|cur_iter\(0) & \conect_2|yr[10]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_yr[13]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_yr[10]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_yr\(12),
	datae => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr\(11),
	combout => \conect_2|ShiftRight1~11_combout\);

-- Location: LABCELL_X64_Y11_N48
\conect_2|ShiftRight1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~33_combout\ = ( \conect_2|ShiftRight1~32_combout\ & ( \conect_2|ShiftRight1~24_combout\ & ( ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~11_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~13_combout\)))) # (\conect_2|cur_iter\(3)) ) ) ) # ( !\conect_2|ShiftRight1~32_combout\ & ( \conect_2|ShiftRight1~24_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|cur_iter\(3))) # 
-- (\conect_2|ShiftRight1~11_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|ShiftRight1~13_combout\ & !\conect_2|cur_iter\(3))))) ) ) ) # ( \conect_2|ShiftRight1~32_combout\ & ( !\conect_2|ShiftRight1~24_combout\ & ( 
-- (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~11_combout\ & ((!\conect_2|cur_iter\(3))))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|cur_iter\(3)) # (\conect_2|ShiftRight1~13_combout\)))) ) ) ) # ( 
-- !\conect_2|ShiftRight1~32_combout\ & ( !\conect_2|ShiftRight1~24_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~11_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~13_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110101010100100111101010100010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~11_combout\,
	datac => \conect_2|ALT_INV_ShiftRight1~13_combout\,
	datad => \conect_2|ALT_INV_cur_iter\(3),
	datae => \conect_2|ALT_INV_ShiftRight1~32_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~24_combout\,
	combout => \conect_2|ShiftRight1~33_combout\);

-- Location: LABCELL_X63_Y10_N33
\conect_2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~41_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~33_combout\) ) + ( \conect_2|xr[10]~DUPLICATE_q\ ) + ( \conect_2|Add0~38\ ))
-- \conect_2|Add0~42\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~33_combout\) ) + ( \conect_2|xr[10]~DUPLICATE_q\ ) + ( \conect_2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~33_combout\,
	dataf => \conect_2|ALT_INV_xr[10]~DUPLICATE_q\,
	cin => \conect_2|Add0~38\,
	sumout => \conect_2|Add0~41_sumout\,
	cout => \conect_2|Add0~42\);

-- Location: FF_X63_Y10_N35
\conect_2|xr[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[10]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y10_N18
\conect_2|ShiftRight0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~11_combout\ = ( \conect_2|xr[13]~DUPLICATE_q\ & ( \conect_2|xr[10]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter[1]~DUPLICATE_q\) # ((\conect_2|xr[12]~DUPLICATE_q\)))) # 
-- (\conect_2|cur_iter[0]~DUPLICATE_q\ & (((\conect_2|xr[11]~DUPLICATE_q\)) # (\conect_2|cur_iter[1]~DUPLICATE_q\))) ) ) ) # ( !\conect_2|xr[13]~DUPLICATE_q\ & ( \conect_2|xr[10]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- ((!\conect_2|cur_iter[1]~DUPLICATE_q\) # ((\conect_2|xr[12]~DUPLICATE_q\)))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr[11]~DUPLICATE_q\))) ) ) ) # ( \conect_2|xr[13]~DUPLICATE_q\ & ( 
-- !\conect_2|xr[10]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr[12]~DUPLICATE_q\)))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & (((\conect_2|xr[11]~DUPLICATE_q\)) # 
-- (\conect_2|cur_iter[1]~DUPLICATE_q\))) ) ) ) # ( !\conect_2|xr[13]~DUPLICATE_q\ & ( !\conect_2|xr[10]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr[12]~DUPLICATE_q\)))) # 
-- (\conect_2|cur_iter[0]~DUPLICATE_q\ & (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr[11]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[11]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr[12]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_xr[13]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_xr[10]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~11_combout\);

-- Location: LABCELL_X67_Y10_N54
\conect_2|ShiftRight0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~33_combout\ = ( \conect_2|ShiftRight0~24_combout\ & ( \conect_2|ShiftRight0~32_combout\ & ( ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~11_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight0~13_combout\)))) # (\conect_2|cur_iter\(3)) ) ) ) # ( !\conect_2|ShiftRight0~24_combout\ & ( \conect_2|ShiftRight0~32_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight0~11_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~13_combout\))))) # (\conect_2|cur_iter\(3) & (\conect_2|cur_iter[2]~DUPLICATE_q\)) ) ) ) # ( \conect_2|ShiftRight0~24_combout\ & ( 
-- !\conect_2|ShiftRight0~32_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~11_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~13_combout\))))) # (\conect_2|cur_iter\(3) & 
-- (!\conect_2|cur_iter[2]~DUPLICATE_q\)) ) ) ) # ( !\conect_2|ShiftRight0~24_combout\ & ( !\conect_2|ShiftRight0~32_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~11_combout\)) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~13_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(3),
	datab => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight0~11_combout\,
	datad => \conect_2|ALT_INV_ShiftRight0~13_combout\,
	datae => \conect_2|ALT_INV_ShiftRight0~24_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~32_combout\,
	combout => \conect_2|ShiftRight0~33_combout\);

-- Location: MLABCELL_X65_Y10_N36
\conect_2|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~45_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (!\conect_2|ShiftRight0~35_combout\) ) + ( \conect_2|yr\(11) ) + ( \conect_2|Add4~42\ ))
-- \conect_2|Add4~46\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (!\conect_2|ShiftRight0~35_combout\) ) + ( \conect_2|yr\(11) ) + ( \conect_2|Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_yr\(11),
	datad => \conect_2|ALT_INV_ShiftRight0~35_combout\,
	cin => \conect_2|Add4~42\,
	sumout => \conect_2|Add4~45_sumout\,
	cout => \conect_2|Add4~46\);

-- Location: FF_X65_Y10_N38
\conect_2|yr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(11));

-- Location: MLABCELL_X65_Y10_N39
\conect_2|Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~49_sumout\ = SUM(( !\conect_2|ShiftRight0~37_combout\ $ (!\conect_2|zr[31]~DUPLICATE_q\) ) + ( \conect_2|yr[12]~DUPLICATE_q\ ) + ( \conect_2|Add4~46\ ))
-- \conect_2|Add4~50\ = CARRY(( !\conect_2|ShiftRight0~37_combout\ $ (!\conect_2|zr[31]~DUPLICATE_q\) ) + ( \conect_2|yr[12]~DUPLICATE_q\ ) + ( \conect_2|Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight0~37_combout\,
	datac => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr[12]~DUPLICATE_q\,
	cin => \conect_2|Add4~46\,
	sumout => \conect_2|Add4~49_sumout\,
	cout => \conect_2|Add4~50\);

-- Location: FF_X65_Y10_N41
\conect_2|yr[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[12]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y8_N54
\conect_2|ShiftRight1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~16_combout\ = ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr[11]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & ((\conect_2|yr[12]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (\conect_2|yr\(14))) ) ) ) # ( 
-- !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr[11]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1)) # (\conect_2|yr\(13)) ) ) ) # ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|yr[11]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & 
-- ((\conect_2|yr[12]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (\conect_2|yr\(14))) ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|yr[11]~DUPLICATE_q\ & ( (\conect_2|yr\(13) & \conect_2|cur_iter\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001111111111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr\(13),
	datab => \conect_2|ALT_INV_yr\(14),
	datac => \conect_2|ALT_INV_yr[12]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_cur_iter\(1),
	datae => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr[11]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~16_combout\);

-- Location: LABCELL_X64_Y8_N0
\conect_2|ShiftRight1~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~35_combout\ = ( \conect_2|ShiftRight1~34_combout\ & ( \conect_2|ShiftRight1~26_combout\ & ( ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~16_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight1~18_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\) ) ) ) # ( !\conect_2|ShiftRight1~34_combout\ & ( \conect_2|ShiftRight1~26_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~16_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~18_combout\)))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (!\conect_2|cur_iter[2]~DUPLICATE_q\)) ) ) ) # ( \conect_2|ShiftRight1~34_combout\ & ( 
-- !\conect_2|ShiftRight1~26_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~16_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~18_combout\)))) # 
-- (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|cur_iter[2]~DUPLICATE_q\)) ) ) ) # ( !\conect_2|ShiftRight1~34_combout\ & ( !\conect_2|ShiftRight1~26_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~16_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight1~18_combout\,
	datad => \conect_2|ALT_INV_ShiftRight1~16_combout\,
	datae => \conect_2|ALT_INV_ShiftRight1~34_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~26_combout\,
	combout => \conect_2|ShiftRight1~35_combout\);

-- Location: LABCELL_X63_Y10_N36
\conect_2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~45_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~35_combout\) ) + ( \conect_2|xr\(11) ) + ( \conect_2|Add0~42\ ))
-- \conect_2|Add0~46\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~35_combout\) ) + ( \conect_2|xr\(11) ) + ( \conect_2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr\(11),
	datad => \conect_2|ALT_INV_ShiftRight1~35_combout\,
	cin => \conect_2|Add0~42\,
	sumout => \conect_2|Add0~45_sumout\,
	cout => \conect_2|Add0~46\);

-- Location: FF_X63_Y10_N38
\conect_2|xr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(11));

-- Location: LABCELL_X63_Y10_N39
\conect_2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~49_sumout\ = SUM(( \conect_2|xr\(12) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~37_combout\) ) + ( \conect_2|Add0~46\ ))
-- \conect_2|Add0~50\ = CARRY(( \conect_2|xr\(12) ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~37_combout\) ) + ( \conect_2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight1~37_combout\,
	datad => \conect_2|ALT_INV_xr\(12),
	cin => \conect_2|Add0~46\,
	sumout => \conect_2|Add0~49_sumout\,
	cout => \conect_2|Add0~50\);

-- Location: FF_X63_Y10_N40
\conect_2|xr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(12));

-- Location: LABCELL_X63_Y10_N42
\conect_2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~53_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~39_combout\) ) + ( \conect_2|xr\(13) ) + ( \conect_2|Add0~50\ ))
-- \conect_2|Add0~54\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~39_combout\) ) + ( \conect_2|xr\(13) ) + ( \conect_2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~39_combout\,
	dataf => \conect_2|ALT_INV_xr\(13),
	cin => \conect_2|Add0~50\,
	sumout => \conect_2|Add0~53_sumout\,
	cout => \conect_2|Add0~54\);

-- Location: FF_X63_Y10_N43
\conect_2|xr[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[13]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y10_N30
\conect_2|ShiftRight0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~3_combout\ = ( \conect_2|xr\(15) & ( \conect_2|xr[12]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter\(0)) # ((\conect_2|xr[13]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(1) & (((\conect_2|xr\(14))) # 
-- (\conect_2|cur_iter\(0)))) ) ) ) # ( !\conect_2|xr\(15) & ( \conect_2|xr[12]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter\(0)) # ((\conect_2|xr[13]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(1) & (!\conect_2|cur_iter\(0) & 
-- (\conect_2|xr\(14)))) ) ) ) # ( \conect_2|xr\(15) & ( !\conect_2|xr[12]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (\conect_2|cur_iter\(0) & ((\conect_2|xr[13]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(1) & (((\conect_2|xr\(14))) # 
-- (\conect_2|cur_iter\(0)))) ) ) ) # ( !\conect_2|xr\(15) & ( !\conect_2|xr[12]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (\conect_2|cur_iter\(0) & ((\conect_2|xr[13]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(1) & (!\conect_2|cur_iter\(0) & 
-- (\conect_2|xr\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_cur_iter\(0),
	datac => \conect_2|ALT_INV_xr\(14),
	datad => \conect_2|ALT_INV_xr[13]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_xr\(15),
	dataf => \conect_2|ALT_INV_xr[12]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~3_combout\);

-- Location: LABCELL_X64_Y10_N36
\conect_2|ShiftRight0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~37_combout\ = ( \conect_2|ShiftRight0~20_combout\ & ( \conect_2|ShiftRight0~28_combout\ & ( (!\conect_2|cur_iter\(3) & (((\conect_2|cur_iter[2]~DUPLICATE_q\)) # (\conect_2|ShiftRight0~3_combout\))) # (\conect_2|cur_iter\(3) & 
-- (((!\conect_2|cur_iter[2]~DUPLICATE_q\) # (\conect_2|ShiftRight0~36_combout\)))) ) ) ) # ( !\conect_2|ShiftRight0~20_combout\ & ( \conect_2|ShiftRight0~28_combout\ & ( (!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~3_combout\ & 
-- ((!\conect_2|cur_iter[2]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(3) & (((!\conect_2|cur_iter[2]~DUPLICATE_q\) # (\conect_2|ShiftRight0~36_combout\)))) ) ) ) # ( \conect_2|ShiftRight0~20_combout\ & ( !\conect_2|ShiftRight0~28_combout\ & ( 
-- (!\conect_2|cur_iter\(3) & (((\conect_2|cur_iter[2]~DUPLICATE_q\)) # (\conect_2|ShiftRight0~3_combout\))) # (\conect_2|cur_iter\(3) & (((\conect_2|ShiftRight0~36_combout\ & \conect_2|cur_iter[2]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\conect_2|ShiftRight0~20_combout\ & ( !\conect_2|ShiftRight0~28_combout\ & ( (!\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~3_combout\ & ((!\conect_2|cur_iter[2]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(3) & (((\conect_2|ShiftRight0~36_combout\ & 
-- \conect_2|cur_iter[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(3),
	datab => \conect_2|ALT_INV_ShiftRight0~3_combout\,
	datac => \conect_2|ALT_INV_ShiftRight0~36_combout\,
	datad => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_ShiftRight0~20_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~28_combout\,
	combout => \conect_2|ShiftRight0~37_combout\);

-- Location: MLABCELL_X65_Y10_N42
\conect_2|Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~53_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~39_combout\) ) + ( \conect_2|yr[13]~DUPLICATE_q\ ) + ( \conect_2|Add4~50\ ))
-- \conect_2|Add4~54\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~39_combout\) ) + ( \conect_2|yr[13]~DUPLICATE_q\ ) + ( \conect_2|Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight0~39_combout\,
	dataf => \conect_2|ALT_INV_yr[13]~DUPLICATE_q\,
	cin => \conect_2|Add4~50\,
	sumout => \conect_2|Add4~53_sumout\,
	cout => \conect_2|Add4~54\);

-- Location: FF_X65_Y10_N44
\conect_2|yr[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[13]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y12_N42
\conect_2|ShiftRight1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~8_combout\ = ( \conect_2|yr[16]~DUPLICATE_q\ & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( (\conect_2|yr[14]~DUPLICATE_q\) # (\conect_2|cur_iter[1]~DUPLICATE_q\) ) ) ) # ( !\conect_2|yr[16]~DUPLICATE_q\ & ( 
-- \conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & \conect_2|yr[14]~DUPLICATE_q\) ) ) ) # ( \conect_2|yr[16]~DUPLICATE_q\ & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & 
-- (\conect_2|yr[13]~DUPLICATE_q\)) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr\(15)))) ) ) ) # ( !\conect_2|yr[16]~DUPLICATE_q\ & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr[13]~DUPLICATE_q\)) # 
-- (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_yr[14]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_yr[13]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_yr\(15),
	datae => \conect_2|ALT_INV_yr[16]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~8_combout\);

-- Location: LABCELL_X64_Y12_N18
\conect_2|ShiftRight1~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~39_combout\ = ( \conect_2|ShiftRight1~30_combout\ & ( \conect_2|ShiftRight1~38_combout\ & ( ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~8_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~22_combout\)))) # (\conect_2|cur_iter[3]~DUPLICATE_q\) ) ) ) # ( !\conect_2|ShiftRight1~30_combout\ & ( \conect_2|ShiftRight1~38_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight1~8_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~22_combout\))))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (((\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|ShiftRight1~30_combout\ & ( 
-- !\conect_2|ShiftRight1~38_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~8_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~22_combout\))))) # 
-- (\conect_2|cur_iter[3]~DUPLICATE_q\ & (((!\conect_2|cur_iter[2]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|ShiftRight1~30_combout\ & ( !\conect_2|ShiftRight1~38_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight1~8_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~22_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~8_combout\,
	datac => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~22_combout\,
	datae => \conect_2|ALT_INV_ShiftRight1~30_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~38_combout\,
	combout => \conect_2|ShiftRight1~39_combout\);

-- Location: LABCELL_X63_Y10_N45
\conect_2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~57_sumout\ = SUM(( \conect_2|xr[14]~DUPLICATE_q\ ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~41_combout\) ) + ( \conect_2|Add0~54\ ))
-- \conect_2|Add0~58\ = CARRY(( \conect_2|xr[14]~DUPLICATE_q\ ) + ( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~41_combout\) ) + ( \conect_2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight1~41_combout\,
	datad => \conect_2|ALT_INV_xr[14]~DUPLICATE_q\,
	cin => \conect_2|Add0~54\,
	sumout => \conect_2|Add0~57_sumout\,
	cout => \conect_2|Add0~58\);

-- Location: FF_X63_Y10_N47
\conect_2|xr[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[14]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y10_N0
\conect_2|ShiftRight0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~8_combout\ = ( \conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[16]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[14]~DUPLICATE_q\ ) ) ) # ( 
-- \conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[15]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[14]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_xr\(13),
	datac => \conect_2|ALT_INV_xr[16]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr[15]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~8_combout\);

-- Location: LABCELL_X62_Y10_N30
\conect_2|ShiftRight0~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~39_combout\ = ( \conect_2|ShiftRight0~8_combout\ & ( \conect_2|ShiftRight0~38_combout\ & ( (!\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter\(3)) # (\conect_2|ShiftRight0~30_combout\)))) # (\conect_2|cur_iter\(2) & 
-- (((\conect_2|cur_iter\(3))) # (\conect_2|ShiftRight0~22_combout\))) ) ) ) # ( !\conect_2|ShiftRight0~8_combout\ & ( \conect_2|ShiftRight0~38_combout\ & ( (!\conect_2|cur_iter\(2) & (((\conect_2|ShiftRight0~30_combout\ & \conect_2|cur_iter\(3))))) # 
-- (\conect_2|cur_iter\(2) & (((\conect_2|cur_iter\(3))) # (\conect_2|ShiftRight0~22_combout\))) ) ) ) # ( \conect_2|ShiftRight0~8_combout\ & ( !\conect_2|ShiftRight0~38_combout\ & ( (!\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter\(3)) # 
-- (\conect_2|ShiftRight0~30_combout\)))) # (\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~22_combout\ & ((!\conect_2|cur_iter\(3))))) ) ) ) # ( !\conect_2|ShiftRight0~8_combout\ & ( !\conect_2|ShiftRight0~38_combout\ & ( (!\conect_2|cur_iter\(2) & 
-- (((\conect_2|ShiftRight0~30_combout\ & \conect_2|cur_iter\(3))))) # (\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~22_combout\ & ((!\conect_2|cur_iter\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(2),
	datab => \conect_2|ALT_INV_ShiftRight0~22_combout\,
	datac => \conect_2|ALT_INV_ShiftRight0~30_combout\,
	datad => \conect_2|ALT_INV_cur_iter\(3),
	datae => \conect_2|ALT_INV_ShiftRight0~8_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~38_combout\,
	combout => \conect_2|ShiftRight0~39_combout\);

-- Location: MLABCELL_X65_Y10_N45
\conect_2|Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~57_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~41_combout\) ) + ( \conect_2|yr[14]~DUPLICATE_q\ ) + ( \conect_2|Add4~54\ ))
-- \conect_2|Add4~58\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~41_combout\) ) + ( \conect_2|yr[14]~DUPLICATE_q\ ) + ( \conect_2|Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_yr[14]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight0~41_combout\,
	cin => \conect_2|Add4~54\,
	sumout => \conect_2|Add4~57_sumout\,
	cout => \conect_2|Add4~58\);

-- Location: MLABCELL_X65_Y10_N48
\conect_2|Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~61_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~43_combout\) ) + ( \conect_2|yr\(15) ) + ( \conect_2|Add4~58\ ))
-- \conect_2|Add4~62\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~43_combout\) ) + ( \conect_2|yr\(15) ) + ( \conect_2|Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_ShiftRight0~43_combout\,
	dataf => \conect_2|ALT_INV_yr\(15),
	cin => \conect_2|Add4~58\,
	sumout => \conect_2|Add4~61_sumout\,
	cout => \conect_2|Add4~62\);

-- Location: FF_X65_Y10_N50
\conect_2|yr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(15));

-- Location: LABCELL_X64_Y8_N24
\conect_2|ShiftRight1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~18_combout\ = ( \conect_2|yr\(17) & ( \conect_2|yr\(18) & ( ((!\conect_2|cur_iter\(0) & (\conect_2|yr\(15))) # (\conect_2|cur_iter\(0) & ((\conect_2|yr\(16))))) # (\conect_2|cur_iter\(1)) ) ) ) # ( !\conect_2|yr\(17) & ( 
-- \conect_2|yr\(18) & ( (!\conect_2|cur_iter\(0) & (!\conect_2|cur_iter\(1) & (\conect_2|yr\(15)))) # (\conect_2|cur_iter\(0) & (((\conect_2|yr\(16))) # (\conect_2|cur_iter\(1)))) ) ) ) # ( \conect_2|yr\(17) & ( !\conect_2|yr\(18) & ( 
-- (!\conect_2|cur_iter\(0) & (((\conect_2|yr\(15))) # (\conect_2|cur_iter\(1)))) # (\conect_2|cur_iter\(0) & (!\conect_2|cur_iter\(1) & ((\conect_2|yr\(16))))) ) ) ) # ( !\conect_2|yr\(17) & ( !\conect_2|yr\(18) & ( (!\conect_2|cur_iter\(1) & 
-- ((!\conect_2|cur_iter\(0) & (\conect_2|yr\(15))) # (\conect_2|cur_iter\(0) & ((\conect_2|yr\(16)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_cur_iter\(1),
	datac => \conect_2|ALT_INV_yr\(15),
	datad => \conect_2|ALT_INV_yr\(16),
	datae => \conect_2|ALT_INV_yr\(17),
	dataf => \conect_2|ALT_INV_yr\(18),
	combout => \conect_2|ShiftRight1~18_combout\);

-- Location: LABCELL_X64_Y8_N30
\conect_2|ShiftRight1~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~43_combout\ = ( \conect_2|ShiftRight1~42_combout\ & ( \conect_2|ShiftRight1~26_combout\ & ( ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~18_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight1~34_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\) ) ) ) # ( !\conect_2|ShiftRight1~42_combout\ & ( \conect_2|ShiftRight1~26_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~18_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight1~34_combout\)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|ShiftRight1~42_combout\ & ( 
-- !\conect_2|ShiftRight1~26_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~18_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight1~34_combout\)))) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|ShiftRight1~42_combout\ & ( !\conect_2|ShiftRight1~26_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~18_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight1~34_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight1~34_combout\,
	datab => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight1~18_combout\,
	datad => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_ShiftRight1~42_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~26_combout\,
	combout => \conect_2|ShiftRight1~43_combout\);

-- Location: LABCELL_X63_Y10_N48
\conect_2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~61_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~43_combout\) ) + ( \conect_2|xr[15]~DUPLICATE_q\ ) + ( \conect_2|Add0~58\ ))
-- \conect_2|Add0~62\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~43_combout\) ) + ( \conect_2|xr[15]~DUPLICATE_q\ ) + ( \conect_2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~43_combout\,
	dataf => \conect_2|ALT_INV_xr[15]~DUPLICATE_q\,
	cin => \conect_2|Add0~58\,
	sumout => \conect_2|Add0~61_sumout\,
	cout => \conect_2|Add0~62\);

-- Location: FF_X63_Y10_N50
\conect_2|xr[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[15]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y9_N18
\conect_2|ShiftRight0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~18_combout\ = ( \conect_2|xr\(17) & ( \conect_2|xr[18]~DUPLICATE_q\ & ( ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|xr[15]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|xr\(16))))) # 
-- (\conect_2|cur_iter\(1)) ) ) ) # ( !\conect_2|xr\(17) & ( \conect_2|xr[18]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|xr[15]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- ((\conect_2|xr\(16)))))) # (\conect_2|cur_iter\(1) & (\conect_2|cur_iter[0]~DUPLICATE_q\)) ) ) ) # ( \conect_2|xr\(17) & ( !\conect_2|xr[18]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- (\conect_2|xr[15]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|xr\(16)))))) # (\conect_2|cur_iter\(1) & (!\conect_2|cur_iter[0]~DUPLICATE_q\)) ) ) ) # ( !\conect_2|xr\(17) & ( !\conect_2|xr[18]~DUPLICATE_q\ & ( 
-- (!\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|xr[15]~DUPLICATE_q\)) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|xr\(16)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[15]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr\(16),
	datae => \conect_2|ALT_INV_xr\(17),
	dataf => \conect_2|ALT_INV_xr[18]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~18_combout\);

-- Location: MLABCELL_X65_Y9_N48
\conect_2|ShiftRight0~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~43_combout\ = ( \conect_2|ShiftRight0~34_combout\ & ( \conect_2|ShiftRight0~42_combout\ & ( ((!\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight0~18_combout\))) # (\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~26_combout\))) # 
-- (\conect_2|cur_iter\(3)) ) ) ) # ( !\conect_2|ShiftRight0~34_combout\ & ( \conect_2|ShiftRight0~42_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight0~18_combout\))) # (\conect_2|cur_iter\(2) & 
-- (\conect_2|ShiftRight0~26_combout\)))) # (\conect_2|cur_iter\(3) & (((\conect_2|cur_iter\(2))))) ) ) ) # ( \conect_2|ShiftRight0~34_combout\ & ( !\conect_2|ShiftRight0~42_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter\(2) & 
-- ((\conect_2|ShiftRight0~18_combout\))) # (\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~26_combout\)))) # (\conect_2|cur_iter\(3) & (((!\conect_2|cur_iter\(2))))) ) ) ) # ( !\conect_2|ShiftRight0~34_combout\ & ( !\conect_2|ShiftRight0~42_combout\ & ( 
-- (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight0~18_combout\))) # (\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(3),
	datab => \conect_2|ALT_INV_ShiftRight0~26_combout\,
	datac => \conect_2|ALT_INV_cur_iter\(2),
	datad => \conect_2|ALT_INV_ShiftRight0~18_combout\,
	datae => \conect_2|ALT_INV_ShiftRight0~34_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~42_combout\,
	combout => \conect_2|ShiftRight0~43_combout\);

-- Location: MLABCELL_X65_Y10_N51
\conect_2|Add4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~65_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~45_combout\) ) + ( \conect_2|yr\(16) ) + ( \conect_2|Add4~62\ ))
-- \conect_2|Add4~66\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~45_combout\) ) + ( \conect_2|yr\(16) ) + ( \conect_2|Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight0~45_combout\,
	dataf => \conect_2|ALT_INV_yr\(16),
	cin => \conect_2|Add4~62\,
	sumout => \conect_2|Add4~65_sumout\,
	cout => \conect_2|Add4~66\);

-- Location: FF_X65_Y10_N52
\conect_2|yr[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[16]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y10_N42
\conect_2|ShiftRight1~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~20_combout\ = ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr[19]~DUPLICATE_q\ & ( (\conect_2|cur_iter\(1)) # (\conect_2|yr\(17)) ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr[19]~DUPLICATE_q\ & ( 
-- (!\conect_2|cur_iter\(1) & ((\conect_2|yr[16]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (\conect_2|yr\(18))) ) ) ) # ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|yr[19]~DUPLICATE_q\ & ( (\conect_2|yr\(17) & !\conect_2|cur_iter\(1)) ) ) ) # ( 
-- !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|yr[19]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & ((\conect_2|yr[16]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (\conect_2|yr\(18))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr\(17),
	datab => \conect_2|ALT_INV_yr\(18),
	datac => \conect_2|ALT_INV_yr[16]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_cur_iter\(1),
	datae => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr[19]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~20_combout\);

-- Location: LABCELL_X66_Y8_N27
\conect_2|ShiftRight1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~45_combout\ = ( \conect_2|ShiftRight1~28_combout\ & ( \conect_2|ShiftRight1~20_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\) # ((!\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight1~36_combout\))) # (\conect_2|cur_iter\(2) & 
-- (\conect_2|ShiftRight1~44_combout\))) ) ) ) # ( !\conect_2|ShiftRight1~28_combout\ & ( \conect_2|ShiftRight1~20_combout\ & ( (!\conect_2|cur_iter\(2) & ((!\conect_2|cur_iter[3]~DUPLICATE_q\) # ((\conect_2|ShiftRight1~36_combout\)))) # 
-- (\conect_2|cur_iter\(2) & (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight1~44_combout\))) ) ) ) # ( \conect_2|ShiftRight1~28_combout\ & ( !\conect_2|ShiftRight1~20_combout\ & ( (!\conect_2|cur_iter\(2) & (\conect_2|cur_iter[3]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~36_combout\)))) # (\conect_2|cur_iter\(2) & ((!\conect_2|cur_iter[3]~DUPLICATE_q\) # ((\conect_2|ShiftRight1~44_combout\)))) ) ) ) # ( !\conect_2|ShiftRight1~28_combout\ & ( !\conect_2|ShiftRight1~20_combout\ & ( 
-- (\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight1~36_combout\))) # (\conect_2|cur_iter\(2) & (\conect_2|ShiftRight1~44_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(2),
	datab => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight1~44_combout\,
	datad => \conect_2|ALT_INV_ShiftRight1~36_combout\,
	datae => \conect_2|ALT_INV_ShiftRight1~28_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~20_combout\,
	combout => \conect_2|ShiftRight1~45_combout\);

-- Location: LABCELL_X63_Y10_N51
\conect_2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~65_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~45_combout\) ) + ( \conect_2|xr[16]~DUPLICATE_q\ ) + ( \conect_2|Add0~62\ ))
-- \conect_2|Add0~66\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~45_combout\) ) + ( \conect_2|xr[16]~DUPLICATE_q\ ) + ( \conect_2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~45_combout\,
	dataf => \conect_2|ALT_INV_xr[16]~DUPLICATE_q\,
	cin => \conect_2|Add0~62\,
	sumout => \conect_2|Add0~65_sumout\,
	cout => \conect_2|Add0~66\);

-- Location: FF_X63_Y10_N52
\conect_2|xr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(16));

-- Location: LABCELL_X64_Y9_N12
\conect_2|ShiftRight0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~20_combout\ = ( \conect_2|xr\(17) & ( \conect_2|xr[18]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (((\conect_2|xr\(16))) # (\conect_2|cur_iter[0]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & ((!\conect_2|cur_iter[0]~DUPLICATE_q\) # 
-- ((\conect_2|xr[19]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|xr\(17) & ( \conect_2|xr[18]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|xr\(16))))) # (\conect_2|cur_iter\(1) & 
-- ((!\conect_2|cur_iter[0]~DUPLICATE_q\) # ((\conect_2|xr[19]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|xr\(17) & ( !\conect_2|xr[18]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (((\conect_2|xr\(16))) # (\conect_2|cur_iter[0]~DUPLICATE_q\))) # 
-- (\conect_2|cur_iter\(1) & (\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|xr[19]~DUPLICATE_q\))) ) ) ) # ( !\conect_2|xr\(17) & ( !\conect_2|xr[18]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((\conect_2|xr\(16))))) 
-- # (\conect_2|cur_iter\(1) & (\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|xr[19]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[19]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr\(16),
	datae => \conect_2|ALT_INV_xr\(17),
	dataf => \conect_2|ALT_INV_xr[18]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~20_combout\);

-- Location: LABCELL_X66_Y9_N18
\conect_2|ShiftRight0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~45_combout\ = ( \conect_2|ShiftRight0~36_combout\ & ( \conect_2|ShiftRight0~20_combout\ & ( (!\conect_2|cur_iter\(2)) # ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~28_combout\))) # 
-- (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight0~44_combout\))) ) ) ) # ( !\conect_2|ShiftRight0~36_combout\ & ( \conect_2|ShiftRight0~20_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(2)) # 
-- ((\conect_2|ShiftRight0~28_combout\)))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~44_combout\))) ) ) ) # ( \conect_2|ShiftRight0~36_combout\ & ( !\conect_2|ShiftRight0~20_combout\ & ( 
-- (!\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|cur_iter\(2) & ((\conect_2|ShiftRight0~28_combout\)))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(2)) # ((\conect_2|ShiftRight0~44_combout\)))) ) ) ) # ( 
-- !\conect_2|ShiftRight0~36_combout\ & ( !\conect_2|ShiftRight0~20_combout\ & ( (\conect_2|cur_iter\(2) & ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~28_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & 
-- (\conect_2|ShiftRight0~44_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(2),
	datac => \conect_2|ALT_INV_ShiftRight0~44_combout\,
	datad => \conect_2|ALT_INV_ShiftRight0~28_combout\,
	datae => \conect_2|ALT_INV_ShiftRight0~36_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~20_combout\,
	combout => \conect_2|ShiftRight0~45_combout\);

-- Location: MLABCELL_X65_Y10_N54
\conect_2|Add4~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~69_sumout\ = SUM(( \conect_2|yr[17]~DUPLICATE_q\ ) + ( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~47_combout\) ) + ( \conect_2|Add4~66\ ))
-- \conect_2|Add4~70\ = CARRY(( \conect_2|yr[17]~DUPLICATE_q\ ) + ( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~47_combout\) ) + ( \conect_2|Add4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_ShiftRight0~47_combout\,
	datad => \conect_2|ALT_INV_yr[17]~DUPLICATE_q\,
	cin => \conect_2|Add4~66\,
	sumout => \conect_2|Add4~69_sumout\,
	cout => \conect_2|Add4~70\);

-- Location: FF_X65_Y10_N55
\conect_2|yr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(17));

-- Location: LABCELL_X64_Y12_N12
\conect_2|ShiftRight1~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~22_combout\ = ( \conect_2|yr\(18) & ( \conect_2|yr\(20) & ( ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr\(17)))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr\(19)))) # (\conect_2|cur_iter\(0)) ) ) ) # ( 
-- !\conect_2|yr\(18) & ( \conect_2|yr\(20) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (!\conect_2|cur_iter\(0) & ((\conect_2|yr\(17))))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (((\conect_2|yr\(19))) # (\conect_2|cur_iter\(0)))) ) ) ) # ( \conect_2|yr\(18) 
-- & ( !\conect_2|yr\(20) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (((\conect_2|yr\(17))) # (\conect_2|cur_iter\(0)))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (!\conect_2|cur_iter\(0) & (\conect_2|yr\(19)))) ) ) ) # ( !\conect_2|yr\(18) & ( 
-- !\conect_2|yr\(20) & ( (!\conect_2|cur_iter\(0) & ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr\(17)))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr\(19))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(0),
	datac => \conect_2|ALT_INV_yr\(19),
	datad => \conect_2|ALT_INV_yr\(17),
	datae => \conect_2|ALT_INV_yr\(18),
	dataf => \conect_2|ALT_INV_yr\(20),
	combout => \conect_2|ShiftRight1~22_combout\);

-- Location: LABCELL_X64_Y12_N24
\conect_2|ShiftRight1~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~47_combout\ = ( \conect_2|ShiftRight1~46_combout\ & ( \conect_2|ShiftRight1~38_combout\ & ( ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~22_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~30_combout\)))) # (\conect_2|cur_iter\(3)) ) ) ) # ( !\conect_2|ShiftRight1~46_combout\ & ( \conect_2|ShiftRight1~38_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|cur_iter\(3))) # 
-- (\conect_2|ShiftRight1~22_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|ShiftRight1~30_combout\ & !\conect_2|cur_iter\(3))))) ) ) ) # ( \conect_2|ShiftRight1~46_combout\ & ( !\conect_2|ShiftRight1~38_combout\ & ( 
-- (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~22_combout\ & ((!\conect_2|cur_iter\(3))))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|cur_iter\(3)) # (\conect_2|ShiftRight1~30_combout\)))) ) ) ) # ( 
-- !\conect_2|ShiftRight1~46_combout\ & ( !\conect_2|ShiftRight1~38_combout\ & ( (!\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~22_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight1~30_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110101010100100111101010100010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~22_combout\,
	datac => \conect_2|ALT_INV_ShiftRight1~30_combout\,
	datad => \conect_2|ALT_INV_cur_iter\(3),
	datae => \conect_2|ALT_INV_ShiftRight1~46_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~38_combout\,
	combout => \conect_2|ShiftRight1~47_combout\);

-- Location: LABCELL_X63_Y10_N54
\conect_2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~69_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~47_combout\) ) + ( \conect_2|xr\(17) ) + ( \conect_2|Add0~66\ ))
-- \conect_2|Add0~70\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~47_combout\) ) + ( \conect_2|xr\(17) ) + ( \conect_2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr\(17),
	datad => \conect_2|ALT_INV_ShiftRight1~47_combout\,
	cin => \conect_2|Add0~66\,
	sumout => \conect_2|Add0~69_sumout\,
	cout => \conect_2|Add0~70\);

-- Location: FF_X63_Y10_N56
\conect_2|xr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(17));

-- Location: LABCELL_X63_Y10_N57
\conect_2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~73_sumout\ = SUM(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~49_combout\) ) + ( \conect_2|xr[18]~DUPLICATE_q\ ) + ( \conect_2|Add0~70\ ))
-- \conect_2|Add0~74\ = CARRY(( !\conect_2|zr[31]~DUPLICATE_q\ $ (\conect_2|ShiftRight1~49_combout\) ) + ( \conect_2|xr[18]~DUPLICATE_q\ ) + ( \conect_2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[18]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~49_combout\,
	cin => \conect_2|Add0~70\,
	sumout => \conect_2|Add0~73_sumout\,
	cout => \conect_2|Add0~74\);

-- Location: FF_X63_Y10_N58
\conect_2|xr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(18));

-- Location: LABCELL_X67_Y10_N0
\conect_2|ShiftRight0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~24_combout\ = ( \conect_2|xr[20]~DUPLICATE_q\ & ( \conect_2|xr[19]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (((\conect_2|xr\(18))) # (\conect_2|cur_iter[1]~DUPLICATE_q\))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- ((!\conect_2|cur_iter[1]~DUPLICATE_q\) # ((\conect_2|xr[21]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|xr[20]~DUPLICATE_q\ & ( \conect_2|xr[19]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (!\conect_2|cur_iter[1]~DUPLICATE_q\ & 
-- ((\conect_2|xr\(18))))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter[1]~DUPLICATE_q\) # ((\conect_2|xr[21]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|xr[20]~DUPLICATE_q\ & ( !\conect_2|xr[19]~DUPLICATE_q\ & ( 
-- (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (((\conect_2|xr\(18))) # (\conect_2|cur_iter[1]~DUPLICATE_q\))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr[21]~DUPLICATE_q\))) ) ) ) # ( !\conect_2|xr[20]~DUPLICATE_q\ 
-- & ( !\conect_2|xr[19]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|xr\(18))))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|xr[21]~DUPLICATE_q\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[21]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr\(18),
	datae => \conect_2|ALT_INV_xr[20]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_xr[19]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~24_combout\);

-- Location: LABCELL_X67_Y10_N24
\conect_2|ShiftRight0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~49_combout\ = ( \conect_2|ShiftRight0~48_combout\ & ( \conect_2|ShiftRight0~40_combout\ & ( ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~24_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight0~32_combout\)))) # (\conect_2|cur_iter[3]~DUPLICATE_q\) ) ) ) # ( !\conect_2|ShiftRight0~48_combout\ & ( \conect_2|ShiftRight0~40_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|cur_iter[3]~DUPLICATE_q\)) # 
-- (\conect_2|ShiftRight0~24_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|ShiftRight0~32_combout\ & !\conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|ShiftRight0~48_combout\ & ( !\conect_2|ShiftRight0~40_combout\ & ( 
-- (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~24_combout\ & ((!\conect_2|cur_iter[3]~DUPLICATE_q\)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|cur_iter[3]~DUPLICATE_q\) # (\conect_2|ShiftRight0~32_combout\)))) ) ) ) # ( 
-- !\conect_2|ShiftRight0~48_combout\ & ( !\conect_2|ShiftRight0~40_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~24_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & 
-- ((\conect_2|ShiftRight0~32_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight0~24_combout\,
	datab => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight0~32_combout\,
	datad => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_ShiftRight0~48_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~40_combout\,
	combout => \conect_2|ShiftRight0~49_combout\);

-- Location: MLABCELL_X65_Y10_N57
\conect_2|Add4~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~73_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~49_combout\) ) + ( \conect_2|yr\(18) ) + ( \conect_2|Add4~70\ ))
-- \conect_2|Add4~74\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~49_combout\) ) + ( \conect_2|yr\(18) ) + ( \conect_2|Add4~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_yr\(18),
	datad => \conect_2|ALT_INV_ShiftRight0~49_combout\,
	cin => \conect_2|Add4~70\,
	sumout => \conect_2|Add4~73_sumout\,
	cout => \conect_2|Add4~74\);

-- Location: FF_X65_Y10_N59
\conect_2|yr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(18));

-- Location: MLABCELL_X65_Y9_N0
\conect_2|Add4~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~77_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~50_combout\) ) + ( \conect_2|yr\(19) ) + ( \conect_2|Add4~74\ ))
-- \conect_2|Add4~78\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~50_combout\) ) + ( \conect_2|yr\(19) ) + ( \conect_2|Add4~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_ShiftRight0~50_combout\,
	dataf => \conect_2|ALT_INV_yr\(19),
	cin => \conect_2|Add4~74\,
	sumout => \conect_2|Add4~77_sumout\,
	cout => \conect_2|Add4~78\);

-- Location: FF_X65_Y9_N2
\conect_2|yr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(19));

-- Location: MLABCELL_X65_Y9_N42
\conect_2|ShiftRight1~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~26_combout\ = ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|cur_iter\(1) & ( \conect_2|yr\(22) ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|cur_iter\(1) & ( \conect_2|yr\(21) ) ) ) # ( 
-- \conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(1) & ( \conect_2|yr\(20) ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(1) & ( \conect_2|yr\(19) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr\(19),
	datab => \conect_2|ALT_INV_yr\(21),
	datac => \conect_2|ALT_INV_yr\(20),
	datad => \conect_2|ALT_INV_yr\(22),
	datae => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter\(1),
	combout => \conect_2|ShiftRight1~26_combout\);

-- Location: LABCELL_X64_Y8_N42
\conect_2|ShiftRight1~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~50_combout\ = ( \conect_2|yr\(31) & ( \conect_2|ShiftRight1~26_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter[3]~DUPLICATE_q\) # (\conect_2|ShiftRight1~42_combout\)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ 
-- & (((\conect_2|cur_iter[3]~DUPLICATE_q\)) # (\conect_2|ShiftRight1~34_combout\))) ) ) ) # ( !\conect_2|yr\(31) & ( \conect_2|ShiftRight1~26_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter[3]~DUPLICATE_q\) # 
-- (\conect_2|ShiftRight1~42_combout\)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~34_combout\ & ((!\conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|yr\(31) & ( !\conect_2|ShiftRight1~26_combout\ & ( 
-- (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|ShiftRight1~42_combout\ & \conect_2|cur_iter[3]~DUPLICATE_q\)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|cur_iter[3]~DUPLICATE_q\)) # (\conect_2|ShiftRight1~34_combout\))) ) ) ) # ( 
-- !\conect_2|yr\(31) & ( !\conect_2|ShiftRight1~26_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|ShiftRight1~42_combout\ & \conect_2|cur_iter[3]~DUPLICATE_q\)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight1~34_combout\ & 
-- ((!\conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight1~34_combout\,
	datab => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight1~42_combout\,
	datad => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_yr\(31),
	dataf => \conect_2|ALT_INV_ShiftRight1~26_combout\,
	combout => \conect_2|ShiftRight1~50_combout\);

-- Location: LABCELL_X63_Y9_N0
\conect_2|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~77_sumout\ = SUM(( !\conect_2|zr\(31) $ (\conect_2|ShiftRight1~50_combout\) ) + ( \conect_2|xr[19]~DUPLICATE_q\ ) + ( \conect_2|Add0~74\ ))
-- \conect_2|Add0~78\ = CARRY(( !\conect_2|zr\(31) $ (\conect_2|ShiftRight1~50_combout\) ) + ( \conect_2|xr[19]~DUPLICATE_q\ ) + ( \conect_2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_xr[19]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~50_combout\,
	cin => \conect_2|Add0~74\,
	sumout => \conect_2|Add0~77_sumout\,
	cout => \conect_2|Add0~78\);

-- Location: FF_X63_Y9_N2
\conect_2|xr[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[19]~DUPLICATE_q\);

-- Location: FF_X63_Y9_N11
\conect_2|xr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(22));

-- Location: LABCELL_X63_Y11_N6
\conect_2|ShiftRight1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~53_combout\ = ( \conect_2|ShiftRight1~32_combout\ & ( \conect_2|ShiftRight1~40_combout\ & ( (!\conect_2|cur_iter\(3)) # ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~48_combout\))) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|yr[31]~DUPLICATE_q\))) ) ) ) # ( !\conect_2|ShiftRight1~32_combout\ & ( \conect_2|ShiftRight1~40_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (((\conect_2|ShiftRight1~48_combout\ & 
-- \conect_2|cur_iter\(3))))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(3))) # (\conect_2|yr[31]~DUPLICATE_q\))) ) ) ) # ( \conect_2|ShiftRight1~32_combout\ & ( !\conect_2|ShiftRight1~40_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ 
-- & (((!\conect_2|cur_iter\(3)) # (\conect_2|ShiftRight1~48_combout\)))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|yr[31]~DUPLICATE_q\ & ((\conect_2|cur_iter\(3))))) ) ) ) # ( !\conect_2|ShiftRight1~32_combout\ & ( 
-- !\conect_2|ShiftRight1~40_combout\ & ( (\conect_2|cur_iter\(3) & ((!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~48_combout\))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight1~48_combout\,
	datad => \conect_2|ALT_INV_cur_iter\(3),
	datae => \conect_2|ALT_INV_ShiftRight1~32_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~40_combout\,
	combout => \conect_2|ShiftRight1~53_combout\);

-- Location: LABCELL_X63_Y9_N3
\conect_2|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~81_sumout\ = SUM(( !\conect_2|zr\(31) $ (\conect_2|ShiftRight1~51_combout\) ) + ( \conect_2|xr\(20) ) + ( \conect_2|Add0~78\ ))
-- \conect_2|Add0~82\ = CARRY(( !\conect_2|zr\(31) $ (\conect_2|ShiftRight1~51_combout\) ) + ( \conect_2|xr\(20) ) + ( \conect_2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr\(20),
	datab => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_ShiftRight1~51_combout\,
	cin => \conect_2|Add0~78\,
	sumout => \conect_2|Add0~81_sumout\,
	cout => \conect_2|Add0~82\);

-- Location: LABCELL_X63_Y9_N6
\conect_2|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~85_sumout\ = SUM(( !\conect_2|zr\(31) $ (\conect_2|ShiftRight1~52_combout\) ) + ( \conect_2|xr[21]~DUPLICATE_q\ ) + ( \conect_2|Add0~82\ ))
-- \conect_2|Add0~86\ = CARRY(( !\conect_2|zr\(31) $ (\conect_2|ShiftRight1~52_combout\) ) + ( \conect_2|xr[21]~DUPLICATE_q\ ) + ( \conect_2|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight1~52_combout\,
	dataf => \conect_2|ALT_INV_xr[21]~DUPLICATE_q\,
	cin => \conect_2|Add0~82\,
	sumout => \conect_2|Add0~85_sumout\,
	cout => \conect_2|Add0~86\);

-- Location: LABCELL_X63_Y9_N9
\conect_2|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~89_sumout\ = SUM(( !\conect_2|zr\(31) $ (\conect_2|ShiftRight1~53_combout\) ) + ( \conect_2|xr\(22) ) + ( \conect_2|Add0~86\ ))
-- \conect_2|Add0~90\ = CARRY(( !\conect_2|zr\(31) $ (\conect_2|ShiftRight1~53_combout\) ) + ( \conect_2|xr\(22) ) + ( \conect_2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_xr\(22),
	datad => \conect_2|ALT_INV_ShiftRight1~53_combout\,
	cin => \conect_2|Add0~86\,
	sumout => \conect_2|Add0~89_sumout\,
	cout => \conect_2|Add0~90\);

-- Location: FF_X63_Y9_N10
\conect_2|xr[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[22]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y9_N0
\conect_2|ShiftRight0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~26_combout\ = ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|cur_iter\(1) & ( \conect_2|xr[22]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|cur_iter\(1) & ( \conect_2|xr\(21) ) ) ) # ( 
-- \conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(1) & ( \conect_2|xr[20]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(1) & ( \conect_2|xr[19]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr\(21),
	datab => \conect_2|ALT_INV_xr[20]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[19]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr[22]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter\(1),
	combout => \conect_2|ShiftRight0~26_combout\);

-- Location: LABCELL_X64_Y9_N48
\conect_2|ShiftRight0~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~50_combout\ = ( \conect_2|ShiftRight0~34_combout\ & ( \conect_2|ShiftRight0~42_combout\ & ( (!\conect_2|cur_iter\(2) & (((\conect_2|cur_iter[3]~DUPLICATE_q\)) # (\conect_2|ShiftRight0~26_combout\))) # (\conect_2|cur_iter\(2) & 
-- (((!\conect_2|cur_iter[3]~DUPLICATE_q\) # (\conect_2|xr[31]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|ShiftRight0~34_combout\ & ( \conect_2|ShiftRight0~42_combout\ & ( (!\conect_2|cur_iter\(2) & (((\conect_2|cur_iter[3]~DUPLICATE_q\)) # 
-- (\conect_2|ShiftRight0~26_combout\))) # (\conect_2|cur_iter\(2) & (((\conect_2|xr[31]~DUPLICATE_q\ & \conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|ShiftRight0~34_combout\ & ( !\conect_2|ShiftRight0~42_combout\ & ( (!\conect_2|cur_iter\(2) & 
-- (\conect_2|ShiftRight0~26_combout\ & ((!\conect_2|cur_iter[3]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter[3]~DUPLICATE_q\) # (\conect_2|xr[31]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|ShiftRight0~34_combout\ & ( 
-- !\conect_2|ShiftRight0~42_combout\ & ( (!\conect_2|cur_iter\(2) & (\conect_2|ShiftRight0~26_combout\ & ((!\conect_2|cur_iter[3]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(2) & (((\conect_2|xr[31]~DUPLICATE_q\ & \conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight0~26_combout\,
	datab => \conect_2|ALT_INV_xr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(2),
	datad => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_ShiftRight0~34_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~42_combout\,
	combout => \conect_2|ShiftRight0~50_combout\);

-- Location: MLABCELL_X65_Y9_N3
\conect_2|Add4~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~81_sumout\ = SUM(( \conect_2|yr\(20) ) + ( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~51_combout\) ) + ( \conect_2|Add4~78\ ))
-- \conect_2|Add4~82\ = CARRY(( \conect_2|yr\(20) ) + ( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~51_combout\) ) + ( \conect_2|Add4~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_ShiftRight0~51_combout\,
	datad => \conect_2|ALT_INV_yr\(20),
	cin => \conect_2|Add4~78\,
	sumout => \conect_2|Add4~81_sumout\,
	cout => \conect_2|Add4~82\);

-- Location: FF_X65_Y9_N5
\conect_2|yr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~81_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(20));

-- Location: MLABCELL_X65_Y9_N54
\conect_2|ShiftRight1~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~28_combout\ = ( \conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr\(23) ) ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr\(21) ) ) ) # ( \conect_2|cur_iter\(1) & ( 
-- !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr[22]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr\(20) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr\(20),
	datab => \conect_2|ALT_INV_yr\(21),
	datac => \conect_2|ALT_INV_yr[22]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_yr\(23),
	datae => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~28_combout\);

-- Location: LABCELL_X66_Y8_N33
\conect_2|ShiftRight1~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~51_combout\ = ( \conect_2|yr[31]~DUPLICATE_q\ & ( \conect_2|ShiftRight1~28_combout\ & ( (!\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter[3]~DUPLICATE_q\)) # (\conect_2|ShiftRight1~44_combout\))) # (\conect_2|cur_iter\(2) & 
-- (((\conect_2|ShiftRight1~36_combout\) # (\conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|yr[31]~DUPLICATE_q\ & ( \conect_2|ShiftRight1~28_combout\ & ( (!\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter[3]~DUPLICATE_q\)) # 
-- (\conect_2|ShiftRight1~44_combout\))) # (\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & \conect_2|ShiftRight1~36_combout\)))) ) ) ) # ( \conect_2|yr[31]~DUPLICATE_q\ & ( !\conect_2|ShiftRight1~28_combout\ & ( (!\conect_2|cur_iter\(2) & 
-- (\conect_2|ShiftRight1~44_combout\ & (\conect_2|cur_iter[3]~DUPLICATE_q\))) # (\conect_2|cur_iter\(2) & (((\conect_2|ShiftRight1~36_combout\) # (\conect_2|cur_iter[3]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|yr[31]~DUPLICATE_q\ & ( 
-- !\conect_2|ShiftRight1~28_combout\ & ( (!\conect_2|cur_iter\(2) & (\conect_2|ShiftRight1~44_combout\ & (\conect_2|cur_iter[3]~DUPLICATE_q\))) # (\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & \conect_2|ShiftRight1~36_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(2),
	datab => \conect_2|ALT_INV_ShiftRight1~44_combout\,
	datac => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~36_combout\,
	datae => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_ShiftRight1~28_combout\,
	combout => \conect_2|ShiftRight1~51_combout\);

-- Location: FF_X63_Y9_N5
\conect_2|xr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~81_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(20));

-- Location: LABCELL_X63_Y9_N42
\conect_2|ShiftRight0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~28_combout\ = ( \conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr\(23) ) ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr\(21) ) ) ) # ( \conect_2|cur_iter\(1) & ( 
-- !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr\(22) ) ) ) # ( !\conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr\(20) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr\(20),
	datab => \conect_2|ALT_INV_xr\(23),
	datac => \conect_2|ALT_INV_xr\(21),
	datad => \conect_2|ALT_INV_xr\(22),
	datae => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~28_combout\);

-- Location: LABCELL_X66_Y9_N42
\conect_2|ShiftRight0~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~51_combout\ = ( \conect_2|ShiftRight0~36_combout\ & ( \conect_2|ShiftRight0~44_combout\ & ( (!\conect_2|cur_iter\(2) & (((\conect_2|ShiftRight0~28_combout\) # (\conect_2|cur_iter[3]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(2) & 
-- (((!\conect_2|cur_iter[3]~DUPLICATE_q\)) # (\conect_2|xr\(31)))) ) ) ) # ( !\conect_2|ShiftRight0~36_combout\ & ( \conect_2|ShiftRight0~44_combout\ & ( (!\conect_2|cur_iter\(2) & (((\conect_2|ShiftRight0~28_combout\) # 
-- (\conect_2|cur_iter[3]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(2) & (\conect_2|xr\(31) & (\conect_2|cur_iter[3]~DUPLICATE_q\))) ) ) ) # ( \conect_2|ShiftRight0~36_combout\ & ( !\conect_2|ShiftRight0~44_combout\ & ( (!\conect_2|cur_iter\(2) & 
-- (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & \conect_2|ShiftRight0~28_combout\)))) # (\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter[3]~DUPLICATE_q\)) # (\conect_2|xr\(31)))) ) ) ) # ( !\conect_2|ShiftRight0~36_combout\ & ( !\conect_2|ShiftRight0~44_combout\ 
-- & ( (!\conect_2|cur_iter\(2) & (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & \conect_2|ShiftRight0~28_combout\)))) # (\conect_2|cur_iter\(2) & (\conect_2|xr\(31) & (\conect_2|cur_iter[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr\(31),
	datab => \conect_2|ALT_INV_cur_iter\(2),
	datac => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight0~28_combout\,
	datae => \conect_2|ALT_INV_ShiftRight0~36_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~44_combout\,
	combout => \conect_2|ShiftRight0~51_combout\);

-- Location: MLABCELL_X65_Y9_N6
\conect_2|Add4~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~85_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~52_combout\) ) + ( \conect_2|yr\(21) ) + ( \conect_2|Add4~82\ ))
-- \conect_2|Add4~86\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~52_combout\) ) + ( \conect_2|yr\(21) ) + ( \conect_2|Add4~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight0~52_combout\,
	dataf => \conect_2|ALT_INV_yr\(21),
	cin => \conect_2|Add4~82\,
	sumout => \conect_2|Add4~85_sumout\,
	cout => \conect_2|Add4~86\);

-- Location: FF_X65_Y9_N7
\conect_2|yr[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[21]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y12_N39
\conect_2|ShiftRight1~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~30_combout\ = ( \conect_2|yr[22]~DUPLICATE_q\ & ( \conect_2|yr[21]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\) # ((!\conect_2|cur_iter\(0) & ((\conect_2|yr[23]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & 
-- (\conect_2|yr\(24)))) ) ) ) # ( !\conect_2|yr[22]~DUPLICATE_q\ & ( \conect_2|yr[21]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (!\conect_2|cur_iter\(0))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0) & 
-- ((\conect_2|yr[23]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (\conect_2|yr\(24))))) ) ) ) # ( \conect_2|yr[22]~DUPLICATE_q\ & ( !\conect_2|yr[21]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|cur_iter\(0))) # 
-- (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0) & ((\conect_2|yr[23]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (\conect_2|yr\(24))))) ) ) ) # ( !\conect_2|yr[22]~DUPLICATE_q\ & ( !\conect_2|yr[21]~DUPLICATE_q\ & ( 
-- (\conect_2|cur_iter[1]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0) & ((\conect_2|yr[23]~DUPLICATE_q\))) # (\conect_2|cur_iter\(0) & (\conect_2|yr\(24))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(0),
	datac => \conect_2|ALT_INV_yr\(24),
	datad => \conect_2|ALT_INV_yr[23]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_yr[22]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr[21]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~30_combout\);

-- Location: MLABCELL_X65_Y12_N48
\conect_2|ShiftRight1~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~52_combout\ = ( \conect_2|ShiftRight1~46_combout\ & ( \conect_2|ShiftRight1~30_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\) # ((!\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight1~38_combout\))) # (\conect_2|cur_iter\(3) & 
-- (\conect_2|yr[31]~DUPLICATE_q\))) ) ) ) # ( !\conect_2|ShiftRight1~46_combout\ & ( \conect_2|ShiftRight1~30_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (!\conect_2|cur_iter\(3))) # (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(3) & 
-- ((\conect_2|ShiftRight1~38_combout\))) # (\conect_2|cur_iter\(3) & (\conect_2|yr[31]~DUPLICATE_q\)))) ) ) ) # ( \conect_2|ShiftRight1~46_combout\ & ( !\conect_2|ShiftRight1~30_combout\ & ( (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|cur_iter\(3))) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight1~38_combout\))) # (\conect_2|cur_iter\(3) & (\conect_2|yr[31]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|ShiftRight1~46_combout\ & ( !\conect_2|ShiftRight1~30_combout\ & ( 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight1~38_combout\))) # (\conect_2|cur_iter\(3) & (\conect_2|yr[31]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(3),
	datac => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight1~38_combout\,
	datae => \conect_2|ALT_INV_ShiftRight1~46_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~30_combout\,
	combout => \conect_2|ShiftRight1~52_combout\);

-- Location: FF_X63_Y9_N8
\conect_2|xr[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[21]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y10_N24
\conect_2|ShiftRight0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~30_combout\ = ( \conect_2|xr\(24) & ( \conect_2|xr[22]~DUPLICATE_q\ & ( ((!\conect_2|cur_iter\(1) & ((\conect_2|xr[21]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (\conect_2|xr\(23)))) # (\conect_2|cur_iter[0]~DUPLICATE_q\) ) ) ) # ( 
-- !\conect_2|xr\(24) & ( \conect_2|xr[22]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1) & ((\conect_2|xr[21]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (\conect_2|xr\(23))))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- (((!\conect_2|cur_iter\(1))))) ) ) ) # ( \conect_2|xr\(24) & ( !\conect_2|xr[22]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1) & ((\conect_2|xr[21]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (\conect_2|xr\(23))))) # 
-- (\conect_2|cur_iter[0]~DUPLICATE_q\ & (((\conect_2|cur_iter\(1))))) ) ) ) # ( !\conect_2|xr\(24) & ( !\conect_2|xr[22]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1) & ((\conect_2|xr[21]~DUPLICATE_q\))) # 
-- (\conect_2|cur_iter\(1) & (\conect_2|xr\(23))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_xr\(23),
	datac => \conect_2|ALT_INV_cur_iter\(1),
	datad => \conect_2|ALT_INV_xr[21]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_xr\(24),
	dataf => \conect_2|ALT_INV_xr[22]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~30_combout\);

-- Location: LABCELL_X62_Y9_N45
\conect_2|ShiftRight0~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~52_combout\ = ( \conect_2|ShiftRight0~30_combout\ & ( \conect_2|ShiftRight0~46_combout\ & ( (!\conect_2|cur_iter\(2)) # ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight0~38_combout\)) # 
-- (\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|xr\(31))))) ) ) ) # ( !\conect_2|ShiftRight0~30_combout\ & ( \conect_2|ShiftRight0~46_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight0~38_combout\ & ((\conect_2|cur_iter\(2))))) # 
-- (\conect_2|cur_iter[3]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(2)) # (\conect_2|xr\(31))))) ) ) ) # ( \conect_2|ShiftRight0~30_combout\ & ( !\conect_2|ShiftRight0~46_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(2))) # 
-- (\conect_2|ShiftRight0~38_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (((\conect_2|xr\(31) & \conect_2|cur_iter\(2))))) ) ) ) # ( !\conect_2|ShiftRight0~30_combout\ & ( !\conect_2|ShiftRight0~46_combout\ & ( (\conect_2|cur_iter\(2) & 
-- ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight0~38_combout\)) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|xr\(31)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight0~38_combout\,
	datab => \conect_2|ALT_INV_xr\(31),
	datac => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_cur_iter\(2),
	datae => \conect_2|ALT_INV_ShiftRight0~30_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~46_combout\,
	combout => \conect_2|ShiftRight0~52_combout\);

-- Location: MLABCELL_X65_Y9_N9
\conect_2|Add4~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~89_sumout\ = SUM(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~53_combout\) ) + ( \conect_2|yr\(22) ) + ( \conect_2|Add4~86\ ))
-- \conect_2|Add4~90\ = CARRY(( !\conect_2|zr\(31) $ (!\conect_2|ShiftRight0~53_combout\) ) + ( \conect_2|yr\(22) ) + ( \conect_2|Add4~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_yr\(22),
	datad => \conect_2|ALT_INV_ShiftRight0~53_combout\,
	cin => \conect_2|Add4~86\,
	sumout => \conect_2|Add4~89_sumout\,
	cout => \conect_2|Add4~90\);

-- Location: FF_X65_Y9_N11
\conect_2|yr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(22));

-- Location: MLABCELL_X65_Y9_N12
\conect_2|Add4~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~93_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|ShiftRight0~54_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( \conect_2|yr\(23) ) + ( 
-- \conect_2|Add4~90\ ))
-- \conect_2|Add4~94\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|ShiftRight0~54_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( \conect_2|yr\(23) ) + ( \conect_2|Add4~90\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight0~54_combout\,
	dataf => \conect_2|ALT_INV_yr\(23),
	cin => \conect_2|Add4~90\,
	sumout => \conect_2|Add4~93_sumout\,
	cout => \conect_2|Add4~94\);

-- Location: FF_X65_Y9_N13
\conect_2|yr[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[23]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y8_N21
\conect_2|ShiftRight1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~34_combout\ = ( \conect_2|yr\(24) & ( \conect_2|yr[26]~DUPLICATE_q\ & ( ((!\conect_2|cur_iter\(1) & ((\conect_2|yr[23]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (\conect_2|yr[25]~DUPLICATE_q\))) # 
-- (\conect_2|cur_iter[0]~DUPLICATE_q\) ) ) ) # ( !\conect_2|yr\(24) & ( \conect_2|yr[26]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (((\conect_2|yr[23]~DUPLICATE_q\ & !\conect_2|cur_iter[0]~DUPLICATE_q\)))) # (\conect_2|cur_iter\(1) & 
-- (((\conect_2|cur_iter[0]~DUPLICATE_q\)) # (\conect_2|yr[25]~DUPLICATE_q\))) ) ) ) # ( \conect_2|yr\(24) & ( !\conect_2|yr[26]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (((\conect_2|cur_iter[0]~DUPLICATE_q\) # (\conect_2|yr[23]~DUPLICATE_q\)))) # 
-- (\conect_2|cur_iter\(1) & (\conect_2|yr[25]~DUPLICATE_q\ & ((!\conect_2|cur_iter[0]~DUPLICATE_q\)))) ) ) ) # ( !\conect_2|yr\(24) & ( !\conect_2|yr[26]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(1) & 
-- ((\conect_2|yr[23]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (\conect_2|yr[25]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr[25]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(1),
	datac => \conect_2|ALT_INV_yr[23]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_yr\(24),
	dataf => \conect_2|ALT_INV_yr[26]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~34_combout\);

-- Location: LABCELL_X63_Y8_N36
\conect_2|ShiftRight1~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~54_combout\ = ( \conect_2|cur_iter[2]~DUPLICATE_q\ & ( \conect_2|ShiftRight1~42_combout\ ) ) # ( !\conect_2|cur_iter[2]~DUPLICATE_q\ & ( \conect_2|ShiftRight1~42_combout\ & ( \conect_2|ShiftRight1~34_combout\ ) ) ) # ( 
-- !\conect_2|cur_iter[2]~DUPLICATE_q\ & ( !\conect_2|ShiftRight1~42_combout\ & ( \conect_2|ShiftRight1~34_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_2|ALT_INV_ShiftRight1~34_combout\,
	datae => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_ShiftRight1~42_combout\,
	combout => \conect_2|ShiftRight1~54_combout\);

-- Location: LABCELL_X63_Y9_N12
\conect_2|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~93_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~54_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr\(23) ) + ( 
-- \conect_2|Add0~90\ ))
-- \conect_2|Add0~94\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~54_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr\(23) ) + ( \conect_2|Add0~90\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight1~54_combout\,
	dataf => \conect_2|ALT_INV_xr\(23),
	cin => \conect_2|Add0~90\,
	sumout => \conect_2|Add0~93_sumout\,
	cout => \conect_2|Add0~94\);

-- Location: FF_X63_Y9_N14
\conect_2|xr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(23));

-- Location: LABCELL_X63_Y9_N48
\conect_2|ShiftRight0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~34_combout\ = ( \conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[26]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[24]~DUPLICATE_q\ ) ) ) # ( 
-- \conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[25]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr\(23) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[25]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_xr[24]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[26]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr\(23),
	datae => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~34_combout\);

-- Location: LABCELL_X66_Y9_N54
\conect_2|ShiftRight0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~54_combout\ = ( \conect_2|ShiftRight0~34_combout\ & ( (!\conect_2|cur_iter\(2)) # (\conect_2|ShiftRight0~42_combout\) ) ) # ( !\conect_2|ShiftRight0~34_combout\ & ( (\conect_2|cur_iter\(2) & \conect_2|ShiftRight0~42_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_cur_iter\(2),
	datad => \conect_2|ALT_INV_ShiftRight0~42_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~34_combout\,
	combout => \conect_2|ShiftRight0~54_combout\);

-- Location: MLABCELL_X65_Y9_N15
\conect_2|Add4~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~97_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|ShiftRight0~55_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( \conect_2|yr\(24) ) + ( 
-- \conect_2|Add4~94\ ))
-- \conect_2|Add4~98\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|ShiftRight0~55_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( \conect_2|yr\(24) ) + ( \conect_2|Add4~94\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight0~55_combout\,
	dataf => \conect_2|ALT_INV_yr\(24),
	cin => \conect_2|Add4~94\,
	sumout => \conect_2|Add4~97_sumout\,
	cout => \conect_2|Add4~98\);

-- Location: FF_X65_Y9_N17
\conect_2|yr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~97_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(24));

-- Location: MLABCELL_X65_Y9_N18
\conect_2|Add4~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~101_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter\(3) & ((!\conect_2|ShiftRight0~56_combout\))) # (\conect_2|cur_iter\(3) & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( \conect_2|yr[25]~DUPLICATE_q\ ) + ( \conect_2|Add4~98\ ))
-- \conect_2|Add4~102\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter\(3) & ((!\conect_2|ShiftRight0~56_combout\))) # (\conect_2|cur_iter\(3) & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( \conect_2|yr[25]~DUPLICATE_q\ ) + ( \conect_2|Add4~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_cur_iter\(3),
	datad => \conect_2|ALT_INV_ShiftRight0~56_combout\,
	dataf => \conect_2|ALT_INV_yr[25]~DUPLICATE_q\,
	cin => \conect_2|Add4~98\,
	sumout => \conect_2|Add4~101_sumout\,
	cout => \conect_2|Add4~102\);

-- Location: FF_X65_Y9_N20
\conect_2|yr[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~101_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[25]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y12_N45
\conect_2|ShiftRight1~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~38_combout\ = ( \conect_2|yr[25]~DUPLICATE_q\ & ( \conect_2|yr\(28) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0)) # ((\conect_2|yr\(26))))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (((\conect_2|yr\(27))) # 
-- (\conect_2|cur_iter\(0)))) ) ) ) # ( !\conect_2|yr[25]~DUPLICATE_q\ & ( \conect_2|yr\(28) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|cur_iter\(0) & ((\conect_2|yr\(26))))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (((\conect_2|yr\(27))) # 
-- (\conect_2|cur_iter\(0)))) ) ) ) # ( \conect_2|yr[25]~DUPLICATE_q\ & ( !\conect_2|yr\(28) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(0)) # ((\conect_2|yr\(26))))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (!\conect_2|cur_iter\(0) & 
-- (\conect_2|yr\(27)))) ) ) ) # ( !\conect_2|yr[25]~DUPLICATE_q\ & ( !\conect_2|yr\(28) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|cur_iter\(0) & ((\conect_2|yr\(26))))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (!\conect_2|cur_iter\(0) & 
-- (\conect_2|yr\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter\(0),
	datac => \conect_2|ALT_INV_yr\(27),
	datad => \conect_2|ALT_INV_yr\(26),
	datae => \conect_2|ALT_INV_yr[25]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr\(28),
	combout => \conect_2|ShiftRight1~38_combout\);

-- Location: MLABCELL_X65_Y12_N27
\conect_2|ShiftRight1~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~56_combout\ = ( \conect_2|ShiftRight1~46_combout\ & ( (\conect_2|cur_iter[2]~DUPLICATE_q\) # (\conect_2|ShiftRight1~38_combout\) ) ) # ( !\conect_2|ShiftRight1~46_combout\ & ( (\conect_2|ShiftRight1~38_combout\ & 
-- !\conect_2|cur_iter[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_2|ALT_INV_ShiftRight1~38_combout\,
	datad => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_ShiftRight1~46_combout\,
	combout => \conect_2|ShiftRight1~56_combout\);

-- Location: LABCELL_X66_Y8_N36
\conect_2|ShiftRight1~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~55_combout\ = ( \conect_2|ShiftRight1~44_combout\ & ( (\conect_2|ShiftRight1~36_combout\) # (\conect_2|cur_iter\(2)) ) ) # ( !\conect_2|ShiftRight1~44_combout\ & ( (!\conect_2|cur_iter\(2) & \conect_2|ShiftRight1~36_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(2),
	datac => \conect_2|ALT_INV_ShiftRight1~36_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~44_combout\,
	combout => \conect_2|ShiftRight1~55_combout\);

-- Location: LABCELL_X63_Y9_N15
\conect_2|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~97_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~55_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr[24]~DUPLICATE_q\ ) + ( 
-- \conect_2|Add0~94\ ))
-- \conect_2|Add0~98\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~55_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr[24]~DUPLICATE_q\ ) + ( 
-- \conect_2|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight1~55_combout\,
	dataf => \conect_2|ALT_INV_xr[24]~DUPLICATE_q\,
	cin => \conect_2|Add0~94\,
	sumout => \conect_2|Add0~97_sumout\,
	cout => \conect_2|Add0~98\);

-- Location: LABCELL_X63_Y9_N18
\conect_2|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~101_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~56_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr[25]~DUPLICATE_q\ ) + ( 
-- \conect_2|Add0~98\ ))
-- \conect_2|Add0~102\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~56_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr[25]~DUPLICATE_q\ ) + ( 
-- \conect_2|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight1~56_combout\,
	dataf => \conect_2|ALT_INV_xr[25]~DUPLICATE_q\,
	cin => \conect_2|Add0~98\,
	sumout => \conect_2|Add0~101_sumout\,
	cout => \conect_2|Add0~102\);

-- Location: FF_X63_Y9_N20
\conect_2|xr[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~101_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[25]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y9_N0
\conect_2|ShiftRight0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~38_combout\ = ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|cur_iter\(1) & ( \conect_2|xr\(28) ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|cur_iter\(1) & ( \conect_2|xr[27]~DUPLICATE_q\ ) ) ) # ( 
-- \conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(1) & ( \conect_2|xr[26]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(1) & ( \conect_2|xr[25]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr\(28),
	datab => \conect_2|ALT_INV_xr[27]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[26]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr[25]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter\(1),
	combout => \conect_2|ShiftRight0~38_combout\);

-- Location: LABCELL_X66_Y9_N36
\conect_2|ShiftRight0~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~56_combout\ = ( \conect_2|ShiftRight0~46_combout\ & ( (\conect_2|ShiftRight0~38_combout\) # (\conect_2|cur_iter\(2)) ) ) # ( !\conect_2|ShiftRight0~46_combout\ & ( (!\conect_2|cur_iter\(2) & \conect_2|ShiftRight0~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_2|ALT_INV_cur_iter\(2),
	datad => \conect_2|ALT_INV_ShiftRight0~38_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~46_combout\,
	combout => \conect_2|ShiftRight0~56_combout\);

-- Location: MLABCELL_X65_Y9_N21
\conect_2|Add4~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~105_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|ShiftRight0~57_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( \conect_2|yr[26]~DUPLICATE_q\ ) + ( 
-- \conect_2|Add4~102\ ))
-- \conect_2|Add4~106\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((!\conect_2|ShiftRight0~57_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( \conect_2|yr[26]~DUPLICATE_q\ ) + ( 
-- \conect_2|Add4~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_ShiftRight0~57_combout\,
	dataf => \conect_2|ALT_INV_yr[26]~DUPLICATE_q\,
	cin => \conect_2|Add4~102\,
	sumout => \conect_2|Add4~105_sumout\,
	cout => \conect_2|Add4~106\);

-- Location: FF_X65_Y9_N23
\conect_2|yr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~105_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(26));

-- Location: MLABCELL_X65_Y11_N48
\conect_2|ShiftRight1~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~40_combout\ = ( \conect_2|yr\(27) & ( \conect_2|yr\(29) & ( ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr\(26)))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr\(28)))) # (\conect_2|cur_iter\(0)) ) ) ) # ( 
-- !\conect_2|yr\(27) & ( \conect_2|yr\(29) & ( (!\conect_2|cur_iter\(0) & ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr\(26)))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr\(28))))) # (\conect_2|cur_iter\(0) & 
-- (\conect_2|cur_iter[1]~DUPLICATE_q\)) ) ) ) # ( \conect_2|yr\(27) & ( !\conect_2|yr\(29) & ( (!\conect_2|cur_iter\(0) & ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr\(26)))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr\(28))))) # 
-- (\conect_2|cur_iter\(0) & (!\conect_2|cur_iter[1]~DUPLICATE_q\)) ) ) ) # ( !\conect_2|yr\(27) & ( !\conect_2|yr\(29) & ( (!\conect_2|cur_iter\(0) & ((!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|yr\(26)))) # (\conect_2|cur_iter[1]~DUPLICATE_q\ & 
-- (\conect_2|yr\(28))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(0),
	datab => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_yr\(28),
	datad => \conect_2|ALT_INV_yr\(26),
	datae => \conect_2|ALT_INV_yr\(27),
	dataf => \conect_2|ALT_INV_yr\(29),
	combout => \conect_2|ShiftRight1~40_combout\);

-- Location: LABCELL_X63_Y11_N0
\conect_2|ShiftRight1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~57_combout\ = ( \conect_2|ShiftRight1~48_combout\ & ( \conect_2|ShiftRight1~40_combout\ ) ) # ( !\conect_2|ShiftRight1~48_combout\ & ( \conect_2|ShiftRight1~40_combout\ & ( !\conect_2|cur_iter[2]~DUPLICATE_q\ ) ) ) # ( 
-- \conect_2|ShiftRight1~48_combout\ & ( !\conect_2|ShiftRight1~40_combout\ & ( \conect_2|cur_iter[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datae => \conect_2|ALT_INV_ShiftRight1~48_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~40_combout\,
	combout => \conect_2|ShiftRight1~57_combout\);

-- Location: LABCELL_X63_Y9_N21
\conect_2|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~105_sumout\ = SUM(( \conect_2|xr[26]~DUPLICATE_q\ ) + ( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~57_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( 
-- \conect_2|Add0~102\ ))
-- \conect_2|Add0~106\ = CARRY(( \conect_2|xr[26]~DUPLICATE_q\ ) + ( !\conect_2|zr\(31) $ (((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~57_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( 
-- \conect_2|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_xr[26]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_ShiftRight1~57_combout\,
	cin => \conect_2|Add0~102\,
	sumout => \conect_2|Add0~105_sumout\,
	cout => \conect_2|Add0~106\);

-- Location: FF_X63_Y9_N23
\conect_2|xr[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~105_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[26]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y9_N24
\conect_2|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~109_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((\conect_2|ShiftRight1~42_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr[27]~DUPLICATE_q\ ) + ( 
-- \conect_2|Add0~106\ ))
-- \conect_2|Add0~110\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((\conect_2|ShiftRight1~42_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr[27]~DUPLICATE_q\ ) + ( 
-- \conect_2|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~58_combout\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight1~42_combout\,
	dataf => \conect_2|ALT_INV_xr[27]~DUPLICATE_q\,
	cin => \conect_2|Add0~106\,
	sumout => \conect_2|Add0~109_sumout\,
	cout => \conect_2|Add0~110\);

-- Location: FF_X63_Y9_N25
\conect_2|xr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~109_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(27));

-- Location: LABCELL_X66_Y9_N30
\conect_2|ShiftRight0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~42_combout\ = ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|cur_iter\(1) & ( \conect_2|xr\(30) ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|cur_iter\(1) & ( \conect_2|xr[29]~DUPLICATE_q\ ) ) ) # ( 
-- \conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(1) & ( \conect_2|xr[28]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( !\conect_2|cur_iter\(1) & ( \conect_2|xr\(27) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr\(27),
	datab => \conect_2|ALT_INV_xr[29]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[28]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr\(30),
	datae => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter\(1),
	combout => \conect_2|ShiftRight0~42_combout\);

-- Location: MLABCELL_X65_Y9_N24
\conect_2|Add4~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~109_sumout\ = SUM(( \conect_2|yr\(27) ) + ( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((!\conect_2|ShiftRight0~42_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( 
-- \conect_2|Add4~106\ ))
-- \conect_2|Add4~110\ = CARRY(( \conect_2|yr\(27) ) + ( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((!\conect_2|ShiftRight0~42_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( \conect_2|Add4~106\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000010010110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~58_combout\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_yr\(27),
	dataf => \conect_2|ALT_INV_ShiftRight0~42_combout\,
	cin => \conect_2|Add4~106\,
	sumout => \conect_2|Add4~109_sumout\,
	cout => \conect_2|Add4~110\);

-- Location: FF_X65_Y9_N26
\conect_2|yr[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~109_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[27]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y8_N48
\conect_2|ShiftRight1~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~42_combout\ = ( \conect_2|yr\(28) & ( \conect_2|yr\(29) & ( (!\conect_2|cur_iter\(1) & (((\conect_2|cur_iter[0]~DUPLICATE_q\)) # (\conect_2|yr[27]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (((!\conect_2|cur_iter[0]~DUPLICATE_q\) # 
-- (\conect_2|yr\(30))))) ) ) ) # ( !\conect_2|yr\(28) & ( \conect_2|yr\(29) & ( (!\conect_2|cur_iter\(1) & (\conect_2|yr[27]~DUPLICATE_q\ & (!\conect_2|cur_iter[0]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (((!\conect_2|cur_iter[0]~DUPLICATE_q\) # 
-- (\conect_2|yr\(30))))) ) ) ) # ( \conect_2|yr\(28) & ( !\conect_2|yr\(29) & ( (!\conect_2|cur_iter\(1) & (((\conect_2|cur_iter[0]~DUPLICATE_q\)) # (\conect_2|yr[27]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (((\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- \conect_2|yr\(30))))) ) ) ) # ( !\conect_2|yr\(28) & ( !\conect_2|yr\(29) & ( (!\conect_2|cur_iter\(1) & (\conect_2|yr[27]~DUPLICATE_q\ & (!\conect_2|cur_iter[0]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (((\conect_2|cur_iter[0]~DUPLICATE_q\ & 
-- \conect_2|yr\(30))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(1),
	datab => \conect_2|ALT_INV_yr[27]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_yr\(30),
	datae => \conect_2|ALT_INV_yr\(28),
	dataf => \conect_2|ALT_INV_yr\(29),
	combout => \conect_2|ShiftRight1~42_combout\);

-- Location: LABCELL_X63_Y9_N27
\conect_2|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~113_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((\conect_2|ShiftRight1~44_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr[28]~DUPLICATE_q\ ) + ( 
-- \conect_2|Add0~110\ ))
-- \conect_2|Add0~114\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((\conect_2|ShiftRight1~44_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr[28]~DUPLICATE_q\ ) + ( 
-- \conect_2|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~58_combout\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight1~44_combout\,
	dataf => \conect_2|ALT_INV_xr[28]~DUPLICATE_q\,
	cin => \conect_2|Add0~110\,
	sumout => \conect_2|Add0~113_sumout\,
	cout => \conect_2|Add0~114\);

-- Location: FF_X63_Y9_N28
\conect_2|xr[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~113_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[28]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y9_N24
\conect_2|ShiftRight0~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~44_combout\ = ( \conect_2|xr[28]~DUPLICATE_q\ & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (\conect_2|xr[29]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1) & ((\conect_2|xr\(31)))) ) ) ) # ( 
-- !\conect_2|xr[28]~DUPLICATE_q\ & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & (\conect_2|xr[29]~DUPLICATE_q\)) # (\conect_2|cur_iter\(1) & ((\conect_2|xr\(31)))) ) ) ) # ( \conect_2|xr[28]~DUPLICATE_q\ & ( 
-- !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1)) # (\conect_2|xr\(30)) ) ) ) # ( !\conect_2|xr[28]~DUPLICATE_q\ & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( (\conect_2|xr\(30) & \conect_2|cur_iter\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[29]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_xr\(30),
	datac => \conect_2|ALT_INV_xr\(31),
	datad => \conect_2|ALT_INV_cur_iter\(1),
	datae => \conect_2|ALT_INV_xr[28]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~44_combout\);

-- Location: MLABCELL_X65_Y9_N27
\conect_2|Add4~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~113_sumout\ = SUM(( \conect_2|yr\(28) ) + ( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((!\conect_2|ShiftRight0~44_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( 
-- \conect_2|Add4~110\ ))
-- \conect_2|Add4~114\ = CARRY(( \conect_2|yr\(28) ) + ( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((!\conect_2|ShiftRight0~44_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( \conect_2|Add4~110\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000010010110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~58_combout\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_yr\(28),
	dataf => \conect_2|ALT_INV_ShiftRight0~44_combout\,
	cin => \conect_2|Add4~110\,
	sumout => \conect_2|Add4~113_sumout\,
	cout => \conect_2|Add4~114\);

-- Location: FF_X65_Y9_N29
\conect_2|yr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~113_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(28));

-- Location: LABCELL_X66_Y8_N42
\conect_2|ShiftRight1~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~44_combout\ = ( \conect_2|yr[31]~DUPLICATE_q\ & ( \conect_2|yr\(28) & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(1))) # (\conect_2|yr\(30)))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & (((\conect_2|cur_iter\(1)) # 
-- (\conect_2|yr\(29))))) ) ) ) # ( !\conect_2|yr[31]~DUPLICATE_q\ & ( \conect_2|yr\(28) & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(1))) # (\conect_2|yr\(30)))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & (((\conect_2|yr\(29) & 
-- !\conect_2|cur_iter\(1))))) ) ) ) # ( \conect_2|yr[31]~DUPLICATE_q\ & ( !\conect_2|yr\(28) & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|yr\(30) & ((\conect_2|cur_iter\(1))))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & (((\conect_2|cur_iter\(1)) # 
-- (\conect_2|yr\(29))))) ) ) ) # ( !\conect_2|yr[31]~DUPLICATE_q\ & ( !\conect_2|yr\(28) & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (\conect_2|yr\(30) & ((\conect_2|cur_iter\(1))))) # (\conect_2|cur_iter[0]~DUPLICATE_q\ & (((\conect_2|yr\(29) & 
-- !\conect_2|cur_iter\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101111111110011010100001111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr\(30),
	datab => \conect_2|ALT_INV_yr\(29),
	datac => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_cur_iter\(1),
	datae => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr\(28),
	combout => \conect_2|ShiftRight1~44_combout\);

-- Location: LABCELL_X63_Y9_N30
\conect_2|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~117_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((\conect_2|ShiftRight1~46_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr\(29) ) + ( 
-- \conect_2|Add0~114\ ))
-- \conect_2|Add0~118\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((\conect_2|ShiftRight1~46_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr\(29) ) + ( \conect_2|Add0~114\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~58_combout\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight1~46_combout\,
	dataf => \conect_2|ALT_INV_xr\(29),
	cin => \conect_2|Add0~114\,
	sumout => \conect_2|Add0~117_sumout\,
	cout => \conect_2|Add0~118\);

-- Location: FF_X63_Y9_N31
\conect_2|xr[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[29]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y9_N39
\conect_2|ShiftRight0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~46_combout\ = ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & ((\conect_2|xr\(30)))) # (\conect_2|cur_iter\(1) & (\conect_2|xr\(31))) ) ) # ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( (!\conect_2|cur_iter\(1) & 
-- ((\conect_2|xr[29]~DUPLICATE_q\))) # (\conect_2|cur_iter\(1) & (\conect_2|xr\(31))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr\(31),
	datab => \conect_2|ALT_INV_xr\(30),
	datac => \conect_2|ALT_INV_cur_iter\(1),
	datad => \conect_2|ALT_INV_xr[29]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~46_combout\);

-- Location: MLABCELL_X65_Y9_N30
\conect_2|Add4~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~117_sumout\ = SUM(( \conect_2|yr\(29) ) + ( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((!\conect_2|ShiftRight0~46_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( 
-- \conect_2|Add4~114\ ))
-- \conect_2|Add4~118\ = CARRY(( \conect_2|yr\(29) ) + ( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((!\conect_2|ShiftRight0~46_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( \conect_2|Add4~114\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000010010110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~58_combout\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_yr\(29),
	dataf => \conect_2|ALT_INV_ShiftRight0~46_combout\,
	cin => \conect_2|Add4~114\,
	sumout => \conect_2|Add4~117_sumout\,
	cout => \conect_2|Add4~118\);

-- Location: FF_X65_Y9_N31
\conect_2|yr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(29));

-- Location: MLABCELL_X65_Y12_N54
\conect_2|ShiftRight1~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~46_combout\ = ( \conect_2|yr[31]~DUPLICATE_q\ & ( \conect_2|yr\(30) & ( ((\conect_2|cur_iter\(0)) # (\conect_2|yr\(29))) # (\conect_2|cur_iter[1]~DUPLICATE_q\) ) ) ) # ( !\conect_2|yr[31]~DUPLICATE_q\ & ( \conect_2|yr\(30) & ( 
-- (!\conect_2|cur_iter[1]~DUPLICATE_q\ & ((\conect_2|cur_iter\(0)) # (\conect_2|yr\(29)))) ) ) ) # ( \conect_2|yr[31]~DUPLICATE_q\ & ( !\conect_2|yr\(30) & ( ((\conect_2|yr\(29) & !\conect_2|cur_iter\(0))) # (\conect_2|cur_iter[1]~DUPLICATE_q\) ) ) ) # ( 
-- !\conect_2|yr[31]~DUPLICATE_q\ & ( !\conect_2|yr\(30) & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & (\conect_2|yr\(29) & !\conect_2|cur_iter\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000001111110011001100001100110011000011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_yr\(29),
	datad => \conect_2|ALT_INV_cur_iter\(0),
	datae => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	dataf => \conect_2|ALT_INV_yr\(30),
	combout => \conect_2|ShiftRight1~46_combout\);

-- Location: LABCELL_X63_Y9_N33
\conect_2|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~121_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((\conect_2|ShiftRight1~48_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr\(30) ) + ( 
-- \conect_2|Add0~118\ ))
-- \conect_2|Add0~122\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((\conect_2|ShiftRight1~48_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (\conect_2|yr[31]~DUPLICATE_q\)))) ) + ( \conect_2|xr\(30) ) + ( \conect_2|Add0~118\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~58_combout\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight1~48_combout\,
	dataf => \conect_2|ALT_INV_xr\(30),
	cin => \conect_2|Add0~118\,
	sumout => \conect_2|Add0~121_sumout\,
	cout => \conect_2|Add0~122\);

-- Location: FF_X63_Y9_N35
\conect_2|xr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~121_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(30));

-- Location: LABCELL_X66_Y9_N15
\conect_2|ShiftRight0~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~48_combout\ = ( \conect_2|xr\(31) & ( ((\conect_2|xr\(30)) # (\conect_2|cur_iter\(1))) # (\conect_2|cur_iter[0]~DUPLICATE_q\) ) ) # ( !\conect_2|xr\(31) & ( (!\conect_2|cur_iter[0]~DUPLICATE_q\ & (!\conect_2|cur_iter\(1) & 
-- \conect_2|xr\(30))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_cur_iter\(1),
	datad => \conect_2|ALT_INV_xr\(30),
	dataf => \conect_2|ALT_INV_xr\(31),
	combout => \conect_2|ShiftRight0~48_combout\);

-- Location: MLABCELL_X65_Y9_N33
\conect_2|Add4~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~121_sumout\ = SUM(( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((!\conect_2|ShiftRight0~48_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( \conect_2|yr\(30) ) + ( 
-- \conect_2|Add4~118\ ))
-- \conect_2|Add4~122\ = CARRY(( !\conect_2|zr\(31) $ (((!\conect_2|ShiftRight1~58_combout\ & ((!\conect_2|ShiftRight0~48_combout\))) # (\conect_2|ShiftRight1~58_combout\ & (!\conect_2|xr[31]~DUPLICATE_q\)))) ) + ( \conect_2|yr\(30) ) + ( \conect_2|Add4~118\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[31]~DUPLICATE_q\,
	datab => \conect_2|ALT_INV_ShiftRight1~58_combout\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_ShiftRight0~48_combout\,
	dataf => \conect_2|ALT_INV_yr\(30),
	cin => \conect_2|Add4~118\,
	sumout => \conect_2|Add4~121_sumout\,
	cout => \conect_2|Add4~122\);

-- Location: FF_X65_Y9_N35
\conect_2|yr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~121_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(30));

-- Location: LABCELL_X63_Y11_N54
\conect_2|ShiftRight1~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~48_combout\ = ( \conect_2|cur_iter\(0) & ( \conect_2|yr[31]~DUPLICATE_q\ ) ) # ( !\conect_2|cur_iter\(0) & ( \conect_2|yr[31]~DUPLICATE_q\ & ( (\conect_2|yr\(30)) # (\conect_2|cur_iter[1]~DUPLICATE_q\) ) ) ) # ( 
-- !\conect_2|cur_iter\(0) & ( !\conect_2|yr[31]~DUPLICATE_q\ & ( (!\conect_2|cur_iter[1]~DUPLICATE_q\ & \conect_2|yr\(30)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \conect_2|ALT_INV_cur_iter[1]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_yr\(30),
	datae => \conect_2|ALT_INV_cur_iter\(0),
	dataf => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~48_combout\);

-- Location: LABCELL_X63_Y9_N36
\conect_2|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add0~125_sumout\ = SUM(( \conect_2|xr[31]~DUPLICATE_q\ ) + ( !\conect_2|zr\(31) $ (\conect_2|yr[31]~DUPLICATE_q\) ) + ( \conect_2|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \conect_2|ALT_INV_zr\(31),
	datac => \conect_2|ALT_INV_yr[31]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr[31]~DUPLICATE_q\,
	cin => \conect_2|Add0~122\,
	sumout => \conect_2|Add0~125_sumout\);

-- Location: FF_X63_Y9_N37
\conect_2|xr[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~125_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[31]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y9_N36
\conect_2|Add4~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|Add4~125_sumout\ = SUM(( \conect_2|yr\(31) ) + ( !\conect_2|xr[31]~DUPLICATE_q\ $ (!\conect_2|zr\(31)) ) + ( \conect_2|Add4~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr[31]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_zr\(31),
	datad => \conect_2|ALT_INV_yr\(31),
	cin => \conect_2|Add4~122\,
	sumout => \conect_2|Add4~125_sumout\);

-- Location: FF_X65_Y9_N37
\conect_2|yr[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~125_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[31]~DUPLICATE_q\);

-- Location: FF_X63_Y9_N16
\conect_2|xr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~97_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(24));

-- Location: LABCELL_X66_Y9_N6
\conect_2|ShiftRight0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~32_combout\ = ( \conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[25]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr\(23) ) ) ) # ( 
-- \conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr\(24) ) ) ) # ( !\conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|xr[22]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_xr\(24),
	datab => \conect_2|ALT_INV_xr[22]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_xr[25]~DUPLICATE_q\,
	datad => \conect_2|ALT_INV_xr\(23),
	datae => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight0~32_combout\);

-- Location: LABCELL_X67_Y10_N36
\conect_2|ShiftRight0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight0~41_combout\ = ( \conect_2|ShiftRight0~24_combout\ & ( \conect_2|ShiftRight0~40_combout\ & ( ((!\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight0~13_combout\))) # (\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~32_combout\))) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\) ) ) ) # ( !\conect_2|ShiftRight0~24_combout\ & ( \conect_2|ShiftRight0~40_combout\ & ( (!\conect_2|cur_iter\(3) & (!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((\conect_2|ShiftRight0~13_combout\)))) # (\conect_2|cur_iter\(3) 
-- & (((\conect_2|ShiftRight0~32_combout\)) # (\conect_2|cur_iter[2]~DUPLICATE_q\))) ) ) ) # ( \conect_2|ShiftRight0~24_combout\ & ( !\conect_2|ShiftRight0~40_combout\ & ( (!\conect_2|cur_iter\(3) & (((\conect_2|ShiftRight0~13_combout\)) # 
-- (\conect_2|cur_iter[2]~DUPLICATE_q\))) # (\conect_2|cur_iter\(3) & (!\conect_2|cur_iter[2]~DUPLICATE_q\ & (\conect_2|ShiftRight0~32_combout\))) ) ) ) # ( !\conect_2|ShiftRight0~24_combout\ & ( !\conect_2|ShiftRight0~40_combout\ & ( 
-- (!\conect_2|cur_iter[2]~DUPLICATE_q\ & ((!\conect_2|cur_iter\(3) & ((\conect_2|ShiftRight0~13_combout\))) # (\conect_2|cur_iter\(3) & (\conect_2|ShiftRight0~32_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_cur_iter\(3),
	datab => \conect_2|ALT_INV_cur_iter[2]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight0~32_combout\,
	datad => \conect_2|ALT_INV_ShiftRight0~13_combout\,
	datae => \conect_2|ALT_INV_ShiftRight0~24_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight0~40_combout\,
	combout => \conect_2|ShiftRight0~41_combout\);

-- Location: FF_X65_Y10_N46
\conect_2|yr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(14));

-- Location: FF_X65_Y10_N49
\conect_2|yr[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[15]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y10_N0
\conect_2|ShiftRight1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~3_combout\ = ( \conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr[15]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr\(13) ) ) ) # ( 
-- \conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr\(14) ) ) ) # ( !\conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr\(14),
	datab => \conect_2|ALT_INV_yr[15]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_yr\(12),
	datad => \conect_2|ALT_INV_yr\(13),
	datae => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~3_combout\);

-- Location: FF_X65_Y10_N13
\conect_2|yr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(3));

-- Location: FF_X65_Y10_N7
\conect_2|yr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr\(1));

-- Location: LABCELL_X66_Y10_N54
\conect_2|ShiftRight1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~0_combout\ = ( \conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr\(3) ) ) ) # ( !\conect_2|cur_iter\(1) & ( \conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr\(1) ) ) ) # ( \conect_2|cur_iter\(1) & ( 
-- !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr[2]~DUPLICATE_q\ ) ) ) # ( !\conect_2|cur_iter\(1) & ( !\conect_2|cur_iter[0]~DUPLICATE_q\ & ( \conect_2|yr\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_yr\(3),
	datab => \conect_2|ALT_INV_yr[2]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_yr\(1),
	datad => \conect_2|ALT_INV_yr\(0),
	datae => \conect_2|ALT_INV_cur_iter\(1),
	dataf => \conect_2|ALT_INV_cur_iter[0]~DUPLICATE_q\,
	combout => \conect_2|ShiftRight1~0_combout\);

-- Location: LABCELL_X66_Y10_N12
\conect_2|ShiftRight1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conect_2|ShiftRight1~4_combout\ = ( \conect_2|ShiftRight1~0_combout\ & ( \conect_2|ShiftRight1~1_combout\ & ( (!\conect_2|cur_iter\(2)) # ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~2_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ 
-- & (\conect_2|ShiftRight1~3_combout\))) ) ) ) # ( !\conect_2|ShiftRight1~0_combout\ & ( \conect_2|ShiftRight1~1_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & (((\conect_2|ShiftRight1~2_combout\ & \conect_2|cur_iter\(2))))) # 
-- (\conect_2|cur_iter[3]~DUPLICATE_q\ & (((!\conect_2|cur_iter\(2))) # (\conect_2|ShiftRight1~3_combout\))) ) ) ) # ( \conect_2|ShiftRight1~0_combout\ & ( !\conect_2|ShiftRight1~1_combout\ & ( (!\conect_2|cur_iter[3]~DUPLICATE_q\ & 
-- (((!\conect_2|cur_iter\(2)) # (\conect_2|ShiftRight1~2_combout\)))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight1~3_combout\ & ((\conect_2|cur_iter\(2))))) ) ) ) # ( !\conect_2|ShiftRight1~0_combout\ & ( !\conect_2|ShiftRight1~1_combout\ 
-- & ( (\conect_2|cur_iter\(2) & ((!\conect_2|cur_iter[3]~DUPLICATE_q\ & ((\conect_2|ShiftRight1~2_combout\))) # (\conect_2|cur_iter[3]~DUPLICATE_q\ & (\conect_2|ShiftRight1~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conect_2|ALT_INV_ShiftRight1~3_combout\,
	datab => \conect_2|ALT_INV_cur_iter[3]~DUPLICATE_q\,
	datac => \conect_2|ALT_INV_ShiftRight1~2_combout\,
	datad => \conect_2|ALT_INV_cur_iter\(2),
	datae => \conect_2|ALT_INV_ShiftRight1~0_combout\,
	dataf => \conect_2|ALT_INV_ShiftRight1~1_combout\,
	combout => \conect_2|ShiftRight1~4_combout\);

-- Location: FF_X63_Y10_N4
\conect_2|xr[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr[0]~DUPLICATE_q\);

-- Location: FF_X63_Y9_N1
\conect_2|xr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add0~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|xr\(19));

-- Location: FF_X65_Y9_N4
\conect_2|yr[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add4~81_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|yr[20]~DUPLICATE_q\);

-- Location: FF_X61_Y11_N4
\conect_2|zr[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr[0]~DUPLICATE_q\);

-- Location: FF_X61_Y11_N7
\conect_2|zr[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr[1]~DUPLICATE_q\);

-- Location: FF_X61_Y11_N13
\conect_2|zr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(3));

-- Location: FF_X61_Y11_N16
\conect_2|zr[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr[4]~DUPLICATE_q\);

-- Location: FF_X61_Y11_N37
\conect_2|zr[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr[11]~DUPLICATE_q\);

-- Location: FF_X61_Y11_N43
\conect_2|zr[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr[13]~DUPLICATE_q\);

-- Location: FF_X61_Y10_N7
\conect_2|zr[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr[21]~DUPLICATE_q\);

-- Location: FF_X61_Y10_N10
\conect_2|zr[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr[22]~DUPLICATE_q\);

-- Location: FF_X61_Y10_N13
\conect_2|zr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr\(23));

-- Location: FF_X61_Y10_N31
\conect_2|zr[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \conect_2|Add2~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \conect_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conect_2|zr[29]~DUPLICATE_q\);

-- Location: IOIBUF_X50_Y81_N41
\rstb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rstb,
	o => \rstb~input_o\);

-- Location: IOIBUF_X80_Y81_N18
\start_phase[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(0),
	o => \start_phase[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\start_phase[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(1),
	o => \start_phase[1]~input_o\);

-- Location: IOIBUF_X66_Y81_N58
\start_phase[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(2),
	o => \start_phase[2]~input_o\);

-- Location: IOIBUF_X64_Y81_N1
\start_phase[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(3),
	o => \start_phase[3]~input_o\);

-- Location: IOIBUF_X36_Y81_N35
\start_phase[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(4),
	o => \start_phase[4]~input_o\);

-- Location: IOIBUF_X84_Y81_N18
\start_phase[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(5),
	o => \start_phase[5]~input_o\);

-- Location: IOIBUF_X40_Y81_N18
\start_phase[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(6),
	o => \start_phase[6]~input_o\);

-- Location: IOIBUF_X88_Y81_N2
\start_phase[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(7),
	o => \start_phase[7]~input_o\);

-- Location: IOIBUF_X54_Y81_N52
\start_phase[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(8),
	o => \start_phase[8]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\start_phase[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(9),
	o => \start_phase[9]~input_o\);

-- Location: IOIBUF_X80_Y81_N52
\start_phase[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(10),
	o => \start_phase[10]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\start_phase[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(11),
	o => \start_phase[11]~input_o\);

-- Location: IOIBUF_X52_Y81_N1
\start_phase[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(12),
	o => \start_phase[12]~input_o\);

-- Location: IOIBUF_X78_Y81_N52
\start_phase[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(13),
	o => \start_phase[13]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\start_phase[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(14),
	o => \start_phase[14]~input_o\);

-- Location: IOIBUF_X68_Y81_N35
\start_phase[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(15),
	o => \start_phase[15]~input_o\);

-- Location: IOIBUF_X26_Y81_N92
\start_phase[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(16),
	o => \start_phase[16]~input_o\);

-- Location: IOIBUF_X32_Y81_N52
\start_phase[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(17),
	o => \start_phase[17]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\start_phase[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(18),
	o => \start_phase[18]~input_o\);

-- Location: IOIBUF_X28_Y81_N35
\start_phase[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(19),
	o => \start_phase[19]~input_o\);

-- Location: IOIBUF_X78_Y81_N35
\start_phase[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(20),
	o => \start_phase[20]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\start_phase[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(21),
	o => \start_phase[21]~input_o\);

-- Location: IOIBUF_X30_Y81_N18
\start_phase[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(22),
	o => \start_phase[22]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\start_phase[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(23),
	o => \start_phase[23]~input_o\);

-- Location: IOIBUF_X88_Y81_N36
\start_phase[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(24),
	o => \start_phase[24]~input_o\);

-- Location: IOIBUF_X36_Y81_N18
\start_phase[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(25),
	o => \start_phase[25]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\start_phase[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(26),
	o => \start_phase[26]~input_o\);

-- Location: IOIBUF_X74_Y81_N92
\start_phase[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(27),
	o => \start_phase[27]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\start_phase[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(28),
	o => \start_phase[28]~input_o\);

-- Location: IOIBUF_X70_Y81_N18
\start_phase[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(29),
	o => \start_phase[29]~input_o\);

-- Location: IOIBUF_X78_Y81_N1
\start_phase[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(30),
	o => \start_phase[30]~input_o\);

-- Location: IOIBUF_X68_Y81_N52
\start_phase[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_phase(31),
	o => \start_phase[31]~input_o\);

-- Location: IOIBUF_X62_Y81_N18
\fcw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(0),
	o => \fcw[0]~input_o\);

-- Location: IOIBUF_X32_Y81_N18
\fcw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(1),
	o => \fcw[1]~input_o\);

-- Location: IOIBUF_X72_Y81_N1
\fcw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(2),
	o => \fcw[2]~input_o\);

-- Location: IOIBUF_X32_Y81_N1
\fcw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(3),
	o => \fcw[3]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\fcw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(4),
	o => \fcw[4]~input_o\);

-- Location: IOIBUF_X74_Y81_N41
\fcw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(5),
	o => \fcw[5]~input_o\);

-- Location: IOIBUF_X30_Y81_N52
\fcw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(6),
	o => \fcw[6]~input_o\);

-- Location: IOIBUF_X36_Y81_N1
\fcw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(7),
	o => \fcw[7]~input_o\);

-- Location: IOIBUF_X26_Y81_N58
\fcw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(8),
	o => \fcw[8]~input_o\);

-- Location: IOIBUF_X82_Y81_N75
\fcw[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(9),
	o => \fcw[9]~input_o\);

-- Location: IOIBUF_X78_Y81_N18
\fcw[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(10),
	o => \fcw[10]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\fcw[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(11),
	o => \fcw[11]~input_o\);

-- Location: IOIBUF_X26_Y81_N41
\fcw[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(12),
	o => \fcw[12]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\fcw[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(13),
	o => \fcw[13]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\fcw[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(14),
	o => \fcw[14]~input_o\);

-- Location: IOIBUF_X62_Y81_N35
\fcw[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(15),
	o => \fcw[15]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\fcw[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(16),
	o => \fcw[16]~input_o\);

-- Location: IOIBUF_X30_Y81_N1
\fcw[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(17),
	o => \fcw[17]~input_o\);

-- Location: IOIBUF_X72_Y81_N18
\fcw[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(18),
	o => \fcw[18]~input_o\);

-- Location: IOIBUF_X86_Y81_N52
\fcw[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(19),
	o => \fcw[19]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\fcw[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(20),
	o => \fcw[20]~input_o\);

-- Location: IOIBUF_X28_Y81_N18
\fcw[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(21),
	o => \fcw[21]~input_o\);

-- Location: IOIBUF_X74_Y81_N58
\fcw[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(22),
	o => \fcw[22]~input_o\);

-- Location: IOIBUF_X88_Y81_N19
\fcw[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(23),
	o => \fcw[23]~input_o\);

-- Location: IOIBUF_X82_Y81_N92
\fcw[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(24),
	o => \fcw[24]~input_o\);

-- Location: IOIBUF_X72_Y81_N35
\fcw[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(25),
	o => \fcw[25]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\fcw[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(26),
	o => \fcw[26]~input_o\);

-- Location: IOIBUF_X84_Y81_N52
\fcw[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(27),
	o => \fcw[27]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\fcw[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(28),
	o => \fcw[28]~input_o\);

-- Location: IOIBUF_X32_Y81_N35
\fcw[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(29),
	o => \fcw[29]~input_o\);

-- Location: IOIBUF_X50_Y81_N75
\fcw[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(30),
	o => \fcw[30]~input_o\);

-- Location: IOIBUF_X50_Y81_N92
\fcw[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcw(31),
	o => \fcw[31]~input_o\);

-- Location: LABCELL_X77_Y66_N0
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


