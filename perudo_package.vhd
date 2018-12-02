library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.vga_package.all;

package perudo_package is
	constant MIN_DADI				: positive  := 1;
	constant	MAX_DADI 			: positive  := 5;
	constant MIN_GIOCATORI 		: positive	:= 2;
	constant MAX_GIOCATORI 		: positive	:= 8;

	type dado is (UNO, DUE, TRE, QUATTRO, CINQUE, SEI);
	
	type dado_array is array (natural range <>) of dado;
	
	type giocatore is record
		dadi_in_mano	:	dado_array(MIN_DADI to MAX_DADI);
	
	type giocatore_array is array (natural range <>) of giocatore;	
	

end package;