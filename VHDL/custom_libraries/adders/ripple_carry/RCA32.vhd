---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab 8
--Filename: RCA32.vhd
--Date: 10/29/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: RCA32
--Description: Simulates a circuit which adds 2 32bit binary numbers using ripple carry logic, 
--and returns a high output to carOut in the event of overflow
----------------------------
entity RCA32 is 
		port(
			X : in std_logic_vector(31 downto 0); -- where 0 is least significant
			Y : in std_logic_vector(31 downto 0); 
			Z : out std_logic_vector(31 downto 0);
			signal carIn : in std_logic:='0';
			carOut : out std_logic
		);

end entity;

---------------------------
-- Architecture: STRUCTURAL
-- Description:  Implements the above entity block using 4 8 bit ripple carry
-- adders and three signals, acting as wires to transfer the carry bit from one adder to the next.
----------------------------------
architecture STRUCTURAL of RCA32 is 
	signal RCA8_1_ci,RCA8_2_ci,RCA8_3_ci : std_logic:='0';
	
begin

RCA8_0 : entity work.RCA8 port map(X(7 downto 0),Y(7 downto 0),Z(7 downto 0),carIn,RCA8_1_ci);
RCA8_1 : entity work.RCA8 port map(X(15 downto 8),Y(15 downto 8),Z(15 downto 8),RCA8_1_ci,RCA8_2_ci);
RCA8_2 : entity work.RCA8 port map(X(23 downto 16),Y(23 downto 16),Z(23 downto 16),RCA8_2_ci,RCA8_3_ci);
RCA8_3 : entity work.RCA8 port map(X(31 downto 24),Y(31 downto 24),Z(31 downto 24),RCA8_3_ci,carOut);

end STRUCTURAL;