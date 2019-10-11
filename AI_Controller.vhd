library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.perudo_package.all;
use IEEE.math_real.all;
-- ---------------------------------------
Entity AI_Controller is
-- ---------------------------------------
	port 
	( 
		CLOCK								: in std_logic;
		RESET_N							: in std_logic;
		
		-- Connection with Datapath
		SCEGLI_SCOMMESSA   	    	: in std_logic;
		SCOMMESSA_ATTUALE 	    	: in scommessa_type;
		GIOCATORI 	 		   		: in giocatore_array(0 to MAX_GIOCATORI-1);
		I_TURNO_GIOCATORE		   	: in integer;
		
		SCOMMESSA_OK					: out std_logic;
		SCOMMESSA_SCELTA				: out scommessa_type
	);
End Entity;

architecture RTL of AI_Controller is

	function dammi_tutte_le_azioni_possibili(SCOMMESSA_ATTUALE : scommessa_type; dadi_totali_in_campo : integer) 
	return  scommessa_array is
	variable dado_scommesso					: integer range VALORE_DADO_MIN to VALORE_DADO_MAX;
	variable totali_scommesse				: scommessa_array(VALORE_DADO_MIN-1 to VALORE_DADO_MAX-1);
	variable totali_scommesse_dim			: integer := 0;
	variable ricorrenze_dim					: integer := 0;
	begin
		dado_scommesso := converti_da_dado_a_intero(SCOMMESSA_ATTUALE.dado_scommesso);
		if(dado_scommesso /= 1) then
			for i in VALORE_DADO_MIN+1 to VALORE_DADO_MAX loop
				if(i >= dado_scommesso) then
					totali_scommesse(totali_scommesse_dim).dado_scommesso := converti_da_intero_a_dado(i);
					 -- 40 perché sono il valore massimo di dadi in campo (previsti massimo 8 giocatori)
					for j in MIN_DADI to MAX_DADI_TOTALI loop
					  if(j<=dadi_totali_in_campo) then
					    -- questo if è dovuto al fatto che è possibile avere stessa ricorrenza con dado però maggiore
					    if(i = dado_scommesso) then
							   if(j>SCOMMESSA_ATTUALE.ricorrenza) then
								  totali_scommesse(totali_scommesse_dim).ricorrenze(ricorrenze_dim) := j;
								  ricorrenze_dim := ricorrenze_dim +1;
							   end if;
							else
							   if(j>=SCOMMESSA_ATTUALE.ricorrenza) then
								  totali_scommesse(totali_scommesse_dim).ricorrenze(ricorrenze_dim) := j;
								  ricorrenze_dim := ricorrenze_dim +1;
							   end if;
							 end if;
						end if;
					end loop;
					ricorrenze_dim:=0;
					totali_scommesse_dim := totali_scommesse_dim + 1;
				end if;
			end loop;
			-- scommessa lama
			totali_scommesse(totali_scommesse_dim).dado_scommesso := UNO;
			for j in MIN_DADI to MAX_DADI_TOTALI loop
			  if(j>=(SCOMMESSA_ATTUALE.ricorrenza/2)) then
					 totali_scommesse(totali_scommesse_dim).ricorrenze(ricorrenze_dim) := j;
					 ricorrenze_dim := ricorrenze_dim +1;
			  end if;
			end loop;
			ricorrenze_dim:=0;
			totali_scommesse_dim := totali_scommesse_dim + 1;
		else
			for i in VALORE_DADO_MIN+1 to VALORE_DADO_MAX loop
				totali_scommesse(totali_scommesse_dim).dado_scommesso := converti_da_intero_a_dado(i);
				for j in MIN_DADI to MAX_DADI_TOTALI loop
					if(j<=dadi_totali_in_campo) then
						if(j>(SCOMMESSA_ATTUALE.ricorrenza * 2)) then
							totali_scommesse(totali_scommesse_dim).ricorrenze(ricorrenze_dim) := j;
							ricorrenze_dim := ricorrenze_dim +1;							
						end if;
					end if;
					
				end loop;
				ricorrenze_dim:=0;
				totali_scommesse_dim := totali_scommesse_dim + 1;
			end loop;
				-- scommessa lama
				totali_scommesse(totali_scommesse_dim).dado_scommesso := UNO;
			  for j in MIN_DADI to MAX_DADI_TOTALI loop
			    if(j>SCOMMESSA_ATTUALE.ricorrenza) then
					   totali_scommesse(totali_scommesse_dim).ricorrenze(ricorrenze_dim) := j;
					   ricorrenze_dim := ricorrenze_dim +1;
			    end if;
			 end loop;
			 ricorrenze_dim:=0;
			 totali_scommesse_dim := totali_scommesse_dim + 1;
		end if;
		return totali_scommesse;
	end function;

	function dadi_in_campo(GIOCATORI : giocatore_array(0 to MAX_GIOCATORI-1)) 
			return integer is
			variable risultato : integer:=0;
	begin
		for j in 0 to MAX_GIOCATORI-1 loop
		  if(GIOCATORI(j).dadi_in_mano(0) /= NONE) then
			 risultato := risultato + GIOCATORI(j).numero_dadi_in_mano;
			end if;
		end loop;
		return risultato;
	end function;

	function ricorrenza_dado(dado : dado_type; dadi_in_mano : dado_array(0 to MAX_DADI-1)) 
	         return integer is
	variable result                : integer := 0;
	begin
	  for i in 0 to MAX_DADI-1 loop
	    if(dado = dadi_in_mano(i)) then
	       result := result + 1;
	    end if;
	  end loop;
	  return result;
	end function;
	
	function fattoriale(N : integer) return integer is
	variable tmp     : integer; 
	variable fatt    :  integer:=1;
	begin
	  tmp := N;
	  while tmp > 1 loop
	    fatt := fatt * tmp;
	    tmp := tmp-1;
	  end loop;
	  return fatt;
	end function;
	
	function coeffBinomiale(N : integer; K : integer range 0 to 5) return integer is
	variable i  	: integer;
	variable num	: integer;
	variable res	: integer;
	begin
		i		:= N;
		num	:= N;
		res	:= 1;
		--return fattoriale(N)/(fattoriale(K)*fattoriale(N-K)) * 100; old fattoriale
		while  i <= (N-K+1) loop
			res 	:= res*i;
			num 	:= num - 1;
			i 		:= i - 1;
		end loop;
		return (res/fattoriale(K));
	end function;
	
	-- segnali di comunicazione interna
	signal prob_corrente					   : integer;
	signal prob_ris							: integer;
	signal calcola_probabilita				: std_logic;
	signal probabilita_calcolata			: std_logic;
	signal valore_X						   : integer;
	signal valore_N						   : integer;
	

------\
begin -- Architecture
------/


	ScegliScommessa_RTL : process(CLOCK,RESET_N, SCEGLI_SCOMMESSA) is
	type stati_probabilita is (DUBITO, SCOMMESSA);
	variable stato						 : stati_probabilita;
	variable dadi_totali_in_campo  : integer;
	variable scommesse_possibili   : scommessa_array(VALORE_DADO_MIN-1 to VALORE_DADO_MAX-1);
	variable iteratore_scommesse	 : integer;
	variable iteratore_ricorrenze	 : integer;
	variable prob_tmp					 : integer;
	begin
		if(RESET_N = '0') then
		
		
			SCOMMESSA_SCELTA.dado_scommesso		<= NONE;
			SCOMMESSA_SCELTA.ricorrenza			<= -1;
			stato 								      := DUBITO;
			dadi_totali_in_campo				      := 0;
			iteratore_ricorrenze				      := 0;
			iteratore_scommesse 				      := 0;
			prob_tmp								      := 0;
			calcola_probabilita		   	      <= '0';
			valore_X 							      <= 0;
			valore_N 							      <= 0;
			SCOMMESSA_OK 						      <= '0';
		elsif(rising_edge(CLOCK)) then
			SCOMMESSA_OK <= '0';
		
			if(SCEGLI_SCOMMESSA = '1') then
				if(dadi_totali_in_campo = 0) then
					dadi_totali_in_campo := dadi_in_campo(GIOCATORI);
				end if;
				
				if(stato = DUBITO) then
					if(calcola_probabilita = '0') then
						if(SCOMMESSA_ATTUALE.dado_scommesso = UNO) then
							prob_corrente <= PROBABILITA_DADO_UNO;
						else
							prob_corrente <= PROBABILITA_DADO_GENERICO;
						end if;
						
						valore_X <= SCOMMESSA_ATTUALE.ricorrenza-ricorrenza_dado(SCOMMESSA_ATTUALE.dado_scommesso, GIOCATORI(I_TURNO_GIOCATORE).dadi_in_mano);
						valore_N <= dadi_totali_in_campo-GIOCATORI(I_TURNO_GIOCATORE).numero_dadi_in_mano;
						
						calcola_probabilita <= '1';
					else
						if(probabilita_calcolata = '1') then
							calcola_probabilita <= '0';
							valore_X <= 0;
							valore_N <= 0;
							if(prob_ris <= SOGLIA_DUBITO) then
								dadi_totali_in_campo := 0;
								SCOMMESSA_SCELTA.dado_scommesso <= NONE;
								SCOMMESSA_SCELTA.ricorrenza <= -1;
								SCOMMESSA_OK <= '1';
							else
								stato := SCOMMESSA;
							end if;
						end if;
					end if;
					
				elsif(stato = SCOMMESSA) then
					if(iteratore_scommesse = 0 and iteratore_ricorrenze = 0) then
						scommesse_possibili := dammi_tutte_le_azioni_possibili(SCOMMESSA_ATTUALE, dadi_totali_in_campo);
					end if;
					if(calcola_probabilita = '0') then
						if(iteratore_scommesse < VALORE_DADO_MAX-1) then
							if(scommesse_possibili(iteratore_scommesse).ricorrenze(iteratore_ricorrenze)<=dadi_totali_in_campo-GIOCATORI(I_TURNO_GIOCATORE).numero_dadi_in_mano and scommesse_possibili(iteratore_scommesse).ricorrenze(iteratore_ricorrenze)>0)then
								if(scommesse_possibili(iteratore_scommesse).dado_scommesso = UNO) then
									prob_corrente <= PROBABILITA_DADO_UNO;
								else
									prob_corrente <= PROBABILITA_DADO_GENERICO;
								end if;
								valore_X <= scommesse_possibili(iteratore_scommesse).ricorrenze(iteratore_ricorrenze) - ricorrenza_dado(scommesse_possibili(iteratore_scommesse).dado_scommesso, GIOCATORI(I_TURNO_GIOCATORE).dadi_in_mano);
								valore_N <= dadi_totali_in_campo-GIOCATORI(I_TURNO_GIOCATORE).numero_dadi_in_mano;
						    
								calcola_probabilita <= '1';
								
							elsif(scommesse_possibili(iteratore_scommesse).ricorrenze(iteratore_ricorrenze)>dadi_totali_in_campo-GIOCATORI(I_TURNO_GIOCATORE).numero_dadi_in_mano)then
								iteratore_ricorrenze := 0;
								iteratore_scommesse	:= iteratore_scommesse + 1;
							end if;
						else
							iteratore_ricorrenze := 0;
							iteratore_scommesse	:= 0;
							calcola_probabilita <= '0';
							SCOMMESSA_OK <= '1';
							stato := DUBITO;
							dadi_totali_in_campo := 0;
							prob_tmp := 0;
						end if;
					else
						if(probabilita_calcolata = '1') then
							calcola_probabilita <= '0';
							valore_X <= 0;
							valore_N <= 0;
							if(prob_ris > prob_tmp) then
								SCOMMESSA_SCELTA.dado_scommesso <= scommesse_possibili(iteratore_scommesse).dado_scommesso;
								SCOMMESSA_SCELTA.ricorrenza <= scommesse_possibili(iteratore_scommesse).ricorrenze(iteratore_ricorrenze);
								prob_tmp := prob_ris;
							end if;
						  iteratore_ricorrenze := iteratore_ricorrenze +1;
						end if;
					end if;
				end if;
				
			end if;
		end if;
	end process;

	CalcolaFitnessProbabilita_RTL : process(CLOCK, RESET_N, calcola_probabilita) is
	variable prob_tmp                : integer;
	variable dadi_totali_in_campo	 	: integer;
	variable iteratore_ricorrenze_CB : integer;
	begin
		if(RESET_N = '0') then
			probabilita_calcolata	   <= '0';
			prob_tmp						   := 0;
			prob_ris						   <= 0;
			iteratore_ricorrenze_CB		:= 0;
		elsif(rising_edge(CLOCK)) then
			probabilita_calcolata	<= '0';
			if(calcola_probabilita = '1') then
			  if(iteratore_ricorrenze_CB = 0) then
			   iteratore_ricorrenze_CB := valore_X;
			  end if;
				if(iteratore_ricorrenze_CB <= valore_N) then
					 prob_tmp := prob_tmp + coeffBinomiale(valore_N,iteratore_ricorrenze_CB) * (prob_corrente**iteratore_ricorrenze_CB) * ((100-prob_corrente)**(valore_N-iteratore_ricorrenze_CB));
					 iteratore_ricorrenze_CB := iteratore_ricorrenze_CB + 1;
				else
				   prob_ris <= prob_tmp;
					 probabilita_calcolata	<= '1';
				  
				end if;
			else
			  prob_ris						<= 0;
			  prob_tmp						:= 0;
			  iteratore_ricorrenze_CB		:= 0;
			end if;			
		end if;
	end process;
end architecture;