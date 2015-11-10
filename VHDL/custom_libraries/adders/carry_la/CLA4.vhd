---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab 9
--Filename: CLA4.vhd
--Date: 11/5/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: CLA4
--Description: Simulates a circuit which calculates the sum of 2 4bit number X and Y and implements carry look-ahead logic to
-- calculate the carry bit.
----------------------------
entity CLA4 is 
	port(
			X,Y : in std_logic_vector(3 downto 0);
			Z : out std_logic_vector(3 downto 0);
			cIn : in std_logic;
			cOut : out std_logic
	);
end entity;

---------------------------
-- Architecture: structural
-- Description:  Implements the above entity block using 4 full adders and one CLC component to calculate carry
----------------------------------
architecture structural	of CLA4 is
	signal carry_wire : std_logic_vector(4 downto 0);
begin

CLC_0 : entity work.CLC port map(X,Y,cIn,carry_wire);

FA_GEN : for I in 3 downto 0 generate
	
	FAX : entity work.fulladder port map(X(I),Y(I),Z(I),carry_wire(I));
	
	end generate;

cOut <= carry_wire(4);

end architecture;