library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.perudo_package.all;
use ieee.math_real.uniform;
use ieee.math_real.floor;

entity Perudo_Datapath is
	port
	(
			CLOCK											:	in		std_logic;
			RESET_N											: 	in 	std_logic;
			
			-- Connections for the Controller
			
				-- Opzioni disponibili
			NUOVO_GIOCATORE							:	in		std_logic;
		--	ELIMINA_GIOCATORE 						:	in		std_logic;
			
	
			PROSSIMO_TURNO								:	in		std_logic;
			INIZIA_PARTITA        :	in		std_logic;
--			ELIMINA_DADO								:	in		std_logic;

--			ESEGUI_SCOMMESSA_COM						:	in		std_logic;			
--			DADO_SCOMMESSO_COM						:	in		dado_type;
--			RICORRENZA_COM								:	in		integer;
			
			TURNO_GIOCATORE							: 	out	std_logic;
			GIOCATORE_AGGIUNTO    :  out std_logic
			
			-- PARTITA_INIZIATA							: 	out	std_logic;
			
			-- Connections for the View
		--	INIZIA_PARTITA								: 	in		std_logic;
			
		--	ESEGUI_SCOMMESSA_G0						:	in		std_logic;
		--	DADO_SCOMMESSO_G0							:	in		dado_type;
		--	RICORRENZA_G0								:	in		integer;
		--	DAMMI_GIOCATORI_IN_CAMPO				:	in		std_logic;
		--	DAMMI_SCOMMESSA_CORRENTE				:	in		std_logic;			
			
	--		FINE_PARTITA								: 	out	std_logic
		--	GIOCATORI_IN_CAMPO_OUT					:	out	giocatore_array(0 to MAX_GIOCATORI-1);
		--	NUMERO_GIOCATORI_IN_CAMPO_OUT			: 	out 	integer range 0 to MAX_GIOCATORI;
		--	SCOMMESSA_CORRENTE_OUT					: 	out 	scommessa_type
			
	);
end entity;

architecture RTL of Perudo_Datapath is
		-- Struttura dati giocatori in campo
			-- L'utente è il giocatore in campo all'indice 0
	signal giocatori_in_campo												: giocatore_array(0 to MAX_GIOCATORI-1);
	signal numero_giocatori_in_campo										: integer range 0 to MAX_GIOCATORI;
		
		-- Segnali utili per la generazione del dado casuale
	signal numero_per_generazione_casuale_dado						: positive range MIN_NUMERO_PER_GENERAZIONE_CASUALE to MAX_NUMERO_PER_GENERAZIONE_CASUALE;
  signal cicli_casuali_attesa						               : integer range MIN_ATTESA_CASUALE to MAX_ATTESA_CASUALE;
  signal cicli_da_attendere                       : integer range -1 to MAX_ATTESA_CASUALE;
  signal aggiungi_dado                            : std_logic;
  signal dado_aggiunto                            : std_logic;
	signal indice_giocatore                         : integer range -1 to MAX_GIOCATORI-1;
	signal indice_dado                              : integer range -1 to MAX_DADI-1;
	
		-- Variabili utili per la generazione del turno giocatore d'inizio partita casuale e dei turni successivi	
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
	
	ContatoreCicliDiClockAttesa_RTL : process(CLOCK,RESET_N)
	begin
   	-- Contatore per generazione numero casuale per scelta dei dadi
		if(RESET_N = '0') then
			cicli_casuali_attesa <= MAX_ATTESA_CASUALE;
		elsif(rising_edge(CLOCK)) then
			if(cicli_casuali_attesa = MIN_ATTESA_CASUALE) then
				cicli_casuali_attesa <= MAX_ATTESA_CASUALE;
			else
				cicli_casuali_attesa <= cicli_casuali_attesa - 1;
			end if;
		end if;
	end process;	
	
	AssegnatoreDadi_RTL : process(aggiungi_dado,CLOCK,RESET_N)
	begin
	  if(RESET_N = '0') then
	     cicli_da_attendere <= -1;
	     dado_aggiunto <= '0';
	     

		
		
			for j in 0 to MAX_GIOCATORI-1 loop
				giocatori_in_campo(j).numero_dadi_in_mano <= 0;
				for i in 0 to MAX_DADI-1 loop
						giocatori_in_campo(j).dadi_in_mano(i) <=	NONE;
				end loop; 
			end loop;
	  elsif(rising_edge(CLOCK)) then
	     dado_aggiunto <= '0';
	     if(aggiungi_dado = '1') then
	           -- sto iniziando adesso ad attendere, mi � appena arrivato il segnale aggiungi_dado
	        if(cicli_da_attendere = -1) then
	           cicli_da_attendere <= cicli_casuali_attesa;
	           
	           -- Ora posso aggiungere dado
	        elsif(cicli_da_attendere = 0) then
	           giocatori_in_campo(indice_giocatore).dadi_in_mano(indice_dado) <=	scegli_dado_casuale(numero_per_generazione_casuale_dado);
					   giocatori_in_campo(indice_giocatore).numero_dadi_in_mano <= giocatori_in_campo(indice_giocatore).numero_dadi_in_mano + 1;
	           cicli_da_attendere <= -1;
	           dado_aggiunto <= '1';
	           
	           -- devo ancora aspettare per prendere il dado   
	        else
	           cicli_da_attendere <= cicli_da_attendere - 1; 
	        end if;
	     end if;
	  end if;
	end process;
	
	GestoreGiocatoriInCampo_RTL : process(NUOVO_GIOCATORE,CLOCK,RESET_N,dado_aggiunto)
	begin
	     if(RESET_N = '0') then
	     	  numero_giocatori_in_campo <= 0;
	        aggiungi_dado <= '0';
	        indice_giocatore <= -1;
	        indice_dado <= -1;
	        GIOCATORE_AGGIUNTO <= '0';
	     elsif(rising_edge(CLOCK)) then
	        GIOCATORE_AGGIUNTO <= '0';
	        if(NUOVO_GIOCATORE = '1') then
	           if(indice_giocatore = -1) then
	             indice_giocatore <= numero_giocatori_in_campo;
	             indice_dado <= giocatori_in_campo(numero_giocatori_in_campo).numero_dadi_in_mano;
	             aggiungi_dado <= '1';
	           elsif(dado_aggiunto = '1') then
	             aggiungi_dado <= '0';
	             if(giocatori_in_campo(indice_giocatore).numero_dadi_in_mano < 5) then
	                indice_dado <= giocatori_in_campo(numero_giocatori_in_campo).numero_dadi_in_mano;
	                aggiungi_dado <= '1';
	             else
					        numero_giocatori_in_campo <= numero_giocatori_in_campo + 1;
					        indice_giocatore <= -1;
	                indice_dado <= -1;
	                GIOCATORE_AGGIUNTO <= '1';
	             end if;
	           end if;
	        end if;
	     end if;	 
	end process;
	
	
	GestoreTurnoPartita_RTL: process(INIZIA_PARTITA, PROSSIMO_TURNO, CLOCK, RESET_N)
	variable conteggio_controllato											: std_logic;
	begin
	      if(RESET_N='0') then
				indice_turno_giocatore <= 0;
				conteggio_controllato := '0';
				TURNO_GIOCATORE <= '0';
			elsif(rising_edge(CLOCK)) then
			  if(INIZIA_PARTITA = '1') then
			   			-- Smetto di contare per il random, la partita � iniziata
					if(conteggio_controllato = '0') then
						conteggio_controllato := '1';
					end if;
					
			  elsif(PROSSIMO_TURNO = '1') then		
					if(numero_giocatori_in_campo /= 0) then					
					if(indice_turno_giocatore = (numero_giocatori_in_campo-1)) then
						indice_turno_giocatore <= 0;
					else
						indice_turno_giocatore <= indice_turno_giocatore + 1;
					end if;
					end if;
				end if;
				
			     -- Il conteggio controllato sempre perch� prima che la partita inizi si deve generare un turno random, 
			     -- appena inizia non ce n'� bisogno, si va sempre a +1
				if(conteggio_controllato = '0') then
					if(numero_giocatori_in_campo /= 0) then
					if(indice_turno_giocatore = (numero_giocatori_in_campo-1)) then
						indice_turno_giocatore <= 0;
					else
						indice_turno_giocatore <= indice_turno_giocatore + 1;
					end if;
					end if;
				end if;
			  if(indice_turno_giocatore = 0 and conteggio_controllato = '1') then
							-- Inizia utente
						TURNO_GIOCATORE <= '1';
					
				else
						TURNO_GIOCATORE <= '0';
				end if;
			end if;

	end process;
	
--	GestoreGiocatoriInCampo_RTL : process(RESET_N,NUOVO_GIOCATORE)--, ELIMINA_GIOCATORE, ELIMINA_DADO, CLOCK, )
	--begin
			-- All'avvio del sistema la partita è composta di default da due giocatore (UTENTE, COM)
		
--		if(RESET_N = '0') then
				-- Reset numero giocatori in campo
--			numero_giocatori_in_campo <= 0;
		
		
	--		for j in 0 to MAX_GIOCATORI-1 loop
	--			giocatori_in_campo(j).numero_dadi_in_mano <= 0; 
	--		end loop;
			
				-- Assegno dadi ai due giocatori 
	--		for j in 0 to MAX_GIOCATORI-1 loop
--				if(j=0 or j=1) then
--					for i in 0 to MAX_DADI-1 loop
--						giocatori_in_campo(j).dadi_in_mano(i) <=	scegli_dado_casuale(numero_per_generazione_casuale_dado);
--						giocatori_in_campo(j).numero_dadi_in_mano <= giocatori_in_campo(j).numero_dadi_in_mano + 1;
--					end loop;
--					numero_giocatori_in_campo <= numero_giocatori_in_campo + 1;
	--			else
--					for i in 0 to MAX_DADI-1 loop
--						giocatori_in_campo(j).dadi_in_mano(i) <=	NONE;
--					end loop;
			--	end if;	
--			end loop;
--		end if;
--		elsif(rising_edge(CLOCK)) then
--			if( ELIMINA_DADO = '1') then
--					-- Elimino dado ultimo giocatore che ha scommesso
--				giocatori_in_campo(indice_turno_giocatore).dadi_in_mano(giocatori_in_campo(indice_turno_giocatore).numero_dadi_in_mano-1) <= NONE;
--				giocatori_in_campo(indice_turno_giocatore).numero_dadi_in_mano <= giocatori_in_campo(indice_turno_giocatore).numero_dadi_in_mano - 1;
--		
--					-- Elimino giocatore perdente
--				if(giocatori_in_campo(indice_turno_giocatore).numero_dadi_in_mano = 0) then 
--					numero_giocatori_in_campo <= numero_giocatori_in_campo - 1;
--			
--						-- Un giocatore ha vinto, partita finita
--					if(numero_giocatori_in_campo = 1) then
--						FINE_PARTITA <= '1';
--					else
--							-- Scalo i giocatori
--						for j in indice_turno_giocatore to numero_giocatori_in_campo-1 loop
--							giocatori_in_campo(j) <= giocatori_in_campo(j+1);
--						end loop;			
--					end if;
--				end if;
--			elsif(ELIMINA_GIOCATORE = '1') then
--				if(numero_giocatori_in_campo > 2) then
--					-- Elimino ultimo giocatore
--				for i in 0 to MAX_DADI-1 loop
--					giocatori_in_campo(numero_giocatori_in_campo).dadi_in_mano(i) <=	NONE;
--				end loop;
--		
--				numero_giocatori_in_campo <= numero_giocatori_in_campo - 1;
--				end if;
--			elsif(NUOVO_GIOCATORE = '1') then
--				if(numero_giocatori_in_campo<MAX_GIOCATORI) then
--					-- Aggiungo giocatore
--				for i in 0 to MAX_DADI-1 loop
--					giocatori_in_campo(numero_giocatori_in_campo).dadi_in_mano(i) <=	scegli_dado_casuale(numero_per_generazione_casuale_dado);
--					giocatori_in_campo(numero_giocatori_in_campo).numero_dadi_in_mano <= giocatori_in_campo(numero_giocatori_in_campo).numero_dadi_in_mano + 1;
--				end loop;
--		
--				numero_giocatori_in_campo <= numero_giocatori_in_campo + 1;
--				end if;
--			end if;
--		end if;
--	end process;
	
--	EseguiScommessa : process(ESEGUI_SCOMMESSA_COM, ESEGUI_SCOMMESSA_G0, DADO_SCOMMESSO_COM, RICORRENZA_COM, DADO_SCOMMESSO_G0,RICORRENZA_G0, CLOCK, RESET_N)
--	begin
--		if(RESET_N = '0') then
--			scommessa_corrente.dado_scommesso <= NONE;
--			scommessa_corrente.ricorrenza <= 0;
--		elsif(rising_edge(CLOCK)) then
				-- Assegno valori scommessa
					-- COM
--			if(ESEGUI_SCOMMESSA_COM = '1') then
--				scommessa_corrente.dado_scommesso <= DADO_SCOMMESSO_COM;
--				scommessa_corrente.ricorrenza <= RICORRENZA_COM;
--				-- G0
--			elsif(ESEGUI_SCOMMESSA_G0 = '1') then
--				scommessa_corrente.dado_scommesso <= DADO_SCOMMESSO_G0;
--				scommessa_corrente.ricorrenza <= RICORRENZA_G0;
	--		end if;
	--	end if;
--	end process;
	
--	DammiGiocatoriInCampo : process(DAMMI_GIOCATORI_IN_CAMPO, giocatori_in_campo, numero_giocatori_in_campo) 	
--	begin
--			-- Restituisco giocatori in campo e relativo numero
--		GIOCATORI_IN_CAMPO_OUT <= giocatori_in_campo;
--		NUMERO_GIOCATORI_IN_CAMPO_OUT <= numero_giocatori_in_campo;
--	end process;
	
--	DammiScommessaCorrente : process(DAMMI_SCOMMESSA_CORRENTE, scommessa_corrente)
--	begin
--			-- Restituisco scommessa corrente
--		SCOMMESSA_CORRENTE_OUT <= scommessa_corrente;
--	end process;
	
end architecture;