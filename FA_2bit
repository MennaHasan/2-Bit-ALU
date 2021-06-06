LIBRARY IEEE; 
 USE IEEE.std_logic_1164.ALL; 
  ENTITY FA_2bit IS PORT (Cin: IN std_logic; 
          a0, b0, a1, b1: IN std_logic; 
           S0, S1: OUT std_logic; 
            Cout: OUT std_logic ); 
             END FA_2bit;
ARCHITECTURE ripple_2_arch OF FA_2bit IS 


COMPONENT full_adder PORT (Cin,A,B: IN std_logic; 
                    S, Cout: OUT std_logic); 
						  END COMPONENT; 
SIGNAL t1: std_logic; 
BEGIN 
FA1: full_adder PORT MAP (Cin, a0, b0, S0, t1); 
FA2: full_adder PORT MAP (t1, a1, b1, s1, Cout);
end ripple_2_arch;
