Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- ---------------------------------------
Entity AI_Controller is
-- ---------------------------------------
	port 
	( 
		CLOCK 					: in std_logic;
		RESET_N					: in std_logic;
		
		-- Connection with Datapath
		SCEGLI_SCOMMESSA   	: in std_logic;
		SCOMMESSA_CORRENTE 	: in scommessa_type;
		GIOCATORI_IN_CAMPO 	: in giocatore_array(0 to MAX_GIOCATORI-1);
		INDICE_GIOCATORE 		: in integer;
		
		SCOMMESSA_OK			: out std_logic;
		SCOMMESSA_SCELTA 		: out scommessa_type
	);
End Entity;

architecture RTL of AI_Controller is

	function dammi_tutte_le_azioni_possibili(scommessa_corrente : scommessa_type; dadi_totali_in_campo : integer) 
	return  scommessa_array is
	variable dado_scommesso 		       : integer range VALORE_DADO_MIN to VALORE_DADO_MAX;
	variable totali_scommesse 		     : scommessa_array(VALORE_DADO_MIN-1 to VALORE_DADO_MAX-1);
	variable totali_scommesse_dim  	 : integer := 0;
	variable ricorrenze_dim  			     : integer := 0;
	begin
		dado_scommesso := converti_da_dado_a_intero(scommessa_corrente.dado_scommesso);
		if(dado_scommesso /= 1) then
			for i in VALORE_DADO_MIN+1 to VALORE_DADO_MAX loop
				if(i >= dado_scommesso) then
					totali_scommesse(totali_scommesse_dim).dado_scommesso := converti_da_intero_a_dado(i);
					 -- 40 perch� sono il valore massimo di dadi in campo (previsti massimo 8 giocatori)
					for j in MIN_DADI to MAX_DADI_TOTALI loop
					  if(j<=dadi_totali_in_campo) then
					    -- questo if � dovuto al fatto che � possibile avere stessa ricorrenza con dado per� maggiore
					    if(i = dado_scommesso) then
							   if(j>scommessa_corrente.ricorrenza) then
								  totali_scommesse(totali_scommesse_dim).ricorrenze(ricorrenze_dim) := j;
								  ricorrenze_dim := ricorrenze_dim +1;
							   end if;
							else
							   if(j>=scommessa_corrente.ricorrenza) then
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
			  if(j>=integer(real(scommessa_corrente.ricorrenza)/real(2))) then
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
						if(j>(scommessa_corrente.ricorrenza * 2)) then
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
			    if(j>scommessa_corrente.ricorrenza) then
					   totali_scommesse(totali_scommesse_dim).ricorrenze(ricorrenze_dim) := j;
					   ricorrenze_dim := ricorrenze_dim +1;
			    end if;
			 end loop;
			 ricorrenze_dim:=0;
			 totali_scommesse_dim := totali_scommesse_dim + 1;
		end if;
		return totali_scommesse;
	end function;

	function dadi_in_campo(giocatori_in_campo : giocatore_array(0 to MAX_GIOCATORI-1)) 
			return integer is
			variable risultato : integer:=0;
	begin
		for j in 0 to MAX_GIOCATORI-1 loop
		  if(giocatori_in_campo(j).dadi_in_mano(0) /= NONE) then
			 risultato := risultato + giocatori_in_campo(j).numero_dadi_in_mano;
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

	-- The usual recursive function
	function fact (d : natural) return natural is
	variable res : natural;
	begin
		if d<2 then
			res := 1;
		else
			res := d * fact (d-1);
		end if;
		return res;
	end function fact;
	
	-- Constant table type
	type Table_t is array (0 to 2**Din'length - 1) of unsigned(Result'range);

	-- Function to initialize a table with the factorial
	impure function Init_Table return Table_t is
	variable T : Table_t;
	begin
		for I in T'range loop
			T(I) := to_unsigned(fact(I),Result'length);
		end loop;
		return T;
	end function Init_Table;

	-- The Table itself, initialized by calling Init-Table:
	constant Table : Table_t := Init_Table;
	-- note : this table will be simplified into a few LUTs

	-- segnali per calcolo fattoriale	
	signal Dinr_fatt 						: std_logic_vector (Din'range);
	signal Din_fatt 						: std_logic_vector; -- Yep, unconstrained !
	signal Result_fatt 					: std_logic_vector;

	-- segnali di comunicazione interna
	signal prob_corrente					: real;
	signal prob_ris						: real;
	signal calcola_probabilita			: std_logic;
	signal probabilita_calcolata		: std_logic;
	signal valore_X						: integer;
	signal valore_N						: integer;
	
	signal calcola_coeffbinomiale  	: std_logic;
	signal coeffbinomiale_calcolato  : std_logic;
	signal iteratore_ricorrenze_CB 	: integer;
	signal coeffbin_value	 			: real;
------\
begin -- Architecture
------/
	Dinr_fatt <= Din_fatt when rising_edge(Clk); -- input FFs
	Result_fatt <= std_logic_vector(Table(to_integer(unsigned(Dinr_fatt)))) when rising_edge(Clk);

	ScegliScommessa_RTL : process(CLOCK,RESET_N, SCEGLI_SCOMMESSA) is
	type stati_probabilita is (DUBITO, SCOMMESSA);
	variable stato						 : stati_probabilita;
	variable dadi_totali_in_campo  : integer;
	variable scommesse_possibili   : scommessa_array(VALORE_DADO_MIN-1 to VALORE_DADO_MAX-1);
	variable iteratore_scommesse	 : integer;
	variable iteratore_ricorrenze	 : integer;
	variable prob_tmp						: real;
	begin
		if(RESET_N = '0') then
			SCOMMESSA_SCELTA.dado_scommesso <= NONE;
			SCOMMESSA_SCELTA.ricorrenza 	  <= -1;
			stato 								  := DUBITO;
			dadi_totali_in_campo				  := 0;
			iteratore_ricorrenze				  := 0;
			iteratore_scommesse 				  := 0;
			prob_tmp								  := 0.0;
			calcola_probabilita		   	  <= 0;
			valore_X 							  <= 0;
			valore_N 							  <= 0;
			SCOMMESSA_OK 						  <= '0';
		elsif(rising_edge(CLOCK)) then
			SCOMMESSA_OK <= '0';
		
			if(SCEGLI_SCOMMESSA = '1') then
				if(dadi_totali_in_campo = 0) then
					dadi_totali_in_campo := dadi_in_campo(giocatori_in_campo);
				end if;
				
				if(stato = DUBITO) then
					if(calcola_probabilita = '0') then
						if(scommessa_corrente.dado_scommesso = UNO) then
							prob_corrente <= PROBABILITA_DADO_UNO;
						else
							prob_corrente <= PROBABILITA_DADO_GENERICO;
						end if;
						
						valore_X <= scommessa_corrente.ricorrenza-ricorrenza_dado(scommessa_corrente.dado_scommesso, giocatori_in_campo(indice_giocatore).dadi_in_mano);
						valore_N <= dadi_totali_in_campo-giocatori_in_campo(indice_giocatore).numero_dadi_in_mano;
						
						calcola_probabilita <= '1';
					else
						if(probabilita_calcolata = '1') then
							calcola_probabilita <= '0';
							valore_X <= 0;
							valore_N <= 0;
							if(prob_ris <= SOGLIA_DUBITO) then
								dadi_totali_in_campo := 0;
								SCOMMESSA_SCELTA.dado_scommesso := NONE;
								SCOMMESSA_SCELTA.ricorrenza := -1;
								SCOMMESSA_OK <= '1';
							else
								stato := SCOMMESSA;
							end if;
						end if;
					end if;
					
				elsif(stato = SCOMMESSA) then
					if(iteratore_scommesse = 0 and iteratore_ricorrenze = 0) then
						scommesse_possibili := dammi_tutte_le_azioni_possibili(scommessa_corrente, dadi_totali_in_campo);
					end if;
					if(calcola_probabilita = '0') the
						if(iteratore_scommesse < VALORE_DADO_MAX-1) then
							if(iteratore_ricorrenze<=dadi_totali_in_campo)then
								if(scommesse_possibili(iteratore_scommesse).dado_scommesso = UNO) then
									prob_corrente <= PROBABILITA_DADO_UNO;
								else
									prob_corrente <= PROBABILITA_DADO_GENERICO;
								end if;
								valore_X <= scommesse_possibili(iteratore_scommesse).ricorrenza(iteratore_ricorrenze)-ricorrenza_dado(scommesse_possibili(iteratore_scommesse).dado_scommesso, giocatori_in_campo(indice_giocatore).dadi_in_mano);
								valore_N <= dadi_totali_in_campo-giocatori_in_campo(indice_giocatore).numero_dadi_in_mano;
						
								calcola_probabilita <= '1';
								
							else
								iteratore_ricorrenze := 0;
								iteratore_scommesse	:= + 1;
							end if;
						else
							iteratore_ricorrenze := 0;
							iteratore_scommesse	:= 0;
							
							SCOMMESSA_OK <= '1';
							stato := DUBITO;
							prob_tmp := 0;
						end if;
					else
						if(probabilita_calcolata = '1') then
							calcola_probabilita <= '0';
							valore_X <= 0;
							valore_N <= 0;
							iteratore_ricorrenze := iteratore_ricorrenze +1;
							if(prob_ris > prob_tmp) then
								SCOMMESSA_SCELTA.dado_scommesso := scommesse_possibili(iteratore_scommesse).dado_scommesso;
								SCOMMESSA_SCELTA.ricorrenza := scommesse_possibili(iteratore_scommesse).ricorrenza(iteratore_ricorrenze);
								prob_tmp := prob_ris;
							end if;
						end if;
					end if;
				end if;
				
			end if;
		end if;
	end process;

	CalcolaProbabilita_RTL : process(CLOCK, RESET_N, calcola_probabilita) is
	
	variable dadi_totali_in_campo	 : integer;
	begin
		if(RESET_N = '0') then
			probabilita_calcolata	<= '0';
			prob_ris						<= 0.0;
			iteratore_ricorrenze_CB		<= 0;
			calcola_coeffbinomiale  <= '0';
		elsif(rising_edge(CLOCK)) then
			probabilita_calcolata	<= '0';
			if(calcola_probabilita = '1') then
				if(iteratore_ricorrenze_CB = 0) then
					prob_ris	<= 0;
					iteratore_ricorrenze_CB	<= valore_X;
				end if;
				if(iteratore_ricorrenze_CB < valore_N) then
					calcola_coeffbinomiale <= '1';
					if(coeffbinomiale_calcolato = '1') then
						prob_ris <= prob_ris + (coeffbin_value * (prob_corrente**iteratore_ricorrenze_CB) * ((1.0-prob_corrente)**(valore_N**iteratore_ricorrenze_CB)))
						iteratore_ricorrenze_CB := +1;
						calcola_coeffbinomiale <= '0';
					end if;
				else
					probabilita_calcolata	<= '1';
					iteratore_ricorrenze_CB		<= 0;
				end if;
			end if;
		end if;
	end process;

	
	
	--	
--	function coefficiente_binomiale(n : integer; i: integer) 
--			return real is
--	begin
--      if((n-i)>=0 and n /= 0 and i /= 0) then
--			return real((fattoriale(n))/(fattoriale(i)*fattoriale(n-i)));
--		else 
--			return -1.0;
--	   end if;
--	end function;



end architecture;