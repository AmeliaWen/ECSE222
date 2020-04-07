library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Amelia_Cui_jkff is 
  Port(clk : in std_logic;
        J  : in std_logic;
        K  : in std_logic;
        Q  : out std_logic);
end Amelia_Cui_jkff; 
ARCHITECTURE behavioral OF Amelia_Cui_jkff is 
  signal sig : std_logic;
 BEGIN
PROCESS(clk, J, K)
BEGIN 
  if (RISING_EDGE(clk)) then 
  IF (J = '1' && K = '0') THEN 
    sig <= '1';
  ELSIF (J ='0' && K = '1') THEN 
    sig <= '0';
  ELSIF (J = '0' && K='0')THEN 
      sig<= sig;
    elsif (J='1' && K= '1')then
      sig<= not(sig);
      end if;
 end if;
 END PROCESS;
Q<= sig;
END behavioral; 
