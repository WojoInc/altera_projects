---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: HW 6
--Filename: ALU4.vhd
--Date: 11/5/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: ALU4
--Description: A 4bit ALU that utilizes 4 fulladders as well as logic extender, carry extender, and arithmetic extender logic.
----------------------------
entity ALU4 is
	port(
			X,Y : in std_logic_vector(3 downto 0);
			S : in std_logic_vector(2 downto 0);
			Z : out std_logic_vector(3 downto 0);
			cOut : out std_logic;
			OVFLW : out std_logic
	);
end entity;

---------------------------
-- Architecture: STRUCTURAL
-- Description:  Ties together each component to build one ALU that processes each of the 8 operations.
----------------------------------
architecture STRUCTURAL of ALU4 is
	signal LEWIRE : std_logic_vector(3 downto 0); -- signals to connect various components
	signal AEWIRE : std_logic_vector(3 downto 0);
	signal FADDRC : std_logic_vector(4 downto 0);
	
begin

CREXTNDR : entity work.CREXTNDR port map(S(1 downto 0),FADDRC(0));

cOut <=FADDRC(4); --carry out of ALU equal to carry out of last fulladder

--each generate iteration represents 1 bit of the ALU, each bit contains an
-- adder, a logic extender, and an arithmetic extender.
ALU4_GEN : for I in 3 downto 0 generate 
	LEXTNDRX : entity work.LEXTNDR port map(X(I),Y(I),S,LEWIRE(I));
	AREXTNDRX : entity work.AREXTNDR port map(Y(I),S,AEWIRE(I));
	FADDRX : entity work.fulladder port map(LEWIRE(I),AEWIRE(I),Z(I),FADDRC(I), FADDRC(I+1));

end generate;

end architecture;