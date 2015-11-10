---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab Week 7
--Filename: MUX2TO1.vhd
--Date: 10/23/15
---------------------------------

-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: MUX2TO1
--Description: Implementation of a 2 to 1 multiplexer using a with select statement
----------------------------
entity MUX2TO1 is
--mux function definition begins here
	port(
		D0 : in std_logic;
		D1 : in std_logic;
		S  : in std_logic;
		Y  : out std_logic

	);
end entity MUX2TO1;

---------------------------
-- Architecture: DEFAULT
-- Description:  Uses one with-select statement to simulate a 2 input 1 output multiplexer
----------------------------------
architecture DEFAULT of MUX2TO1 is
--MUX behaviour is described here
begin

	with S select
	Y <= D0 when '0',
			D1 when '1';
	

end DEFAULT;