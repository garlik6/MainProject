LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
use ieee.numeric_std.all;

ENTITY mixing_vhd_tst IS
END mixing_vhd_tst;

ARCHITECTURE mixing_arch OF mixing_vhd_tst IS
-- constants                                                 
-- signals     


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

                                              
SIGNAL clock : STD_LOGIC := '0';
SIGNAL fcw :  std_logic_vector(31 downto 0):="00100000000000000100000010000001"; --шаг
SIGNAL o_nco : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL o_X_result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL o_Y_result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL o_Z_result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reset : std_logic:='1';
SIGNAL rstb : std_logic:='0';
SIGNAL start_phase : std_logic_vector(31 downto 0):="00000000000000001000000000000100"; --начальная фаза




BEGIN

	clock  <= not clock  after 5 ns;
	rstb <= '1' after 163 ns;
	reset <= '0' after 200 ns;
	
	i1_mixing : mixing
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
 
                                
END mixing_arch;
