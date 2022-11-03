library ieee;
use ieee.std_logic_1164.all;

entity part2 is
	port(
		SW: in std_logic_vector(3 downto 0);
		HEX1, HEX0: out std_logic_vector(0 to 6)
	);
end part2;

architecture structure of part2 is
	signal v, m: std_logic_vector(3 downto 0);
	signal a: std_logic_vector(3 downto 0);
	signal z: std_logic;
	begin
		v <= SW;
		z <= (v(3) and v(2)) or (v(3) and v(1));
		
		a(3) <= '0';
		a(2) <= v(2) and v(1);
		a(1) <= (v(1) and v(0)) or (v(2) and v(0));
		
		u0: work.mux2to1_4bit port map(v, a, z, m);
--		u1: bcd7seg_part2 port map(m, HEX0);
--		u2: bcd7seg_part2 port map(("000" & z), HEX1);
		u1: work.bcd7seg port map(m, HEX0);
		u2: work.bcd7seg port map(("000" & z), HEX1);
end structure;

--bcd7seg_part2
--library ieee;
--use ieee.std_logic_1164.all;

--entity bcd7seg_part2 is
--	port(
--		b: in std_logic_vector(3 downto 0);
--		h: out std_logic_vector(0 to 6)
--	);
--end bcd7seg_part2;

--architecture behavior of bcd7seg_part2 is begin
--	process(b) begin
--		case b is
--			when "0000" => h <= "0000001"; -- 0
--			when "0001" => h <= "1001111"; -- 1
--			when "0010" => h <= "0010010"; -- 2
--			when "0011" => h <= "0000110"; -- 3
--			when "0100" => h <= "1001100"; -- 4
--			when "0101" => h <= "0100100"; -- 5
--			when "0110" => h <= "0100000"; -- 6
--			when "0111" => h <= "0001111"; -- 7
--			when "1000" => h <= "0000000"; -- 8
--			when "1001" => h <= "0000100"; -- 9
--			when "1010" => h <= "0001000"; -- A
--			when "1011" => h <= "1100000"; -- b
--			when "1100" => h <= "0110001"; -- C
--			when "1101" => h <= "1000010"; -- d
--			when "1110" => h <= "0110000"; -- E
--			when others => h <= "1111111"; 
--		end case;
--	end process;
--end behavior;