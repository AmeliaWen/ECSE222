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
PROCESS(clk, J, K)
BEGIN 
  IF J<= '1' && K<= '0' THEN 
    Q <= '1';
  ELSEIF J<='0' && K<= '1' THEN 
    Q <= '0';
  ELSEIF RISING_EDGE(clk)THEN 
    IF J<=0 THEN 
      Q<= D;
    ELSE
      Q<= not(D);
    ENDIF;
 ENDIF;
 END PROCESS;
END behavioral; 
