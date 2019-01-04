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
			INIZIA_PARTITA								: 	in		std_logic;
			ELIMINA_GIOCATORE 						:	in		std_logic;
			
			
			ESEGUI_SCOMMESSA							:	in		std_logic;
			PROSSIMO_TURNO								:	in		std_logic;
			ELIMINA_DADO								:	in		std_logic;
			
			DUBITO										:	out	std_logic;
			TURNO_GIOCATORE							: 	out	std_logic;
			FINE_PARTITA								: 	out	std_logic;
			
			PARTITA_INIZIATA							: 	inout	std_logic;
			
			-- Connections for the View
			DADO_SCOMMESSO								:	in		dado_type;
			RICORRENZA									:	in		integer;
			DAMMI_GIOCATORI_IN_CAMPO				:	in		std_logic;
			DAMMI_SCOMMESSA_CORRENTE				:	in		std_logic;			
			
			GIOCATORI_IN_CAMPO_OUT					:	out	giocatore_array(0 to MAX_GIOCATORI-1);
			NUMERO_GIOCATORI_IN_CAMPO_OUT			: 	out 	integer range 0 to MAX_GIOCATORI;
			SCOMMESSA_CORRENTE_OUT					: 	out 	scommessa_type
			
	);
end entity;

architecture RTL of Perudo_Datapath is
		-- Struttura dati giocatori in campo
			-- L'utente è il giocatore in campo all'indice 0
	signal giocatori_in_campo												: giocatore_array(0 to MAX_GIOCATORI-1);
	signal numero_giocatori_in_campo										: integer range 0 to MAX_GIOCATORI;
		
		-- Counter utile per la generazione del dado casuale
	signal numero_per_generazione_casuale_dado						: integer range MIN_NUMERO_PER_GENERAZIONE_CASUALE to MAX_NUMERO_PER_GENERAZIONE_CASUALE;

		-- Variabile utile per la generazione del turno giocatore d'inizio partita casuale e dei turni successivi	
	signal indice_turno_giocatore											: integer range 0 to MAX_GIOCATORI-1;
	
	
		-- Struttura dati scommessa
	signal scommessa_corrente												: scommessa_type;
	
begin
	
	ContatoreNumeroCasualeDado_RTL : process(CLOCK,RESET_N)
	begin
			-- Contatore per generazione numero casuale per scelta dei dadi
		if(RESET_N = '0') then
			numero_per_generazione_casuale_dado <= MIN_NUMERO_PER_GENERAZIONE_CASUALE;
		elsif(rising_edge(CLOCK)) then
			if(numero_per_generazione_casuale_dado = MAX_NUMERO_PER_GENERAZIONE_CASUALE) then
				numero_per_generazione_casuale_dado <= MIN_NUMERO_PER_GENERAZIONE_CASUALE;
			else
				numero_per_generazione_casuale_dado <= numero_per_generazione_casuale_dado + 1;
			end if;
		end if;
	end process;
	
	ContatoreIndiceTurnoCasuale_RTL : process(PROSSIMO_TURNO, PARTITA_INIZIATA, CLOCK,RESET_N)
	begin
			-- Contatore per generazione numero casuale per scelta del turno iniziale
		if(RESET_N = '0') then
			indice_turno_giocatore <= 0;
				-- Partita ancora non inizializzata perciò PARTITA_INIZIATA è ancora 0
			PARTITA_INIZIATA <= '0';
			-- Quando poi PARTITA_INIZIATA sarà uguale a 1, il contatore dev'essere spento
		elsif(rising_edge(CLOCK) and PARTITA_INIZIATA = '0') then
			if(indice_turno_giocatore = (numero_giocatori_in_campo-1)) then
				indice_turno_giocatore <= 0;
			else
				indice_turno_giocatore <= indice_turno_giocatore + 1;
			end if;
		end if;
	end process;
	
	ProssimoTurno_RTL: process(PROSSIMO_TURNO)
	begin
		if(PROSSIMO_TURNO = '1') then
			if(indice_turno_giocatore = (numero_giocatori_in_campo-1)) then
				indice_turno_giocatore <= 0;
				TURNO_GIOCATORE <= '1';
			else
				indice_turno_giocatore <= indice_turno_giocatore + 1;
				TURNO_GIOCATORE <= '0';
			end if;
		end if;
	end process;
	
	IniziaPartita_RTL: process(INIZIA_PARTITA)
	begin
			if(INIZIA_PARTITA = '1') then
				-- Dopo essere inizializzata la partita può iniziare, stabilendo successivamente il turno dei giocatori in maniera casuale.
					-- Così facendo spengo anche il contatore
			PARTITA_INIZIATA <= '1';
				if(indice_turno_giocatore = 0) then
						-- Inizia utente
					TURNO_GIOCATORE <= '1';
				else
					TURNO_GIOCATORE <= '0';
				end if;
			end if;
	end process;
	
	InizializzaPartita_RTL : process(RESET_N)
	begin
			-- All'avvio del sistema la partita è composta di default da due giocatore (UTENTE, COM)
		
		if(RESET_N = '0') then
				-- Reset numero giocatori in campo
			numero_giocatori_in_campo <= 0;
			
				-- Reset scommessa
			scommessa_corrente.dado_scommesso <= NOP;
			scommessa_corrente.ricorrenza <= 0;
		
				-- Assegno dadi ai due giocatori 
			for j in 0 to MAX_GIOCATORI-1 loop
				if(j=0 or j=1) then
					for i in 0 to MAX_DADI-1 loop
						giocatori_in_campo(j).dadi_in_mano(i) <=	scegli_dado_casuale(numero_per_generazione_casuale_dado);
					end loop;
					numero_giocatori_in_campo <= numero_giocatori_in_campo + 1;
				else
					for i in 0 to MAX_DADI-1 loop
						giocatori_in_campo(j).dadi_in_mano(i) <=	NOP;
					end loop;
				end if;	
			end loop;
		end if;
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
			giocatori_in_campo(numero_giocatori_in_campo).dadi_in_mano(i) <=	scegli_dado_casuale(numero_per_generazione_casuale_dado);
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