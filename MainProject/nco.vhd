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
-- ST_  FSM state definition (UPPER CASE)
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
-- Fle Name: nco.vhd
-- 
-- scope: NCO 8 bit with programmable start phase
--
-- rev 1.00
-- 
-- ******************************************************************** 
-- ******************************************************************** 


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nco is
port (
	i_clk                       : in  std_logic;
	i_rstb                      : in  std_logic;
	i_sync_reset                : in  std_logic;
	i_start_phase               : in  std_logic_vector(31 downto 0);
	i_fcw                       : in  std_logic_vector(31 downto 0);
	o_nco                       : out std_logic_vector(31 downto 0)
	);
end nco;

architecture rtl of nco is
signal r_sync_reset                : std_logic;
signal r_start_phase               : signed(31 downto 0);
signal r_fcw                       : signed(31 downto 0);
signal r_nco                       : signed(31 downto 0);

begin

p_nco : process(i_clk,i_rstb)
begin
	if(i_rstb='0') then
		r_start_phase     <= (others=>'0');
		r_fcw             <= (others=>'0');
		r_nco             <= (others=>'0');
	elsif(rising_edge(i_clk)) then
		r_sync_reset      <= i_sync_reset;
		r_start_phase     <= signed(i_start_phase);
		r_fcw             <= signed(i_fcw);
		if(r_sync_reset='1') then
			r_nco             <= r_start_phase;
		else
			r_nco             <= r_nco + r_fcw;
		end if;
	end if;
end process p_nco;

o_nco            <= std_logic_vector(r_nco);

end rtl;