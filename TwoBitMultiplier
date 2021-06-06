
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TwoBitMultiplier is
port (A0_M : in STD_LOGIC;
B0_M : in STD_LOGIC;
A1_M : in STD_LOGIC;
B1_M : in STD_LOGIC;
C0_M : out STD_LOGIC;
C1_M : out STD_LOGIC;
C2_M : out STD_LOGIC;
C3_M : out STD_LOGIC);
end TwoBitMultiplier;


architecture gate_level of TwoBitMultiplier is

begin

C0_M <= B0_M AND A0_M;

C1_M <= (B0_M AND A1_M) XOR (B1_M AND A0_M);

C2_M <= ((B1_M AND A0_M) AND (B0_M AND A1_M)) XOR (B1_M AND A1_M);

C3_M <= ((B1_M AND A0_M) AND (B0_M AND A1_M)) AND (B1_M AND A1_M);

end gate_level;
