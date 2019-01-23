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
			BUTTON_INIZIA_PARTITA					: in	std_logic;			----------------------------
			BUTTON_NUOVO_GIOCATORE					: in  std_logic;			--INIZIALIZZAZIONE PARTITA
			BUTTON_ELIMINA_GIOCATORE				: in  std_logic;			----------------------------
			BUTTON_INCREMENTA_DADO_SCOMMESSO		: in  std_logic;			----------------------------
			BUTTON_DECREMENTA_DADO_SCOMMESSO		: in  std_logic;			--
			BUTTON_INCREMENTA_RICORRENZA		 	: in  std_logic;			--PARTITA INIZIATA
			BUTTON_DECREMENTA_RICORRENZA		 	: in  std_logic;			--
			BUTTON_ESEGUI_SCOMMESSA		 			: in	std_logic;			--		
			BUTTON_PROSSIMO_TURNO		 			: in  std_logic;			----------------------------
			
			-- Connections with Perudo_Datapath
			
			INIZIA_PARTITA								: 	out	std_logic;
			NUOVO_GIOCATORE							:	out	std_logic;
			ELIMINA_GIOCATORE 						:	out	std_logic;
			
			ESEGUI_SCOMMESSA	 						:	out	std_logic;
			
			PROSSIMO_TURNO		 						:	out	std_logic;
			ELIMINA_DADO								:	out	std_logic;
			
			PARTITA_INIZIATA							:	in		std_logic;
			TURNO_GIOCATORE							:	in		std_logic;
			DUBITO										:	in		std_logic;
			
			-- Connections with Perudo_View
			
			INCREMENTA_DADO_SCOMMESSO		: out  std_logic;
			DECREMENTA_DADO_SCOMMESSO		: out  std_logic;
			INCREMENTA_RICORRENZA		 	: out  std_logic;
			DECREMENTA_RICORRENZA		 	: out  std_logic;
			
			REDRAW								: out  std_logic;
	);
	
end entity;

architecture RTL of Perudo_Controller is
begin
	
	process (CLOCK, RESET_N)
		--variable first_time        : std_logic;
		
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
			ESEGUI_SCOMMESSA	 			<= '0';		
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
			ESEGUI_SCOMMESSA	 			<= '0';		
			PROSSIMO_TURNO		 			<= '0';
			ELIMINA_DADO					<= '0';
			REDRAW							<= '0';
			
			if (PARTITA_INIZIATA = '0') then								--INIZIALIZZAZIONE DEL TAVOLO DEI GIOCATORI
			
				if(BUTTON_NUOVO_GIOCATORE = '1') then 
					NUOVO_GIOCATORE	<= '1';
					REDRAW				<= '1';
					-- Do something
					-- ...
				elsif (BUTTON_ELIMINA_GIOCATORE = '1') then
					ELIMINA_GIOCATORE	<= '1';
					REDRAW				<= '1';
					-- Do something
					-- ....
				elsif (BUTTON_INIZIA_PARTITA = '1') then
					INIZIA_PARTITA	<= '1';
					REDRAW			<= '1';
					--Do something
					-- ...
				end if;
				
			else																	--PARTITA
			
				if (TURNO_GIOCATORE = '0') then							--Turno del PC
					
					--Qui si esegue l'algoritmo
					--Ragionare se bisogna implementare
					--qualcosa qui oppure non si fa niente
					--e si fa tutto nel Datapath
					
				else (TURNO_GIOCATORE = '1') then						--Turno del Player
				
					if(BUTTON_DECREMENTA_DADO_SCOMMESSO = '1') then
						--Do something
						--...
					elsif (BUTTON_INCREMENTA_DADO_SCOMMESSO = '1') then
						--Do something
						--...
					elsif (BUTTON_DECREMENTA_RICORRENZA = '1') then
						-- Do something
						-- ...
					elsif (BUTTON_INCREMENTA_RICORRENZA = '1') then
						-- Do something
						-- ...
					elsif (BUTTON_ESEGUI_SCOMMESSA = '1') then
						-- Do something
						-- ...
					end if;
				end if;
			end if;
			
		end if;
	end process;
		
end architecture;