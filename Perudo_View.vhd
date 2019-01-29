library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.perudo_package.all;

entity Perudo_View is
  generic(
    pixels_y :  integer := 478;   
    pixels_x :  integer := 600
	 );
  port(
    disp_ena :  in   std_logic;  
    row      :  in   integer;    
    column   :  in   integer;    
    red      :  out  std_logic_vector(7 downto 0) := (others => '0');  
    green    :  out  std_logic_vector(7 downto 0) := (others => '0');  
    blue     :  out  std_logic_vector(7 downto 0) := (others => '0'));
end Perudo_View;

architecture RTL of Perudo_View is
begin
  Process(disp_ena, row, column)
  BEGIN

    IF(disp_ena = '1') THEN        --display time
      IF(row < pixels_y AND column < pixels_x) THEN
        red <= (OTHERS => '0');
        green  <= (OTHERS => '0');
        blue <= (OTHERS => '1');
      ELSE
        red <= (OTHERS => '0');
        green  <= (OTHERS => '0');
        blue <= (OTHERS => '0');
      END IF;
    ELSE                           --blanking time
      red <= (OTHERS => '0');
      green <= (OTHERS => '0');
      blue <= (OTHERS => '0');
    END IF;
  
  END PROCESS;
end architecture;
