library ieee;
use ieee.std_logic_1164.all;

entity part4_case_when is
	port(
		SW : in std_logic_vector(1 downto 0);
		LEDG : out std_logic_vector(9 downto 0);
		HEX0 : out std_logic_vector(0 to 6)
	);
end part4_case_when;

architecture Structure of part4_case_when is begin
	LEDG(1 downto 0) <= SW;
	LEDG(0 downto 2) <= "00000000";
	
	process(SW) begin
		case SW is
			when "00" => HEX0 <= "1000010"; -- "d"     
			when "01" => HEX0 <= "0110000"; -- "E"
			when "10" => HEX0 <= "0000001"; -- "0" 
			when "11" => HEX0 <= "1111111"; -- " " 
		end case;
	end process;
end Structure;
		