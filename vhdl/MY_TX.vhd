library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity MY_TX is
	port(
		CLK		: in	std_logic;
		RESET_N	: in	std_logic;
		START		: in	std_logic;
		BUSY		: out	std_logic;
		DATA		: in	std_logic_vector(7 downto 0);
		TX_LINE	: out	std_logic
	);
end MY_TX;

architecture main of MY_TX is

	signal PRSCL		: integer range 0 to 5208:=0;
	signal INDEX		: integer range 0 to 9:=0;
	signal DATAFLL		: std_logic_vector(9 downto 0);
	signal TX_FLG		: std_logic:='0';
	
	signal tx_clk_counter 		: integer 								:= 0;
	signal tx_clk 					: STD_LOGIC 							:= '0';
	signal clk_baud_count		: STD_LOGIC_VECTOR (15 downto 0)	:= X"1458";
	
	begin 
	
	clk_gen: process (CLK)
	begin
		if rising_edge(CLK) then
		
			-- TX standard baud clock, no reset
			if tx_clk_counter = 0 then
				-- chop off LSB to get a clock
				tx_clk_counter <= to_integer(unsigned(clk_baud_count(15 downto 1)));
				tx_clk 		<= not tx_clk;
			elsif tx_clk_counter = 2604 then
					tx_clk_counter <= tx_clk_counter - 1;
			else
				tx_clk_counter <= tx_clk_counter - 1;
			end if;
		end if;
	end process;
	
	process(CLK, START)
	
		begin
		if(rising_edge(CLK)) then
			if(TX_FLG='0' and START='1') then
				TX_FLG<='1';
				BUSY<='1';
				DATAFLL(0)<='0';	--Start bit
				DATAFLL(9)<='1';	--End bit
				DATAFLL(8 downto 1)<=DATA;
			end if;
		
			if(TX_FLG='1') then
				if(PRSCL<5207) then
					PRSCL<=PRSCL+1;
				else
					PRSCL<=0;
				end if;
				if(PRSCL = 2607) then
					-----------------------
					-- Trovata la metà del ciclo di clock
					-----------------------
					TX_LINE<=DATAFLL(INDEX);
					if(INDEX<9) then
						INDEX<=INDEX+1;
					else
						TX_FLG<='0';
						BUSY<='0';
						INDEX<=0;
					end if;
				end if;
			 end if;
		end if;
	end process;
end main;
					