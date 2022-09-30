library ieee;
use ieee.std_logic_1164.all;

entity part2b is
	port(
		SW : in std_logic_vector(9 downto 0);
		LEDG : out std_logic_vector(9 downto 0)
	);
end part2b;

architecture Structure of part2b is 
	signal Sel : std_logic;
	signal X, Y, M : std_logic_vector(3 downto 0);
	begin
		X <= SW(3 downto 0);
		Y <= SW(7 downto 4);
		Sel <= SW(9);
		
		M(0) <= (not(Sel) and X(0)) or (Sel and Y(0));
		M(1) <= (not(Sel) and X(1)) or (Sel and Y(1));
		M(2) <= (not(Sel) and X(2)) or (Sel and Y(2));
		M(3) <= (not(Sel) and X(3)) or (Sel and Y(3));
		
		LEDG(9) <= Sel;
		LEDG(8 downto 4) <= "00000";
		LEDG(3 downto 0) <= M;
end Structure;