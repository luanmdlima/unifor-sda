library ieee;
use ieee.std_logic_1164.all;

entity bcd7seg is
	port(
		b: in std_logic_vector(3 downto 0);
		h: out std_logic_vector(0 to 6)
	);
end bcd7seg;

architecture behavior of bcd7seg is begin
	process(b) begin
		case b is
			when "0000" => h <= "0000001"; -- 0
			when "0001" => h <= "1001111"; -- 1
			when "0010" => h <= "0010010"; -- 2
			when "0011" => h <= "0000110"; -- 3
			when "0100" => h <= "1001100"; -- 4
			when "0101" => h <= "0100100"; -- 5
			when "0110" => h <= "0100000"; -- 6
			when "0111" => h <= "0001111"; -- 7
			when "1000" => h <= "0000000"; -- 8
			when "1001" => h <= "0000100"; -- 9
			when "1010" => h <= "0001000"; -- A
			when "1011" => h <= "1100000"; -- b
			when "1100" => h <= "0110001"; -- C
			when "1101" => h <= "1000010"; -- d
			when "1110" => h <= "0110000"; -- E
			when others => h <= "1111111"; 
		end case;
	end process;
end behavior;