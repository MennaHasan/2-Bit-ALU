library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TwoBitSubtractor is
port (A0_S : in STD_LOGIC;
B0_S : in STD_LOGIC;
A1_S : in STD_LOGIC;
B1_S : in STD_LOGIC;
Bin_S : in STD_LOGIC;
D0_S : out STD_LOGIC;
D1_S : out STD_LOGIC;
Bout_S : out STD_LOGIC);
end TwoBitSubtractor;


architecture gate_level of TwoBitSubtractor is

begin

D0_S <= (A0_S XOR B0_S) XOR Bin_S;

D1_S <= (((NOT A0_S) AND B0_S) OR ((NOT (A0_S XOR B0_S)) AND Bin_S)) XOR (A1_S XOR B1_S);

Bout_S <= (((NOT A1_S) AND B1_S)) OR ((NOT(A1_S XOR B1_S)) AND (((NOT A0_S) AND B0_S) OR ((NOT (A0_S XOR B0_S)) AND Bin_S))) ;

end gate_level;
