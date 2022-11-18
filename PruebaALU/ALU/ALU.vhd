library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
  port(A , B: in std_logic_vector(7 downto 0);
       Result: out std_logic_vector(7 downto 0);
		 --Cout: out std_logic;
		 ALU_Sel: in  std_logic_vector(2 downto 0);
		 NZVC: out std_logic_vector(3 downto 0)
		 );
end entity;


architecture ALU_arch of ALU is

   begin

ALU_PROCESS : process (A, B, ALU_Sel)

   variable Suma_uns: unsigned(8 downto 0);
	variable Resta_uns : unsigned(8 downto 0);
	
 begin
 
if (ALU_Sel = "000") then  --ADDITION
	 
    --- Sum Calculation ---------------------------
  Suma_uns := unsigned('0' & A) + unsigned('0' & B);
  Result <= std_logic_vector(Suma_uns(7 downto 0));
    --- Negative Flag (N) -------------------------
  NZVC(3) <= Suma_uns(7);
   --- Zero Flag (Z) -----------------------------
    if (Suma_uns(7 downto 0) = x"00") then 
    NZVC(2) <= '1';
   else
    NZVC(2) <= '0';
   end if;
    --- Overflow Flag (V) -------------------------
    if ((A(7)='0' and B(7)='0' and Suma_uns(7)='1') or
   (A(7)='1' and B(7)='1' and Suma_uns(7)='0')) then 
	 NZVC(1) <= '1';
   else
    NZVC(1) <= '0';
   end if;
    --- Carry Flag (C) ----------------------------
    NZVC(0) <= Suma_uns(8);

elsif (ALU_Sel = "001") then  --RESTA

  if (A>=B) then 

    --- Sum Calculation -----------------------------
  Resta_uns := unsigned('0' & A) - unsigned('0' & B);
  Result <= std_logic_vector(Resta_uns(7 downto 0));
    --- Negative Flag (N) ---------------------------
  NZVC(3) <= Resta_uns(7);
    --- Zero Flag (Z) -------------------------------
  if (Resta_uns(7 downto 0) = x"00") then 
   NZVC(2) <= '1';
  else
   NZVC(2) <= '0';
  end if;
    --- Overflow Flag (V) ---------------------------
  if ((A(7)='1' and B(7)='0' and Resta_uns(7)='0') or
   (A(7)='0' and B(7)='1' and Resta_uns(7)='1')) then 
	 NZVC(0) <= '1';
   else
    NZVC(1) <= '0';
   end if;
    --- Carry Flag (C) ------------------------------
  NZVC(0) <= Resta_uns(8);

 elsif(A<B) then

    --- Sum Calculation -----------------------------
  Resta_uns := unsigned('0' & A) - unsigned('0' & B);
  Result <= std_logic_vector(Resta_uns(7 downto 0));
    --- Negative Flag (N) ---------------------------
  NZVC(3) <= Resta_uns(7);
    --- Zero Flag (Z) -------------------------------
  if (Resta_uns(7 downto 0) = x"00") then 
   NZVC(2) <= '1';
  else
   NZVC(2) <= '0';
  end if;
    --- Overflow Flag (V) ---------------------------
  if ((A(7)='0' and B(7)='0' and Resta_uns(7)='1') or
   (A(7)='1' and B(7)='1' and Resta_uns(7)='0')) then 
	 NZVC(1) <= '0';
   else
    NZVC(0) <= '1';
   end if;
    --- Carry Flag (C) ------------------------------
  NZVC(0) <= Resta_uns(8);

  end if;
  end if;
 end process;
end ALU_arch;