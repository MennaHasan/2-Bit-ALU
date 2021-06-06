LIBRARY IEEE; 
USE IEEE.std_logic_1164.ALL; 

 ENTITY MUX4Way IS PORT (
	a0, a1, a2, a3 : IN std_logic; 
	b0, b1, b2, b3 : IN std_logic;
	c0, c1, c2, c3 : IN std_logic;
	d0, d1, d2, d3: IN std_logic; 
   sel0, sel1: IN std_logic; 
	myout0: OUT std_logic;
	myout1: OUT std_logic;
	myout2: OUT std_logic;
	myout3: OUT std_logic); 
END MUX4Way;			 
				 
ARCHITECTURE gate_level OF MUX4Way IS 

COMPONENT MUX is
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
end COMPONENT;

SIGNAL t0: std_logic; 
SIGNAL t1: std_logic;
SIGNAL t2: std_logic; 
SIGNAL t3: std_logic; 
SIGNAL q0: std_logic; 
SIGNAL q1: std_logic; 
SIGNAL q2: std_logic; 
SIGNAL q3: std_logic;

BEGIN 
MUX1: MUX PORT MAP (a0,a1,a2,a3, b0,b1,b2,b3, sel0, t0,t1,t2,t3); 
MUX2: MUX PORT MAP (c0,c1,c2,c3, d0,d1,d2,d3, sel0, q0,q1,q2,q3);
MUX3: MUX PORT MAP (t0,t1,t2,t3, q0,q1,q2,q3, sel1, myout0, myout1, myout2, myout3);
end gate_level;
