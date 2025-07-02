library ieee;
use ieee.std_logic_1164.all;

ENTITY somador IS
PORT(A, B: IN std_logic_vector(5 downto 0);
	  cin_i: IN std_logic;
	  S: OUT std_logic_vector(5 downto 0);
	  cout_s :OUT std_logic);
END somador;

ARCHITECTURE BEHAV OF somador IS
	signal cins: std_logic_vector(5 downto 0);
	
	COMPONENT somador_carry IS
		PORT(a, b, cin: IN std_logic;
			  s, cout :OUT std_logic);
	END COMPONENT;

BEGIN
	u1: somador_carry PORT MAP(a=>A(0), b=>B(0), cin=>cin_i, s=>S(0), cout=>cins(0));
	u2: somador_carry PORT MAP(a=>A(1), b=>B(1), cin=>cins(0), s=>S(1), cout=>cins(1));
	u3: somador_carry PORT MAP(a=>A(2), b=>B(2), cin=>cins(1), s=>S(2), cout=>cins(2));
	u4: somador_carry PORT MAP(a=>A(3), b=>B(3), cin=>cins(2), s=>S(3), cout=>cins(3));
	u5: somador_carry PORT MAP(a=>A(4), b=>B(4), cin=>cins(3), s=>S(4), cout=>cins(4));
	u6: somador_carry PORT MAP(a=>A(5), b=>B(5), cin=>cins(4), s=>S(5), cout=>cout_s);
	
END ARCHITECTURE BEHAV;