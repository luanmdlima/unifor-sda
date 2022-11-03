library ieee;
use ieee.std_logic_1164.all;

entity part4 is
	port(
		SW: in std_logic_vector(8 downto 0);
		LEDG: out std_logic_vector(9 downto 0);
		HEX5, HEX4, HEX3, HEX2, HEX1, HEX0: out std_logic_vector(0 to 6)
	);
end part4;

architecture structure of part4 is
	component part2_part4
		port(
			v: in std_logic_vector(3 downto 0);
			z: buffer std_logic;
			m: out std_logic_vector(3 downto 0)
		);
	end component;
	signal x, y, s: std_logic_vector(3 downto 0);
	signal cin: std_logic;
	signal c: std_logic_vector(4 downto 1);
	signal m: std_logic_vector(3 downto 0);
	signal b, s0: std_logic_vector(3 downto 0);
	signal z, s1: std_logic;
	
	begin
		x <= SW(7 downto 4);
		y <= SW(3 downto 0);
		cin <= SW(8);
		
		bit0: work.fa port map(x(0), y(0), cin, s(0), c(1));
		bit1: work.fa port map(x(1), y(1), c(1), s(1), c(2));
		bit2: work.fa port map(x(2), y(2), c(2), s(2), c(3));
		bit3: work.fa port map(x(3), y(3), c(3), s(3), c(4));
		LEDG(4 downto 0) <= (c(4) & s);
		
		h_5: work.bcd7seg port map(x, HEX5);
		HEX4 <= "1111111";
		
		h_3: work.bcd7seg port map(y, HEX3);
		HEX2 <= "1111111";
		
		LEDG(9) <= (x(3) and x(2)) or (x(3) and x(1)) or (y(3) and y(2)) or (y(3) and y(1));
		LEDG(8 downto 5) <= "0000";
		
		u1: part2_part4 port map(s, z, m);
		b(3) <= m(1);
		b(2) <= not(m(1));
		b(1) <= not(m(1));
		b(0) <= m(0);
		u2: work.mux2to1_4bit port map(m, b, c(4), s0);
		
		h0: work.bcd7seg port map(s0, HEX0);
		s1 <= z or c(4);
		h1: work.bcd7seg port map("000" & s1, HEX1);
end structure;

library ieee;
use ieee.std_logic_1164.all;

entity part2_part4 is
	port(
			v: in std_logic_vector(3 downto 0);
			z: buffer std_logic;
			m: out std_logic_vector(3 downto 0)
	);
end part2_part4;

architecture structure of part2_part4 is
	signal a: std_logic_vector(3 downto 0);
	begin
		z <= (v(3) and v(2)) or (v(3) and v(1));
		
		a(3) <= '0';
		a(2) <= v(2) and v(1);
		a(1) <= v(2) and not(v(1));
		a(0) <= (v(1) and v(0)) or (v(2) and v(0));
		
		u1: work.mux2to1_4bit port map(v, a, z, m);
end structure;