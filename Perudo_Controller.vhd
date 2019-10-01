library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.perudo_package.all;

entity Perudo_Controller is
	port
	(
		CLOCK          		: in  std_logic;
		RESET_N        		: in  std_logic;
		TIME_10MS      		: in  std_logic;
			
		BUTTON_PREV				: in  std_logic;
		BUTTON_NEXT    		: in  std_logic;
		BUTTON_ENTER   		: in  std_logic;
		BUTTON_DOUBT  			: in  std_logic;
		
		INIZIA_PARTITA			: out std_logic;
		PARTITA_INIZIATA		: in 	std_logic;
		NUOVO_GIOCATORE		: out std_logic;
		GIOCATORE_AGGIUNTO	: in  std_logic;
		ELIMINA_GIOCATORE		: out std_logic;
		GIOCATORE_ELIMINATO	: in  std_logic;
		TURNO_GIOCATORE		: in  std_logic;
		
		
		--Test
		LEDR					: out std_logic_vector(9 downto 0);
		LEDG					: out std_logic_vector(7 downto 0)
		
	);
	
end entity;

architecture RTL of Perudo_Controller is

	type     internal_state_type is (INIT, TURN_PLAYER, TURN_FPGA, CHECK);
	signal   internal_state      : internal_state_type;

	type     initialization_state_type is (NUM, AVATAR);
	signal   initialization_state    : initialization_state_type;
	
	type     turn_player_state_type is (RICORRENZA, DADO);
	signal   turn_player_state       : turn_player_state_type;
	
	signal move_time						: std_logic;
	
	signal pulse1 							: std_logic := '0';
	signal pulse2 							: std_logic := '0';
	signal pulse3 							: std_logic := '0';
	signal pulse4 							: std_logic := '0';
	signal stato							: std_logic_vector(7 downto 0) := "00000000";
	signal numero_giocatori				: unsigned(9 downto 0) := "0000000000";
	signal count 							: integer range 0 to 50000000 := 0;
	
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
		
		variable nuovo_giocatore_old		: std_logic;
		variable elimina_giocatore_old	: std_logic;
		
	begin
	
		if (RESET_N = '0') then
		
			next_old	:= '0';
			prev_old := '0';
			enter_old := '0';
			doubt_old := '0';
			
			nuovo_giocatore_old := '0';
			elimina_giocatore_old := '0';
			numero_giocatori <= "0000000000";
			
			internal_state       <= INIT;
			initialization_state <= AVATAR;
			turn_player_state <= RICORRENZA;		
			
			INIZIA_PARTITA			<= '0';
			NUOVO_GIOCATORE		<= '0';
			ELIMINA_GIOCATORE		<= '0';

			
		elsif rising_edge(CLOCK) then

			INIZIA_PARTITA			<= '0';
			
			if(PARTITA_INIZIATA = '1') then
				if (TURNO_GIOCATORE = '1') then
					internal_state <= TURN_PLAYER;
				else 
					internal_state <= TURN_FPGA;
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
							pulse1 <= '1';
						elsif (BUTTON_PREV = '1' and prev_old = '0') then
							--CAMBIA AVATAR
							-------------------------
							--Codice per inviare alla grafica il 
							--cambiamento di avatar
							-------------------------
							pulse1 <= '0';
						elsif (BUTTON_ENTER = '1' and enter_old = '0') then
							-------------------------
							--Codice per inviare alla grafica il 
							--salvataggio di avatar
							-------------------------
							--Go to the selection of the number of players
							pulse1 <= '0';
							pulse2 <= '0';
							initialization_state <= NUM;
						end if;
					when NUM =>
						--Select number of players
						if (BUTTON_NEXT = '1' and next_old = '0' and nuovo_giocatore_old = '0' and numero_giocatori < 8) then --Aggiungere and GIOCATORE_AGIUNTO = 0
							--Add a player
							NUOVO_GIOCATORE <= '1';
							nuovo_giocatore_old := '1';
						elsif (BUTTON_PREV = '1' and prev_old = '0' and elimina_giocatore_old = '0' and numero_giocatori > 1) then --Aggiungere and GIOCATORE_AGIUNTO = 0
							--Remove a  player
							ELIMINA_GIOCATORE <= '1';
							elimina_giocatore_old := '1';
						elsif (BUTTON_ENTER = '1' and enter_old = '0') then --Aggiungere and GIOCATORE_AGIUNTO = 1						
							INIZIA_PARTITA <= '1';
							initialization_state <= AVATAR;
						end if;
					
				end case;
				------------------------------------------------------------
				-- Fase di gioco del Giocatore
				------------------------------------------------------------
				when TURN_PLAYER =>
				
					stato <= "00000010";
				
					case (turn_player_state) is
				
					when RICORRENZA =>
						--Select recurrence
						if (BUTTON_NEXT = '1' and next_old = '0') then
							--Increment recurrence
							pulse3 <= '1';
						elsif (BUTTON_PREV = '1' and prev_old = '0') then
							--Decrement recurrence
							pulse3 <= '0';
						elsif (BUTTON_ENTER = '1' and enter_old = '0') then
							--Go to the selection of the die
							turn_player_state <= DADO;
						elsif (BUTTON_DOUBT = '1' and doubt_old = '0') then
							--Go to the check
							--DUBITO_REQUEST <= '1';
							--turn_player_state <= RICORRENZA;
						end if;
						
					when DADO =>
						-- Choose the die
						if (BUTTON_NEXT = '1' and next_old = '0') then
							--Increment the number of the face
							--
							pulse4 <= '1';
						elsif (BUTTON_PREV = '1' and prev_old = '0') then
							--Decrement the number of the face
							--
							pulse4 <= '0';							
						elsif (BUTTON_ENTER = '1' and enter_old = '0') then
							turn_player_state <= RICORRENZA;
							--ESEGUI_SCOMMESSA_COM <= '1';
							--PROSSIMO_TURNO <= '1';
						elsif (BUTTON_DOUBT = '1' and doubt_old = '0') then
							--Go to the check
							--DUBITO_REQUEST <= '1';
							--turn_player_state <= RICORRENZA;
						end if;
				end case;
				
				------------------------------------------------------------
				-- Fase di gioco dell'FPGA
				------------------------------------------------------------
				when TURN_FPGA =>
				
					stato <= "00000011";
				
				------------------------------------------------------------
				-- Fase di controllo dadi
				------------------------------------------------------------
				when CHECK =>
				
			end case;
			
			-----------------------------------------
			-- Segnale di Ack da parte del Datapath
			-----------------------------------------
			if(GIOCATORE_AGGIUNTO = '1' and nuovo_giocatore_old = '1') then
				NUOVO_GIOCATORE <= '0';
				nuovo_giocatore_old := '0';
				numero_giocatori <= numero_giocatori + 1;
			end if;
			if(GIOCATORE_ELIMINATO = '1' and elimina_giocatore_old = '1') then
				ELIMINA_GIOCATORE <= '0';
				elimina_giocatore_old := '0';
				numero_giocatori <= numero_giocatori - 1;
			end if;
			
			next_old	:= BUTTON_NEXT;
			prev_old := BUTTON_PREV;
			enter_old := BUTTON_ENTER;
			doubt_old := BUTTON_DOUBT;

			
		end if;
	end process;
	
	
	--LEDR(0) <= pulse1;
	--LEDR(1) <= pulse2;
	LEDR <= std_logic_vector(numero_giocatori);
	--LEDR(2) <= pulse3;
	--LEDR(3) <= pulse4;
	
	LEDG(7 downto 0)<=stato;
end architecture;
	