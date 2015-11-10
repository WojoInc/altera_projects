---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab Week 6
--Filename: Palendrome.vhd
--Date: 10/12/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: Palendrome
--Description: Simulates a circuit which returns a high output to Y
-- if the input bits are identical in both normal and reverse order.
----------------------------
entity Palendrome is
	port(
		S : in std_logic_vector(3 downto 0); --define 4bit vector
		Y : out std_logic
	);

end Palendrome;

---------------------------
-- Architecture: Behavioural
-- Description:  Implements the above entity block using a with-select
-- statement and two signals HIGH and LOW to help make the results of 
-- each case easier to understand.

----------------------------------
architecture behavioural of Palendrome is
	signal HIGH : std_logic:='1';
	signal LOW : std_logic:='0';
begin
	with S select
	Y<= HIGH when "0000",--define cases
		HIGH when "0110",
		HIGH when "1001",
		HIGH when "1111",
		LOW when others;--return low signal for any other case
end behavioural;