library ieee;
use ieee.std_logic_1164.all;

entity part3_case_when is
	port(
		SW : in std_logic_vector(9 downto 0);
		LEDG : out std_logic_vector(1 downto 0)
	);
end part3_case_when;

architecture rtl_if_then_else of part3_case_when is
	signal Sel, A, B, C, D : std_logic_vector(1 downto 0);
	begin
		A <= SW(1 downto 0);
		B <= SW(3 downto 2);
		C <= SW(5 downto 4);
		D <= SW(7 downto 6);
		Sel <= SW(9 downto 8);
		
		process(Sel, A, B, C, D) begin
			case Sel is
				when "00" => LEDG <= A;
				when "01" => LEDG <= B;
				when "10" => LEDG <= C;
				when "11" => LEDG <= D;
			end case;
		end process;
end rtl_if_then_else;