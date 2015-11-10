---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab Week 7
--Filename: MUX4TO1.vhd
--Date: 10/23/15
---------------------------------

-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: MUX4TO1
--Description: Implementation of a 4to1 mux using 3 2 to 1 multiplexers
----------------------------
entity MUX4TO1 is
--mux function definition begins here
	port(
		D0  : in std_logic;
		D1  : in std_logic;
		D2  : in std_logic;
		D3  : in std_logic;
		S0  : in std_logic; -- most significant
		S1  : in std_logic;
		Y  : out std_logic

	);
end entity MUX4TO1;
---------------------------
-- Architecture: DEFAULT
-- Description:  Uses 2 MUX2TO1 components and a single with-select statement to create 1 4to1 mux
----------------------------------
architecture DEFAULT of MUX4TO1 is
--MUX behaviour is described here
	signal w1,w2 : std_logic:='0';-- wires representing the output of each mux.
begin
	MUX0 : entity work.MUX2TO1 port map (D0,D1,S1,w1);
	MUX1 : entity work.MUX2TO1 port map (D2,D3,S1,w2);
	with S0 select -- could also be substituted with a third 2TO1MUX, with Y as its output
	Y<= w1 when '0',
		w2 when '1';
	

end DEFAULT;