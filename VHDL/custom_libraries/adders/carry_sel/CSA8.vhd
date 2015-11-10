---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab 9
--Filename: CSA8.vhd
--Date: 11/5/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: CSA8
--Description: Simulates a carry select adder which calculates the sum of two 8 bit numbers twice, and then selecting the proper value 
-- based on the value of cIn.
----------------------------
entity CSA8 is
	port(
			X,Y : in std_logic_vector (7 downto 0);
			Z : out std_logic_vector (7 downto 0);
			cIn : in std_logic;
			cOut :out std_logic
	);
end entity;

---------------------------
-- Architecture: structural
-- Description:  Implements the above entity block using two 4bit blocks, each containing 4 RCA4 components
----------------------------------
architecture structural of CSA8 is 
	signal carry_wire0: std_logic_vector(1 downto 0);--carry bits for the strand of values assuming cIn is 0
	signal carry_wire1: std_logic_vector(1 downto 0);--carry bits for the strand of values assuming cIn is 1
	signal sum_wire0: std_logic_vector(7 downto 0);-- sums of each bit assuming cIn is 0
	signal sum_wire1: std_logic_vector(7 downto 0);--sums of each bit assuming cIn is 1
	signal blockcarry : std_logic;-- carry bit from one block to the next
begin
	
MUX_GEN : for I in 3 downto 0 generate
	
	MUX_X : entity work.MUX2TO1 port map(sum_wire0(I),sum_wire1(I),cIn,Z(I));

	end generate;

MUX_GEN1 : for I in 7 downto 4 generate
	
	MUX_X_1 : entity work.MUX2TO1 port map(sum_wire0(I),sum_wire1(I),blockcarry,Z(I));

	end generate;
	
BIG_MUX0 : entity work.MUX2TO1 port map (carry_wire0(0),carry_wire1(0),cIn,blockcarry); -- muxes to calculate final carry of each 4bit block
BIG_MUX1 : entity work.MUX2TO1 port map (carry_wire0(1),carry_wire1(1),blockcarry,cout);

RCA4_1 : entity work.RCA4 port map(X(3 downto 0), Y (3 downto 0), sum_wire0(3 downto 0),'0',carry_wire0(0)); -- 4bit ripple carry adder components
RCA4_2 : entity work.RCA4 port map(X(3 downto 0), Y (3 downto 0), sum_wire1(3 downto 0),'1',carry_wire1(0));
RCA4_3 : entity work.RCA4 port map(X(7 downto 4), Y (7 downto 4), sum_wire0(7 downto 4),'0',carry_wire0(1));
RCA4_4 : entity work.RCA4 port map(X(7 downto 4), Y (7 downto 4), sum_wire1(7 downto 4),'1',carry_wire1(1));
	
end architecture;