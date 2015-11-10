---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab 8
--Filename: RCA4.vhd
--Date: 10/29/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: RCA4
--Description: Simulates a circuit which adds two four bit integers. Made of 4 full adders, 
--the circuit will return a high signal to carOut to indicate overflow.
----------------------------
entity RCA4 is 
		port(
			X : in std_logic_vector(3 downto 0); -- where 0 is least significant
			Y : in std_logic_vector(3 downto 0); 
			Z : out std_logic_vector(3 downto 0);
			signal carIn : in std_logic:='0';
			carOut : out std_logic
		);

end entity;

---------------------------
-- Architecture: STRUCTURAL
-- Description:  Implements the above entity block using 4 full adders
-- and 3 signals, acting as wires to transfer the carry bit from one adder to the next.
-- The carOut bit will return high in the event of overflow.
----------------------------------
architecture STRUCTURAL of RCA4 is 
	signal FA2ci, FA3ci, FA4ci : std_logic:='0';
	
begin

FA1 : entity work.fulladder port map(X(0),Y(0),Z(0),carIn,FA2ci);
FA2 : entity work.fulladder port map(X(1),Y(1),Z(1),FA2ci,FA3ci);
FA3 : entity work.fulladder port map(X(2),Y(2),Z(2),FA3ci,FA4ci);
FA4 : entity work.fulladder port map(X(3),Y(3),Z(3),FA4ci,carOut);

end STRUCTURAL;