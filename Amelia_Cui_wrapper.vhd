library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Amelia_Cui_wrapper is 
Port (enable : in std_logic;
      reset : in std_logic;
      clk : in std_logic;
      HEXO : out std_logic_vector (6 downto 0));
end Amelia_Cui_wrapper; 
ARCHITECTURE behavorial OF Amelia_Cui_wrapper is 
component Amelia_Cui_clock_divider 
Port (enable : in std_logic;
      reset : in std_logic;
      clk : in std_logic;
      en_out : out std_logic);
end component;
component Amelia_Cui_counter 
port( enable : 		in std_logic;
       reset: 	in std_logic;
		 clk: 	in std_logic;
		 count: 		out std_logic_vector(2 downto 0));
end component;
component 7_segment_decoder 
port ( code : in std_logic_vector(3 downto 0);
segments_out : out std_logic_vector (6 downto 0));
end component;
signal ena : std_logic;
signal counterout : std_logic_vector(2 downto 0);
signal codein : std_logic_vector(3 downto 0);
begin 
u1: Amelia_Cui_clock_divider PORT MAP (enable, reset, clk, ena);
u2: Amelia_Cui_counter PORT MAP (ena, reset, clk, counterout);
codein <= '0'&counterout;
u3: 7_segment_decoder PORT MAP (codein, HEXO);
end behavioral; 
