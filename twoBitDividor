
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TwoBitDividor is
port (A0 : in STD_LOGIC;
		B0 : in STD_LOGIC;
		A1 : in STD_LOGIC;
		B1 : in STD_LOGIC;
		out0 : out STD_LOGIC;
		out1 : out STD_LOGIC;
		rem0 : out STD_LOGIC;
		rem1 : out STD_LOGIC);
end TwoBitDividor;


architecture gate_level of TwoBitDividor is

begin

out0 <= (A1 AND A0) OR (A0 AND (NOT B1)) OR (A1 AND (NOT B0));

out1 <= A1 AND (NOT B1);

rem0 <= (B1 AND A0 AND (NOT A1)) OR (A0 AND NOT(B0));

rem1 <= B1 AND B0 AND A1 AND (NOT A0);

end gate_level;
