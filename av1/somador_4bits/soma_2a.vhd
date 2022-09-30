entity soma_2a is
	port(
		x, y: in bit_vector (3 downto 0);
		ze: in bit;
		s: out bit_vector (3 downto 0);
		zs: out bit
	);
end soma_2a;

architecture estrutural of soma_2a is
	component soma_1a is
		port(
			a, b, ve: in bit;
			s, vs: out bit
		);
	end component;
	signal v: bit_vector (3 downto 1); -- Vai um interno
	begin
			x0: soma_1a port map(x(0), y(0), ze, s(0), v(1));
			x1: soma_1a port map(x(1), y(1), v(1), s(1), v(2));
			x2: soma_1a port map(x(2), y(2), v(2), s(2), v(3));
			x3: soma_1a port map(x(3), y(3), v(3), s(3), zs);
end estrutural;