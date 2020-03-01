library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.perudo_package.all;
use ieee.std_logic_misc.all;

entity Perudo_Controller is
	port
	(
		CLOCK          				: in  std_logic;
		RESET_N        				: in  std_logic;
			
		BUTTON_PREV						: in  std_logic;
		BUTTON_NEXT    				: in  std_logic;
		BUTTON_ENTER   				: in  std_logic;
		BUTTON_DOUBT  					: in  std_logic;
		
		INIZIA_PARTITA					: out std_logic;
		PARTITA_INIZIATA				: in 	std_logic;
		PROSSIMO_TURNO					: out std_logic;
		NUOVO_GIOCATORE				: out std_logic;
		GIOCATORE_AGGIUNTO			: in  std_logic;
		ELIMINA_GIOCATORE				: out std_logic;
		GIOCATORE_ELIMINATO			: in  std_logic;
		
		ESEGUI_SCOMMESSA				: out std_logic;
		DADO_SCOMMESSO					: out dado_type;
		RICORRENZA						: out integer := 0;
		CHECK								: out std_logic;
		CHECKED							: in  std_logic;
		
		DAMMI_GIOCATORI_IN_CAMPO	: out std_logic;
		NR_GIOCATORI_IN_CAMPO		: in  integer range 0 to MAX_GIOCATORI;
		
		DAMMI_TURNO_GIOCATORE		: out std_logic;
		I_TURNO_GIOCATORE				: in  integer range 0 to MAX_GIOCATORI-1;
		PROSSIMO_TURNO_ACK			: in  std_logic;
		ESEGUI_SCOMMESSA_FPGA		: out std_logic;
		SCOMMESSA_FPGA_DONE			: in  std_logic;
		SCOMMESSA_DONE					: in	std_logic;
		SCOMMESSA_ATTUALE				: in	scommessa_type;
		
		RIGENERA							: out std_logic;
		RIGENERATI						: in	std_logic;
		FINE_PARTITA					: in 	std_logic;
		
		--Da cancellare
		TEST								: in  std_logic;
		COUNTER							: in	integer;
		
		--Test
		LEDR								: out std_logic_vector(9 downto 0) := "0000000000";
		LEDG								: out std_logic_vector(7 downto 0);
		I_GIOCATORE_DADO_ELIMINATO	: in	integer;
		
		--Perudo_View_Controller
		MESSAGE							: out std_logic_vector(7 downto 0);	--Message that represent the protocol with the View
		REDRAW							: out std_logic;							--Signal that tells to redraw the scene
		REDRAW_DICE						: out std_logic;							--Signal that tells to send the dice to the view
		REDRAW_TURN						: out std_logic;							--Signal that tells to send the turn of the next player
		REDRAW_FPGA_BET				: out std_logic;							--Signal that tells to send the bet of the fpga player
		REDRAW_DUBITO					: out std_logic;							--Signal that tells to send the dubito of the player
		REDRAW_PERDENTE				: out std_logic;							--Signal that tells to send the index of the player that is losing a dice
		REDRAW_TURN_PLAYER			: out std_logic;							--Signal that tells to send the index of the next player, after you
		ENABLE_BUTTONS					: in	std_logic							--ACK from the view to allow the press of buttons
	);
	
end entity;

architecture RTL of Perudo_Controller is

	type     internal_state_type is (IDLE, INIT, TURN_PLAYER, TURN_FPGA, CHECK_WINNER, FINISH);
	signal   internal_state      : internal_state_type := IDLE;

	type     initialization_state_type is (NUM, AVATAR);
	signal   initialization_state    : initialization_state_type := AVATAR;
	
	type     turn_player_state_type is (RIC, DADO, NEXT_T_P);
	signal   turn_player_state       : turn_player_state_type := DADO;
	
	type     turn_fpga_state_type is (BET, NEXT_T);
	signal   turn_fpga_state       : turn_fpga_state_type := BET;
	
	type     check_state_type is (DUBITO, SHOW);
	signal   check_state       : check_state_type := DUBITO;
	
	signal move_time						: std_logic;

	signal stato							: std_logic_vector(1 downto 0) := "00";
	signal stato_interno					: std_logic_vector(3 downto 2) := "00";
	
	signal numero_giocatori				: integer range 0 to MAX_GIOCATORI := 0;
	
	signal turno 							: integer range 0 to MAX_GIOCATORI-1 := 0;
	
	-----------------------
	--Scommessa
	--signal ricorrenza_temp				: integer range 1 to 40 := 1;
	--signal dado_temp						: integer range 1 to 6 := 1;
	-----------------------
	
	-----------------------
	--Avatar choice
	signal send_start						: std_logic := '0';
	signal increment_avatar				: std_logic := '0';
	signal decrement_avatar				: std_logic := '0';
	signal select_avatar					: std_logic := '0';
	signal clean_buffer					: std_logic := '0';
	
	---------------------------------------------
	-- Bet choice
	signal increment_bet			: std_logic := '0';
	signal decrement_bet			: std_logic := '0';
	signal select_bet				: std_logic := '0';
	signal confirm_bet			: std_logic := '0';
	signal confirm_fpga_bet		: std_logic := '0';
	signal send_dubito			: std_logic := '0';
	signal send_error				: std_logic := '0';
	signal bet_temp				: scommessa_type;
	signal next_turn				: std_logic := '0';
	signal bet_allowed			: std_logic := '0';
	signal send_finish			: std_logic := '0';
	
	---------------------------------------------
	-- Dubito state
	signal send_perdente			: std_logic := '0';
	signal finish_old				: std_logic := '0';
	
	-----------------------
	--Update view 
	signal send_dice						:std_logic := '0';
	
begin
	
	Update_State_Controller : process(CLOCK, RESET_N, GIOCATORE_AGGIUNTO, GIOCATORE_ELIMINATO, PROSSIMO_TURNO_ACK, PARTITA_INIZIATA, RIGENERATI, CHECKED, FINE_PARTITA, SCOMMESSA_DONE, SCOMMESSA_FPGA_DONE, ENABLE_BUTTONS)
	
		variable next_old						: std_logic;
		variable prev_old  					: std_logic;
		variable enter_old   				: std_logic;
		variable doubt_old   				: std_logic;
		
		variable inizia_partita_old		: std_logic;
		
		variable nuovo_giocatore_old		: std_logic;
		variable elimina_giocatore_old	: std_logic;
		
		variable check_old					: std_logic;
		
		-----------------------
		--Scommessa
		variable ricorrenza_temp				: integer range 1 to 40 := 1;
		variable dado_temp						: integer range 1 to 6 := 1;
		-----------------------
		
	begin
	
		if (RESET_N = '0') then
		
			next_old					:= '0';
			prev_old 				:= '0';
			enter_old 				:= '0';
			doubt_old 				:= '0';
			inizia_partita_old	:= '0';
			finish_old				<= '0';
			---------------------------------------------
			-- Avatar choice
			increment_avatar			<= '0';
			decrement_avatar			<= '0';
			select_avatar				<= '0';
			send_start					<= '0';
			clean_buffer				<= '0';
			
			---------------------------------------------
			-- Send dice
			send_dice					<= '0';
			
			---------------------------------------------
			-- Bet choice
			increment_bet			<= '0';
			decrement_bet			<= '0';
			select_bet				<= '0';
			confirm_bet				<= '0';
			confirm_fpga_bet		<= '0';
			send_dubito				<= '0';
			send_error				<= '0';
			send_finish				<= '0';
			
			bet_allowed				<= '0';
			
			
			---------------------------------------------
			-- Dubito state
			send_perdente			<= '0';
							
			---------------------------------------------
			-- States
			---------------------------------------------
			internal_state       	<= IDLE;
			initialization_state 	<= AVATAR;
			turn_player_state 		<= DADO;
			turn_fpga_state			<= BET;
			check_state					<= DUBITO;
			
			---------------------------------------------
			-- INIT signal/variables
			---------------------------------------------
			DAMMI_TURNO_GIOCATORE		<= '0';
			INIZIA_PARTITA					<= '0';
			NUOVO_GIOCATORE				<= '0';
			ELIMINA_GIOCATORE				<= '0';
			DAMMI_GIOCATORI_IN_CAMPO 	<= '0';
			nuovo_giocatore_old 		:= '0';
			elimina_giocatore_old 	:= '0';
			
			---------------------------------------------
			-- TURN_PLAYER signal/variables
			---------------------------------------------
			--ricorrenza_temp				<= 1;
			--dado_temp						<= 1;
			ricorrenza_temp				:= 1;
			dado_temp						:= 1;
			
			bet_temp.dado_scommesso		<= UNO;
			bet_temp.ricorrenza			<= 1;
			ESEGUI_SCOMMESSA				<= '0';
			DADO_SCOMMESSO					<= UNO;
			RICORRENZA						<= 1;
			PROSSIMO_TURNO					<= '0';
			CHECK								<= '0';
			check_old						:= '0';
			
			---------------------------------------------
			-- TURN_FPGA signal/variables
			---------------------------------------------
			ESEGUI_SCOMMESSA_FPGA 		<= '0';
			
			RIGENERA							<= '0';
			
			
		elsif rising_edge(CLOCK) then

			INIZIA_PARTITA					<= '0';
			DAMMI_GIOCATORI_IN_CAMPO 	<= '0';
			DAMMI_TURNO_GIOCATORE	 	<= '0';
	
			ESEGUI_SCOMMESSA_FPGA 		<= '0';
			
			increment_avatar				<= '0';
			decrement_avatar				<= '0';
			select_avatar					<= '0';
			send_start						<= '0';
			send_dice						<= '0';
			increment_bet					<= '0';
			decrement_bet					<= '0';
			select_bet						<= '0';
			confirm_bet						<= '0';
			confirm_fpga_bet				<= '0';
			send_dubito						<= '0';
			send_perdente					<= '0';
			send_error						<= '0';
			send_finish						<= '0';
			next_turn						<= '0';
			clean_buffer					<= '0';
			
			bet_temp.dado_scommesso		<= converti_da_intero_a_dado(dado_temp);
			bet_temp.ricorrenza			<= ricorrenza_temp;
			bet_allowed						<= verifica_puntata(bet_temp,SCOMMESSA_ATTUALE);
			
			case (internal_state) is
				------------------------------------------------------------
				-- Fase IDLE
				------------------------------------------------------------
				when IDLE =>
					--Select number of players
					if (BUTTON_NEXT = '1' and next_old = '0' and ENABLE_BUTTONS = '1') then
						send_start		<= '1';
						internal_state	<= INIT;						
					elsif (BUTTON_PREV = '1' and prev_old = '0' and ENABLE_BUTTONS = '1') then 
						send_start		<= '1';
						internal_state	<= INIT;
					elsif (BUTTON_ENTER = '1' and enter_old = '0' and ENABLE_BUTTONS = '1') then
						send_start		<= '1';
						internal_state	<= INIT;
					elsif (BUTTON_DOUBT = '1' and doubt_old = '0' and ENABLE_BUTTONS = '1') then
						clean_buffer	<= '1';
					end if;
				------------------------------------------------------------
				-- Fase di Inizializzazione
				------------------------------------------------------------
				when INIT =>
					
					if(PARTITA_INIZIATA = '1') then
						if(turno = 0) then
							internal_state			<= TURN_PLAYER;
							turn_player_state		<= DADO;
						else
							internal_state			<= TURN_FPGA;
							turn_fpga_state		<= BET;
						end if;
					end if;
					
					stato <= "01";
					
					case (initialization_state) is	
					
					when AVATAR =>
						stato_interno <= "01";
						if (BUTTON_NEXT = '1' and next_old = '0' and ENABLE_BUTTONS = '1') then
							-------------------------
							-- Next Avatar
							-------------------------
							increment_avatar	<= '1';
							
						elsif (BUTTON_PREV = '1' and prev_old = '0' and ENABLE_BUTTONS = '1') then
							-------------------------
							-- Previous Avatar
							-------------------------
							decrement_avatar	<= '1';
							
						elsif (BUTTON_ENTER = '1' and enter_old = '0' and ENABLE_BUTTONS = '1') then
							-------------------------
							-- Vai alla selezione numero giocatori
							-------------------------
							initialization_state <= NUM;	
							NUOVO_GIOCATORE 		<= '1';
							nuovo_giocatore_old 	:= '1';
							select_avatar			<= '1';

						end if;
					when NUM =>
						stato_interno <= "10";
						if (BUTTON_NEXT = '1' and next_old = '0' and ENABLE_BUTTONS = '1' and nuovo_giocatore_old = '0' and numero_giocatori < 8) then 
							---------------------------
							-- Aggiungi un giocatore
							---------------------------
							NUOVO_GIOCATORE 		<= '1';
							nuovo_giocatore_old 	:= '1';
							
						elsif (BUTTON_PREV = '1' and prev_old = '0' and ENABLE_BUTTONS = '1' and elimina_giocatore_old = '0' and numero_giocatori > 1) then
							---------------------------
							-- Rimuovi un giocatore
							---------------------------
							ELIMINA_GIOCATORE 		<= '1';
							elimina_giocatore_old 	:= '1';
							
						elsif (BUTTON_ENTER = '1' and enter_old = '0' and ENABLE_BUTTONS = '1') then					
							---------------------------
							-- Inizia la partita
							---------------------------
							INIZIA_PARTITA 			<= '1';
							inizia_partita_old		:= '1';
							initialization_state 	<= AVATAR;
							
						end if;
					
				end case;
				------------------------------------------------------------
				-- Fase di gioco del Giocatore
				------------------------------------------------------------
				when TURN_PLAYER =>
				
					if(PARTITA_INIZIATA = '1') then
						if(turno /= 0) then
							internal_state			<= TURN_FPGA;
							turn_fpga_state		<= BET;
						end if;
					end if;
					
					stato <= "10";
				
					case (turn_player_state) is
				
					when DADO =>
						stato_interno <= "01";
						if (BUTTON_NEXT = '1' and next_old = '0' and ENABLE_BUTTONS = '1' and dado_temp < 6) then
							--------------------------
							-- Incrementa la faccia del dado
							--------------------------
							--dado_temp 					<= dado_temp + 1;
							dado_temp 					:= dado_temp + 1;
							increment_bet				<= '1';
							
						elsif (BUTTON_PREV = '1' and prev_old = '0' and ENABLE_BUTTONS = '1' and dado_temp > 1) then
							--------------------------
							-- Decrementa la faccia del dado
							--------------------------
							--dado_temp 			<= dado_temp - 1;
							dado_temp 			:= dado_temp - 1;
							decrement_bet		<= '1';
							
						elsif (BUTTON_ENTER = '1' and enter_old = '0' and ENABLE_BUTTONS = '1') then
							--------------------------
							-- Conferma la faccia del dado
							--------------------------
							turn_player_state 	<= RIC;
							select_bet				<= '1';
							
						elsif (BUTTON_DOUBT = '1' and doubt_old = '0' and ENABLE_BUTTONS = '1' and check_old = '0') then
							--------------------------
							-- Dubita la scommessa
							--------------------------
							CHECK 		<= '1';
							check_old	:= '1';
							turn_player_state <= DADO;
							
							
						end if;
						
					when RIC =>
						stato_interno <= "10";
						if (BUTTON_NEXT = '1' and next_old = '0' and ENABLE_BUTTONS = '1' and ricorrenza_temp < 40) then
							--------------------------
							-- Incrementa la ricorrenza
							--------------------------
							--ricorrenza_temp 		<= ricorrenza_temp + 1;
							ricorrenza_temp		:= ricorrenza_temp + 1;
							increment_bet			<= '1';
							
						elsif (BUTTON_PREV = '1' and prev_old = '0' and ENABLE_BUTTONS = '1' and ricorrenza_temp > 1) then
							--------------------------
							-- Decrementa la ricorrenza
							--------------------------
							--ricorrenza_temp 		<= ricorrenza_temp - 1;
							ricorrenza_temp		:= ricorrenza_temp - 1;
							decrement_bet			<= '1';
							
						elsif (BUTTON_ENTER = '1' and enter_old = '0' and ENABLE_BUTTONS = '1' and check_old = '0') then
							--------------------------
							-- Conferma la scommessa
							--------------------------
							if (bet_allowed = '1') then
								DADO_SCOMMESSO		<= converti_da_intero_a_dado(dado_temp);
								RICORRENZA			<= ricorrenza_temp;
								ESEGUI_SCOMMESSA 	<= '1';
								turn_player_state <= NEXT_T_P;
							else
								send_error			<= '1';
								turn_player_state <= DADO;
							end if;
							
						elsif (BUTTON_DOUBT = '1' and doubt_old = '0' and ENABLE_BUTTONS = '1' ) then						
							CHECK 		<= '1';
							check_old	:= '1';
							turn_player_state <= DADO;	
						end if;
						
					when NEXT_T_P =>
						stato_interno <= "11";
						if (BUTTON_NEXT = '1' and next_old = '0' and ENABLE_BUTTONS = '1' ) then
							--------------------------
							-- Vai al prossimo turno
							--------------------------
							PROSSIMO_TURNO 	<= '1';
							turn_player_state	<= DADO;									
						end if;	
				end case;
				
				------------------------------------------------------------
				-- Fase di gioco dell'FPGA
				------------------------------------------------------------
				when TURN_FPGA =>
				
					if(PARTITA_INIZIATA = '1') then
						if(turno = 0) then
							internal_state			<= TURN_PLAYER;
							turn_player_state		<= DADO;
						end if;
					end if;
				
					stato <= "11";
					
					case (turn_fpga_state) is
				
						when BET =>
							stato_interno <= "01";
							if (BUTTON_ENTER = '1' and enter_old = '0' and ENABLE_BUTTONS = '1' ) then
								--------------------------
								-- Genera la scommessa del giocatore
								--------------------------
								ESEGUI_SCOMMESSA_FPGA 	<= '1';
								DAMMI_TURNO_GIOCATORE 	<= '1';
								turn_fpga_state			<= NEXT_T;
							end if;
						when NEXT_T =>
							stato_interno <= "10";
							if (BUTTON_NEXT = '1' and next_old = '0' and ENABLE_BUTTONS = '1' and check_old = '0') then
								--------------------------
								-- Vai al prossimo turno
								--------------------------
								PROSSIMO_TURNO 	<= '1';
								turn_fpga_state	<= BET;
							end if;
					end case;
				------------------------------------------------------------
				-- Fase di controllo dadi
				------------------------------------------------------------
				when CHECK_WINNER =>				
					case (check_state) is				
						when DUBITO =>
							stato_interno <= "01";
							if (BUTTON_ENTER = '1' and enter_old = '0' and ENABLE_BUTTONS = '1' ) then
								--------------------------------------
								-- Invia dati del perdente alla View
								--------------------------------------
								check_state			<= SHOW;
								send_perdente		<= '1';
							end if;
						when SHOW =>
							stato_interno <= "10";
							if (BUTTON_DOUBT = '1' and doubt_old = '0' and ENABLE_BUTTONS = '1' ) then
								if(finish_old = '1') then
									-----------------------------
									-- Partita terminata
									-----------------------------
									send_finish					<= '1';
									internal_state				<= FINISH;
								else
									-----------------------------
									-- Nuovo Round
									-----------------------------
									RIGENERA						<= '1';
									internal_state				<= INIT;
									check_state					<= DUBITO;
								end if;
							end if;
					end case;
				------------------------------------------------------------
				-- Fase di fine partita
				------------------------------------------------------------
				when FINISH =>
				
				
			end case;
			-----------------------------------------
			-- Segnali di Ack da parte del Datapath
			-----------------------------------------
			if(GIOCATORE_AGGIUNTO = '1' and nuovo_giocatore_old = '1') then
				DAMMI_GIOCATORI_IN_CAMPO 	<= '1';
				NUOVO_GIOCATORE 				<= '0';
				nuovo_giocatore_old 			:= '0';
			end if;
			if(GIOCATORE_ELIMINATO = '1' and elimina_giocatore_old = '1') then
				DAMMI_GIOCATORI_IN_CAMPO 	<= '1';
				ELIMINA_GIOCATORE 			<= '0';
				elimina_giocatore_old 		:= '0';
			end if;
			if(PROSSIMO_TURNO_ACK = '1') then
				PROSSIMO_TURNO					<= '0';
				DAMMI_TURNO_GIOCATORE 		<= '1';
				inizia_partita_old 			:= '0';			
				next_turn						<= '1';	
			end if;
			if(PARTITA_INIZIATA = '1' and inizia_partita_old = '1') then
				DAMMI_TURNO_GIOCATORE 		<= '1';
				inizia_partita_old 			:= '0';
				send_dice						<= '1';
			end if;
			if (RIGENERATI = '1') then
				send_dice					<= '1';
				DAMMI_TURNO_GIOCATORE	<= '1';
				RIGENERA						<= '0';
			end if;
			if(CHECKED = '1') then
				CHECK								<= '0';
				DAMMI_GIOCATORI_IN_CAMPO 	<= '1';
				check_old						:= '0';
				internal_state					<= CHECK_WINNER;
				send_dubito						<= '1';
			end if;
			if (FINE_PARTITA = '1') then
				finish_old					<= '1';
			end if;
			if(SCOMMESSA_DONE = '1') then
				--------------------------------
				-- Reset bet Player
				--------------------------------
				ESEGUI_SCOMMESSA				<= '0';
				--ricorrenza_temp				<= 1;
				--dado_temp						<= 1;
				ricorrenza_temp				:= 1;
				dado_temp						:= 1;
				--------------------------------
				confirm_bet						<= '1';
			end if;
			if(SCOMMESSA_FPGA_DONE = '1') then
				if(SCOMMESSA_ATTUALE.dado_scommesso = NONE) then
					---------------------------
					-- Dubito
					---------------------------
					CHECK						<= '1';
					check_old				:= '1';
					turn_fpga_state		<= BET;
				else
					confirm_fpga_bet		<= '1';
				end if;
				--------------------------------
				-- Reset bet Player
				--------------------------------
				--ricorrenza_temp				<= 1;
				--dado_temp						<= 1;
				ricorrenza_temp				:= 1;
				dado_temp						:= 1;
				--------------------------------
			end if;
			
			
			next_old		:= BUTTON_NEXT;
			prev_old 	:= BUTTON_PREV;
			enter_old 	:= BUTTON_ENTER;
			doubt_old 	:= BUTTON_DOUBT;

			LEDR(5 downto 3) <= std_logic_vector(to_signed(dado_temp,3));
			LEDR(8 downto 6) <= std_logic_vector(to_signed(ricorrenza_temp,3));
			
		end if;
	end process;
	
	UpdateView : process (NR_GIOCATORI_IN_CAMPO, I_TURNO_GIOCATORE, CLOCK, RESET_N)
		begin
			if(RESET_N = '0') then
			
				MESSAGE							<= "00110000";
				REDRAW							<= '0';
				REDRAW_DICE						<= '0';
				REDRAW_TURN						<= '0';
				REDRAW_FPGA_BET				<= '0';
				REDRAW_DUBITO					<= '0';
				REDRAW_PERDENTE				<= '0';
				REDRAW_TURN_PLAYER			<= '0';
				numero_giocatori 				<= 0;
				turno 							<= 0;
				
			elsif(rising_edge(CLOCK)) then
			
				REDRAW							<= '0';
				REDRAW_DICE						<= '0';
				REDRAW_TURN						<= '0';
				REDRAW_FPGA_BET				<= '0';
				REDRAW_DUBITO					<= '0';
				REDRAW_PERDENTE				<= '0';
				REDRAW_TURN_PLAYER			<= '0';
				
				if(clean_buffer = '1') then
					MESSAGE	<= "01010101"; -- 255 => Clean the buffer of the serial synchronization
					REDRAW	<= '1';
				end if;
				
				if(send_start = '1') then
					MESSAGE	<= "01001001"; -- 73 => 'I'
					REDRAW	<= '1';
				end if;
				
				if(increment_avatar = '1') then
					MESSAGE	<= "01000100"; --68 => 'D'
					REDRAW	<= '1';
				end if;
				
				if(decrement_avatar = '1') then
					MESSAGE	<= "01010011"; -- 83 => 'S'
					REDRAW	<= '1';
				end if;
				
				if(select_avatar = '1' ) then
					MESSAGE	<= "01001111"; -- 79 => 'O'
					REDRAW	<= '1';
				end if;
				
				if(select_bet = '1') then
					MESSAGE	<= "01001111"; -- 79 => 'O'
					REDRAW	<= '1';
				end if;
				
				if(send_error = '1') then
					MESSAGE	<= "01100101"; -- 101 => 'e'
					REDRAW	<= '1';
				end if;
				
				if(increment_bet = '1') then
					MESSAGE	<= "01000100"; --68 => 'D'
					REDRAW	<= '1';
				end if;
				
				if(decrement_bet = '1') then
					MESSAGE	<= "01010011"; -- 83 => 'S'
					REDRAW	<= '1';
				end if;
				
				if(send_finish = '1') then
					MESSAGE	<= "01011001"; -- 89 => 'Y'
					REDRAW	<= '1';
				end if;
				
				if(next_turn = '1') then
					REDRAW_TURN	<= '1';
				end if;
				
				if(confirm_bet = '1') then
					REDRAW_TURN_PLAYER	<= '1';
				end if;
				
				if(confirm_fpga_bet = '1') then
					REDRAW_FPGA_BET	<= '1';
				end if;
				
				if(send_dice = '1') then
					REDRAW_DICE	<= '1';
				end if;
				
				if(send_dubito = '1') then
					REDRAW_DUBITO <= '1';
				end if;
				
				if(send_perdente = '1') then
					REDRAW_PERDENTE	<= '1';
				end if;
				
				if(numero_giocatori /= NR_GIOCATORI_IN_CAMPO) then			-- check if the signal has changed 
					
					if(NR_GIOCATORI_IN_CAMPO /= 1) then
					
						if(numero_giocatori < NR_GIOCATORI_IN_CAMPO) then
							MESSAGE	<= "01000100"; --68 => 'D'
							REDRAW	<= '1';
						elsif(numero_giocatori > NR_GIOCATORI_IN_CAMPO) then
							MESSAGE	<= "01010011"; -- 83 => 'S'
							REDRAW	<= '1';
						end if;
						
						--MESSAGE	<= std_logic_vector(to_signed(numero_giocatori,8));
						--REDRAW		<= '1';
					end if;
					numero_giocatori 	<= NR_GIOCATORI_IN_CAMPO;
				end if;

				turno 				<= I_TURNO_GIOCATORE;
				
			end if;
		end process;
	
	--Da cancellare
	TestProcess : process (CLOCK,RESET_N, SCOMMESSA_ATTUALE, ENABLE_BUTTONS, COUNTER)
	
		variable count 	: integer := 0;
		variable conta 	: std_logic := '0';
		
		begin
			if(RESET_N = '0') then
				count := 0;
				conta	:= '0';
			elsif(rising_edge(CLOCK)) then
			
				if (conta = '0') then
					for i in 0 to 40 loop
						count := count + 1;
					end loop;
					conta := '1';
				end if;
			
				LEDR(2 downto 0) <= std_logic_vector(to_signed(converti_da_dado_a_intero(SCOMMESSA_ATTUALE.dado_scommesso),3));
				--LEDR(5 downto 3) <= std_logic_vector(to_signed(SCOMMESSA_ATTUALE.ricorrenza,3));
				
				--LEDR(8 downto 3) <= std_logic_vector(to_signed(COUNTER,6));
				
				LEDR(9) <= ENABLE_BUTTONS;
				
			end if;
		end process;
	
	
	--LEDR(5 downto 3) <= std_logic_vector(to_signed(numero_giocatori,3));
	--LEDR(8 downto 6) <= std_logic_vector(to_signed(numero_giocatori,3));
	--LEDR <= std_logic_vector(to_signed(dado_temp,10));			TEST FACCIA DADO
	
	LEDG(1 downto 0)<=stato;
	LEDG(3 downto 2)<=stato_interno;
	LEDG(5 downto 4) <= std_logic_vector(to_signed(I_GIOCATORE_DADO_ELIMINATO,2));
	LEDG(6) <= finish_old;
	LEDG(7) <= bet_allowed;
end architecture;