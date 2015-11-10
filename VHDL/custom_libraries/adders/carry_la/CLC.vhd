---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab 9
--Filename: CLC.vhd
--Date: 11/5/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: CLC
--Description: Simulates a circuit which calculates the carry bit seperate of the binary addition using 
-- generate and propogate logic.
----------------------------
entity CLC is
	port(
		A,B : in std_logic_vector(3 downto 0);
		cIn : in std_logic;
		carry : buffer std_logic_vector(4 downto 0)
	);

end entity;
---------------------------
-- Architecture: dataflow
-- Description:  Implements the above entity block using generate-propogate equations
----------------------------------
architecture dataflow of CLC is

begin
	carry(0) <= cIn;
	carry(1) <= (A(0) and B(0)) or ((A(0) or B(0)) and carry(0));
	carry(2) <= (A(1) and B(1)) or ((A(1) or B(1)) and carry(1));
	carry(3) <= (A(2) and B(2)) or ((A(2) or B(2)) and carry(2));
	carry(4) <= (A(3) and B(3)) or ((A(3) or B(3)) and carry(3));

end architecture;