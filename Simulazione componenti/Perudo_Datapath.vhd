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
			ELIMINA_GIOCATORE 						:	in		std_logic;
			
	
			PROSSIMO_TURNO								:	in		std_logic;
			ELIMINA_DADO								:	in		std_logic;

			ESEGUI_SCOMMESSA_COM						:	in		std_logic;			
			DADO_SCOMMESSO_COM						:	in		dado_type;
			RICORRENZA_COM								:	in		integer;
			
			TURNO_GIOCATORE							: 	out	std_logic;
			
			PARTITA_INIZIATA							: 	inout	std_logic;
			
			-- Connections for the View
			INIZIA_PARTITA								: 	in		std_logic;
			
			ESEGUI_SCOMMESSA_G0						:	in		std_logic;
			DADO_SCOMMESSO_G0							:	in		dado_type;
			RICORRENZA_G0								:	in		integer;
			DAMMI_GIOCATORI_IN_CAMPO				:	in		std_logic;
			DAMMI_SCOMMESSA_CORRENTE				:	in		std_logic;			
			
			FINE_PARTITA								: 	out	std_logic;
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
	
	ContatoreIndiceTurnoCasuale_RTL : process(PARTITA_INIZIATA, CLOCK,RESET_N)
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
	
	EliminaDado_RTL: process(ELIMINA_DADO)
	begin
			-- Elimino dado ultimo giocatore che ha scommesso
		giocatori_in_campo(indice_turno_giocatore).dadi_in_mano(giocatori_in_campo(indice_turno_giocatore).numero_dadi_in_mano-1) <= NONE;
		giocatori_in_campo(indice_turno_giocatore).numero_dadi_in_mano <= giocatori_in_campo(indice_turno_giocatore).numero_dadi_in_mano - 1;
		
			-- Elimino giocatore perdente
		if(giocatori_in_campo(indice_turno_giocatore).numero_dadi_in_mano = 0) then 
			numero_giocatori_in_campo <= numero_giocatori_in_campo - 1;
			
				-- Un giocatore ha vinto, partita finita
			if(numero_giocatori_in_campo = 1) then
				FINE_PARTITA <= '1';
			else
						-- Scalo i giocatori
				for j in indice_turno_giocatore to numero_giocatori_in_campo-1 loop
					giocatori_in_campo(j) <= giocatori_in_campo(j+1);
				end loop;			
			end if;
		end if;
	end process;
	
	ProssimoTurno_RTL: process(PROSSIMO_TURNO)
	begin
		if(indice_turno_giocatore = (numero_giocatori_in_campo-1)) then
			indice_turno_giocatore <= 0;
			TURNO_GIOCATORE <= '1';
		else
			indice_turno_giocatore <= indice_turno_giocatore + 1;
			TURNO_GIOCATORE <= '0';
		end if;
	end process;
	
	IniziaPartita_RTL: process(INIZIA_PARTITA)
	begin
			-- Dopo essere inizializzata la partita può iniziare, stabilendo successivamente il turno dei giocatori in maniera casuale.
				-- Così facendo spengo anche il contatore
			PARTITA_INIZIATA <= '1';
			if(indice_turno_giocatore = 0) then
					-- Inizia utente
				TURNO_GIOCATORE <= '1';
			else
				TURNO_GIOCATORE <= '0';
			end if;
	end process;
	
	InizializzaPartita_RTL : process(RESET_N)
	begin
			-- All'avvio del sistema la partita è composta di default da due giocatore (UTENTE, COM)
		
		if(RESET_N = '0') then
				-- Reset numero giocatori in campo
			numero_giocatori_in_campo <= 0;
			
				-- Reset scommessa
			scommessa_corrente.dado_scommesso <= NONE;
			scommessa_corrente.ricorrenza <= 0;
		
			for j in 0 to MAX_GIOCATORI-1 loop
				giocatori_in_campo(j).numero_dadi_in_mano <= 0; 
			end loop;
			
				-- Assegno dadi ai due giocatori 
			for j in 0 to MAX_GIOCATORI-1 loop
				if(j=0 or j=1) then
					for i in 0 to MAX_DADI-1 loop
						giocatori_in_campo(j).dadi_in_mano(i) <=	scegli_dado_casuale(numero_per_generazione_casuale_dado);
						giocatori_in_campo(j).numero_dadi_in_mano <= giocatori_in_campo(j).numero_dadi_in_mano + 1; 
					end loop;
					numero_giocatori_in_campo <= numero_giocatori_in_campo + 1;
				else
					for i in 0 to MAX_DADI-1 loop
						giocatori_in_campo(j).dadi_in_mano(i) <=	NONE;
					end loop;
				end if;	
			end loop;
		end if;
	end process;
	
	EliminaGiocatore_RTL : process(ELIMINA_GIOCATORE)
	begin
		if(numero_giocatori_in_campo > 2) then
				-- Elimino ultimo giocatore
			for i in 0 to MAX_DADI-1 loop
				giocatori_in_campo(numero_giocatori_in_campo).dadi_in_mano(i) <=	NONE;
			end loop;
		
			numero_giocatori_in_campo <= numero_giocatori_in_campo - 1;
		end if;
	end process;
	
	
	NuovoGiocatore_RTL : process(NUOVO_GIOCATORE)
	begin
		if(numero_giocatori_in_campo<MAX_GIOCATORI) then
				-- Aggiungo giocatore
			for i in 0 to MAX_DADI-1 loop
				giocatori_in_campo(numero_giocatori_in_campo).dadi_in_mano(i) <=	scegli_dado_casuale(numero_per_generazione_casuale_dado);
				giocatori_in_campo(numero_giocatori_in_campo).numero_dadi_in_mano <= giocatori_in_campo(numero_giocatori_in_campo).numero_dadi_in_mano + 1;
			end loop;
		
			numero_giocatori_in_campo <= numero_giocatori_in_campo + 1;
		end if;
	end process;
	
	EseguiScommessa : process(ESEGUI_SCOMMESSA_COM, ESEGUI_SCOMMESSA_G0)
	begin
			-- Assegno valori scommessa
				-- COM
		if(ESEGUI_SCOMMESSA_COM = '1') then
			scommessa_corrente.dado_scommesso <= DADO_SCOMMESSO_COM;
			scommessa_corrente.ricorrenza <= RICORRENZA_COM;
				-- G0
		elsif(ESEGUI_SCOMMESSA_G0 = '1') then
			scommessa_corrente.dado_scommesso <= DADO_SCOMMESSO_G0;
			scommessa_corrente.ricorrenza <= RICORRENZA_G0;
		end if;
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