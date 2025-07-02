library ieee;
use ieee.std_logic_1164.all;

ENTITY somador_carry IS
PORT(a, b, cin: IN std_logic;
		s, cout :OUT std_logic);
END somador_carry;

ARCHITECTURE BEHAV OF somador_carry IS

BEGIN
	s <= a XOR b xor cin;
	cout<= (a AND b) OR (a AND cin) OR (b AND cin);
END ARCHITECTURE BEHAV;