entity d_ff is port(
	d, clk_s : in bit;
	q : out bit := '0';
	nq : out bit := '1'	
);
end entity d_ff;

architecture a_rs_ff of d_ff is begin
	bin_p_rs_ff : process(clk_s) begin
		if clk_s = '1' and clk_s'event
			then q <= d;
			nq <= not d;
		end if;
	end process;
end architecture a_rs_ff;


entity counter_bin_n is 
	generic(n : integer := 4);
	port(
		q : out bit_vector(0 to n - 1);
		in_1 : in bit
	);
end entity counter_bin_n;

architecture gen of counter_bin_n is 
	component d_ff
		port(
			d, clk_s: in bit;
			q, nq : out bit
		);
	end component d_ff;
	
	signal s : bit_vector(0 to n);
	begin
		s(0) <= in_1;
		g_1 : for i in 0 to n - 1 generate
			d_flip_flop : d_ff port map (s(i+1), s(i), q(i), s(i+1));
		end generate;
end architecture gen;
	