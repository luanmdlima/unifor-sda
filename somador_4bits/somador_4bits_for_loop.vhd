entity somador_4bits_for_loop is
	generic(n : integer := 4);
	port(
		x, y : in  bit_vector(n-1 downto 0); --entradas do somador
		ze : in bit; 							 	 --vem um
		s : out bit_vector(n-1 downto 0); 	 --saidas do somador
		zs : out bit
	);
end somador_4bits_for_loop;

architecture hardware of somador_4bits_for_loop is
	begin
		processo1 : process (x, y, ze)
			variable v : bit_vector(n downto 0);--vai um interno
			begin
				v(0) := ze;
				sum : for i in 0 to n-1 loop
					s(i) <= x(i) xor y(i) xor v(i);
					v(i+1) := (x(i) and y(i)) or (x(i) and v(i)) or (y(i) and v(i));
				end loop sum;
				zs <= v(n);
		end process;
end hardware;