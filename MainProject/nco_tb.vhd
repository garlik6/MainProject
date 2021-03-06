-- ******************************************************************** 
-- ******************************************************************** 
-- 
-- Coding style summary:
--
--	i_   Input signal 
--	o_   Output signal 
--	b_   Bi-directional signal 
--	r_   Register signal 
--	w_   Wire signal (no registered logic) 
--	t_   User-Defined Type 
--	p_   pipe
--  pad_ PAD used in the top level
--	G_   Generic (UPPER CASE)
--	C_   Constant (UPPER CASE)
--  ST_  FSM state definition (UPPER CASE)
--
-- ******************************************************************** 
--
-- Copyright �2015 SURF-VHDL
--
--    This program is free software: you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.
--
--    This program is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--
--    You should have received a copy of the GNU General Public License
--    along with this program.  If not, see <http://www.gnu.org/licenses/>.
--
-- ******************************************************************** 
--
-- Fle Name: nco_tb.vhd
-- 
-- scope: test bench for nco.vhd
--
-- rev 1.00
-- 
-- ******************************************************************** 
-- ******************************************************************** 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nco_tb is
end nco_tb;

architecture rtl of nco_tb is

component nco
port (
	i_clk                       : in  std_logic;
	i_rstb                      : in  std_logic;
	i_sync_reset                : in  std_logic;
	i_start_phase               : in  std_logic_vector(31 downto 0);
	i_fcw                       : in  std_logic_vector(31 downto 0);
	o_nco                       : out std_logic_vector(31 downto 0));
end component;

signal i_clk                   : std_logic:='0';
signal i_rstb                  : std_logic:='0';
signal i_sync_reset            : std_logic:='1';
signal i_start_phase           : std_logic_vector(31 downto 0):="00000000000000001000000000000100"; --начальная фаза
signal i_fcw                   : std_logic_vector(31 downto 0):="00100000000000000100000010000001"; --шаг
signal o_nco                   : std_logic_vector(31 downto 0);

begin

i_clk  <= not i_clk  after 5 ns;
i_rstb <= '1' after 163 ns;
i_sync_reset <= '0' after 200 ns;

u1_nco : nco
port map(
	i_clk                       => i_clk                      ,
	i_rstb                      => i_rstb                     ,
	i_sync_reset                => i_sync_reset               ,
	i_start_phase               => i_start_phase              ,
	i_fcw                       => i_fcw                      ,
	o_nco                       => o_nco                     );
end rtl;