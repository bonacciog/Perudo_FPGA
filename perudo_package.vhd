library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
---use work.vga_package.all;

package perudo_package is
	constant MIN_DADI											: positive  := 1;
	constant	MAX_DADI 										: positive  := 5;
	constant MIN_GIOCATORI 									: positive	:= 1;
	constant MAX_GIOCATORI 									: positive	:= 8;
	constant MIN_NUMERO_PER_GENERAZIONE_CASUALE 		: positive	:= 1;
	constant MAX_NUMERO_PER_GENERAZIONE_CASUALE 		: positive	:= 6;
	

	type dado_type is (UNO, DUE, TRE, QUATTRO, CINQUE, SEI, NOP);
	
	type dado_array is array (natural range <>) of dado_type;
	
	type giocatore is record
		dadi_in_mano	:	dado_array(0 to MAX_DADI-1);
	end record;
	
	type giocatore_array is array (natural range <>) of giocatore;	
	
	type scommessa_type is record
		dado_scommesso : dado_type;
		ricorrenza		: integer;
	end record;
	
	function scegli_dado_casuale(numero_per_generazione_casuale_dado : integer range MIN_NUMERO_PER_GENERAZIONE_CASUALE to MAX_NUMERO_PER_GENERAZIONE_CASUALE) return dado_type;
	
end package;

package body perudo_package is
	function scegli_dado_casuale(numero_per_generazione_casuale_dado : integer range MIN_NUMERO_PER_GENERAZIONE_CASUALE to MAX_NUMERO_PER_GENERAZIONE_CASUALE)
			return dado_type is 
			variable dado : dado_type;
	begin
		case (numero_per_generazione_casuale_dado mod 7) is
			when 1		=>	dado := UNO;
			when 2		=>	dado := DUE;
			when 3		=>	dado := TRE;
			when 4		=>	dado := QUATTRO;
			when 5		=>	dado := CINQUE;
			when 6		=>	dado := SEI;
			when others => dado := NOP;
		end case;
		return dado;
	end function;
end package body;