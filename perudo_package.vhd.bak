library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
---use work.vga_package.all;

package perudo_package is
	constant MIN_DADI											         : positive  := 1;
	constant	MAX_DADI 										         : positive  := 5;
	constant	MAX_DADI_TOTALI				         : positive  := 40;
	constant MIN_GIOCATORI 									     : positive	 := 1;
	constant MAX_GIOCATORI 									     : positive	 := 8;
	constant VALORE_DADO_MIN		           : positive	 := 1;
	constant VALORE_DADO_MAX 		          : positive	 := 6;
	constant MIN_ATTESA_CASUALE 							  : integer	  := 0;
	constant MAX_ATTESA_CASUALE 							  : integer	  := 9;
	constant PROBABILITA_DADO_GENERICO			: real		    := 0.33333333;
	constant PROBABILITA_DADO_UNO			     : real		    := 0.16666667;
	constant SOGLIA_DUBITO               : real      := 0.1;

	
		-- Tipi utili al Datapath	
	type dado_type is (UNO, DUE, TRE, QUATTRO, CINQUE, SEI, NONE);
	
	type dado_array is array (natural range <>) of dado_type;
	
	type giocatore is record
		dadi_in_mano				                   :	dado_array(0 to MAX_DADI-1);
		numero_dadi_in_mano		              : integer range 0 to MAX_DADI;
	end record;
	
	type giocatore_array is array (natural range <>) of giocatore;	
	
	type scommessa_type is record
		dado_scommesso                     : dado_type;
		ricorrenza		                       : integer;
	end record;
	
	type ricorrenza_array is array (natural range <>) of integer;
	
	type scommessa_giocata_type is record
		dado_scommesso                     : dado_type;
		ricorrenze		                       : ricorrenza_array(MIN_DADI-1 to MAX_DADI_TOTALI-1);
	end record;
	
	type scommessa_array is array (natural range <>) of scommessa_giocata_type;	
	
		-- Funzione generatrice dado casuale
	function converti_da_intero_a_dado(valore_intero : integer range VALORE_DADO_MIN to VALORE_DADO_MAX) return dado_type;
	
	function converti_da_dado_a_intero(dado : dado_type) return integer;
			
		-- Funzioni utili alla logica d'esecuzione scomessa COM
  function dammi_tutte_le_azioni_possibili(scommessa_corrente : scommessa_type; dadi_totali_in_campo : integer) return  scommessa_array;
	function dadi_in_campo(giocatori_in_campo : giocatore_array(0 to MAX_GIOCATORI-1)) return integer;
	function scegli_scommessa(scommessa_corrente : scommessa_type; giocatori_in_campo : giocatore_array(0 to MAX_GIOCATORI-1); indice_giocatore : integer range 0 to MAX_GIOCATORI-1) return scommessa_type;
  function ricorrenza_dado(dado : dado_type; dadi_in_mano : dado_array(0 to MAX_DADI-1)) return integer;

	-- Utili al calcolo della probabilita
	function binomialCoefficient(N : integer; K : integer) return real;
	function funzione_di_massa_binomiale(p : real; n: integer; i: integer) return real;
	function probabilita(prob_X : real; dadi_totali: integer; ricorrenza: integer) return real;
	


end package;

package body perudo_package is

	function converti_da_intero_a_dado(valore_intero : integer range VALORE_DADO_MIN to VALORE_DADO_MAX)
			return dado_type is 
			variable dado : dado_type;
	begin
		case (valore_intero) is
			when 1		     =>	dado := UNO;
			when 2		     =>	dado := DUE;
			when 3		     =>	dado := TRE;
			when 4		     =>	dado := QUATTRO;
			when 5		     =>	dado := CINQUE;
			when 6		     =>	dado := SEI;
			when others  => dado := NONE;
		end case;
		return dado;
	end function;
	
	
	function converti_da_dado_a_intero(dado : dado_type) 
		return integer is
		variable result : integer range -1 to VALORE_DADO_MAX;
	begin
		case (dado) is
			when UNO				 =>	result := 1;
			when DUE				 =>	result := 2;
			when TRE				 =>	result := 3;
			when QUATTRO	=>	result := 4;
			when CINQUE		=>	result := 5;
			when SEI				 =>	result := 6;
			when others 	=> result := -1;
		end case;
		return result;
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
	
	function scegli_scommessa(scommessa_corrente : scommessa_type; giocatori_in_campo : giocatore_array(0 to MAX_GIOCATORI-1); indice_giocatore : integer) 
	         return scommessa_type is
	variable prob_tmp              : real := 0.0;
	variable prob_attuale          : real := 0.0;
	variable prob_dubito           : real := 0.0;
  variable numero_altri_dadi     : integer := 0;
	variable mia_ricorrenza        : integer := 0;
	variable scommesse_possibili   : scommessa_array(VALORE_DADO_MIN-1 to VALORE_DADO_MAX-1);
	variable scommessa_result      : scommessa_type;
	variable dadi_totali_in_campo  : integer;
	begin
	  -- verifico prima se la scommessa � probabila, se non lo � dubito
	  dadi_totali_in_campo := dadi_in_campo(giocatori_in_campo);
	  
	  if(scommessa_corrente.dado_scommesso = UNO) then
	     prob_dubito := probabilita(PROBABILITA_DADO_UNO, (dadi_totali_in_campo-giocatori_in_campo(indice_giocatore).numero_dadi_in_mano), (scommessa_corrente.ricorrenza-ricorrenza_dado(scommessa_corrente.dado_scommesso, giocatori_in_campo(indice_giocatore).dadi_in_mano)));
	  else
	     prob_dubito := probabilita(PROBABILITA_DADO_GENERICO, (dadi_totali_in_campo-giocatori_in_campo(indice_giocatore).numero_dadi_in_mano), (scommessa_corrente.ricorrenza-ricorrenza_dado(scommessa_corrente.dado_scommesso, giocatori_in_campo(indice_giocatore).dadi_in_mano)));
	  end if;
	  
	  if(prob_dubito <= SOGLIA_DUBITO) then
	     scommessa_result.dado_scommesso := NONE;
	     scommessa_result.ricorrenza := -1;
	     return scommessa_result;
	  end if;
	  
	  -- scommessa precedente probabile, perci� ora scommetto
	  scommesse_possibili := dammi_tutte_le_azioni_possibili(scommessa_corrente, dadi_totali_in_campo);
	  for i in VALORE_DADO_MIN-1 to VALORE_DADO_MAX-1 loop
	    if(scommesse_possibili(i).dado_scommesso /= NONE) then
	       mia_ricorrenza := ricorrenza_dado(scommesse_possibili(i).dado_scommesso, giocatori_in_campo(indice_giocatore).dadi_in_mano);
	       for j in MIN_DADI-1 to MAX_DADI_TOTALI-1 loop
	         if(j<dadi_totali_in_campo) then
	           if(scommesse_possibili(i).dado_scommesso = UNO) then
	             prob_tmp := probabilita(PROBABILITA_DADO_UNO, (dadi_totali_in_campo-giocatori_in_campo(indice_giocatore).numero_dadi_in_mano), (scommesse_possibili(i).ricorrenze(j)-mia_ricorrenza));
	           else
	             prob_tmp := probabilita(PROBABILITA_DADO_GENERICO, (dadi_totali_in_campo-giocatori_in_campo(indice_giocatore).numero_dadi_in_mano), (scommesse_possibili(i).ricorrenze(j)-mia_ricorrenza));
	           end if;
	           if(prob_tmp > prob_attuale) then
	               prob_attuale := prob_tmp;
	             	 scommessa_result.dado_scommesso := scommesse_possibili(i).dado_scommesso;
	               scommessa_result.ricorrenza := scommesse_possibili(i).ricorrenze(j);
	           end if;
	         end if;
	       end loop;
	    end if;
	  end loop;
	  return scommessa_result;
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
	
	function binomialCoefficient(N : integer; K : integer) return real is
		variable Result		: real;
	begin
		Result		:= 1.0;
		for i in 1 to K loop
			Result := Result * real((((N + 1) - i) / i));
		end loop;
		return Result;
	end function;
	
	
	
	function funzione_di_massa_binomiale(p : real; n: integer; i: integer)
			return real is
	begin
		return binomialCoefficient(n,i) * real((p**i) * ((1.0-p)**(n-i)));
	end function;
	
	function probabilita(prob_X : real; dadi_totali: integer; ricorrenza: integer) 
			return real is
			variable risultato : real:=0.0;
	begin
		for j in ricorrenza to dadi_totali loop
			risultato := risultato + funzione_di_massa_binomiale(prob_X, dadi_totali, j);
		end loop;
		return risultato;
	end function;
	
end package body;