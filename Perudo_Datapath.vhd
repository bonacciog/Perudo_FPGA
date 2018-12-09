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
			
				-- Opzioni disponibili
			NUOVO_GIOCATORE							:	in		std_logic;
			INIZIALIZZA_PARTITA						: 	in		std_logic;
			ELIMINA_GIOCATORE 						:	in		std_logic;
			
				-- GET/SET
			ESEGUI_SCOMMESSA							:	in		std_logic;
			DADO_SCOMMESSO								: 	in		dado_type;
			RICORRENZA									:	in		integer;
			
			DAMMI_GIOCATORI_IN_CAMPO				:	in		std_logic;
			GIOCATORI_IN_CAMPO_OUT					:	out	giocatore_array(0 to MAX_GIOCATORI-1);
			NUMERO_GIOCATORI_IN_CAMPO_OUT			: 	out 	integer range 0 to MAX_GIOCATORI;
		
			DAMMI_SCOMMESSA_CORRENTE				:	in		std_logic;
			SCOMMESSA_CORRENTE_OUT					: 	out 	scommessa_type
			
			-- Connections for the View
	);
end entity;

architecture RTL of Perudo_Datapath is
		-- Struttura dati giocatori in campo
	signal giocatori_in_campo					: giocatore_array(0 to MAX_GIOCATORI-1);
	signal numero_giocatori_in_campo			: integer range 0 to MAX_GIOCATORI;
		
		-- Counter utile per la generazione del dado casuale
	signal numero_per_generazione_casuale	: integer range MIN_NUMERO_PER_GENERAZIONE_CASUALE to MAX_NUMERO_PER_GENERAZIONE_CASUALE;
	
		-- Struttura dati scommessa
	signal scommessa_corrente					: scommessa_type;
	
begin
	
	ContatoreNumeroCasuale_RTL : process(CLOCK,RESET_N)
	begin
			-- Contatore per generazione numero casuale
		if(RESET_N = '1') then
			numero_per_generazione_casuale <= 1;
		elsif(rising_edge(CLOCK)) then
			if(numero_per_generazione_casuale = 6) then
				numero_per_generazione_casuale <= 1;
			else
				numero_per_generazione_casuale <= numero_per_generazione_casuale + 1;
			end if;
		end if;
	end process;
	
	InizializzaPartita_RTL : process(INIZIALIZZA_PARTITA, RESET_N)
	begin
			-- All'avvio del sistema la partita è composta di default da due giocatore (UTENTE, COM)
		
			-- Reset numero giocatori in campo
		numero_giocatori_in_campo <= 0;
		
			-- Reset scommessa
		scommessa_corrente.dado_scommesso <= NOP;
		scommessa_corrente.ricorrenza <= 0;
		
			-- Assegno dadi ai due giocatori 
		for j in 0 to MAX_GIOCATORI-1 loop
			if(j=0 or j=1) then
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
			-- Elimino ultimo giocatore
		for i in 0 to MAX_DADI-1 loop
			giocatori_in_campo(numero_giocatori_in_campo).dadi_in_mano(i) <=	NOP;
		end loop;
		
		numero_giocatori_in_campo <= numero_giocatori_in_campo - 1;
		
	end process;
	
	
	NuovoGiocatore_RTL : process(NUOVO_GIOCATORE)
	begin
			-- Aggiungo giocatore
		for i in 0 to MAX_DADI-1 loop
			giocatori_in_campo(numero_giocatori_in_campo).dadi_in_mano(i) <=	scegli_dado_casuale(numero_per_generazione_casuale);
		end loop;
		
		numero_giocatori_in_campo <= numero_giocatori_in_campo + 1;
		
	end process;
	
	EseguiScommessa : process(ESEGUI_SCOMMESSA)
	begin
			-- Assegno valori scommessa
		scommessa_corrente.dado_scommesso <= DADO_SCOMMESSO;
		scommessa_corrente.ricorrenza <= RICORRENZA;
	end process;
	
	DammiGiocatoriInCampo : process(DAMMI_GIOCATORI_IN_CAMPO)
	begin
			-- Restituisco giocatori in campo e relativo numero
		GIOCATORI_IN_CAMPO_OUT <= giocatori_in_campo;
		NUMERO_GIOCATORI_IN_CAMPO_OUT <= numero_giocatori_in_campo;
	end process;
	
	DammiScommessaCorrente : process(DAMMI_SCOMMESSA_CORRENTE)
	begin
			-- Restituisco scommessa corrente
		SCOMMESSA_CORRENTE_OUT <= scommessa_corrente;
	end process;
	
end architecture;