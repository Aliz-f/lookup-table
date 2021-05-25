
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_lut is
	port(
		A, B, C, D, E : in std_logic;
		output : out std_Logic
	);
end xor_lut;

architecture xor_lut_arch of xor_lut is

signal memory_xor : std_logic_vector (31 downto 0) := "01101001100101101001011001101001";

begin

output <=  
not((memory_xor(0) 	and not A and not B and 	not C and 	not D and 	not E) or
(memory_xor(1) 	and not A and not B and 	not C and 	not D and  		 E) or
(memory_xor(2) 	and not A and not B and 	not C and 		 D and 	not E) or
(memory_xor(3) 	and not A and not B and 	not C and 		 D and 		 E) or
(memory_xor(4) 	and not A and not B and 		 C and 	not D and 	not E) or
(memory_xor(5) 	and not A and not B and 		 C and 	not D and 		 E) or
(memory_xor(6) 	and not A and not B and 		 C and 	 	 D and 	not E) or
(memory_xor(7) 	and not A and not B and 		 C and 		 D and 		 E) or
(memory_xor(8) 	and not A and 		B and 	not C and 	not D and 	not E) or
(memory_xor(9) 	and not A and 		B and 	not C and 	not D and 		 E) or
(memory_xor(10) 	and not A and 		B and 	not C and 		 D and 	not E) or
(memory_xor(11) 	and not A and 		B and 	not C and 		 D and 		 E) or
(memory_xor(12) 	and not A and 		B and 		 C and 	not D and 	not E) or
(memory_xor(13) 	and not A and 		B and 		 C and 	not D and 		 E) or
(memory_xor(14) 	and not A and 		B and 		 C and 		 D and 	not E) or
(memory_xor(15) 	and not A and 		B and 		 C and 		 D and 		 E) or 
(memory_xor(16) 	and A and 	  not B and 	not C and 	not D and 	not E) or
(memory_xor(17) 	and A and 	  not B and 	not C and 	not D and 		 E) or
(memory_xor(18) 	and A and 	  not B and 	not C and 		 D and 	not E) or
(memory_xor(19) 	and A and 	  not B and 	not C and 		 D and 		 E) or
(memory_xor(20) 	and A and 	  not B and 	 	 C and 	not D	and 	not E) or
(memory_xor(21) 	and A and 	  not B and 	 	 C and 	not D and 		 E) or
(memory_xor(22) 	and A and 	  not B and 		 C and 		 D and 	not E) or
(memory_xor(23) 	and A and 	  not B and 		 C and 		 D and 		 E) or
(memory_xor(24) 	and A and 			B and 	not C and 	not D and 	not E) or
(memory_xor(25) 	and A and 			B and 	not C and 	not D and 		 E) or
(memory_xor(26) 	and A and 			B and 	not C and 		 D and 	not E) or
(memory_xor(27) 	and A and 			B and 	not C and 		 D and 		 E) or 
(memory_xor(28) 	and A and 			B and 		 C and 	not D and 	not E) or
(memory_xor(29) 	and A and 			B and 		 C and 	not D and 		 E) or
(memory_xor(30) 	and A and 			B and 		 C and 	 	 D and 	not E) or
(memory_xor(31) 	and A and 			B and 		 C and 		 D and 	 	 E));

end xor_lut_arch;

