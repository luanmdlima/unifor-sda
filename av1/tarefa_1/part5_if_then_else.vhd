library ieee;
use ieee.std_logic_1164.all;

entity part5_if_then_else is
	port(
		SW : in std_logic_vector(9 downto 0);
		LEDR : out std_logic_vector(9 downto 0);
		HEX0, HEX1, HEX2, HEX3 : out std_logic_vector(0 to 6)
	);
end part5_if_then_else;

architecture Structure of part5_if_then_else is
	signal Ch_Sel, Ch0, Ch1, Ch2, Ch3 : std_logic_vector(1 downto 0);
	signal H3_Ch, H2_Ch, H1_Ch, H0_Ch : std_logic_vector(1 downto 0);
	
	begin
		LEDR <= SW;
		
		Ch_Sel <= SW(9 downto 8);
		Ch0 <= SW(7 downto 6);
		Ch1 <= SW(5 downto 4);
		Ch2 <= SW(3 downto 2);
		Ch3 <= SW(1 downto 0);
		
	process(Ch_Sel) begin
		if Ch_Sel = "00" then
			HEX3 <= "1000010"; -- "d"
			HEX2 <= "0110000"; -- "E"
			HEX1 <= "1111111"; -- " "
			HEX0 <= "0000001"; -- "0"
			
			elsif Ch_Sel = "01" then
				HEX3 <= "0110000"; -- "E"
				HEX2 <= "1111111"; -- " "
				HEX1 <= "0000001"; -- "0"
				HEX0 <= "1000010"; -- "d"
				
			elsif Ch_Sel = "10" then
				HEX3 <= "1111111"; -- " "
				HEX2 <= "0000001"; -- "0"
				HEX1 <= "1000010"; -- "d"
				HEX0 <= "0110000"; -- "E"
		
			elsif Ch_Sel = "11" then
				HEX3 <= "0000001"; -- "0"
				HEX2 <= "1000010"; -- "d"
				HEX1 <= "0110000"; -- "E"
				HEX0 <= "1111111"; -- " "
		end if;
	end process;
end Structure;
		