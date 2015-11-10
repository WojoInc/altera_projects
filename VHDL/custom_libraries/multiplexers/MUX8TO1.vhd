library IEEE;
use IEEE.std_logic_1164.all;

---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab Week 7
--Filename: MUX8TO1.vhd
--Date: 10/23/15
---------------------------------

-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: MUX8TO1
--Description: Implementation of a 8 input 1 output multiplexer using 7 2 input multiplexers
----------------------------
entity MUX8TO1 is
	port(
		D0,D1,D2,D3,D4,D5,D6,D7 : in std_logic;
		S0,S1,S2 : in std_logic; --with S2 being least-significant
		Y : out std_logic
	);

end entity;

---------------------------
-- Architecture: structural
-- Description:  Returns the value associated with the input given by the select bits S0, S1, and S2
----------------------------------
architecture structural of MUX8TO1 is
	signal w0,w1,w2,w3,w4,w5 : std_logic:='0'; --wires to connect component multiplexers
	
begin

	MUX0 : entity work.MUX2TO1 port map (D0,D1,S2,w0);
	MUX1 : entity work.MUX2TO1 port map (D2,D3,S2,w1);
	MUX2 : entity work.MUX2TO1 port map (D4,D5,S2,w2);
	MUX3 : entity work.MUX2TO1 port map (D6,D7,S2,w3);
	MUX4 : entity work.MUX2TO1 port map (w0,w1,S1,w4);
	MUX5 : entity work.MUX2TO1 port map (w2,w3,S1,w5);
	
	with S0 select
		Y <= w4 when '0',
			w5 when '1';

end architecture;