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
	signal elimina_dado							:std_logic;
	signal esegui_scommessa_com				:std_logic;
	signal dado_scommesso_com					:dado_type;
	signal ricorrenza_com						:integer;
	signal esegui_scommessa_g0					:std_logic;
	signal dado_scommesso_g0					:dado_type;
	signal ricorrenza_g0							:integer;
	signal dammi_giocatori_in_campo			:std_logic;
	signal dammi_scommessa_corrente			:std_logic;
	signal fine_partita							:std_logic;
	signal giocatori_in_campo_out				:giocatore_array(0 to MAX_GIOCATORI-1);
	signal numero_giocatori_in_campo_out	:integer range 0 to MAX_GIOCATORI;
	signal scommessa_corrente_out				:scommessa_type;
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
			CLOCK          	=> CLOCK_50,
			RESET_N        	=> RESET_N,
			TIME_10MS			=> time_10ms,
			BUTTON_PREV			=> not(KEY(3)),
			BUTTON_NEXT			=> not(KEY(2)),
			BUTTON_ENTER   	=> not(KEY(1)),
			BUTTON_DOUBT  		=> not(KEY(0)),
			
			INIZIA_PARTITA		=> inizia_partita,
			TURNO_GIOCATORE	=> turno_giocatore,
			
			--Test
			LEDR				=> LEDR,
			LEDG				=> LEDG
			
		);
	
	----------------------------------------
	-- MAPPING DATAPATH
	----------------------------------------
	datapath: entity work.Perudo_Datapath
		port map(
			CLOCK				=> CLOCK_50,
			RESET_N			=> RESET_N,
			INIZIA_PARTITA	=> inizia_partita,
			TURNO_GIOCATORE	=> turno_giocatore,
			
			-----------------------------------
			-- MODIFICATI DA SIMO PER TESTING
			-----------------------------------
			NUOVO_GIOCATORE						=> nuovo_giocatore,
			ELIMINA_GIOCATORE 					=> elimina_giocatore,
			PROSSIMO_TURNO							=> prossimo_turno,
			ELIMINA_DADO							=> elimina_dado,
			ESEGUI_SCOMMESSA_COM					=> esegui_scommessa_com,
			DADO_SCOMMESSO_COM					=> dado_scommesso_com,
			RICORRENZA_COM							=> ricorrenza_com,
			ESEGUI_SCOMMESSA_G0					=> esegui_scommessa_g0,
			DADO_SCOMMESSO_G0						=> dado_scommesso_g0,
			RICORRENZA_G0							=> ricorrenza_g0,
			DAMMI_GIOCATORI_IN_CAMPO			=> dammi_giocatori_in_campo,
			DAMMI_SCOMMESSA_CORRENTE			=>	dammi_scommessa_corrente,
			FINE_PARTITA							=> fine_partita,
			GIOCATORI_IN_CAMPO_OUT				=> giocatori_in_campo_out,
			NUMERO_GIOCATORI_IN_CAMPO_OUT		=> numero_giocatori_in_campo_out,
			SCOMMESSA_CORRENTE_OUT				=> scommessa_corrente_out
			---------------------------------
		);
	
	----------------------------------------
	-- TIME GENERATOR
	----------------------------------------
	timegen : process(CLOCK, RESET_N)
		variable counter : integer range 0 to (500000-1);
	begin
		if (RESET_N = '0') then
			counter := 0;
			time_10ms <= '0';
		elsif (rising_edge(clock)) then
			if(counter = counter'high) then
				counter := 0;
				time_10ms <= '1';
			else
				counter := counter+1;
				time_10ms <= '0';			
			end if;
		end if;
	end process;

end architecture;