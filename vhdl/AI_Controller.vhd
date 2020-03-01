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
		CLOCK								      : in std_logic;
		RESET_N							      : in std_logic;
		
		-- Connection with Datapath
		SCEGLI_SCOMMESSA						: in std_logic;
		SCOMMESSA_ATTUALE 	    	      : in scommessa_type;
		GIOCATORI 	 		   		      : in giocatore_array(0 to MAX_GIOCATORI-1);
		I_TURNO_GIOCATORE		   	      : in integer;
		
		SCOMMESSA_OK					      : out std_logic;
		SCOMMESSA_SCELTA				      : out scommessa_type
		
 
	
	);
End Entity;

architecture RTL of AI_Controller is
   
	function dammi_tutte_le_azioni_possibili(SCOMMESSA_ATTUALE : scommessa_type; dadi_totali_in_campo : integer) 
	return  scommessa_array is
	variable dado_scommesso					: integer ;
	variable totali_scommesse				: scommessa_array(VALORE_DADO_MIN to VALORE_DADO_MAX);
	variable totali_scommesse_dim			: integer := 1;
	begin
		for i in VALORE_DADO_MIN to VALORE_DADO_MAX loop
			totali_scommesse(i).ricorrenza := 0;
			totali_scommesse(i).dado_scommesso := NONE;
		end loop;
		dado_scommesso := converti_da_dado_a_intero(SCOMMESSA_ATTUALE.dado_scommesso);
		if(dado_scommesso /= 1) then
			for i in VALORE_DADO_MIN+1 to VALORE_DADO_MAX loop
				if(i >= dado_scommesso) then
					totali_scommesse(totali_scommesse_dim).dado_scommesso := converti_da_intero_a_dado(i);
					if(i = dado_scommesso) then
						if((SCOMMESSA_ATTUALE.ricorrenza)/=dadi_totali_in_campo) then
							totali_scommesse(totali_scommesse_dim).ricorrenza := SCOMMESSA_ATTUALE.ricorrenza + 1;
						else
							totali_scommesse(totali_scommesse_dim).dado_scommesso := NONE;
						end if;
					elsif(i /= VALORE_DADO_MAX ) then
						totali_scommesse(totali_scommesse_dim).ricorrenza := SCOMMESSA_ATTUALE.ricorrenza;
					else
						totali_scommesse(totali_scommesse_dim).dado_scommesso := NONE;
					end if;
				end if;
			totali_scommesse_dim := totali_scommesse_dim + 1;				
			end loop;
			-- scommessa lama
			totali_scommesse(totali_scommesse_dim).dado_scommesso := UNO;
			if(isOddNumber(SCOMMESSA_ATTUALE.ricorrenza)) then
			   totali_scommesse(totali_scommesse_dim).ricorrenza := (SCOMMESSA_ATTUALE.ricorrenza/2)+1;
			else
			   totali_scommesse(totali_scommesse_dim).ricorrenza := (SCOMMESSA_ATTUALE.ricorrenza/2);
			end if;
			totali_scommesse_dim := totali_scommesse_dim + 1;
		else
			for i in VALORE_DADO_MIN+1 to VALORE_DADO_MAX loop
				totali_scommesse(totali_scommesse_dim).dado_scommesso := converti_da_intero_a_dado(i);
				totali_scommesse(totali_scommesse_dim).ricorrenza := (SCOMMESSA_ATTUALE.ricorrenza * 2)+1;						
				totali_scommesse_dim := totali_scommesse_dim + 1;
			end loop;
				-- scommessa lama
				totali_scommesse(totali_scommesse_dim).dado_scommesso := UNO;
				totali_scommesse(totali_scommesse_dim).ricorrenza := SCOMMESSA_ATTUALE.ricorrenza + 1;
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

   function calcola_fitness(giocatore : giocatore; scommessa : scommessa_type) return integer is 
	variable punteggio		: integer := 0;
	variable ricorrenza		: integer := 0;
	begin
		ricorrenza :=ricorrenza_dado(scommessa.dado_scommesso, giocatore.dadi_in_mano);
		if(ricorrenza>=scommessa.ricorrenza) then
			punteggio := punteggio + 90;
		elsif(ricorrenza<scommessa.ricorrenza 
				and ricorrenza>0) then
			punteggio := punteggio + (10*ricorrenza);
		else
			if(scommessa.dado_scommesso = UNO) then
				punteggio := punteggio + 50;
			end if;
		end if;
		return punteggio;
	end function;
	
	function calcola_fitness_dubito(giocatore : giocatore; scommessa : scommessa_type; dadi_totali_in_campo : integer) return integer is 
	variable punteggio		: integer := 0;
	variable dadi_ignoti : integer;
	variable ricorrenza_ignota : integer;
	begin
	  dadi_ignoti:= dadi_totali_in_campo - giocatore.numero_dadi_in_mano;
	  ricorrenza_ignota:=scommessa.ricorrenza - ricorrenza_dado(scommessa.dado_scommesso, giocatore.dadi_in_mano);
	  case dadi_totali_in_campo is
      when 2 to 7 =>   punteggio := (dadi_ignoti - ricorrenza_ignota)*FATTORE_DUBITO_2P;
      when 8 to 15 =>   punteggio := (dadi_ignoti - ricorrenza_ignota)*FATTORE_DUBITO_3P;
      when others => punteggio := (dadi_ignoti - ricorrenza_ignota)*FATTORE_DUBITO;
    end case;  
	  return punteggio;
	end function;
	
	
------\
begin -- Architecture
------/


	ScegliScommessa_RTL : process(CLOCK,RESET_N, SCEGLI_SCOMMESSA) is
	variable dadi_totali_in_campo  : integer;
	variable dado_tmp					 : dado_type;
	variable ricorrenza_tmp			 : integer;
	variable punteggio_tmp			 : integer;
	variable punteggio_max			 : integer;
	variable scommesse_possibili   : scommessa_array(VALORE_DADO_MIN to VALORE_DADO_MAX);
	variable  punteggio_dubito : integer;
	begin
		if(RESET_N = '0') then	
			SCOMMESSA_SCELTA.dado_scommesso		<= NONE;
			SCOMMESSA_SCELTA.ricorrenza			<= -1;
			dado_tmp										:= NONE;
			ricorrenza_tmp								:= -1;
			punteggio_tmp								:= 0;
			punteggio_max								:= -1;
			dadi_totali_in_campo				      := 0;
			SCOMMESSA_OK 						      <= '0';
			punteggio_dubito := 0;
		elsif(rising_edge(CLOCK)) then
			SCOMMESSA_OK <= '0';
		  
			if(SCEGLI_SCOMMESSA = '1') then
				if(dadi_totali_in_campo = 0) then
					dadi_totali_in_campo := dadi_in_campo(GIOCATORI);
				end if;
				punteggio_dubito := calcola_fitness_dubito(GIOCATORI(I_TURNO_GIOCATORE), SCOMMESSA_ATTUALE, dadi_totali_in_campo);
				if(punteggio_dubito >SOGLIA_DUBITO or SCOMMESSA_ATTUALE.ricorrenza = 0) then
				  scommesse_possibili := dammi_tutte_le_azioni_possibili(SCOMMESSA_ATTUALE, dadi_totali_in_campo);
				  for i in VALORE_DADO_MIN to VALORE_DADO_MAX loop
					 if(scommesse_possibili(i).dado_scommesso /= NONE) then
						  punteggio_tmp := calcola_fitness(GIOCATORI(I_TURNO_GIOCATORE), scommesse_possibili(i));
						  if(punteggio_tmp>punteggio_max) then
							 punteggio_max := punteggio_tmp;
							 dado_tmp := scommesse_possibili(i).dado_scommesso;
							 ricorrenza_tmp := scommesse_possibili(i).ricorrenza;
						  end if;
					 end if;
				  end loop;
				  SCOMMESSA_SCELTA.dado_scommesso		<= dado_tmp;
				  SCOMMESSA_SCELTA.ricorrenza			<= ricorrenza_tmp;
				  SCOMMESSA_OK 						      <= '1';
				  dadi_totali_in_campo := 0;
				  dado_tmp										:= NONE;
			    ricorrenza_tmp								:= -1;
			    punteggio_tmp								:= 0;
			    punteggio_max								:= -1;
			    punteggio_dubito     :=0; 
			  else
			    SCOMMESSA_SCELTA.dado_scommesso		<= NONE;
				  SCOMMESSA_SCELTA.ricorrenza			<= -1;
				  SCOMMESSA_OK 						      <= '1';
				  dadi_totali_in_campo := 0;
				  dado_tmp										:= NONE;
			    ricorrenza_tmp								:= -1;
			    punteggio_tmp								:= 0;
			    punteggio_max								:= -1;
			    punteggio_dubito     :=0; 
			  end if;
			end if;
		end if;
	end process;
end architecture;