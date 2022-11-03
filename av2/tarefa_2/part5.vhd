library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity part5 is
	port(
		SW: in std_logic_vector(8 downto 0);
		HEX5, HEX4, HEX3, HEX2, HEX1, HEX0: out std_logic_vector(0 to 6)	
	);
end part5;

architecture behavior of part5 is
	signal a, b: std_logic_vector(3 downto 0);
	signal cin: std_logic;
	signal s0: std_logic_vector(4 downto 0);
	signal s1: std_logic;
	signal c1: std_logic;
	
	signal z0: std_logic_vector(4 downto 0);
	signal t0: std_logic_vector(4 downto 0);
	
	begin
		a <= SW(7 downto 4);
		b <= SW(3 downto 0);
		cin <= SW(8);
		
		t0 <= ('0' & A) + ('0' & b) + cin;
		process(t0) begin
			if(t0 > "01001") then
				z0 <= "01010";
				c1 <= '1';
			else
				z0 <= "00000";
				c1 <= '0';
			end if;
		end process;
		
		s0 <= t0 - z0;
		s1 <= c1;
		
		digit3: work.bcd7seg port map(a, HEX5);
		digit2: work.bcd7seg port map(b, HEX3);
		digit1: work.bcd7seg port map(("000" & s1), HEX1);
		digit0: work.bcd7seg port map(s0(3 downto 0), HEX0);
		
		HEX4 <= "1111111";
		HEX2 <= "1111111";
end behavior;