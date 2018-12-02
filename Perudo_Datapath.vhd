library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.perudo_package.all;

entity Perudo_Datapath is
	port
	(
			CLOCK			:	in		std_logic;
			RESET_N		: 	in 	std_logic;
			
			-- Connections for the Controller
			... Le decideremo tra un po’ quando le cose saranno più chiare
			-- Connections for the View
			... Idem
	);
end entity;

architecture RTL of Perudo_Datapath is
	signal giocatori_in_campo			: giocatore_array(MIN_GIOCATORI to MAX_GIOCATORI);
begin

end architecture;