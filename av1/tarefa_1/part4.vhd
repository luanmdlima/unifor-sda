library ieee;
use ieee.std_logic_1164.all;

entity part4 is
	port(
		SW : in std_logic_vector(1 downto 0);
		LEDG : out std_logic_vector(9 downto 0);
		HEX0 : out std_logic_vector(0 to 6)
	);
end part4;

architecture Structure of part4 is
	signal C : std_logic_vector(1 downto 0);
	begin
		LEDG(1 downto 0) <= SW;
		LEDG(0 downto 2) <= "00000000";
		
		C <= SW;
		
		HEX0(0) <= not((not(C(1)) and C(0)) or (C(1) and not C(0)));
		HEX0(1) <= C(0);
		HEX0(2) <= C(0);
		HEX0(3) <= C(1) and C(0);
		HEX0(4) <= C(1) and C(0);
		HEX0(5) <= not((not(C(1)) and C(0)) or (C(1) and not C(0)));
		HEX0(6) <= C(1);
end Structure;
		