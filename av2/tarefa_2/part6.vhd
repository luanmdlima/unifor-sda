library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity part6 is
	port(
		SW: in std_logic_vector(5 downto 0);
		HEX3, HEX2, HEX1, HEX0: out std_logic_vector(0 to 6)	
	);
end part6;

architecture behavior of part6 is
	signal bcd_h: std_logic_vector(3 downto 0);
	signal bin6, bcd_1: std_logic_vector(5 downto 0);
	
	begin
		bin6 <= SW;
		process(bin6) begin
			if(bin6 < "001010") then
				bcd_h <= "0000";
				bcd_1 <= bin6;
			elsif(bin6 < "010100") then
				bcd_h <= "0001";
				bcd_1 <= bin6 - "001010";
			elsif(bin6 < "011110") then
				bcd_h <= "0010";
				bcd_1 <= bin6 - "010100";
			elsif(bin6 < "101000") then
				bcd_h <= "0011";
				bcd_1 <= bin6 - "011110";
			elsif(bin6 < "110010") then
				bcd_h <= "0100";
				bcd_1 <= bin6 - "101000";
			elsif(bin6 < "111100") then
				bcd_h <= "0101";
				bcd_1 <= bin6 - "110010";
			else
				bcd_h <= "0110";
				bcd_1 <= bin6 - "111100";
			end if;
		end process;
		
		digit1: work.bcd7seg port map(bcd_h, HEX1);
		digit0: work.bcd7seg port map(bcd_1(3 downto 0), HEX0);
		
		digit3: work.bcd7seg port map("1111", HEX3);
		digit2: work.bcd7seg port map("1111", HEX2);
end behavior;
		
		
					
			
				
	