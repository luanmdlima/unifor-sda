library IEEE;
use IEEE.std_logic_1164.all;

entity mux_demux_4ch is
	generic(N: integer := 8);
	port(
		in0, in1, in2, in3: in std_logic_vector (N-1 downto 0);
		sel: in std_logic_vector (1 downto 0);
		out0, out1, out2, out3: out std_logic_vector (N-1 downto 0)
	);
end mux_demux_4ch;

architecture estrutural of mux_demux_4ch is
	signal v: std_logic_vector (N-1 downto 0);
	begin
		mux: entity work.mux_4_1(rtl_with_select)
			generic map(N => N)
			port map(in0, in1, in2, in3, sel, v);
			
		demux: entity work.demux_1_4(rtl)
			generic map(N => N)
			--port map(v, sel, out0, out1, out2, out3);
			port map(y3 => out3, y2 => out2, y1 => out1, y0 => out0, sel => sel, input => v);
end estrutural;