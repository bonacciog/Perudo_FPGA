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
	
	constant PROBABILITA_DADO_UNO							: real		:= 0.33;
	constant PROBABILITA_DADO_GENERICO					: real		:= 0.17;
	constant SOGLIA_ALTA_PROBABILITA_GENERICO			: real		:= 0.40;
	constant SOGLIA_BASSA_PROBABILITA					: real		:= 0.20;
	constant SOGLIA_ALTA_PROBABILITA_UNO				: real		:= 0.40;		-- QUANTO ERA? QUESTE SONO SBAGLIATE, SONO DI PROVA
	constant SOGLIA_BASSA_PROBABILITA_UNO				: real		:= 0.20;		-- QUANTO ERA? O CE N'ERA UNA UNICA?
	
		-- Tipi utili al Datapath	
	type dado_type is (UNO, DUE, TRE, QUATTRO, CINQUE, SEI, NONE);
	
	type dado_array is array (natural range <>) of dado_type;
	
	type giocatore is record
		dadi_in_mano				:	dado_array(0 to MAX_DADI-1);
		numero_dadi_in_mano		:  integer range 0 to MAX_DADI;
	end record;
	
	type giocatore_array is array (natural range <>) of giocatore;	
	
	type scommessa_type is record
		dado_scommesso : dado_type;
		ricorrenza		: integer;
	end record;
	
		-- Tipi utili alla gestione della logica
	type valori_reali_array is array (natural range<>) of real;
	type ricorrenza_dadi_array is array (dado_type'range) of integer;
	
		-- Funzione generatrice dado casuale
	function scegli_dado_casuale(numero_per_generazione_casuale_dado : integer range MIN_NUMERO_PER_GENERAZIONE_CASUALE to MAX_NUMERO_PER_GENERAZIONE_CASUALE) return dado_type;
	
/*		-- Funzioni utili alla logica d'esecuzione scomessa COM
			-- Utili al calcolo della probabilita
	function fattoriale(valore: integer) return real;
	function coefficiente_binomiale(n : integer; i: integer) return real;
	function potenza(base : real; esponente: integer) return real;
	function funzione_di_massa_binomiale(p : real; n: integer; i: integer) return real;
	function probabilita(prob_X : real; dadi_totali: integer; ricorrenza: integer) return real;
	
			-- Utili alla scelta della scommessa
	function dado_maggiore(dado_x : dado_type; dado_y : dado_type) return dado_type;
	function valore_massimo(valori: valori_reali_array) return real; 
	function dado_piu_ricorrente_in_mano(dadi_in_mano	:	dado_array(0 to MAX_DADI-1)) return dado_type; -- Restituisce il piu grande tra due equamente ricorrenti
	function dado_maggiore_in_mano(dadi_in_mano	:	dado_array(0 to MAX_DADI-1)) return dado_type;
	function dadi_in_campo(giocatori_in_campo : giocatore_array(0 to MAX_GIOCATORI-1)) return integer;*/
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
	
	/*function fattoriale(valore: integer) 
			return real is
	begin
		if(valore = 0) then
			return 0.0;
		elsif (valore = 1) then
			return 1.0;
		else
			return fattoriale(valore - 1) * real(valore);
		end if;
	end function;
	
	function coefficiente_binomiale(n : integer; i: integer) 
			return real is
	begin
      if((n-i)>=0 and n /= 0 and i /= 0) then
			return (fattoriale(n))/(fattoriale(i)*fattoriale(n-i));
		else 
			return -1.0;
	   end if;
	end function;

	function potenza(base : real; esponente: integer) 
			return real is
	begin
		if(esponente = 0) then
			return 1.0;
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
		return coefficiente_binomiale(n,i) * potenza(p,i) * potenza((1.0-p),(n-i));
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

	function valore_massimo(valori: valori_reali_array) 
			return real is
			variable massimo : real:=0.0;
	begin
		for j in valori'left to valori'right loop
			if(valori(j) > massimo) then
				massimo := valori(j);
			end if;
		end loop;
		return massimo;
	end function;
	
	function dado_piu_ricorrente_in_mano(dadi_in_mano	:	dado_array(0 to MAX_DADI-1)) 
			return dado_type is
			variable ricorrenza_dadi : ricorrenza_dadi_array;
			variable risultato : dado_type;
			variable ricorrenza_risultato : integer:=0;
	begin
		for i in ricorrenza_dadi_array'range loop
			ricorrenza_dadi(i) := 0;
		end loop;
		
		for i in dadi_in_mano'range loop
			ricorrenza_dadi(dadi_in_mano(i)) := ricorrenza_dadi(dadi_in_mano(i)) + 1;
		end loop;
		
		for i in dadi_in_mano'range loop
			if(ricorrenza_dadi(dadi_in_mano(i)) > ricorrenza_risultato) then
				ricorrenza_risultato := ricorrenza_dadi(dadi_in_mano(i));
				risultato := dadi_in_mano(i);
			elsif(ricorrenza_dadi(dadi_in_mano(i)) = ricorrenza_risultato) then
				risultato := dado_maggiore(dadi_in_mano(i), risultato);
			end if;
		end loop;
		
		return risultato;
	end function;
	
	function dado_maggiore(dado_x : dado_type; dado_y : dado_type)
			return dado_type is 
			variable valore_intero_dadi : ricorrenza_dadi_array;
			variable risultato : dado_type;
	begin
		valore_intero_dadi(UNO) := 1;
		valore_intero_dadi(DUE) := 2;
		valore_intero_dadi(TRE) := 3;
		valore_intero_dadi(QUATTRO) := 4;
		valore_intero_dadi(CINQUE) := 5;
		valore_intero_dadi(SEI) := 6;
		valore_intero_dadi(NONE) := 0;
		
		if(valore_intero_dadi(dado_x) > valore_intero_dadi(dado_y)) then
			risultato := dado_x;
		else
			risultato := dado_y;
		end if;
		
		return risultato;
	end function;

	function dado_maggiore_in_mano(dadi_in_mano	:	dado_array(0 to MAX_DADI-1)) 
			return dado_type is
			variable risultato : dado_type:=NONE;
	begin
		for i in dadi_in_mano'range loop
			if(dado_maggiore(risultato, dadi_in_mano(i)) = dadi_in_mano(i)) then
				risultato := dadi_in_mano(i);
			end if;
		end loop;
		
		return risultato;
	end function;
	
	function dadi_in_campo(giocatori_in_campo : giocatore_array(0 to MAX_GIOCATORI-1)) 
			return integer is
			variable risultato : integer:=0;
	begin
		for j in 0 to MAX_GIOCATORI-1 loop
			for i in 0 to MAX_DADI-1 loop
				if (giocatori_in_campo(j).dadi_in_mano(i) /= NONE) then
					risultato := risultato + 1;
				end if;
			end loop;
		end loop;
		return risultato;
	end function;*/
end package body;