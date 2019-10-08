library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.perudo_package.all;
use ieee.math_real.uniform;
use ieee.math_real.floor;

entity Perudo_Datapath is
	port
	(
			CLOCK											: in	std_logic;
			RESET_N										: in std_logic;
			
			-- Connections for the Controller
			
			-- Opzioni disponibili
			NUOVO_GIOCATORE							: in	std_logic;
			ELIMINA_GIOCATORE 						: in	std_logic;
			
	
			PROSSIMO_TURNO								: in	std_logic;
			INIZIA_PARTITA        					: in	std_logic;

			ESEGUI_SCOMMESSA							: in	std_logic;			
			DADO_SCOMMESSO								: in	dado_type;
			RICORRENZA									: in	integer;
			ESEGUI_SCOMMESSA_FPGA					: in  std_logic;
			
			RIGENERA          						: in 	std_logic;
			CHECK                					: in	std_logic;
			RIGENERATI         						: out std_logic;
			CHECKED              					: out std_logic;
			GIOCATORE_AGGIUNTO    					: out std_logic;
			GIOCATORE_ELIMINATO    					: out std_logic;
			PARTITA_INIZIATA        				: out std_logic;			
			FINE_PARTITA								: out std_logic;
			
			--Da cancellare
			TEST											: out std_logic;
			
			DAMMI_TURNO_GIOCATORE					: in std_logic;
			I_TURNO_GIOCATORE							: out integer range 0 to MAX_GIOCATORI-1;
			PROSSIMO_TURNO_ACK						: out std_logic;
			
			DAMMI_GIOCATORI_IN_CAMPO				: in std_logic;
			NR_GIOCATORI_IN_CAMPO					: out integer range 0 to MAX_GIOCATORI
			
			
			
	);
end entity;

architecture RTL of Perudo_Datapath is
  
	type     stati_rigenerazione is (ELIMINAZIONE, AGGIUNTA);
		-- Struttura dati giocatori in campo
			-- L'utente è il giocatore in campo all'indice 0
	signal giocatori_in_campo											: giocatore_array(0 to MAX_GIOCATORI-1);
	signal numero_giocatori_in_campo									: integer range 0 to MAX_GIOCATORI;
		
		-- Segnali utili per la generazione del dado casuale
	signal numero_per_generazione_casuale_dado					: positive range VALORE_DADO_MIN to VALORE_DADO_MAX;
	signal cicli_casuali_attesa						            : integer range MIN_ATTESA_CASUALE to MAX_ATTESA_CASUALE;
	signal cicli_da_attendere                       			: integer range -1 to MAX_ATTESA_CASUALE;
	signal aggiungi_dado                            			: std_logic;
	signal dado_aggiunto                           				: std_logic;
	signal reset_altri_giocatori                    			: std_logic;
	signal indice_giocatore                         			: integer range -1 to MAX_GIOCATORI-1;
	signal indice_dado                              			: integer range -1 to MAX_DADI-1;
	signal elimina_dado                             			: std_logic; 
	signal dado_eliminato                             			: std_logic; 
		-- Variabili utili per la generazione del turno giocatore d'inizio partita casuale e dei turni successivi	
	signal indice_turno_giocatore										: integer range 0 to MAX_GIOCATORI-1;
	signal prossimo_turno_old											:std_logic;
		-- Struttura dati scommessa
	signal scommessa_corrente											: scommessa_type;
	
	
begin
	

	
	ContatoreNumeroCasualeDado_RTL : process(CLOCK,RESET_N)
	begin
   	-- Contatore per generazione numero casuale per scelta dei dadi
		if(RESET_N = '0') then
			numero_per_generazione_casuale_dado <= VALORE_DADO_MIN;
		elsif(rising_edge(CLOCK)) then
			if(numero_per_generazione_casuale_dado = VALORE_DADO_MAX) then
				numero_per_generazione_casuale_dado <= VALORE_DADO_MIN;
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
	
	GestoreDadi_RTL : process(aggiungi_dado,elimina_dado,reset_altri_giocatori,CLOCK,RESET_N)
	begin
	  if(RESET_N = '0') then
	     cicli_da_attendere <= -1;
	     dado_aggiunto <= '0';
	     dado_eliminato <= '0';
		
		
			for j in 0 to MAX_GIOCATORI-1 loop
				giocatori_in_campo(j).numero_dadi_in_mano <= 0;
				for i in 0 to MAX_DADI-1 loop
						giocatori_in_campo(j).dadi_in_mano(i) <=	NONE;
				end loop; 
			end loop;
	  elsif(rising_edge(CLOCK)) then
	     dado_aggiunto <= '0';
	     dado_eliminato <= '0';
	     if(aggiungi_dado = '1') then
	           -- sto iniziando adesso ad attendere, mi � appena arrivato il segnale aggiungi_dado
	        if(cicli_da_attendere = -1) then
	           cicli_da_attendere <= cicli_casuali_attesa;
	           
	           -- Ora posso aggiungere dado
	        elsif(cicli_da_attendere = 0) then
	           giocatori_in_campo(indice_giocatore).dadi_in_mano(indice_dado) <=	converti_da_intero_a_dado(numero_per_generazione_casuale_dado);
					   giocatori_in_campo(indice_giocatore).numero_dadi_in_mano <= giocatori_in_campo(indice_giocatore).numero_dadi_in_mano + 1;
	           cicli_da_attendere <= -1;
	           dado_aggiunto <= '1';
	           
	           -- devo ancora aspettare per prendere il dado   
	        else
	           cicli_da_attendere <= cicli_da_attendere - 1; 
	        end if;
	     end if;
	     if(elimina_dado = '1') then
			giocatori_in_campo(indice_giocatore).dadi_in_mano(indice_dado) <=	NONE;
			giocatori_in_campo(indice_giocatore).numero_dadi_in_mano <= giocatori_in_campo(indice_giocatore).numero_dadi_in_mano -1;
			--dado_eliminato <= '1';
		 end if;
		   if(reset_altri_giocatori = '1') then
		        for j in 0 to MAX_GIOCATORI-1 loop
						if(j>numero_giocatori_in_campo) then
							giocatori_in_campo(j).numero_dadi_in_mano <= 0;
							for i in 0 to MAX_DADI-1 loop
								 giocatori_in_campo(j).dadi_in_mano(i) <=	NONE;
							end loop; 
						end if;
			      end loop;
			 end if;
			end if;
	end process;
	
	GestoreGiocatoriInCampo_RTL : process(NUOVO_GIOCATORE,ELIMINA_GIOCATORE,CHECK,RIGENERA,CLOCK,RESET_N,dado_aggiunto, dado_eliminato)
	
	variable counter_check 					: integer;
	variable giocatori_rigenerati 		: integer;
	variable dadi_da_rigenerare 			: integer;
	variable stato_rigenerazione  		: stati_rigenerazione;
	
	variable giocatore_eliminato_old		: std_logic;
	
	begin
	     if(RESET_N = '0') then
	     	  numero_giocatori_in_campo <= 0;
	        aggiungi_dado <= '0';
	        indice_giocatore <= -1;
	        indice_dado <= -1;
	        GIOCATORE_AGGIUNTO <= '0';
	        GIOCATORE_ELIMINATO <= '0';
	        FINE_PARTITA <= '0';
	        elimina_dado <= '0';
	        counter_check := 0;
	        CHECKED <= '0';
	        RIGENERATI <= '0';
			  
	        stato_rigenerazione 		:= ELIMINAZIONE;
	        giocatori_rigenerati 		:= 0;
	        dadi_da_rigenerare 		:= 0;
	        reset_altri_giocatori 	<= '0';
			  giocatore_eliminato_old 	:= '0';
			  
	     elsif(rising_edge(CLOCK)) then
		  
	        reset_altri_giocatori 	<= '0';
	        elimina_dado 				<= '0';
	        GIOCATORE_AGGIUNTO 		<= '0';
	        GIOCATORE_ELIMINATO 		<= '0';
	        FINE_PARTITA 				<= '0';
	        CHECKED 						<= '0';
	        RIGENERATI 					<= '0';
			  
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
			  if(ELIMINA_GIOCATORE = '1' and giocatore_eliminato_old = '0') then	           
					if(indice_giocatore = -1) then
						indice_giocatore <= numero_giocatori_in_campo - 1;
						indice_dado <= giocatori_in_campo(numero_giocatori_in_campo - 1).numero_dadi_in_mano-1;
						elimina_dado <= '1';
					else
						if(giocatori_in_campo(indice_giocatore).numero_dadi_in_mano > 0) then
							indice_dado <= giocatori_in_campo(indice_giocatore).numero_dadi_in_mano-1;
							elimina_dado <= '1';
						else
							elimina_dado <= '0';
							numero_giocatori_in_campo <= numero_giocatori_in_campo - 1;
							indice_giocatore <= -1;
							indice_dado <= -1;
							GIOCATORE_ELIMINATO <= '1';
							giocatore_eliminato_old 	:= '1';
						 end if;
					end if;
				else 
					giocatore_eliminato_old 	:= '0';
	        end if;
	        if(CHECK = '1') then
	           if(indice_giocatore = -1) then
	             for i in 0 to numero_giocatori_in_campo-1 loop
	               for j in 0 to giocatori_in_campo(i).numero_dadi_in_mano-1 loop
	                 if(giocatori_in_campo(i).dadi_in_mano(j) = scommessa_corrente.dado_scommesso) then
	                  counter_check := counter_check + 1;
	                  end if;
	               end loop;
	             end loop;
	             if(counter_check >= scommessa_corrente.ricorrenza) then
	               indice_giocatore 	<= indice_turno_giocatore;
	               indice_dado 		<= giocatori_in_campo(indice_turno_giocatore).numero_dadi_in_mano-1;
	             else
	               if(indice_turno_giocatore = 0) then
	                   indice_giocatore <= numero_giocatori_in_campo - 1;
	                   indice_dado <= giocatori_in_campo(numero_giocatori_in_campo - 1).numero_dadi_in_mano-1;
	               else
	                 indice_giocatore 	<= indice_turno_giocatore - 1;
	                 indice_dado 			<= giocatori_in_campo(indice_turno_giocatore - 1).numero_dadi_in_mano-1;
	               end if;
	             end if;
					 elimina_dado 		<= '1';
	           else --if(dado_eliminato = '1') then
	               counter_check := 0;	               
	              if(giocatori_in_campo(indice_giocatore).numero_dadi_in_mano = 0) then 
                    numero_giocatori_in_campo <= numero_giocatori_in_campo - 1;
                    reset_altri_giocatori <= '1';
                 end if;
                 CHECKED 				<= '1';
                 indice_giocatore 	<= -1;
					  indice_dado 			<= -1;
					  if(numero_giocatori_in_campo = 1) then
						  FINE_PARTITA <= '1';	
					  end if;
				end if;
	        end if;
	        if(RIGENERA = '1')then
	           if(giocatori_rigenerati < numero_giocatori_in_campo) then
	               if(dadi_da_rigenerare = 0) then
	                  dadi_da_rigenerare := giocatori_in_campo(giocatori_rigenerati).numero_dadi_in_mano;
	               end if;
	               if(stato_rigenerazione = ELIMINAZIONE) then
	                  if(dado_eliminato = '1') then
	                     if(giocatori_in_campo(giocatori_rigenerati).numero_dadi_in_mano=0)then
	                       stato_rigenerazione := AGGIUNTA;
	                       indice_giocatore <= -1;
	                     else
	                         indice_giocatore <= giocatori_rigenerati;
	                         indice_dado <= giocatori_in_campo(giocatori_rigenerati).numero_dadi_in_mano-1;
	                         elimina_dado <= '1';
	                     end if;
	                  elsif(indice_giocatore = -1) then
	                    indice_giocatore <= giocatori_rigenerati;
	                    indice_dado <= giocatori_in_campo(giocatori_rigenerati).numero_dadi_in_mano-1;
	                    elimina_dado <= '1';
	                  end if;
	               elsif(stato_rigenerazione = AGGIUNTA)then
	                   if(dado_aggiunto = '1')then
	                      if(giocatori_in_campo(giocatori_rigenerati).numero_dadi_in_mano=dadi_da_rigenerare)then
	                       stato_rigenerazione := ELIMINAZIONE;
	                       giocatori_rigenerati := giocatori_rigenerati+1;
	                       dadi_da_rigenerare := 0;
	                       indice_giocatore <= -1;
	                       aggiungi_dado <= '0';
	                     else
	                         indice_giocatore <= giocatori_rigenerati;
	                         indice_dado <= giocatori_in_campo(giocatori_rigenerati).numero_dadi_in_mano;
	                         aggiungi_dado <= '1';
	                     end if;
	                   elsif(indice_giocatore = -1) then
	                         indice_giocatore <= giocatori_rigenerati;
	                         indice_dado <= giocatori_in_campo(giocatori_rigenerati).numero_dadi_in_mano;
	                         aggiungi_dado <= '1';
	                   end if;
	               end if;
	           else
	               indice_giocatore <= -1;
	               giocatori_rigenerati := 0;
	               indice_dado <= -1;
	               RIGENERATI <= '1';
	           end if;
	      end if;
	     end if;	 
	end process;
	
	
	GestoreTurnoPartita_RTL: process(INIZIA_PARTITA, PROSSIMO_TURNO, CLOCK, RESET_N)
	variable conteggio_controllato	: std_logic;
	begin
	      if(RESET_N='0') then
				indice_turno_giocatore 	<= 0;
				prossimo_turno_old		<= '0';
				conteggio_controllato 	:= '0';
				PARTITA_INIZIATA 			<= '0';
				PROSSIMO_TURNO_ACK 		<= '0';
			elsif(rising_edge(CLOCK)) then
				
				PROSSIMO_TURNO_ACK 	<= '0';

				if(INIZIA_PARTITA = '1') then
			   	-- Smetto di contare per il random, la partita è iniziata
					if(conteggio_controllato = '0') then
						conteggio_controllato := '1';
					end if;
					PARTITA_INIZIATA <= '1';
				end if;
				if(PROSSIMO_TURNO = '1' and prossimo_turno_old = '0') then		
					if(numero_giocatori_in_campo /= 0) then					
						if(indice_turno_giocatore = (numero_giocatori_in_campo-1)) then
							indice_turno_giocatore <= 0;
						else
							indice_turno_giocatore <= indice_turno_giocatore + 1;
						end if;
						prossimo_turno_old <= '1';
						PROSSIMO_TURNO_ACK <= '1';
					end if;
				else
					prossimo_turno_old	<= '0';
				end if;
				
		   -- Il conteggio controllato serve perchè prima che la partita inizi si deve generare un turno random, 
		   -- appena inizia non ce n'è bisogno, si va sempre a +1
			if(conteggio_controllato = '0') then
				if(numero_giocatori_in_campo /= 0) then
					if(indice_turno_giocatore = (numero_giocatori_in_campo-1)) then
						indice_turno_giocatore <= 0;
					else
						indice_turno_giocatore <= indice_turno_giocatore + 1;
					end if;
				end if;
			end if;
		end if;

	end process;
	
	EseguiScommessa : process(ESEGUI_SCOMMESSA_FPGA, ESEGUI_SCOMMESSA, DADO_SCOMMESSO, RICORRENZA,CLOCK, RESET_N)
	begin
		if(RESET_N = '0') then
			scommessa_corrente.dado_scommesso <= NONE;
			scommessa_corrente.ricorrenza <= 0;
			
			--Da cancellare
			TEST <= '0';
			
		elsif(rising_edge(CLOCK)) then
				-- Assegno valori scommessa
					-- COM
					
			--Da cancellare
			TEST <= '0';
			
			if(ESEGUI_SCOMMESSA = '1') then
				scommessa_corrente.dado_scommesso 	<= DADO_SCOMMESSO;
				scommessa_corrente.ricorrenza 		<= RICORRENZA;
				

				
			end if;
			
			if(ESEGUI_SCOMMESSA_FPGA = '1') then
				scommessa_corrente <= scegli_scommessa(scommessa_corrente, giocatori_in_campo, indice_turno_giocatore);
				--Da cancellare
				TEST <= '1';
			end if;
		end if;
	end process;
	
	InviaNumeroGiocatori : process (DAMMI_GIOCATORI_IN_CAMPO, CLOCK, RESET_N)
	begin
		if(RESET_N = '0') then
			
			NR_GIOCATORI_IN_CAMPO <= 0;
			
		elsif(rising_edge(CLOCK)) then	
			
			--NR_GIOCATORI_IN_CAMPO <= 0;		Azzerare?
			if(DAMMI_GIOCATORI_IN_CAMPO = '1') then
				NR_GIOCATORI_IN_CAMPO <= numero_giocatori_in_campo;
			end if;
		end if;
	end process;
	
	InviaTurnoGiocatore : process (DAMMI_TURNO_GIOCATORE, CLOCK, RESET_N)
	begin
		if(RESET_N = '0') then
			I_TURNO_GIOCATORE <= 0;
		elsif(rising_edge(CLOCK)) then
			if(DAMMI_TURNO_GIOCATORE = '1') then
				I_TURNO_GIOCATORE 	<= indice_turno_giocatore;
			end if;
		end if;
	end process;
	
end architecture;