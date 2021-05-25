LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY use_lut_testbench IS
END use_lut_testbench;
 
ARCHITECTURE behavior OF use_lut_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT use_lut
    PORT(
         input : IN  std_logic_vector(4 downto 0);
         outpu : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal outpu : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: use_lut PORT MAP (
          input => input,
          outpu => outpu
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
				input <= "00001"; --1
		wait for 100 ns;
				input <= "00010"; --2
		wait for 100 ns;
				input <= "00011"; --3
		wait for 100 ns;
				input <= "00100"; --4
		wait for 100 ns;
				input <= "00101"; --5
		wait for 100 ns;
				input <= "00110"; --6
		wait for 100 ns;
				input <= "00111"; --7
		wait for 100 ns;
				input <= "01000"; --8
		wait for 100 ns; 
				input <= "01001"; --9
		wait for 100 ns;
			
      wait;
   end process;

END;
