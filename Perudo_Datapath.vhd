library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.perudo_package.all;

entity Perudo_Datapath is
	port
	(
			CLOCK											:	in		std_logic;
			RESET_N										: 	in 	std_logic;
			
			-- Connections for the Controller
			NUOVO_GIOCATORE							:	in		std_logic;
			INIZIALIZZA_PARTITA						: 	in		std_logic;
			ELIMINA_GIOCATORE 						:	in		std_logic;
			ESEGUI_SCOMMESSA_COM						:	in		std_logic
			
			-- Connections for the View
	);
end entity;

architecture RTL of Perudo_Datapath is
		
	signal giocatori_in_campo					: giocatore_array(0 to MAX_GIOCATORI-1);
	signal numero_giocatori_in_campo			: integer range 0 to MAX_GIOCATORI;
		
		-- Counter utile per la generazione del dado casuale
	signal numero_per_generazione_casuale	: integer range MIN_NUMERO_PER_GENERAZIONE_CASUALE to MAX_NUMERO_PER_GENERAZIONE_CASUALE;
	
	signal scommessa_corrente					: scommessa_type;
	
begin
	
	ContatoreNumeroCasuale_RTL : process(CLOCK)---,RESET_N)
	begin
		if(rising_edge(CLOCK)) then
			if(numero_per_generazione_casuale = 6) then
				numero_per_generazione_casuale <= 1;
			else
				numero_per_generazione_casuale <= numero_per_generazione_casuale + 1;
			end if;
		end if;
	end process;
	
	InizializzaPartita_RTL : process(INIZIALIZZA_PARTITA)
	begin
			-- All'avvio del sistema la partita è composta di default da due giocatore (UTENTE, COM)
		for j in 0 to MAX_GIOCATORI-1 loop
			if(j=0 or j=1 ) then
				for i in 0 to MAX_DADI-1 loop
					giocatori_in_campo(j).dadi_in_mano(i) <=	scegli_dado_casuale(numero_per_generazione_casuale);
				end loop;
				numero_giocatori_in_campo <= numero_giocatori_in_campo + 1;
			else
				for i in 0 to MAX_DADI-1 loop
					giocatori_in_campo(j).dadi_in_mano(i) <=	NOP;
				end loop;
			end if;	
		end loop;
		
	end process;
	
	EliminaGiocatore_RTL : process(ELIMINA_GIOCATORE)
	begin
		
		for i in 0 to MAX_DADI-1 loop
			giocatori_in_campo(numero_giocatori_in_campo).dadi_in_mano(i) <=	NOP;
		end loop;
		
		numero_giocatori_in_campo <= numero_giocatori_in_campo - 1;
		
	end process;
	
	
	NuovoGiocatore_RTL : process(NUOVO_GIOCATORE)
	begin
		
		for i in 0 to MAX_DADI-1 loop
			giocatori_in_campo(numero_giocatori_in_campo).dadi_in_mano(i) <=	scegli_dado_casuale(numero_per_generazione_casuale);
		end loop;
		
		numero_giocatori_in_campo <= numero_giocatori_in_campo + 1;
		
	end process;
end architecture;