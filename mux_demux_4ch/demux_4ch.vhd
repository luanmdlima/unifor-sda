library IEEE;
use IEEE.std_logic_1164.all;

entity demux_1_4 is
	generic(N: integer := 8);
	
	port(
		input:  in std_logic_vector(N-1 downto 0);
		sel: in std_logic_vector (1 downto 0);
		y0, y1, y2, y3: out std_logic_vector(N-1 downto 0)
		
	);
end demux_1_4;

-- Usando "WHEN-ELSE"
architecture rtl of demux_1_4 is
	constant alta_imp: std_logic_vector (N-1 downto 0) := "ZZZZZZZZ";
	begin
		y0 <= input when sel = "00" else alta_imp;
		y1 <=	input when sel = "01" else alta_imp;
		y2 <=	input when sel = "10" else alta_imp;
		y3 <=	input when sel = "11" else alta_imp;
end rtl;
	
-- Usando "CASE-WHEN"
architecture comportamental of demux_1_4 is
	constant alto: std_logic_vector (N-1 downto 0) := x"FF";
	begin
		process(sel, input)
			begin
				y0 <= alto;
				y1 <= alto;
				y2 <= alto;
				y3 <= alto;
				case sel is
					when "00" => y0 <= input;
					when "01" => y1 <= input;
					when "10" => y2 <= input;
					when "11" => y3 <= input;
					when others => null;
				end case;
		end process;
end comportamental;
	
-- Usando process - IF-THEN-ELSE
architecture comportamental2 of demux_1_4 is
	constant alto: std_logic_vector (N-1 downto 0) := x"FF";
	begin
		process(sel, input)
			begin
				if sel = "00" then y0 <= input;
					else y0 <= alto;
				end if;
				if sel = "01" then y1 <= input;
					else y1 <= alto;
				end if;
				if sel = "10" then y2 <= input;
					else y2 <= alto;
				end if;
				if sel = "11" then y3 <= input;
					else y3 <= alto;
				end if;	
			end process;
end comportamental2;