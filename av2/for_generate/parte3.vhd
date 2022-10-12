entity jk_ff is 
	port(
		j, k, clk_s: in bit;
		q, nq: out bit
	);
end entity jk_ff;

architecture a_jk_ff of jk_ff is
	signal qx: bit;
	begin
		bin_p_rs_ff: process(clk_s) begin
			if clk_s = '1' and clk_s'event then
				if (j = '0' and k = '0') then qx <= qx;
					elsif (j = '0' and k = '1') then qx <= '0';
					elsif (j = '1' and k = '0') then qx <= '1';
					elsif (j = '1' and k = '1') then qx <= not qx;
				end if;
			end if;
		end process;
		q <= qx;
		nq <= not qx;
end architecture a_jk_ff;

entity gate_and is
	port(
		in1, in2: in bit;
		out1: out bit
	);
end entity gate_and;

architecture rtl of gate_and is begin 
	out1 <= in1 and in2; 
end rtl;

entity counter_bcd_up is
	port(
		in_1: in bit;
		q: out bit_vector(3 downto 0)
	);
end entity counter_bcd_up;

architecture gen of counter_bcd_up is
	component jk_ff
		port(
			j, k, clk_s: in bit;
			q: out bit
		);
	end component jk_ff;
	
	component gate_and
		port(
			in1, in2: in bit;
			out1: out bit
		);
	end component gate_and;
	
	signal s: bit_vector(0 to 2);
	signal l: bit_vector(0 to 1);
	
	begin
		jk_ff_0: jk_ff port map('1', '1', in_1, s(0));
		gen_1: for i in 1 to 3 generate
			gen_2: if i = 1 or i = 2 generate
				jk_ff_i: jk_ff port map(s(i-1), s(i-1), in_1, l(i-1));
				and_i: gate_and port map(s(i-1), l(i-1), s(i));
				q(i) <= l(i-1);
			end generate;
			gen_3: if i = 3 generate
				jk_ff_3: jk_ff port map(s(i-1), s(i-1), in_1, q(i));
			end generate;
		end generate;
		
		q(0) <= s(0);
end gen;

entity counter_bcd_down is
	port (in_1 : in Bit; q:out bit_vector(3 downto 0));
end entity counter_bcd_down;

architecture gen of counter_bcd_down is
	component jk_ff
		port(
			j, k, clk_s: in bit;
			q, nq: out bit
		);
	end component jk_ff;
	
	component gate_and
		port(
			in1, in2: in bit;
			out1: out bit
		);
	end component gate_and;
	
	signal s: bit_vector(0 to 2);
	signal l: bit_vector(0 to 1);
	
	begin
		jk_ff_0: jk_ff port map('1', '1', in_1, q(0), s(0));
		gen_1: for i in 1 to 3 generate
			gen_2: if i = 1 or i = 2 generate
				jk_ff_i: jk_ff port map(s(i-1), s(i-1), in_1, q(i), l(i-1));
				and_i: gate_and port map(s(i-1), l(i-1), s(i));
			end generate;
			gen_3: if i = 3 generate
				jk_ff_3: jk_ff port map(s(i-1), s(i-1), in_1, q(i));
			end generate;
		end generate;
end gen;
				


