---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab Week 6
--Filename: Energy.vhd
--Date: 10/12/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: Energy
--Description: Non-concurrent impelementation of Lab.vhd written to increase familiarity with VHDL and implementing
-- non-concurrent processes. Tested on development board, exhibits the same results as Lab.vhd.
----------------------------
entity Energy is
	port(
		S : in std_logic_vector(3 downto 0); --define 4bit vector
		Y : out std_logic_vector(3 downto 0)
	);

end Energy;

---------------------------
-- Architecture: Behavioural
-- Description:  Returns an output vector based on the number of 1s found in the input as a result of the function count_ones()

----------------------------------
architecture behavioural of Energy is
	signal HIGH : std_logic:='1';
	signal LOW : std_logic:='0';
	---------------------------
	--Function natural count_ones(input: slv)
	--Counts the number of ones in the input vector slv and returns
	-- the number of ones found as a natural variable
	---------------------------
	function count_ones(input: std_logic_vector) return natural is 
		variable num_ones : natural:= 0;
		begin
			for i in input'low to input'high loop
				if input(i) = '1' then
					num_ones := num_ones + 1;
				end if;
			end loop;
	return num_ones;
	end function count_ones;
	
begin
main: process(S) --detects any changes in the input vector S, and executes itself
	begin				-- whenever such an event is triggered.
	case count_ones(S) is 
		when 4 =>	Y <= "1111";
		when 3 =>	Y <= "0111";
		when 2 =>	Y <= "0011";
		when 1 =>	Y <= "0001";
		when 0 =>	Y <= "0000";
		when others => Y <= "0000";
	end case;
	end process;
end behavioural;