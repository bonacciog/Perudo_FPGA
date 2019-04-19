library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.perudo_package.all;

entity Perudo_Controller is
	port
	(
			CLOCK											:	in		std_logic;
			RESET_N										: 	in 	std_logic;
			
			-- Connections I/O
			--BUTTON_INIZIA_PARTITA					: in	std_logic;			----------------------------
			--BUTTON_NUOVO_GIOCATORE					: in  std_logic;			--INIZIALIZZAZIONE PARTITA
			--BUTTON_ELIMINA_GIOCATORE				: in  std_logic;			----------------------------
			--BUTTON_INCREMENTA_DADO_SCOMMESSO		: in  std_logic;			----------------------------
			--BUTTON_DECREMENTA_DADO_SCOMMESSO		: in  std_logic;			--
			--BUTTON_INCREMENTA_RICORRENZA		 	: in  std_logic;			--PARTITA INIZIATA
			--BUTTON_DECREMENTA_RICORRENZA		 	: in  std_logic;			--
			--BUTTON_ESEGUI_SCOMMESSA		 			: in	std_logic;			--		
			--BUTTON_PROSSIMO_TURNO		 			: in  std_logic;			----------------------------
			
			BUTTON_INCREMENTA 						: in	std_logic;
			BUTTON_DECREMENTA 						: in	std_logic;
			BUTTON_ESEGUI 								: in	std_logic;
			BUTTON_DUBITO								: in	std_logic;
			
			-- Connections with Perudo_Datapath
			
			INIZIA_PARTITA								: 	out	std_logic;
			NUOVO_GIOCATORE							:	out	std_logic;
			ELIMINA_GIOCATORE 						:	out	std_logic;
			
			--ESEGUI_SCOMMESSA	 						:	out	std_logic;
			ESEGUI_SCOMMESSA_COM						:	out	std_logic;
			ESEGUI_SCOMMESSA_G0						:	out	std_logic;
			DUBITO_REQUEST								:	out	std_logic;
			
			PROSSIMO_TURNO		 						:	out	std_logic;
			ELIMINA_DADO								:	out	std_logic;
			
			PARTITA_INIZIATA							:	in		std_logic;
			TURNO_GIOCATORE							:	in		std_logic;
			DUBITO										:	in		std_logic;
			FINE_PARTITA								:	in		std_logic;
			
			-- Connections with Perudo_View
			
			INCREMENTA_DADO_SCOMMESSO		: out  std_logic;
			DECREMENTA_DADO_SCOMMESSO		: out  std_logic;
			INCREMENTA_RICORRENZA		 	: out  std_logic;
			DECREMENTA_RICORRENZA		 	: out  std_logic;
			
			REDRAW								: out  std_logic;
	);
	
end entity;

architecture RTL of Perudo_Controller is
	------------------------
	--CONSTANT OR VARIABLES
	------------------------
	type     internal_state_type is (IDLE, INIT, TURN_PLAYER, TURN_FPGA, CHECK);
	signal   internal_state      : internal_state_type;
	
	type     initialization_state_type is (NUM, AVATAR);
	signal   initialization_state      : initialization_state_type;
	
	type     turn_player_state_type is (RICORRENZA, DADO);
	signal   turn_player_state      : initialization_state_type;
	------------------------
begin
	
	Main_Controller : process (CLOCK, RESET_N)
		
	begin
		if (RESET_N = '0') then
			-- Reset
			INCREMENTA_DADO_SCOMMESSO	<= '0';	
			DECREMENTA_DADO_SCOMMESSO	<= '0';		
			INCREMENTA_RICORRENZA		<= '0';	 	
			DECREMENTA_RICORRENZA		<= '0';	
			INIZIA_PARTITA					<= '0';	
			NUOVO_GIOCATORE				<= '0';
			ELIMINA_GIOCATORE 			<= '0';
			ESEGUI_SCOMMESSA_COM			<= '0';			
			ESEGUI_SCOMMESSA_G0			<= '0';		
			PROSSIMO_TURNO		 			<= '0';
			ELIMINA_DADO					<= '0';
			REDRAW							<= '0';
			
		elsif rising_edge(CLOCK) then
			-- Fronte del Clock
			
			INCREMENTA_DADO_SCOMMESSO	<= '0';	
			DECREMENTA_DADO_SCOMMESSO	<= '0';		
			INCREMENTA_RICORRENZA		<= '0';	 	
			DECREMENTA_RICORRENZA		<= '0';	
			INIZIA_PARTITA					<= '0';	
			NUOVO_GIOCATORE				<= '0';
			ELIMINA_GIOCATORE 			<= '0';
			ESEGUI_SCOMMESSA_COM			<= '0';			
			ESEGUI_SCOMMESSA_G0			<= '0';		
			PROSSIMO_TURNO		 			<= '0';
			ELIMINA_DADO					<= '0';
			REDRAW							<= '0';
			
			------------------------------------------------
			-- DA MODIFICARE INSERENDO CONTROLLI IN BASE 
			-- ALLA VARIABILE internal_state
			------------------------------------------------
			
			case (internal_state) is
			
				when CHECK =>
					--------------------------------------
					-- FARE TUTTI I CONTROLLI SU CHI HA VINTO
					-- LA MANO E ELIMINARE IL DADO AL PERDENTE
					--------------------------------------
				end case;
			
		end if;
	end process;
	
	Update_State_Controller : process(CLOCK, RESET_N)
	begin
	
		if (RESET_N = '0') then
		
			internal_state       <= INIT;

			
		elsif rising_edge(CLOCK) then
			--Put some variables at 0 if necessary (Ex. REMOVE_ROW        <= '0'))

			case (internal_state) is
			
				when INIT =>
					--Initializing state
					if (PARTITA_INIZIATA = '1' && TURNO_GIOCATORE = '1') then
						internal_state   <= TURN_PLAYER;
						--Do something else if needed
					end if;
					if (PARTITA_INIZIATA = '1' && TURNO_GIOCATORE = '0') then
						internal_state   <= TURN_FPGA;
						--Do something else if needed
					end if;
					
				when TURN_PLAYER =>
					if (turn_player_state == DADO && BUTTON_ESEGUI = '1') then
						internal_state   <= TURN_FPGA;
						--Do something else if needed
					end if;
					if (BUTTON_DUBITO == '1') then
						internal_state <= CHECK;
						--Do something else if needed
					end if;
					
				when TURN_FPGA =>
					if (TURNO_GIOCATORE = '1') then
						internal_state   <= TURN_PLAYER;
						--Do something else if needed
					end if;
					if (DUBITO == '1') then
						internal_state <= CHECK;
						--Do something else if needed
					end if;
				
				when CHECK =>
					if (PROSSIMO_TURNO = '1' TURNO_GIOCATORE = '1') then
						internal_state   <= TURN_PLAYER;
						--Do something else if needed
					end if;
					if (PROSSIMO_TURNO = '1' TURNO_GIOCATORE = '0') then
						internal_state   <= TURN_FPGA;
						--Do something else if needed
					end if;
					if (FINE_PARTITA == '1') then
						internal_state <= IDLE;
						--Do something else if needed
					end if;
				
			end case;
		end if;
	end process;
		
	Turn_Player_Controller : process(CLOCK, RESET_N)
	begin
	
		if (RESET_N = '0') then
		
			turn_player_state       <= RICORRENZA;

			
		elsif rising_edge(CLOCK) then
			--Put some variables at 0 if necessary (Ex. REMOVE_ROW        <= '0'))

			if(internal_state = TURN_PLAYER) then
				
				case (turn_player_state) is
				
					when RICORRENZA =>
						--Select recurrence
						if (BUTTON_INCREMENTA = '1') then
							--Increment recurrence
							
						end if;
						if (BUTTON_DECREMENTA = '1') then
							--Decrement recurrence
							
						end if;
						if (BUTTON_ESEGUI = '1') then
							--Go to the selection of the die
							turn_player_state <= DADO;
						end if;
						if (BUTTON_DUBITO = '1') then
							--Go to the check
							DUBITO_REQUEST <= '1';
							turn_player_state <= RICORRENZA;
						end if;
						
					when DADO =>
						-- Choose the die
						if (BUTTON_INCREMENTA = '1') then
							--Increment the number of the face
							--
							--
							--
						end if;
						if (BUTTON_DECREMENTA = '1') then
							--Decrement the number of the face
							--
							--
							--							
						end if;
						if (BUTTON_ESEGUI = '1') then
							turn_player_state <= RICORRENZA;
							ESEGUI_SCOMMESSA_COM <= '1';
						end if;
						if (BUTTON_DUBITO = '1') then
							--Go to the check
							DUBITO_REQUEST <= '1';
							turn_player_state <= RICORRENZA;
						end if;
				end case;
			end if;
		end if;
	end process;
	
	Turn_FPGA_Controller : process(CLOCK, RESET_N)
	begin
		---------------
		--IMPLEMENTARE
		---------------
		-- Utilizzare una variabile di stato per sapere il turno del giocatore
		-- ¿Realizzare qui l'algoritmo?
		
		if (RESET_N = '0') then
		
			

			
		elsif rising_edge(CLOCK) then
			--Put some variables at 0 if necessary

			case (/* Variabile di stato per il turno_FPGA */) is
			
				/*
				 ...
				 ...
				*/
				
			end case;
		end if;
	end process;
	
	Initializing_Controller : process(CLOCK, RESET_N)
	begin
	
		if (RESET_N = '0') then
		
			initialization_state       <= NUM;

			
		elsif rising_edge(CLOCK) then
			--Put some variables at 0 if necessary (Ex. REMOVE_ROW        <= '0'))

			if(internal_state = INIT) then
				
				case (initialization_state) is
				
					when NUM =>
						--Select number of players
						if (BUTTON_INCREMENTA = '1') then
							--Add a player
							NUOVO_GIOCATORE <= '1';
						end if;
						if (BUTTON_DECREMENTA = '1') then
							--Remove a  player
							ELIMINA_GIOCATORE <= '1';
						end if;
						if (BUTTON_ESEGUI = '1') then
							--Go to the selection of the Avatar
							initialization_state <= AVATAR;
						end if;
						
					when AVATAR =>
						-- Choose the Avatar
						if (BUTTON_INCREMENTA = '1') then
							--CAMBIA AVATAR
						end if;
						if (BUTTON_DECREMENTA = '1') then
							--CAMBIA AVATAR
						end if;
						if (BUTTON_ESEGUI = '1') then
							initialization_state <= NUM;
							INIZIA_PARTITA <= '1';
						end if;
				end case;
			end if;
		end if;
	end process;
end architecture;