---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab 8
--Filename: RCA8.vhd
--Date: 10/29/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: RCA8
--Description: Simulates a circuit which adds 2 8 bit binary numbers using ripple carry logic
----------------------------
entity RCA8 is 
		port(
			X : in std_logic_vector(7 downto 0); -- where 0 is least significant
			Y : in std_logic_vector(7 downto 0); 
			Z : out std_logic_vector(7 downto 0);
			signal carIn : in std_logic:='0';
			carOut : out std_logic
		);

end entity;

---------------------------
-- Architecture: STRUCTURAL
-- Description:  Implements the above entity block using 2 4 bit ripple carry
-- adders and one signal, acting as a wire to transfer the carry bit from one adder to the next.
-- The carOut bit will return high in the event of overflow.
----------------------------------
architecture STRUCTURAL of RCA8 is 
	signal RCA4_1_ci: std_logic:='0';
	
begin

RCA4_0 : entity work.RCA4 port map(X(3 downto 0),Y(3 downto 0),Z(3 downto 0),carIn,RCA4_1_ci);
RCA4_1 : entity work.RCA4 port map(X(7 downto 4),Y(7 downto 4),Z(7 downto 4),RCA4_1_ci,carOut);

end STRUCTURAL;