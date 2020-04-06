library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Amelia_Cui_counter is
 port( enable : 		in std_logic;
       reset: 	in std_logic;
		 clk: 	in std_logic;
		 count: 		out std_logic_vector(2 downto 0));
end Amelia_Cui_counter;
ARCHITECTURE behavioral OF Amelia_Cui_counter IS
 signal itercount:std_logic_vector(2 downto 0);
 BEGIN
   PROCESS(clk,reset)
	BEGIN
	   if reset ='0' then
		   intercount <="000";
		elsif (clk'EVENT AND clk='1') then
		   if enable ='1' then
			 itercount <=itercount+1;
			else
			 itercount <= itercount;
			 end if;
		end if;
	end process;
 count<=itercount;
 end behavioral;
