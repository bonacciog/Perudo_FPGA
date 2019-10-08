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
		INDICE_GIOCATORE 		: in integer
		
		SCOMMESSA_SCELTA 		: out scommessa_type;
	);
End Entity;

architecture RTL of AI_Controller is

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

	signal Dinr_fatt 				: std_logic_vector (Din'range);
	signal Din_fatt 					: in std_logic_vector; -- Yep, unconstrained !
	signal Result_fatt 				: out std_logic_vector 
------\
begin -- Architecture
------/
	Dinr_fatt <= Din_fatt when rising_edge(Clk); -- input FFs
	Result_fatt <= std_logic_vector(Table(to_integer(unsigned(Dinr_fatt)))) when rising_edge(Clk);

	ScegliScommessa_RTL : process(CLOCK,RESET_N, SCEGLI_SCOMMESSA) is
	begin
		if(RESET_N = '0') then
			SCOMMESSA_SCELTA.dado_scommesso <= NONE;
			SCOMMESSA_SCELTA.ricorrenza 	  <= -1;
		elsif(rising_edge(CLOCK)) then
			
		end if;
	end process;

--	
--	function scegli_scommessa(scommessa_corrente : scommessa_type; giocatori_in_campo : giocatore_array(0 to MAX_GIOCATORI-1); indice_giocatore : integer) 
--	         return scommessa_type is
--	variable prob_tmp              : real := 0.0;
--	variable prob_attuale          : real := 0.0;
--	variable prob_dubito           : real := 0.0;
--	variable numero_altri_dadi     : integer := 0;
--	variable mia_ricorrenza        : integer := 0;
--	variable scommesse_possibili   : scommessa_array(VALORE_DADO_MIN-1 to VALORE_DADO_MAX-1);
--	variable scommessa_result      : scommessa_type;
--	variable dadi_totali_in_campo  : integer;
--	begin
--	  -- verifico prima se la scommessa � probabila, se non lo � dubito
--	  dadi_totali_in_campo := dadi_in_campo(giocatori_in_campo);
--	  
--	  if(scommessa_corrente.dado_scommesso = UNO) then
--	     prob_dubito := probabilita(PROBABILITA_DADO_UNO, (dadi_totali_in_campo-giocatori_in_campo(indice_giocatore).numero_dadi_in_mano), (scommessa_corrente.ricorrenza-ricorrenza_dado(scommessa_corrente.dado_scommesso, giocatori_in_campo(indice_giocatore).dadi_in_mano)));
--	  else
--	     prob_dubito := probabilita(PROBABILITA_DADO_GENERICO, (dadi_totali_in_campo-giocatori_in_campo(indice_giocatore).numero_dadi_in_mano), (scommessa_corrente.ricorrenza-ricorrenza_dado(scommessa_corrente.dado_scommesso, giocatori_in_campo(indice_giocatore).dadi_in_mano)));
--	  end if;
--	  
--	  if(prob_dubito <= SOGLIA_DUBITO) then
--	     scommessa_result.dado_scommesso := NONE;
--	     scommessa_result.ricorrenza := -1;
--	     return scommessa_result;
--	  end if;
--	  
--	  -- scommessa precedente probabile, perci� ora scommetto
--	  scommesse_possibili := dammi_tutte_le_azioni_possibili(scommessa_corrente, dadi_totali_in_campo);
--	  for i in VALORE_DADO_MIN-1 to VALORE_DADO_MAX-1 loop
--	    if(scommesse_possibili(i).dado_scommesso /= NONE) then
--	       mia_ricorrenza := ricorrenza_dado(scommesse_possibili(i).dado_scommesso, giocatori_in_campo(indice_giocatore).dadi_in_mano);
--	       for j in MIN_DADI-1 to MAX_DADI_TOTALI-1 loop
--	         if(j<dadi_totali_in_campo) then
--	           if(scommesse_possibili(i).dado_scommesso = UNO) then
--	             prob_tmp := probabilita(PROBABILITA_DADO_UNO, (dadi_totali_in_campo-giocatori_in_campo(indice_giocatore).numero_dadi_in_mano), (scommesse_possibili(i).ricorrenze(j)-mia_ricorrenza));
--	           else
--	             prob_tmp := probabilita(PROBABILITA_DADO_GENERICO, (dadi_totali_in_campo-giocatori_in_campo(indice_giocatore).numero_dadi_in_mano), (scommesse_possibili(i).ricorrenze(j)-mia_ricorrenza));
--	           end if;
--	           if(prob_tmp > prob_attuale) then
--	               prob_attuale := prob_tmp;
--	             	 scommessa_result.dado_scommesso := scommesse_possibili(i).dado_scommesso;
--	               scommessa_result.ricorrenza := scommesse_possibili(i).ricorrenze(j);
--	           end if;
--	         end if;
--	       end loop;
--	    end if;
--	  end loop;
--	  return scommessa_result;
--	end function;
--	

--	
--	function dammi_tutte_le_azioni_possibili(scommessa_corrente : scommessa_type; dadi_totali_in_campo : integer) 
--	return  scommessa_array is
--	variable dado_scommesso 		       : integer range VALORE_DADO_MIN to VALORE_DADO_MAX;
--	variable totali_scommesse 		     : scommessa_array(VALORE_DADO_MIN-1 to VALORE_DADO_MAX-1);
--	variable totali_scommesse_dim  	 : integer := 0;
--	variable ricorrenze_dim  			     : integer := 0;
--	begin
--		dado_scommesso := converti_da_dado_a_intero(scommessa_corrente.dado_scommesso);
--		if(dado_scommesso /= 1) then
--			for i in VALORE_DADO_MIN+1 to VALORE_DADO_MAX loop
--				if(i >= dado_scommesso) then
--					totali_scommesse(totali_scommesse_dim).dado_scommesso := converti_da_intero_a_dado(i);
--					 -- 40 perch� sono il valore massimo di dadi in campo (previsti massimo 8 giocatori)
--					for j in MIN_DADI to MAX_DADI_TOTALI loop
--					  if(j<=dadi_totali_in_campo) then
--					    -- questo if � dovuto al fatto che � possibile avere stessa ricorrenza con dado per� maggiore
--					    if(i = dado_scommesso) then
--							   if(j>scommessa_corrente.ricorrenza) then
--								  totali_scommesse(totali_scommesse_dim).ricorrenze(ricorrenze_dim) := j;
--								  ricorrenze_dim := ricorrenze_dim +1;
--							   end if;
--							else
--							   if(j>=scommessa_corrente.ricorrenza) then
--								  totali_scommesse(totali_scommesse_dim).ricorrenze(ricorrenze_dim) := j;
--								  ricorrenze_dim := ricorrenze_dim +1;
--							   end if;
--							 end if;
--						end if;
--					end loop;
--					ricorrenze_dim:=0;
--					totali_scommesse_dim := totali_scommesse_dim + 1;
--				end if;
--			end loop;
--			-- scommessa lama
--			totali_scommesse(totali_scommesse_dim).dado_scommesso := UNO;
--			for j in MIN_DADI to MAX_DADI_TOTALI loop
--			  if(j>=integer(real(scommessa_corrente.ricorrenza)/real(2))) then
--					 totali_scommesse(totali_scommesse_dim).ricorrenze(ricorrenze_dim) := j;
--					 ricorrenze_dim := ricorrenze_dim +1;
--			  end if;
--			end loop;
--			ricorrenze_dim:=0;
--			totali_scommesse_dim := totali_scommesse_dim + 1;
--		else
--			for i in VALORE_DADO_MIN+1 to VALORE_DADO_MAX loop
--				totali_scommesse(totali_scommesse_dim).dado_scommesso := converti_da_intero_a_dado(i);
--				for j in MIN_DADI to MAX_DADI_TOTALI loop
--					if(j<=dadi_totali_in_campo) then
--						if(j>(scommessa_corrente.ricorrenza * 2)) then
--							totali_scommesse(totali_scommesse_dim).ricorrenze(ricorrenze_dim) := j;
--							ricorrenze_dim := ricorrenze_dim +1;							
--						end if;
--					end if;
--					
--				end loop;
--				ricorrenze_dim:=0;
--				totali_scommesse_dim := totali_scommesse_dim + 1;
--			end loop;
--				-- scommessa lama
--				totali_scommesse(totali_scommesse_dim).dado_scommesso := UNO;
--			  for j in MIN_DADI to MAX_DADI_TOTALI loop
--			    if(j>scommessa_corrente.ricorrenza) then
--					   totali_scommesse(totali_scommesse_dim).ricorrenze(ricorrenze_dim) := j;
--					   ricorrenze_dim := ricorrenze_dim +1;
--			    end if;
--			 end loop;
--			 ricorrenze_dim:=0;
--			 totali_scommesse_dim := totali_scommesse_dim + 1;
--		end if;
--		return totali_scommesse;
--	end function;
--	

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
--
--	function potenza(base : real; esponente: integer) 
--			return real is
--	begin
--		if(esponente = 0) then
--			return 1.0;
--		elsif(esponente = 1) then
--			return base;
--		elsif((esponente mod 2) = 0) then
--			return potenza(base*base, esponente/2);
--		else
--			return base*potenza(base*base, esponente/2);
--		end if;
--	end function;
--	
--	function funzione_di_massa_binomiale(p : real; n: integer; i: integer)
--			return real is
--	begin
--		return coefficiente_binomiale(n,i) * potenza(p,i) * potenza((1.0-p),(n-i));
--	end function;
--	
--	function probabilita(prob_X : real; dadi_totali: integer; ricorrenza: integer) 
--			return real is
--			variable risultato : real:=0.0;
--	begin
--		for j in ricorrenza to dadi_totali loop
--			risultato := risultato + funzione_di_massa_binomiale(prob_X, dadi_totali, j);
--		end loop;
--		return risultato;
--	end function;

end architecture;