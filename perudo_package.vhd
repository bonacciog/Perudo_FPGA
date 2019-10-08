library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
---use work.vga_package.all;

package perudo_package is
	constant MIN_DADI										: positive  := 1;
	constant	MAX_DADI 									: positive  := 5;
	constant	MAX_DADI_TOTALI				         : positive  := 10;
	constant MIN_GIOCATORI 								: positive	:= 1;
	constant MAX_GIOCATORI 								: positive	:= 2;
	constant VALORE_DADO_MIN		           		: positive	:= 1;
	constant VALORE_DADO_MAX 		          		: positive	:= 6;
	constant MIN_ATTESA_CASUALE 						: integer	:= 0;
	constant MAX_ATTESA_CASUALE 						: integer	:= 9;
	constant PROBABILITA_DADO_GENERICO				: real		:= 0.33333333;
	constant PROBABILITA_DADO_UNO			     		: real		:= 0.16666667;
	constant SOGLIA_DUBITO               			: real      := 0.1;

	
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
	
end package body;