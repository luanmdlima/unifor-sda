library IEEE;
use IEEE.std_logic_1164.all;

entity mux_4_1 is
	generic(N: integer := 8);
	
	port(
		in0, in1, in2, in3: in std_logic_vector(N-1 downto 0);
		sel: in std_logic_vector (1 downto 0);
		ot:  out std_logic_vector(N-1 downto 0)
	);
end mux_4_1;

-- Usando modeli de fluxo de dados ou algoritmo com "WHEN-ELSE"
-- Atribuiçao de condicional de sinais
architecture rtl of mux_4_1 is
	begin
		ot <= in0 when sel = "00" else
			in1 when sel = "01" else
			in2 when sel = "10" else
			in3;
	end rtl;
	
-- Usando modelo de fluxo de dados ou algoritmo com "WITH-SELECT"
-- Atribuiçao de sinais com escolha
architecture rtl_with_select of mux_4_1 is
	begin
		with sel select
		ot <= in0 when "00",
				in1 when "01", 
				in2 when "10", 
				in3 when "11",
				null when others;
	end rtl_with_select;
	
-- Usando process - IF-THEN-ELSE
architecture comportamental of mux_4_1 is
	begin
		mux: process(sel, in0, in1, in2, in3)
			begin
				if sel = "00" then ot <= in0;
					elsif sel = "01" then ot <= in1;
					elsif sel = "10" then ot <= in2;
					elsif sel = "11" then ot <= in3;
				end if;
			end process;
	end comportamental;
	
-- Usando process - "CASE-WHEN"
architecture comportamental2 of mux_4_1 is
	begin
		mux: process(sel, in0, in1, in2, in3)
			begin
				case sel is
					when "00" => ot <= in0;
					when "01" => ot <= in1;
					when "10" => ot <= in2;
					when "11" => ot <= in3;
				end case;
			end process;
end comportamental2;
		