library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Amelia_Cui_clock_divider is
Port (enable : in std_logic;
      reset : in std_logic;
      clk : in std_logic;
      en_out : out std_logic);
end Amelia_Cui_clock_divider; 
ARCHITECTURE behavioral OF Amelia_Cui_clock_divider is 
signal count:integer := 50000000;
signal itercount : std_logic;
BEGIN 
PROCESS(reset, clk, enable) 
BEGIN 
if (reset = '1')then 
count <= 50000000;
itercount <= '0';
elsif (RISING_EDGE(clk))then 
if enable = '1' then 
  count <= count-1;
  else
  count <= count;
  end if;
end if;
if (count = 0) then 
itercount<= '1';
count <= 50000000;
end if;
end PROCESS;
en_out <= itercount;
end behavioral;


   
