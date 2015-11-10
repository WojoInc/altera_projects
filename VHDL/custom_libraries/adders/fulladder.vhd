---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab 8
--Filename: fulladder.vhd
--Date: 10/29/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: fulladder
--Description: Simulates a circuit which adds 2 bits, and allows for a carry in bit and a carry out bit
----------------------------
entity fulladder is 
		port(
			X : in std_logic;
			Y : in std_logic;
			sum : out std_logic;
			carIn : in std_logic;
			carOut : out std_logic
		);

end entity;

---------------------------
-- Architecture: STRUCTURAL
-- Description:  Implements the above entity block using two halfadder components
----------------------------------
architecture behavioural of fulladder is 
	signal sum1,car1,car2 :std_logic:='0';
begin
HA1 : entity work.halfadder port map(X,Y,sum1,car1);
HA2 : entity work.halfadder port map(sum1,carIn,sum,car2);
carOut <= car1 or car2;
end behavioural;