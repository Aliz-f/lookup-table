library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity use_lut is
	port(
			input : in std_logic_vector(4 downto 0);
			outpu : out std_logic
	);
end use_lut;

architecture use_lut_arch of use_lut is

	component xor_lut 
		port(
			A, B, C, D, E : in std_logic;
			output : out std_Logic
		);
	end component;

for all : xor_lut use entity work.xor_lut(xor_lut_arch);

begin

LX1 : xor_lut port map (input(4), input(3), input(2), input(1) ,input(0), outpu);


end use_lut_arch;

