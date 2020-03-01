library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.perudo_package.all;

entity Perudo_View_Controller is
	port(
		CLOCK								: in 	std_logic;
		RESET_N							: in	std_logic;
		UART_TXD							: out std_logic;
		MESSAGE							: in 	std_logic_vector(7 downto 0);
		REDRAW							: in 	std_logic;
		REDRAW_DICE						: in 	std_logic;
		REDRAW_TURN						: in 	std_logic;
		REDRAW_FPGA_BET				: in 	std_logic;
		REDRAW_DUBITO					: in 	std_logic;
		REDRAW_PERDENTE				: in 	std_logic;
		REDRAW_TURN_PLAYER			: in	std_logic;
		GIOCATORI						: in	giocatore_array(0 to MAX_GIOCATORI-1);
		NR_GIOCATORI_IN_CAMPO		: in 	integer range 0 to MAX_GIOCATORI;
		I_TURNO_GIOCATORE				: in 	integer range 0 to MAX_GIOCATORI-1;
		I_GIOCATORE_DADO_ELIMINATO	: in	integer;
		ENABLE_BUTTONS					: out std_logic;
		SCOMMESSA_ATTUALE				: in	scommessa_type
		
	);
end Perudo_View_Controller;

architecture main of Perudo_View_Controller is
	
	signal TX_DATA		: std_logic_vector(7 downto 0);
	signal TX_START	: std_logic:='0';
	signal TX_BUSY		: std_logic;
	
	type     tx_state_type is (IDLE, SEND_MESSAGE, START, TOT_GIOCATORI, INDICE_GIOCATORE, NUMERO_DADI, DADI, CONFERMA, TURNO, TURNO_GIOCATORE, START_INVIO_SCOMMESSA, DADO, RICORRENZA, DUBITO, PERDENTE, START_PERDENTE);
	signal   tx_state      : tx_state_type;
	
	-------------------------------------------------------
	component MY_TX
		port(
			CLK		: in	std_logic;
			RESET_N	: in	std_logic;
			START		: in	std_logic;
			BUSY		: out	std_logic;
			DATA		: in	std_logic_vector(7 downto 0);
			TX_LINE	: out	std_logic
		);
	end component MY_TX;
	--------------------------------------------------------
	
	begin
	
	C1 : MY_TX port map (CLOCK,RESET_N,TX_START,TX_BUSY,TX_DATA,UART_TXD);

	process(CLOCK, RESET_N, REDRAW, REDRAW_DICE, REDRAW_TURN, REDRAW_TURN_PLAYER, REDRAW_FPGA_BET, REDRAW_DUBITO, REDRAW_PERDENTE, I_TURNO_GIOCATORE, I_GIOCATORE_DADO_ELIMINATO, SCOMMESSA_ATTUALE)
	
	variable ready								: std_logic;
	
	variable start_done						: std_logic;
	variable tot_giocatori_done			: std_logic;
	
	variable indice_giocatore_done		: std_logic;
	variable indice 							: integer range 0 to 8 := 0;
	
	variable numero_dadi_done				: std_logic;
	
	variable dadi_done						: std_logic;
	variable indice_dado						: integer range 0 to 5 := 0;
	
	variable turno_done						: std_logic;
	variable start_sending_bet_done		: std_logic;
	variable bet_done							: std_logic;
	variable perdente_done					: std_logic;
	
	begin
		if (RESET_N = '0') then
		
			ready							:= '0';		
			tx_state						<= IDLE;
			start_done					:= '0';
			tot_giocatori_done		:= '0';		
			indice_giocatore_done	:= '0';
			indice						:= 0;
			
			numero_dadi_done			:= '0';
			
			dadi_done					:= '0';
			indice_dado					:= 0;
			
			turno_done					:= '0';
			start_sending_bet_done	:= '0';
			bet_done						:= '0';
			perdente_done				:= '0';
			
			ENABLE_BUTTONS				<= '1';
			
		elsif(rising_edge(CLOCK)) then			
			case (tx_state) is
				when IDLE =>
					ENABLE_BUTTONS		<= '1';
					----------------
					-- REDRAW VIEW
					----------------
					if(REDRAW = '1' and TX_BUSY='0')then
						tx_state				<= SEND_MESSAGE;
						ENABLE_BUTTONS		<= '0';
					end if;
					----------------
					-- SEND DICE
					----------------
					if(REDRAW_DICE = '1' and TX_BUSY='0') then
						tx_state				<= START;
						ENABLE_BUTTONS		<= '0';
					end if;
					----------------
					-- SEND NEXT TURN
					----------------
					if(REDRAW_TURN = '1' and TX_BUSY='0') then
						tx_state				<= TURNO;
						ENABLE_BUTTONS		<= '0';
					end if;
					----------------
					-- SEND NEXT TURN AFTER PLAYER 0
					----------------
					if(REDRAW_TURN_PLAYER = '1' and TX_BUSY='0') then
						tx_state				<= CONFERMA;
						ENABLE_BUTTONS		<= '0';
					end if;
					----------------
					-- SEND FPGA BET
					----------------
					if(REDRAW_FPGA_BET = '1' and TX_BUSY='0') then
						tx_state				<= START_INVIO_SCOMMESSA;
						ENABLE_BUTTONS		<= '0';
					end if;
					
					----------------
					-- SEND DUBITO BET
					----------------
					if(REDRAW_DUBITO = '1' and TX_BUSY='0') then
						tx_state				<= DUBITO;
						ENABLE_BUTTONS		<= '0';
					end if;
					
					----------------
					-- SEND PERDENTE
					----------------
					if(REDRAW_PERDENTE = '1' and TX_BUSY='0') then
						tx_state				<= START_PERDENTE;
						ENABLE_BUTTONS		<= '0';
					end if;
				when SEND_MESSAGE =>
					if(TX_BUSY = '0') then
						if(ready = '1') then
							TX_DATA				<= MESSAGE(7 downto 0);
							TX_START 			<= '1';
							start_done			:= '1';
							ready					:= '0';
						else
							ready := '1';
						end if;
					else
						TX_START 	<= '0';
						if(start_done = '1') then
							tx_state 	<= IDLE;
							start_done 	:= '0';
						end if;
					end if;
				when START =>
					if(TX_BUSY = '0') then
						if(ready = '1') then
							TX_DATA				<= "01000001";	-- 65 -> A
							TX_START 			<= '1';
							start_done			:= '1';
							ready					:= '0';
						else
							ready := '1';
						end if;
					else
						TX_START 	<= '0';
						if(start_done = '1') then
							tx_state 	<= TOT_GIOCATORI;
							start_done 	:= '0';
						end if;
					end if;
				when TOT_GIOCATORI =>
					if(TX_BUSY = '0') then
						if(ready = '1') then
							TX_DATA					<= std_logic_vector(to_signed((NR_GIOCATORI_IN_CAMPO + 48),8));
							TX_START 				<= '1';
							tot_giocatori_done	:= '1';
							ready						:= '0';
						else
							ready := '1';
						end if;
					else
						TX_START 	<= '0';
						if(tot_giocatori_done = '1') then
							tx_state 				<= INDICE_GIOCATORE;
							tot_giocatori_done 	:= '0';
						end if;
					end if;
				when INDICE_GIOCATORE =>
					if(TX_BUSY = '0') then
						if(ready = '1') then
							if(indice < MAX_GIOCATORI and GIOCATORI(indice).dadi_in_mano(0) /= NONE 
							and GIOCATORI(indice).numero_dadi_in_mano > 0 ) then
								TX_DATA						<= std_logic_vector(to_signed((indice+48),8));	
								TX_START 					<= '1';
								indice_giocatore_done	:= '1';
								ready							:= '0';
							else 
								if(indice = MAX_GIOCATORI) then
									indice 	:= 0;
									tx_state <= TURNO;
								else
									indice	:= indice + 1;
								end if;
							end if;
						else
							ready := '1';
						end if;
					else
						TX_START 	<= '0';
						if(indice_giocatore_done = '1') then							
							tx_state 					<= NUMERO_DADI;
							indice_giocatore_done 	:= '0';
						end if;
					end if;
				when NUMERO_DADI =>
					if(TX_BUSY = '0') then
						if(ready = '1') then
							TX_DATA				<= std_logic_vector(to_signed((GIOCATORI(indice).numero_dadi_in_mano+ 48),8));
							TX_START				<= '1';
							numero_dadi_done	:= '1';
							ready					:= '0';
						else
							ready					:= '1';
						end if;
					else
						TX_START 	<= '0';
						if(numero_dadi_done = '1') then
							tx_state 			<= DADI;
							numero_dadi_done	:= '0';
						end if;
					end if;					
				when DADI =>
					if(TX_BUSY = '0') then
						if(ready = '1') then
							if(indice_dado < MAX_DADI and indice_dado < GIOCATORI(indice).numero_dadi_in_mano and 
							GIOCATORI(indice).dadi_in_mano(indice_dado) /= NONE) then
								TX_DATA				<= std_logic_vector(to_signed((converti_da_dado_a_intero(GIOCATORI(indice).dadi_in_mano(indice_dado))+ 48),8));
								TX_START				<= '1';
								dadi_done			:= '1';
								ready					:= '0';
							else
								indice		:= indice + 1;
								indice_dado := 0;
								tx_state 	<= INDICE_GIOCATORE;
							end if;
						else
							ready 		:= '1';
						end if;
					else
						TX_START 	<= '0';
						if(dadi_done = '1') then
							indice_dado	:= indice_dado + 1;
							dadi_done	:= '0';
						end if;
					end if;
				when CONFERMA =>
					if(TX_BUSY = '0') then
						if(ready = '1') then
							TX_DATA				<= "01001111"; 		--		'O' -> 79
							TX_START				<= '1';
							turno_done			:= '1';
							ready					:= '0';
						else
							ready					:= '1';
						end if;
					else
						
						TX_START 	<= '0';
						if(turno_done = '1') then
							turno_done	:= '0';
							tx_state		<= IDLE;
						end if;
					end if;
				when TURNO =>
					if(TX_BUSY = '0') then
						if(ready = '1') then
							TX_DATA				<= "01010100";	--		T -> 84
							TX_START				<= '1';
							turno_done			:= '1';
							ready					:= '0';
						else
							ready					:= '1';
						end if;
					else
						
						TX_START 	<= '0';
						if(turno_done = '1') then
							turno_done	:= '0';
							tx_state		<= TURNO_GIOCATORE;
						end if;
					end if;
				when TURNO_GIOCATORE =>
					if(TX_BUSY = '0') then
						if(ready = '1') then
							TX_DATA				<= std_logic_vector(to_signed(I_TURNO_GIOCATORE + 48,8));
							TX_START				<= '1';
							turno_done			:= '1';
							ready					:= '0';
						else
							ready					:= '1';
						end if;
					else
						
						TX_START 	<= '0';
						if(turno_done = '1') then
							turno_done	:= '0';
							tx_state		<= IDLE;
						end if;
					end if;
				when START_INVIO_SCOMMESSA =>
					if(TX_BUSY = '0') then
						if(ready = '1') then
							TX_DATA						<= "01000010"; 		--		62 -> B - Start sending FPGA bet
							TX_START						<= '1';
							start_sending_bet_done	:= '1';
							ready							:= '0';
						else
							ready							:= '1';
						end if;
					else
						
						TX_START 	<= '0';
						if(start_sending_bet_done = '1') then
							start_sending_bet_done	:= '0';
							tx_state						<= DADO;
						end if;
					end if;
				when DADO =>
					if(TX_BUSY = '0') then
						if(ready = '1') then
							TX_DATA				<= std_logic_vector(to_signed((converti_da_dado_a_intero(SCOMMESSA_ATTUALE.dado_scommesso) + 48),8));
							TX_START				<= '1';
							bet_done				:= '1';
							ready					:= '0';
						else
							ready					:= '1';
						end if;
					else
						
						TX_START 	<= '0';
						if(bet_done = '1') then
							bet_done		:= '0';
							tx_state		<= RICORRENZA;
						end if;
					end if;
				when RICORRENZA =>
					if(TX_BUSY = '0') then
						if(ready = '1') then
						
							TX_DATA				<= std_logic_vector(to_signed(SCOMMESSA_ATTUALE.ricorrenza+48,8));
							TX_START				<= '1';
							bet_done				:= '1';
							ready					:= '0';
						else
							ready					:= '1';
						end if;
					else
						
						TX_START 	<= '0';
						if(bet_done = '1') then
							bet_done		:= '0';
							tx_state		<= IDLE;
						end if;
					end if;
				when DUBITO =>
					if(TX_BUSY = '0') then
						if(ready = '1') then
						
							TX_DATA				<= "01011000"; 	-- D -> 88
							TX_START				<= '1';
							bet_done				:= '1';
							ready					:= '0';
						else
							ready					:= '1';
						end if;
					else
						
						TX_START 	<= '0';
						if(bet_done = '1') then
							bet_done		:= '0';
							tx_state		<= IDLE;
						end if;
					end if;
				when START_PERDENTE => 
					if(TX_BUSY = '0') then
						if(ready = '1') then
						
							TX_DATA				<= "01011010"; 	-- Z -> 90
							TX_START				<= '1';
							perdente_done		:= '1';
							ready					:= '0';
						else
							ready					:= '1';
						end if;
					else
						
						TX_START 	<= '0';
						if(perdente_done = '1') then
							perdente_done		:= '0';
							tx_state				<= PERDENTE;
						end if;
					end if;
				when PERDENTE => 
					if(TX_BUSY = '0') then
						if(ready = '1') then
						
							TX_DATA				<=  std_logic_vector(to_signed(I_GIOCATORE_DADO_ELIMINATO + 48,8)); --"00110001"; 	-- 1 -> 49 Numero da cambiare (Prova)
							TX_START				<= '1';
							perdente_done		:= '1';
							ready					:= '0';
						else
							ready					:= '1';
						end if;
					else
						
						TX_START 	<= '0';
						if(perdente_done = '1') then
							perdente_done		:= '0';
							tx_state				<= IDLE;
						end if;
					end if;
			end case;
			
		end if;
	end process;
	
end main;