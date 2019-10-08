library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.perudo_package.all;

entity Perudo_Controller is
	port
	(
		CLOCK          				: in  std_logic;
		RESET_N        				: in  std_logic;
		TIME_10MS      				: in  std_logic;
			
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
		RICORRENZA						: out integer;
		CHECK								: out std_logic;
		CHECKED							: in  std_logic;
		
		DAMMI_GIOCATORI_IN_CAMPO	: out std_logic;
		NR_GIOCATORI_IN_CAMPO		: in  integer range 0 to MAX_GIOCATORI;
		
		DAMMI_TURNO_GIOCATORE		: out std_logic;
		I_TURNO_GIOCATORE				: in  integer range 0 to MAX_GIOCATORI-1;
		PROSSIMO_TURNO_ACK			: in  std_logic;
		ESEGUI_SCOMMESSA_FPGA		: out std_logic;
		
		--Da cancellare
		TEST								: in  std_logic;
		
		--Test
		LEDR					: out std_logic_vector(9 downto 0);
		LEDG					: out std_logic_vector(7 downto 0)
		
	);
	
end entity;

architecture RTL of Perudo_Controller is

	type     internal_state_type is (INIT, TURN_PLAYER, TURN_FPGA);
	signal   internal_state      : internal_state_type;

	type     initialization_state_type is (NUM, AVATAR);
	signal   initialization_state    : initialization_state_type;
	
	type     turn_player_state_type is (RIC, DADO);
	signal   turn_player_state       : turn_player_state_type;
	
	signal move_time						: std_logic;
	
	signal pulse1 							: std_logic := '0';
	signal pulse2 							: std_logic := '0';
	signal pulse3 							: std_logic := '0';
	signal pulse4 							: std_logic := '0';
	signal pulse8 							: std_logic := '0';
	signal pulse9 							: std_logic := '0';
	signal pulse10 						: std_logic := '0';
	signal stato							: std_logic_vector(7 downto 0) := "00000000";
	signal numero_giocatori				: integer range 0 to MAX_GIOCATORI;
	signal count 							: integer range 0 to 50000000 := 0;
	
	signal turno 							: integer range 0 to MAX_GIOCATORI-1;
	
	-----------------------
	--Scommessa
	signal ricorrenza_temp				: integer range 0 to 40 := 0;
	signal dado_temp						: integer range 1 to 6 := 1;
	-----------------------
	
begin

	--Eventuali assegnamenti
	--...
	
	TimedMove : process(CLOCK, RESET_N)
	begin
		if (RESET_N = '0') then
			move_time          <= '0';
		elsif rising_edge(CLOCK) then
			move_time <= '0';
	
			if (TIME_10MS = '1') then
					move_time          <= '1';
			end if;
		end if;
	end process;
	
	Update_State_Controller : process(CLOCK, RESET_N)
	
		variable next_old						: std_logic;
		variable prev_old  					: std_logic;
		variable enter_old   				: std_logic;
		variable doubt_old   				: std_logic;
		
		variable inizia_partita_old		: std_logic;
		
		variable nuovo_giocatore_old		: std_logic;
		variable elimina_giocatore_old	: std_logic;
		
		variable check_old					:std_logic;
		
		variable test							:std_logic;
		
	begin
	
		if (RESET_N = '0') then
		
			next_old					:= '0';
			prev_old 				:= '0';
			enter_old 				:= '0';
			doubt_old 				:= '0';
			inizia_partita_old	:= '0';
			test						:= '0';
					
			---------------------------------------------
			-- States
			---------------------------------------------
			internal_state       	<= INIT;
			initialization_state 	<= AVATAR;
			turn_player_state 		<= RIC;	
			
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
			ricorrenza_temp				<= 0;
			dado_temp						<= 1;
			ESEGUI_SCOMMESSA				<= '0';
			DADO_SCOMMESSO					<= converti_da_intero_a_dado(dado_temp);
			RICORRENZA						<= ricorrenza_temp;
			PROSSIMO_TURNO					<= '0';
			CHECK								<= '0';
			check_old						:= '0';
			
			---------------------------------------------
			-- TURN_FPGA signal/variables
			---------------------------------------------
			ESEGUI_SCOMMESSA_FPGA 		<= '0';
			
		elsif rising_edge(CLOCK) then

			INIZIA_PARTITA					<= '0';
			DAMMI_GIOCATORI_IN_CAMPO 	<= '0';
			DAMMI_TURNO_GIOCATORE	 	<= '0';
			PROSSIMO_TURNO					<= '0';
			ESEGUI_SCOMMESSA_FPGA 		<= '0';
			
			if(PARTITA_INIZIATA = '1') then
				if(turno = 0) then
					internal_state			<= TURN_PLAYER;
				else
					internal_state			<= TURN_FPGA;
				end if;
			end if;
			
			case (internal_state) is
				------------------------------------------------------------
				-- Fase di inizializzazione
				------------------------------------------------------------
				when INIT =>
					
					stato <= "00000001";
					
					case (initialization_state) is	
					
					when AVATAR =>
					
						-- Choose the Avatar
						if (BUTTON_NEXT = '1' and next_old = '0') then
							
							--CAMBIA AVATAR
							-------------------------
							--Codice per inviare alla grafica il 
							--cambiamento di avatar
							-------------------------
							--pulse1 <= '1';
							
						elsif (BUTTON_PREV = '1' and prev_old = '0') then
							
							--CAMBIA AVATAR
							-------------------------
							--Codice per inviare alla grafica il 
							--cambiamento di avatar
							-------------------------
							--pulse1 <= '0';
							
						elsif (BUTTON_ENTER = '1' and enter_old = '0') then
							
							-------------------------
							--Codice per inviare alla grafica il 
							--salvataggio di avatar
							-------------------------
							--Go to the selection of the number of players
							
							initialization_state <= NUM;
							
						end if;
					when NUM =>
						
						--Select number of players
						if (BUTTON_NEXT = '1' and next_old = '0' and nuovo_giocatore_old = '0' and numero_giocatori < 8) then --Aggiungere and GIOCATORE_AGIUNTO = 0
							
							--Add a player
							NUOVO_GIOCATORE 		<= '1';
							nuovo_giocatore_old 	:= '1';
							pulse1 					<= '1';
							
						elsif (BUTTON_PREV = '1' and prev_old = '0' and elimina_giocatore_old = '0' and numero_giocatori > 1) then --Aggiungere and GIOCATORE_AGIUNTO = 0
							
							--Remove a  player
							ELIMINA_GIOCATORE 		<= '1';
							elimina_giocatore_old 	:= '1';
							pulse1 						<= '0';
							
						elsif (BUTTON_ENTER = '1' and enter_old = '0') then --Aggiungere and GIOCATORE_AGIUNTO = 1						
							
							INIZIA_PARTITA 			<= '1';
							inizia_partita_old		:= '1';
							initialization_state 	<= AVATAR;
							
						end if;
					
				end case;
				------------------------------------------------------------
				-- Fase di gioco del Giocatore
				------------------------------------------------------------
				when TURN_PLAYER =>
				
					stato <= "00000010";
				
					case (turn_player_state) is
				
					when RIC =>
						--Select recurrence
						if (BUTTON_NEXT = '1' and next_old = '0' and ricorrenza_temp < 40) then
							
							--Increment recurrence
							ricorrenza_temp 	<= ricorrenza_temp + 1;
							pulse2 				<= '1';
							
						elsif (BUTTON_PREV = '1' and prev_old = '0' and ricorrenza_temp > 0) then
							
							--Decrement recurrence
							ricorrenza_temp 	<= ricorrenza_temp - 1;
							pulse2 				<= '0';
							
						elsif (BUTTON_ENTER = '1' and enter_old = '0') then
							
							--Go to the selection of the die
							pulse2 <= '1';
							turn_player_state <= DADO;
							
						elsif (BUTTON_DOUBT = '1' and doubt_old = '0') then						
							CHECK 		<= '1';
							check_old	:= '1';
							--DUBITO_REQUEST <= '1';
							turn_player_state <= RIC;							
						end if;
						
					when DADO =>
						
						-- Choose the die
						if (BUTTON_NEXT = '1' and next_old = '0' and dado_temp < 6) then
							
							--Increment the number of the face
							dado_temp <= dado_temp + 1;
							pulse3 <= '1';
							
						elsif (BUTTON_PREV = '1' and prev_old = '0' and dado_temp > 1) then
							
							--Decrement the number of the face
							dado_temp <= dado_temp - 1;
							pulse3 <= '0';	
							
						elsif (BUTTON_ENTER = '1' and enter_old = '0') then
							
							turn_player_state <= RIC;
							DADO_SCOMMESSO		<= converti_da_intero_a_dado(dado_temp);
							RICORRENZA			<= ricorrenza_temp;
							ESEGUI_SCOMMESSA 	<= '1';
							pulse3 				<= '1';
							PROSSIMO_TURNO 	<= '1';
							
						elsif (BUTTON_DOUBT = '1' and doubt_old = '0') then
							
							CHECK 		<= '1';
							check_old	:= '1';
							--DUBITO_REQUEST <= '1';
							turn_player_state <= RIC;
							
						end if;
				end case;
				
				------------------------------------------------------------
				-- Fase di gioco dell'FPGA
				------------------------------------------------------------
				when TURN_FPGA =>
				
					stato <= "00000011";
					
					ESEGUI_SCOMMESSA_FPGA <= '1';
					
					if (BUTTON_NEXT = '1' and next_old = '0' and test = '1') then
							
							--CAMBIA AVATAR
							-------------------------
							--Codice per inviare alla grafica il 
							--cambiamento di avatar
							-------------------------
							test					:= '0';
							PROSSIMO_TURNO 	<= '1';
							
					elsif (BUTTON_DOUBT = '1' and doubt_old = '0' and check_old = '0') then
							
							--Go to the check
							CHECK 		<= '1';
							check_old	:= '1';
							--DUBITO_REQUEST <= '1';
							turn_player_state <= RIC;
							
					end if;
					
				------------------------------------------------------------
				-- Fase di controllo dadi
				------------------------------------------------------------
				--when CHECK =>
				
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
			if(PROSSIMO_TURNO_ACK = '1' or (PARTITA_INIZIATA = '1' and inizia_partita_old = '1')) then
				DAMMI_TURNO_GIOCATORE 		<= '1';
				inizia_partita_old 			:= '0';
			end if;
			if(CHECKED = '1') then
				pulse10		<= '1';
				CHECK			<= '0';
				check_old	:= '0';
			end if;
			if(TEST = '1') then
				test := '1';
			end if;
			
			
			next_old		:= BUTTON_NEXT;
			prev_old 	:= BUTTON_PREV;
			enter_old 	:= BUTTON_ENTER;
			doubt_old 	:= BUTTON_DOUBT;

			
		end if;
	end process;
	
	AggiornaStatoGiocatori : process (NR_GIOCATORI_IN_CAMPO, CLOCK, RESET_N)
		begin
			if(RESET_N = '0') then
				numero_giocatori <= 0;
			elsif(rising_edge(CLOCK)) then
				numero_giocatori <= NR_GIOCATORI_IN_CAMPO;
			end if;
		end process;
	
	AggiornaTurnoGiocatore : process (I_TURNO_GIOCATORE, CLOCK, RESET_N)
		begin
			if(RESET_N = '0') then
				turno <= 0;
			elsif(rising_edge(CLOCK)) then
				turno <= I_TURNO_GIOCATORE;
			end if;		
		end process;
	
	--Da cancellare
	TestProcess : process (CLOCK,RESET_N)
		begin
			if(RESET_N = '0') then

			elsif(rising_edge(CLOCK)) then
				if(turno = 0) then
					--pulse4 <= '1';
					--pulse10 	<= '1';
					--pulse9 	<= '0';
				else
					--pulse10 	<= '0';
					--pulse9 	<= '1';
				end if;
			end if;
		end process;
	
	--LEDR(0) <= pulse1;
	--LEDR(1) <= pulse2;
	LEDR(2 downto 0) <= std_logic_vector(to_signed(numero_giocatori,3));
	--LEDR(5 downto 3) <= std_logic_vector(to_signed(numero_giocatori,3));
	--LEDR(8 downto 6) <= std_logic_vector(to_signed(numero_giocatori,3));
	--LEDR <= std_logic_vector(to_signed(dado_temp,10));			TEST FACCIA DADO
	--LEDR(2) <= pulse3;
	--LEDR(3) <= pulse4;
	--LEDR(7)	<= pulse8;
	LEDR(9)	<= pulse10;
	--LEDR(8)	<= pulse9;
	
	LEDG(7 downto 0)<=stato;
end architecture;
	