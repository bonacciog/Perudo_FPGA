library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.perudo_package.all;

entity Perudo_DE1 is
	port(
		CLOCK_50		: in  std_logic;
		KEY			: in  std_logic_vector(3 downto 0);
		SW				: in  std_logic_vector(9 downto 9);
		--Test
		LEDR			: out std_logic_vector(9 downto 0);
		LEDG			: out std_logic_vector(7 downto 0)
	);

end;

architecture RTL of Perudo_DE1 is
	signal clock              	: std_logic;
	signal RESET_N            	: std_logic;
	signal time_10ms          	: std_logic;	
	signal reset_sync_reg     	: std_logic;
	signal inizia_partita		: std_logic;
	signal turno_giocatore		: std_logic;
	
	-----------------------------------
	-- MODIFICATI DA SIMO PER TESTING
	-----------------------------------
	signal nuovo_giocatore						:std_logic;
	signal elimina_giocatore					:std_logic;
	signal prossimo_turno						:std_logic;
	signal esegui_scommessa						:std_logic;
	signal dado_scommesso						:dado_type;
	signal ricorrenza								:integer;
	signal check									:std_logic;
	signal checked									:std_logic;
	signal giocatore_aggiunto					:std_logic;
	signal giocatore_eliminato					:std_logic;
	signal partita_iniziata						:std_logic;
	signal fine_partita							:std_logic;
	
	-----------------------------------
	
begin
	
	----------------------------------------
	-- RESET SINCRONO
	----------------------------------------
	reset_sync : process(CLOCK_50)
	begin
		if (rising_edge(CLOCK_50)) then
			reset_sync_reg <= SW(9);
			RESET_N <= reset_sync_reg;
		end if;
	end process;
	
	
	----------------------------------------
	-- MAPPING CONTROLLER
	----------------------------------------
	controller : entity work.Perudo_Controller
		port map(
			CLOCK          		=> CLOCK_50,
			RESET_N        		=> RESET_N,
			TIME_10MS				=> time_10ms,
			BUTTON_PREV				=> KEY(3),
			BUTTON_NEXT				=> KEY(2),
			BUTTON_ENTER   		=> KEY(1),
			BUTTON_DOUBT  			=> KEY(0),
			
			INIZIA_PARTITA			=> inizia_partita,
			NUOVO_GIOCATORE		=> nuovo_giocatore,
			GIOCATORE_AGGIUNTO	=> giocatore_aggiunto,
			ELIMINA_GIOCATORE		=> elimina_giocatore,
			GIOCATORE_ELIMINATO	=> giocatore_eliminato,
			TURNO_GIOCATORE		=> turno_giocatore,
			PARTITA_INIZIATA		=> partita_iniziata,
			
			--Test
			LEDR						=> LEDR,
			LEDG						=> LEDG
			
		);
	
	----------------------------------------
	-- MAPPING DATAPATH
	----------------------------------------
	datapath: entity work.Perudo_Datapath
		port map(
			CLOCK					=> CLOCK_50,
			RESET_N				=> RESET_N,
			INIZIA_PARTITA		=> inizia_partita,
			TURNO_GIOCATORE	=> turno_giocatore,
			
			-----------------------------------
			-- MODIFICATI DA SIMO PER TESTING
			-----------------------------------
			NUOVO_GIOCATORE						=> nuovo_giocatore,
			ELIMINA_GIOCATORE 					=> elimina_giocatore,
			PROSSIMO_TURNO							=> prossimo_turno,
			ESEGUI_SCOMMESSA						=> esegui_scommessa,
			DADO_SCOMMESSO							=> dado_scommesso,
			RICORRENZA								=> ricorrenza,
			CHECK                				=> check,
			CHECKED              				=> checked,
			GIOCATORE_AGGIUNTO    				=> giocatore_aggiunto,
			GIOCATORE_ELIMINATO   				=> giocatore_eliminato,
			PARTITA_INIZIATA        			=> partita_iniziata,
			FINE_PARTITA							=> fine_partita

			---------------------------------
		);
	
	----------------------------------------
	-- TIME GENERATOR
	----------------------------------------
--	timegen : process(CLOCK, RESET_N)
--		variable counter : integer range 0 to (500000-1);
--	begin
--		if (RESET_N = '0') then
--			counter := 0;
--			time_10ms <= '0';
--		elsif (rising_edge(clock)) then
--			if(counter = counter'high) then
--				counter := 0;
--				time_10ms <= '1';
--			else
--				counter := counter+1;
--				time_10ms <= '0';			
--			end if;
--		end if;
--	end process;

end architecture;