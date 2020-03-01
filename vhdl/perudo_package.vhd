library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

package perudo_package is

	constant MIN_DADI											         : positive  := 1;
	constant	MAX_DADI 										         : positive  := 5;
	constant	MAX_DADI_TOTALI				         				: positive  := 40;
	constant MIN_GIOCATORI 									     		: positive	:= 1;
	constant MAX_GIOCATORI 									     		: positive	:= 8;
	constant VALORE_DADO_MIN		           						: positive	:= 1;
	constant VALORE_DADO_MAX 		          						: positive	:= 6;
	constant MIN_ATTESA_CASUALE 							 			: integer	:= 1;
	constant MAX_ATTESA_CASUALE 							  			: integer	:= 9;
	constant MIN_ATTESA_CASUALE_2 							 			: integer	:= 1;
	constant MAX_ATTESA_CASUALE_2 							  			: integer	:= 5;
	constant FATTORE_DUBITO								        : integer	:= 2;
	constant FATTORE_DUBITO_2P								        : integer	:= 5;
	constant FATTORE_DUBITO_3P								        : integer	:= 3;
	constant SOGLIA_DUBITO               							: integer   := 15;

		-- Tipi utili al Datapath	
	type dado_type is (UNO, DUE, TRE, QUATTRO, CINQUE, SEI, NONE);
	
	type dado_array is array (natural range <>) of dado_type;
	
	type giocatore is record
		dadi_in_mano				              : dado_array(0 to MAX_DADI-1);
		numero_dadi_in_mano		              : integer range 0 to MAX_DADI;
	end record;
	
	type giocatore_array is array (natural range <>) of giocatore;	
	
	type scommessa_type is record
		dado_scommesso                     	  : dado_type;
		ricorrenza		                       : integer;
	end record;
	
	type ricorrenza_array is array (natural range <>) of integer;

	type scommessa_array is array (natural range <>) of scommessa_type;	
	
		-- Funzione generatrice dado casuale
	function converti_da_intero_a_dado(valore_intero : integer range VALORE_DADO_MIN to VALORE_DADO_MAX) return dado_type;
	
	function converti_da_dado_a_intero(dado : dado_type) return integer;
	
  function verifica_puntata(puntata : scommessa_type; scommessa_attuale : scommessa_type) return std_logic; --; dadi_totali_in_campo :integer
  function isOddNumber(number : integer) return boolean;
end package;

package body perudo_package is

  function isOddNumber(number : integer) return boolean is
  variable risultato : boolean := true;
  variable tmp : integer;
  begin
    for i in 1 to 40 loop
      tmp:= i * 2;
      if(tmp > number) then
        return risultato;
      else
        if(tmp = number) then
          risultato := false;
          return risultato;
      end if;
    end if;
    end loop;
	 return risultato;
  end function;
  
  function verifica_puntata(puntata : scommessa_type; scommessa_attuale : scommessa_type ) return std_logic is --dadi_totali_in_campo :integer
  variable result        : std_logic;
  variable isOddNumber_tmp : boolean;
  begin
	 result			:= '1';
	 isOddNumber_tmp:= isOddNumber(scommessa_attuale.ricorrenza);

--    if(puntata.ricorrenza > dadi_totali_in_campo) then
--      result := false;
--    end if;
    if(puntata.dado_scommesso /= UNO) then
      if(scommessa_attuale.dado_scommesso = UNO) then
        if(puntata.ricorrenza < ((scommessa_attuale.ricorrenza*2)+1)) then
          result := '0';
        end if;
      else
        if(puntata.ricorrenza < scommessa_attuale.ricorrenza) then 
          result := '0';
        end if;
        if(puntata.ricorrenza = scommessa_attuale.ricorrenza) then 
          if(converti_da_dado_a_intero(puntata.dado_scommesso) <= converti_da_dado_a_intero(scommessa_attuale.dado_scommesso)) then
            result := '0';
          end if;
        end if;
      end if;
    else
      if(scommessa_attuale.dado_scommesso = UNO) then
        if(puntata.ricorrenza <= scommessa_attuale.ricorrenza) then 
          result := '0';
        end if;
      else
		  if(isOddNumber_tmp)then
			  if(puntata.ricorrenza < ((scommessa_attuale.ricorrenza/2)+1)) then 
				 result := '0';
			  end if;
		  else 
			  if(puntata.ricorrenza < ((scommessa_attuale.ricorrenza/2))) then 
				 result := '0';
			  end if;	
		  end if;
      end if;
    end if;
    return result;
  end function;

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
			when others  	  => dado  := NONE;
		end case;
		return dado;
	end function;
	
	
	function converti_da_dado_a_intero(dado : dado_type) 
		return integer is
		variable result : integer range -1 to VALORE_DADO_MAX;
	begin
		case (dado) is
			when UNO				   =>	result := 1;
			when DUE				   =>	result := 2;
			when TRE				   =>	result := 3;
			when QUATTRO			=>	result := 4;
			when CINQUE				=>	result := 5;
			when SEI				   =>	result := 6;
			when others 			=> result := -1;
		end case;
		return result;
	end function;

end package body;