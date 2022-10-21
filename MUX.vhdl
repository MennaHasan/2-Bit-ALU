library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity MUX is
 Port ( 
	a0 : in STD_LOGIC;
	a1 : in STD_LOGIC;
	a2 : in STD_LOGIC;
	a3 : in STD_LOGIC;
	b0 : in STD_LOGIC;
	b1 : in STD_LOGIC;
	b2 : in STD_LOGIC;
	b3 : in STD_LOGIC;
	sel : in STD_LOGIC;
	myout0 : out STD_LOGIC;
	myout1 : out STD_LOGIC;
	myout2 : out STD_LOGIC;
	myout3 : out STD_LOGIC);
end MUX;
 
architecture gate_level of MUX is
 
begin
	
	myout0 <= (b0 AND sel) OR (a0 AND (NOT(sel)));
	myout1 <= (b1 AND sel) OR (a1 AND (NOT(sel)));
	myout2 <= (b2 AND sel) OR (a2 AND (NOT(sel)));
	myout3 <= (b3 AND sel) OR (a3 AND (NOT(sel)));
 
end gate_level;

