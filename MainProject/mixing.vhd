library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

library work;
use work.cordic.all;


entity mixing is
--nco in
   port(
	clock                       : in  std_logic;
	rstb                      : in  std_logic;
	reset                : in  std_logic;
	start_phase               : in  std_logic_vector(31 downto 0);
	fcw                       : in  std_logic_vector(31 downto 0);
----cordic out
--   Busy         : out std_ulogic; --# Generating new result
--   Result_valid : out std_ulogic; --# Flag when result is valid
   o_X_result : out signed(32-1 downto 0); --# X result
   o_Y_result : out signed(32-1 downto 0); --# Y result
   o_Z_result : out signed(32-1 downto 0);  --# Z result
--additional output
	o_nco                       : out std_logic_vector(31 downto 0)
   );
end mixing;





architecture mix_behavior of mixing is

     component nco
			port (
			i_clk                       : in  std_logic;
			i_rstb                      : in  std_logic;
			i_sync_reset                : in  std_logic;
			i_start_phase               : in  std_logic_vector(31 downto 0);
			i_fcw                       : in  std_logic_vector(31 downto 0);
			o_nco                       : out std_logic_vector(31 downto 0)
			);
     end component;   

     component cordic_sequential
	  port (
		 Clock : in std_ulogic;
		 Reset : in std_ulogic;

--		 Data_valid   : in std_ulogic;  --# Load new input data
--		 Busy         : out std_ulogic; --# Generating new result
----		 Result_valid : out std_ulogic; --# Flag when result is valid
--		 Mode         : in cordic_mode; --# Rotation or vector mode selection

		 X : in signed(SIZE-1 downto 0);
		 Y : in signed(SIZE-1 downto 0);
		 Z : in signed(SIZE-1 downto 0);

		 X_result : out signed(SIZE-1 downto 0);
		 Y_result : out signed(SIZE-1 downto 0);
		 Z_result : out signed(SIZE-1 downto 0)
				);
	 end component; 
	 
	 signal first_sign: std_logic_vector(31 downto 0);
	 begin
	 
	  conect_1: nco
       port map (
			i_clk => clock,
			i_sync_reset => reset,
			i_rstb => rstb,
			i_start_phase => start_phase,	
			i_fcw => fcw,
			o_nco => first_sign
			);
     
     conect_2: cordic_sequential
       port map (
			Clock => clock,
			Reset => reset,
			X        => 1/signed(first_sign),
			Y        => "00000000000000000000000000000000",
			Z        => signed(first_sign),
			
--			o_busy => Busy,
--			o_result_valid => Result_valid,
			X_result => o_X_result,
			Y_result => o_Y_result,
			Z_result => o_Z_result
			);	 
end mix_behavior;