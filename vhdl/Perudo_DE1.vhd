library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.perudo_package.all;

entity Perudo_DE1 is
	port(
		CLOCK_50		: in  std_logic;
		KEY			: in  std_logic_vector(3 downto 0);
		SW				: in  std_logic_vector(9 downto 9);
		UART_TXD		: out std_logic;
		--Test
		LEDR			: out std_logic_vector(9 downto 0);
		LEDG			: out std_logic_vector(7 downto 0)
	);

end;

architecture RTL of Perudo_DE1 is
	signal RESET_N            	: std_logic;
	signal reset_sync_reg     	: std_logic;
	
	signal inizia_partita		: std_logic;
	
	-----------------------------------
	-- MODIFICATI DA SIMO PER TESTING
	-----------------------------------
	signal nuovo_giocatore						:std_logic;
	signal elimina_giocatore					:std_logic;
	signal prossimo_turno						:std_logic;
	signal esegui_scommessa						:std_logic;
	signal dado_scommesso						:dado_type;
	signal ricorrenza								:integer;
	signal rigenera								:std_logic;
	signal check									:std_logic;
	signal rigenerati								:std_logic;
	signal checked 								:std_logic;
	signal giocatore_aggiunto					:std_logic;
	signal giocatore_eliminato					:std_logic;
	signal partita_iniziata						:std_logic;	
	signal fine_partita							:std_logic;
	signal dammi_giocatori_in_campo			:std_logic;
	signal nr_giocatori_in_campo				:integer range 0 to MAX_GIOCATORI;
	
	signal dammi_turno_giocatore 				:std_logic;
	signal i_turno_giocatore 					:integer range 0 to MAX_GIOCATORI-1;
	signal prossimo_turno_ack 					:std_logic;
	signal esegui_scommessa_fpga				:std_logic;
	signal scommessa_fpga_done					:std_logic;
	signal scommessa_done						:std_logic;
	signal i_giocatore_dado_eliminato		:integer;
	
	signal scegli_scommessa						:std_logic;
	signal scommessa_attuale					:scommessa_type;
	signal giocatori								:giocatore_array(0 to MAX_GIOCATORI-1);
	signal scommessa_ok							:std_logic;
	signal scommessa_scelta						:scommessa_type;
			
	signal message									:std_logic_vector(7 downto 0);
	signal redraw									:std_logic;
	signal redraw_dice							:std_logic;
	signal redraw_turn							:std_logic;
	signal redraw_fpga_bet						:std_logic;
	signal redraw_dubito							:std_logic;
	signal redraw_perdente						:std_logic;
	signal redraw_turn_player					:std_logic;
	signal enable_buttons						:std_logic;
	--Da cancellare
	signal test										:std_logic;
	signal counter									:integer range 0 to 40;
	
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
			CLOCK          						=> CLOCK_50,
			RESET_N        						=> RESET_N,
			BUTTON_PREV								=> not(KEY(3)),
			BUTTON_NEXT								=> not(KEY(2)),
			BUTTON_ENTER   						=> not(KEY(1)),
			BUTTON_DOUBT  							=> not(KEY(0)),
			
			INIZIA_PARTITA							=> inizia_partita,
			PARTITA_INIZIATA        			=> partita_iniziata,	
			PROSSIMO_TURNO							=> prossimo_turno,
			NUOVO_GIOCATORE						=> nuovo_giocatore,	
			GIOCATORE_AGGIUNTO    				=> giocatore_aggiunto,
			ELIMINA_GIOCATORE 					=> elimina_giocatore,
			ESEGUI_SCOMMESSA						=> esegui_scommessa,
			CHECK										=> check,
			CHECKED										=> checked,
			DADO_SCOMMESSO							=> dado_scommesso,
			RICORRENZA								=> ricorrenza,
			GIOCATORE_ELIMINATO    				=> giocatore_eliminato,
			
			RIGENERA									=> rigenera,
			RIGENERATI								=> rigenerati,
			FINE_PARTITA							=> fine_partita,
			
			DAMMI_GIOCATORI_IN_CAMPO			=> dammi_giocatori_in_campo,
			NR_GIOCATORI_IN_CAMPO				=> nr_giocatori_in_campo,
			
			DAMMI_TURNO_GIOCATORE				=> dammi_turno_giocatore,
			I_TURNO_GIOCATORE						=> i_turno_giocatore,
			PROSSIMO_TURNO_ACK					=> prossimo_turno_ack,
			ESEGUI_SCOMMESSA_FPGA 				=> esegui_scommessa_fpga,
			SCOMMESSA_FPGA_DONE					=> scommessa_fpga_done,
			SCOMMESSA_DONE 						=> scommessa_done,
			SCOMMESSA_ATTUALE						=> scommessa_attuale,
			
			MESSAGE									=> message,
			REDRAW									=> redraw,
			REDRAW_DICE								=> redraw_dice,
			REDRAW_TURN								=> redraw_turn,
			REDRAW_FPGA_BET 						=> redraw_fpga_bet,
			REDRAW_DUBITO							=> redraw_dubito,
			REDRAW_PERDENTE						=> redraw_perdente,
			REDRAW_TURN_PLAYER					=> redraw_turn_player,
			ENABLE_BUTTONS							=> enable_buttons,
			
			--Da cancellare
			TEST										=> test,
			COUNTER 									=> counter,
			
			--Test
			LEDR				=> LEDR,
			I_GIOCATORE_DADO_ELIMINATO			=> i_giocatore_dado_eliminato,
			LEDG				=> LEDG
			
		);
	----------------------------------------
	-- MAPPING DATAPATH
	----------------------------------------
	datapath: entity work.Perudo_Datapath
		port map(
			CLOCK										=> CLOCK_50,
			RESET_N									=> RESET_N,
			INIZIA_PARTITA							=> inizia_partita,			
		
			NUOVO_GIOCATORE						=> nuovo_giocatore,
			ELIMINA_GIOCATORE 					=> elimina_giocatore,
			PROSSIMO_TURNO							=> prossimo_turno,
			ESEGUI_SCOMMESSA						=> esegui_scommessa,
			DADO_SCOMMESSO							=> dado_scommesso,
			RICORRENZA								=> ricorrenza,
			RIGENERA									=> rigenera,
			CHECK										=> check,
			RIGENERATI								=> rigenerati,
			CHECKED									=> checked,
			GIOCATORE_AGGIUNTO    				=> giocatore_aggiunto,
			GIOCATORE_ELIMINATO    				=> giocatore_eliminato,
			PARTITA_INIZIATA        			=> partita_iniziata,		
			FINE_PARTITA							=> fine_partita,
			
			--Da cancellare
			TEST										=> test,
			COUNTER 									=> counter,
			
			DAMMI_TURNO_GIOCATORE				=> dammi_turno_giocatore,
			I_TURNO_GIOCATORE						=> i_turno_giocatore,
			PROSSIMO_TURNO_ACK					=> prossimo_turno_ack,
			ESEGUI_SCOMMESSA_FPGA 				=> esegui_scommessa_fpga,
			SCOMMESSA_FPGA_DONE					=> scommessa_fpga_done,
			SCOMMESSA_DONE							=> scommessa_done,
			I_GIOCATORE_DADO_ELIMINATO			=> i_giocatore_dado_eliminato,
			
			
			DAMMI_GIOCATORI_IN_CAMPO			=> dammi_giocatori_in_campo,
			NR_GIOCATORI_IN_CAMPO				=> nr_giocatori_in_campo,
			
			--AI_Controller
			SCEGLI_SCOMMESSA   	    			=> scegli_scommessa,
			SCOMMESSA_ATTUALE 	    			=> scommessa_attuale,
			GIOCATORI			 	    			=> giocatori,
			
			SCOMMESSA_OK							=> scommessa_ok,
			SCOMMESSA_SCELTA						=> scommessa_scelta

		);
	
	----------------------------------------
	-- MAPPING Perudo_View_Controller
	----------------------------------------
	view_controller : entity work.Perudo_View_Controller
		port map(
			CLOCK          						=> CLOCK_50,
			RESET_N        						=> RESET_N,
			UART_TXD									=> UART_TXD,
			MESSAGE									=> message,
			REDRAW									=> redraw,
			REDRAW_DICE								=> redraw_dice,
			REDRAW_TURN								=> redraw_turn,
			REDRAW_FPGA_BET						=> redraw_fpga_bet,
			REDRAW_DUBITO							=> redraw_dubito,
			REDRAW_PERDENTE						=> redraw_perdente,
			REDRAW_TURN_PLAYER					=> redraw_turn_player,
			ENABLE_BUTTONS							=> enable_buttons,
			GIOCATORI 								=> giocatori,
			NR_GIOCATORI_IN_CAMPO				=> nr_giocatori_in_campo,
			I_TURNO_GIOCATORE						=> i_turno_giocatore,
			I_GIOCATORE_DADO_ELIMINATO			=> i_giocatore_dado_eliminato,
			SCOMMESSA_ATTUALE						=> scommessa_attuale
			
		);

	----------------------------------------
	-- MAPPING AI_CONTROLLER
	----------------------------------------
	ai_controller : entity work.AI_Controller
		port map(
			CLOCK          						=> CLOCK_50,
			RESET_N        						=> RESET_N,
			
			SCEGLI_SCOMMESSA   	    			=> scegli_scommessa,
			SCOMMESSA_ATTUALE 	    			=> scommessa_attuale,
			GIOCATORI			 	    			=> giocatori,
			I_TURNO_GIOCATORE 		   		=> i_turno_giocatore,
			
			SCOMMESSA_OK							=> scommessa_ok,
			SCOMMESSA_SCELTA						=> scommessa_scelta
			
		);
end architecture;