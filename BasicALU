LIBRARY IEEE; 
USE IEEE.std_logic_1164.ALL; 

ENTITY basicALU IS PORT (
	cin, a0, a1, b0, b1: IN std_logic;         
	s0, s1: IN std_logic; 
   out0, out1,out2,out3: OUT std_logic ); 
END basicALU;

ARCHITECTURE gate_level OF basicALU IS 

COMPONENT FA_2bit IS PORT (
	Cin: IN std_logic; 
	a0,b0, a1,  b1: IN std_logic; 
   S0, S1: OUT std_logic; 
	Cout: OUT std_logic ); 
END COMPONENT;

COMPONENT TwoBitMultiplier is port (
   A0_M : in STD_LOGIC;
	B0_M : in STD_LOGIC;
	A1_M : in STD_LOGIC;
	B1_M : in STD_LOGIC;
	C0_M : out STD_LOGIC;
	C1_M : out STD_LOGIC;
	C2_M : out STD_LOGIC;
	C3_M : out STD_LOGIC);
end COMPONENT;

COMPONENT TwoBitSubtractor is port (
   A0_S : in STD_LOGIC;
	B0_S : in STD_LOGIC;
	A1_S : in STD_LOGIC;
	B1_S : in STD_LOGIC;
	Bin_S : in STD_LOGIC;
	D0_S : out STD_LOGIC;
	D1_S : out STD_LOGIC;
	Bout_S : out STD_LOGIC);
end COMPONENT;

COMPONENT MUX4Way IS PORT (
	a0, a1, a2, a3 : IN std_logic; 
	b0, b1, b2, b3 : IN std_logic;
	c0, c1, c2, c3 : IN std_logic;
	d0, d1, d2, d3: IN std_logic; 
   sel0, sel1: IN std_logic; 
	myout0: OUT std_logic;
	myout1: OUT std_logic;
	myout2: OUT std_logic;
	myout3: OUT std_logic); 
END COMPONENT;

COMPONENT TwoBitDividor is
port (A0 : in STD_LOGIC;
		B0 : in STD_LOGIC;
		A1 : in STD_LOGIC;
		B1 : in STD_LOGIC;
		out0 : out STD_LOGIC;
		out1 : out STD_LOGIC;
		rem0 : out STD_LOGIC;
		rem1 : out STD_LOGIC);
end COMPONENT;


SIGNAL add0,add1,add2: std_logic; 
SIGNAL mult0,mult1,mult2,mult3: std_logic; 
SIGNAL subt0,subt1,subt2: std_logic; 
SIGNAL div0,div1,div2, div3: std_logic; 
signal myzero : std_ulogic := '0';

BEGIN 
FA1: FA_2bit PORT MAP(cin,a0, b0, a1, b1,add0,add1,add2);
Multiplier1: TwoBitMultiplier PORT MAP(a0,b0,a1,b1,mult0,mult1,mult2,mult3);
Subtractor1: TwoBitSubtractor PORT MAP(a0,b0,a1,b1,cin, subt0,subt1,subt2);
Divider1: TwoBitDividor PORT MAP(a0, b0, a1, b1, div0, div1, div2,div3);
Mux1: MUX4Way PORT MAP(add0,add1,add2,myzero, mult0,mult1,mult2,mult3,subt0,subt1,subt2,myzero, div0,div1,div2,div3, s0,s1, out0,out1,out2,out3);


end gate_level;
