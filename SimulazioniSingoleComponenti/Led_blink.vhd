library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SimoFicca is
	Port (CLOCK_50 : in STD_LOGIC;
			LEDR : out STD_LOGIC_VECTOR(0 to 9));
end SimoFicca;

architecture Behavioral of SimoFicca is

	signal pulse : std_LOGIC := '0';
	signal count : integer range 0 to 50000000 := 0;
	
begin

	counter : process(CLOCK_50)
	begin
		if rising_edge(CLOCK_50) then
			if count = 49999999 then
				count <= 0;
				pulse <= not pulse;
			else
				count <= count + 1;
			end if;
		end if;
	
	end process;
	
	LEDR(0) <= pulse;
	
end Behavioral;