entity adder_8b is
	generic(n : integer := 8);
	port(
		x, y : in bit_vector(n - 1 downto 0);
		ze : in bit;
		s : out bit_vector(n - 1 downto 0);
		zs : out bit
	);
end adder_8b;

architecture hardware of adder_8b is begin
	processo1 : process (x, y, ze)
		variable v : bit_vector(n downto 0);
		begin
			v(0) := ze;
			sum : for i in 0 to n - 1 loop
				s(i) <= x(i) xor y(i) xor v(i);
				v(i + 1) := (x(i) and y(i)) or (x(i) and v(i)) or (y(i) and v(i));
			end loop sum;
			zs <= v(n);
	end process;
end hardware;