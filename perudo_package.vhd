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
	

	type dado_type is (UNO, DUE, TRE, QUATTRO, CINQUE, SEI, NONE);
	
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
	
		-- Funzioni utili alla logica d'esecuzione scomessa COM
			-- Utili al calcolo della probabilita
	function fattoriale(valore: integer) return integer;
	function coefficiente_binomiale(n : integer; i: integer) return real;
	function potenza(base : real; esponente: real) return real;
	function funzione_di_massa_binomiale(p : real; n: integer; i: integer) return real;
	function probabilita(prob_X : real; dadi_totali: integer; ricorrenza: integer) return real;
	
	function valore_massimo(valori: array (natural range <>) of real) return real; 
	function dado_piu_ricorrente(dadi_in_mano	:	dado_array(0 to MAX_DADI-1)) return dado_type;
	function dado_maggiore_in_mano(dadi_in_mano	:	dado_array(0 to MAX_DADI-1)) return dado_type;
	
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
			when others => dado := NONE;
		end case;
		return dado;
	end function;
	
	function fattoriale(valore: integer) 
			return integer is
	begin
		if(valore = 0) then
			return 0;
		elsif (valore = 1) then
			return 1;
		else
			return fattoriale(valore - 1) * valore;
		end if;
	end function;
	
	function coefficiente_binomiale(n : integer; i: integer) 
			return real is
	begin
		return (fattoriale(n))/(fattoriale(i)*fattoriale(n-i));
	end function;

	function potenza(base : real; esponente: real) 
			return real is
	begin
		if(esponente = 0) then
			return 1;
		elsif(esponente = 1) then
			return base;
		elsif((esponente mod 2) = 0) then
			return potenza(base*base, esponente/2);
		else
			return base*potenza(base*base, esponente/2);
		end if;
	end function;
	
	function funzione_di_massa_binomiale(p : real; n: integer; i: integer)
			return real is
	begin
		return coefficiente_binomiale(n,i) * potenza(p,i) * potenza((1-p),(n-i));
	end function;
	
	function probabilita(prob_X : real; dadi_totali: integer; ricorrenza: integer) 
			return real is
			variable risultato : real:=0;
	begin
		for j in ricorrenza to dadi_totali loop
			risultato <= risultato + funzione_di_massa_binomiale(prob_X, dadi_totali, j);
		end loop;
		return risultato;
	end function;

	function valore_massimo(valori: array (natural range <>) of real) 
			return real is
			variable massimo : integer:=0;
	begin
		for j in valori'left to valori'right loop
			if(valori(j) > massimo) then
				massimo <= valori(j);
			end if;
		end loop;
		return massimo;
	end function;
	
	function dado_piu_ricorrente(dadi_in_mano	:	dado_array(0 to MAX_DADI-1)) 
			return dado_type is
	begin
	
	end function;
	
	function dado_maggiore_in_mano(dadi_in_mano	:	dado_array(0 to MAX_DADI-1))
			return dado_type is 
			variable ricorrenza_dadi : array (natural range <>) of integer;
	begin
	
	end function;	
end package body;