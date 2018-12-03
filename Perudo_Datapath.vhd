library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.perudo_package.all;

entity Perudo_Datapath is
	port
	(
			CLOCK											:	in		std_logic;
			RESET_N										: 	in 	std_logic;
			
			-- Connections for the Controller
			NUOVO_GIOCATORE							:	in		std_logic;
			NUMERO_PER_GENERAZIONE_CASUALE		:	in		integer range MIN_NUMERO_PER_GENERAZIONE_CASUALE to MAX_NUMERO_PER_GENERAZIONE_CASUALE
			ELIMINA_GIOCATORE 						:	in		std_logic;
			
			-- Connections for the View
	);
end entity;

architecture RTL of Perudo_Datapath is

	signal giocatori_in_campo			: giocatore_array(0 to MAX_GIOCATORI-1);
	signal numero_giocatori_in_campo	: integer range 0 to MAX_GIOCATORI-1;
	
begin
	
	EliminaGiocatore_RTL : process(ELIMINA_GIOCATORE)
	begin
		
		for i in 0 to MAX_DADI-1 loop
			giocatori_in_campo(numero_giocatori_in_campo).dadi_in_mano(i) <=	NOP;
		end loop;
		
		numero_giocatori_in_campo <= numero_giocatori_in_campo - 1;
		
	end process;
	
	
	NuovoGiocatore_RTL : process(NUOVO_GIOCATORE)
	begin
		
		for i in 0 to MAX_DADI-1 loop
			giocatori_in_campo(numero_giocatori_in_campo).dadi_in_mano(i) <=	scegli_dado_casuale(NUMERO_PER_GENERAZIONE_CASUALE);
		end loop;
		
		numero_giocatori_in_campo <= numero_giocatori_in_campo + 1;
		
	end process;
end architecture;