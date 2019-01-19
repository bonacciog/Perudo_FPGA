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
			BUTTON_INIZIA_PARTITA					: in	std_logic;
			BUTTON_NUOVO_GIOCATORE					: in  std_logic;
			BUTTON_ELIMINA_GIOCATORE				: in  std_logic;
			
			BUTTON_INCREMENTA_DADO_SCOMMESSO		: in  std_logic;
			BUTTON_DECREMENTA_DADO_SCOMMESSO		: in  std_logic;
			BUTTON_INCREMENTA_RICORRENZA		 	: in  std_logic;
			BUTTON_DECREMENTA_RICORRENZA		 	: in  std_logic;
			BUTTON_ESEGUI_SCOMMESSA		 			: in  std_logic;
			
			BUTTON_PROSSIMO_TURNO		 			: in  std_logic;
			
			-- Connections with Perudo_Datapath
			
			INIZIA_PARTITA								: 	out		std_logic;
			NUOVO_GIOCATORE							:	out		std_logic;
			ELIMINA_GIOCATORE 						:	out		std_logic;
			
			ESEGUI_SCOMMESSA	 						:	out		std_logic;
			
			PROSSIMO_TURNO		 						:	out		std_logic;
			ELIMINA_DADO								:	out		std_logic;
			
			PARTITA_INIZIATA							:	in			std_logic;
			TURNO_GIOCATORE							:	in			std_logic;
			DUBITO										:	in			std_logic;
			
			-- Connections with Perudo_View
			
			INCREMENTA_DADO_SCOMMESSO		: out  std_logic;
			DECREMENTA_DADO_SCOMMESSO		: out  std_logic;
			INCREMENTA_RICORRENZA		 	: out  std_logic;
			DECREMENTA_RICORRENZA		 	: out  std_logic;
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
			
			if (PARTITA_INIZIATA = '0') then						--Inizializzazione del tavolo dei giocatori
				if(BUTTON_NUOVO_GIOCATORE = '1') then 
					-- Do something
					-- ...
				elsif (BUTTON_ELIMINA_GIOCATORE = '1') then
					-- Do something
					-- ....
				elsif (BUTTON_INIZIA_PARTITA = '1') then
					--Do something
					-- ...
				end if;
			else															--Partita
				if(BUTTON_DECREMENTA_DADO_SCOMMESSO = '1') then
					--Do something
					--...
				elsif (BUTTON_INCREMENTA_DADO_SCOMMESSO = '1') then
					--Do something
					--...
				-- Continue...
				-- ........
				-- ........
				end if;
			end if;
			
		end if;
	end process;
		
end architecture;