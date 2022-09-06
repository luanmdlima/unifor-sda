entity soma_1a is
	port(
		a, b, ve: in bit;
		s, vs: out bit
	);
end soma_1a;

architecture somador of soma_1a is
	begin
		s <= a xor b xor ve;
		vs <= (a and b) or (ve and(a xor b));
		-- vs <= (a and b) or (ve and a) or (ve and b);
end somador;

