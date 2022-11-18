library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_final is

  Port (A , B: in std_logic_vector(7 downto 0);
        Display0, Display1, Display2, Display3: out std_logic_vector(6 downto 0);
        ALU_Sel: in  std_logic_vector(2 downto 0);
		  NZVC: out std_logic_vector(3 downto 0)
		  );
  
end entity;

architecture ALU_final_arch of ALU_final is

 component ALU
 port(A , B: in std_logic_vector(7 downto 0);
       Result: out std_logic_vector(7 downto 0);
		 --Cout: out std_logic;
		 ALU_Sel: in  std_logic_vector(2 downto 0);
		 NZVC: out std_logic_vector(3 downto 0)
		 );
 end component;
 
 component DecoHex7
 Port(A, B, C, D: in std_logic;
			F: out std_logic_vector(6 downto 0));
 end component;
			
	signal ResultadoALU: std_logic_vector(7 downto 0);
	
begin 

P1: DecoHex7 port map (ResultadoALU(7), ResultadoALU(6), ResultadoALU(5), ResultadoALU(4), Display0);
P2: DecoHex7 port map (ResultadoALU(3), ResultadoALU(2), ResultadoALU(1), ResultadoALU(0), Display1);
P3: DecoHex7 port map (A(7), A(6), A(5), A(4), Display2);
P4: DecoHex7 port map (A(3), A(2), A(1), A(0), Display3);
P5: ALU port map (A, B, ResultadoALU, ALU_Sel, NZVC);

end architecture;

	
	
	
			