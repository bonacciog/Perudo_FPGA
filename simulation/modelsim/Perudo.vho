-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/30/2019 20:41:10"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Perudo_DE1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 9);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END Perudo_DE1;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Perudo_DE1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 9);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|Add0~1_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[3]~3_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~5_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~9_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~3_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|Add13~0_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[3]~15_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[3]~16_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[3]~6_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[3]~7_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~feeder_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \controller|numero_giocatori[0]~11\ : std_logic;
SIGNAL \controller|numero_giocatori[1]~12_combout\ : std_logic;
SIGNAL \reset_sync_reg~feeder_combout\ : std_logic;
SIGNAL \reset_sync_reg~regout\ : std_logic;
SIGNAL \RESET_N~feeder_combout\ : std_logic;
SIGNAL \RESET_N~regout\ : std_logic;
SIGNAL \controller|numero_giocatori[1]~13\ : std_logic;
SIGNAL \controller|numero_giocatori[2]~14_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[2]~15\ : std_logic;
SIGNAL \controller|numero_giocatori[3]~17\ : std_logic;
SIGNAL \controller|numero_giocatori[4]~18_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[4]~19\ : std_logic;
SIGNAL \controller|numero_giocatori[5]~21\ : std_logic;
SIGNAL \controller|numero_giocatori[6]~23\ : std_logic;
SIGNAL \controller|numero_giocatori[7]~24_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[7]~25\ : std_logic;
SIGNAL \controller|numero_giocatori[8]~27\ : std_logic;
SIGNAL \controller|numero_giocatori[9]~28_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~1_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:next_old~feeder_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:next_old~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller~4_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:enter_old~feeder_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:enter_old~regout\ : std_logic;
SIGNAL \controller|initialization_state~1_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:prev_old~feeder_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:prev_old~regout\ : std_logic;
SIGNAL \controller|initialization_state~0_combout\ : std_logic;
SIGNAL \controller|initialization_state~2_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[6]~22_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[3]~16_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~2_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~3_combout\ : std_logic;
SIGNAL \controller|initialization_state~3_combout\ : std_logic;
SIGNAL \controller|initialization_state~regout\ : std_logic;
SIGNAL \controller|INIZIA_PARTITA~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~5_combout\ : std_logic;
SIGNAL \controller|INIZIA_PARTITA~1_combout\ : std_logic;
SIGNAL \controller|INIZIA_PARTITA~regout\ : std_logic;
SIGNAL \datapath|PARTITA_INIZIATA~0_combout\ : std_logic;
SIGNAL \datapath|PARTITA_INIZIATA~regout\ : std_logic;
SIGNAL \controller|internal_state.INIT~0_combout\ : std_logic;
SIGNAL \controller|internal_state.INIT~regout\ : std_logic;
SIGNAL \controller|nuovo_giocatore_old~0_combout\ : std_logic;
SIGNAL \controller|elimina_giocatore_old~0_combout\ : std_logic;
SIGNAL \controller|elimina_giocatore_old~1_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:elimina_giocatore_old~regout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[0]~9_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[0]~6\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[1]~7_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa[0]~2_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa~1_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa~0_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa[1]~_wirecell_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[3]~12\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[4]~13_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[0]~5_combout\ : std_logic;
SIGNAL \datapath|Equal2~0_combout\ : std_logic;
SIGNAL \datapath|Equal2~1_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[1]~8\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[2]~10\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[3]~11_combout\ : std_logic;
SIGNAL \datapath|Add1~0_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[2]~9_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa[2]~_wirecell_combout\ : std_logic;
SIGNAL \datapath|Equal3~0_combout\ : std_logic;
SIGNAL \datapath|Equal3~1_combout\ : std_logic;
SIGNAL \datapath|dado_aggiunto~regout\ : std_logic;
SIGNAL \datapath|elimina_dado~0_combout\ : std_logic;
SIGNAL \datapath|elimina_dado~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[3].numero_dadi_in_mano[1]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\ : std_logic;
SIGNAL \datapath|Mux57~0_combout\ : std_logic;
SIGNAL \datapath|Mux57~1_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~4_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_AGGIUNTO~2_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_AGGIUNTO~regout\ : std_logic;
SIGNAL \controller|nuovo_giocatore_old~1_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:nuovo_giocatore_old~regout\ : std_logic;
SIGNAL \datapath|elimina_dado~regout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~4_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|Mux59~2_combout\ : std_logic;
SIGNAL \datapath|Mux59~3_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~3_combout\ : std_logic;
SIGNAL \datapath|Mux59~0_combout\ : std_logic;
SIGNAL \datapath|Mux59~1_combout\ : std_logic;
SIGNAL \datapath|Mux59~4_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~2_combout\ : std_logic;
SIGNAL \datapath|Mux58~2_combout\ : std_logic;
SIGNAL \datapath|Mux58~3_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[2].numero_dadi_in_mano[1]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|Mux58~0_combout\ : std_logic;
SIGNAL \datapath|Mux58~1_combout\ : std_logic;
SIGNAL \datapath|Mux58~4_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[3]~17_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[3]~6_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[3]~7_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~8_combout\ : std_logic;
SIGNAL \datapath|Equal4~0_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[0]~10_combout\ : std_logic;
SIGNAL \datapath|Mux57~2_combout\ : std_logic;
SIGNAL \datapath|Mux57~3_combout\ : std_logic;
SIGNAL \datapath|Mux57~4_combout\ : std_logic;
SIGNAL \datapath|aggiungi_dado~0_combout\ : std_logic;
SIGNAL \datapath|aggiungi_dado~1_combout\ : std_logic;
SIGNAL \datapath|aggiungi_dado~regout\ : std_logic;
SIGNAL \datapath|dado_eliminato~0_combout\ : std_logic;
SIGNAL \datapath|dado_eliminato~regout\ : std_logic;
SIGNAL \datapath|GIOCATORE_ELIMINATO~2_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[2]~1_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[2]~2_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[2]~3_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo~0_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[2]~4_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[2]~5_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~12_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~13_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~2_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~11_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~14_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_ELIMINATO~3_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_ELIMINATO~regout\ : std_logic;
SIGNAL \controller|Add0~2_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[0]~10_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[5]~20_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[8]~26_combout\ : std_logic;
SIGNAL \controller|LEDG[0]~0_combout\ : std_logic;
SIGNAL \controller|numero_giocatori\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \controller|LEDG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|numero_giocatori_in_campo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|indice_giocatore\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|giocatori_in_campo[7].numero_dadi_in_mano\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|giocatori_in_campo[6].numero_dadi_in_mano\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|giocatori_in_campo[5].numero_dadi_in_mano\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|giocatori_in_campo[4].numero_dadi_in_mano\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|giocatori_in_campo[3].numero_dadi_in_mano\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|giocatori_in_campo[2].numero_dadi_in_mano\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|giocatori_in_campo[0].numero_dadi_in_mano\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|cicli_da_attendere\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \datapath|cicli_casuali_attesa\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 9);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|ALT_INV_aggiungi_dado~regout\ : std_logic;
SIGNAL \ALT_INV_RESET_N~regout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\datapath|ALT_INV_aggiungi_dado~regout\ <= NOT \datapath|aggiungi_dado~regout\;
\ALT_INV_RESET_N~regout\ <= NOT \RESET_N~regout\;

-- Location: LCCOMB_X49_Y6_N24
\controller|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~1_combout\ = (\datapath|GIOCATORE_ELIMINATO~regout\) # (\controller|numero_giocatori\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|GIOCATORE_ELIMINATO~regout\,
	datad => \controller|numero_giocatori\(0),
	combout => \controller|Add0~1_combout\);

-- Location: LCFF_X47_Y8_N17
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2));

-- Location: LCFF_X46_Y8_N21
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2));

-- Location: LCFF_X48_Y8_N7
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2));

-- Location: LCFF_X48_Y8_N19
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1));

-- Location: LCFF_X46_Y8_N13
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1));

-- Location: LCFF_X44_Y8_N7
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0));

-- Location: LCFF_X44_Y8_N25
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0));

-- Location: LCFF_X44_Y8_N17
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~3_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0));

-- Location: LCFF_X44_Y8_N21
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0));

-- Location: LCFF_X45_Y8_N13
\datapath|indice_giocatore[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore[3]~16_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(3));

-- Location: LCCOMB_X47_Y8_N2
\datapath|indice_giocatore[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[3]~3_combout\ = (\datapath|dado_aggiunto~regout\ & \controller|Update_State_Controller:nuovo_giocatore_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|dado_aggiunto~regout\,
	datad => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	combout => \datapath|indice_giocatore[3]~3_combout\);

-- Location: LCCOMB_X45_Y8_N20
\datapath|indice_giocatore[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~5_combout\ = \datapath|numero_giocatori_in_campo\(1) $ (((!\datapath|numero_giocatori_in_campo\(0) & !\controller|Update_State_Controller:nuovo_giocatore_old~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	combout => \datapath|indice_giocatore[1]~5_combout\);

-- Location: LCCOMB_X45_Y8_N10
\datapath|indice_giocatore~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~9_combout\ = \datapath|numero_giocatori_in_campo\(0) $ (\controller|Update_State_Controller:nuovo_giocatore_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|numero_giocatori_in_campo\(0),
	datac => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	combout => \datapath|indice_giocatore~9_combout\);

-- Location: LCCOMB_X44_Y8_N6
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~1_combout\ = (\datapath|giocatori_in_campo[2].numero_dadi_in_mano[1]~0_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[2].numero_dadi_in_mano[1]~0_combout\ & 
-- ((\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[1]~0_combout\,
	combout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~1_combout\);

-- Location: LCCOMB_X44_Y8_N24
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~1_combout\ = (\datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\ & 
-- ((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\,
	combout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~1_combout\);

-- Location: LCCOMB_X44_Y8_N16
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~3_combout\ = (\datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~2_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~2_combout\ & 
-- ((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~2_combout\,
	combout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~3_combout\);

-- Location: LCCOMB_X44_Y8_N20
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]~1_combout\ = (\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\ & 
-- ((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\,
	combout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]~1_combout\);

-- Location: LCFF_X49_Y8_N25
\datapath|numero_giocatori_in_campo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo[3]~7_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(3));

-- Location: LCCOMB_X47_Y8_N24
\datapath|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add13~0_combout\ = \datapath|numero_giocatori_in_campo\(3) $ (((\datapath|numero_giocatori_in_campo\(1)) # ((\datapath|numero_giocatori_in_campo\(2)) # (\datapath|numero_giocatori_in_campo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(3),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|numero_giocatori_in_campo\(2),
	datad => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|Add13~0_combout\);

-- Location: LCCOMB_X46_Y8_N4
\datapath|indice_giocatore[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[3]~15_combout\ = ((\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & ((\datapath|numero_giocatori_in_campo\(3)))) # (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & 
-- (!\datapath|Add13~0_combout\))) # (!\datapath|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \datapath|Add13~0_combout\,
	datac => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datad => \datapath|numero_giocatori_in_campo\(3),
	combout => \datapath|indice_giocatore[3]~15_combout\);

-- Location: LCCOMB_X45_Y8_N12
\datapath|indice_giocatore[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[3]~16_combout\ = (\datapath|indice_giocatore[3]~7_combout\ & ((\datapath|indice_giocatore\(3)))) # (!\datapath|indice_giocatore[3]~7_combout\ & (!\datapath|indice_giocatore[3]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore[3]~15_combout\,
	datac => \datapath|indice_giocatore\(3),
	datad => \datapath|indice_giocatore[3]~7_combout\,
	combout => \datapath|indice_giocatore[3]~16_combout\);

-- Location: LCCOMB_X47_Y8_N18
\datapath|numero_giocatori_in_campo[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[3]~6_combout\ = (\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & (\datapath|numero_giocatori_in_campo\(1) & (\datapath|numero_giocatori_in_campo\(2) & \datapath|numero_giocatori_in_campo\(0)))) # 
-- (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & (!\datapath|numero_giocatori_in_campo\(1) & (!\datapath|numero_giocatori_in_campo\(2) & !\datapath|numero_giocatori_in_campo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|numero_giocatori_in_campo\(2),
	datad => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|numero_giocatori_in_campo[3]~6_combout\);

-- Location: LCCOMB_X49_Y8_N24
\datapath|numero_giocatori_in_campo[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[3]~7_combout\ = \datapath|numero_giocatori_in_campo\(3) $ (((!\datapath|numero_giocatori_in_campo[2]~2_combout\ & (\datapath|numero_giocatori_in_campo[3]~6_combout\ & 
-- !\datapath|numero_giocatori_in_campo[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo[2]~2_combout\,
	datab => \datapath|numero_giocatori_in_campo[3]~6_combout\,
	datac => \datapath|numero_giocatori_in_campo\(3),
	datad => \datapath|numero_giocatori_in_campo[2]~1_combout\,
	combout => \datapath|numero_giocatori_in_campo[3]~7_combout\);

-- Location: LCCOMB_X46_Y8_N12
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~feeder_combout\ = \datapath|giocatori_in_campo~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|giocatori_in_campo~1_combout\,
	combout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~feeder_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X49_Y6_N0
\controller|numero_giocatori[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[0]~10_combout\ = (\controller|Add0~1_combout\ & (\controller|Add0~2_combout\ $ (VCC))) # (!\controller|Add0~1_combout\ & (\controller|Add0~2_combout\ & VCC))
-- \controller|numero_giocatori[0]~11\ = CARRY((\controller|Add0~1_combout\ & \controller|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Add0~1_combout\,
	datab => \controller|Add0~2_combout\,
	datad => VCC,
	combout => \controller|numero_giocatori[0]~10_combout\,
	cout => \controller|numero_giocatori[0]~11\);

-- Location: LCCOMB_X49_Y6_N2
\controller|numero_giocatori[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[1]~12_combout\ = (\datapath|GIOCATORE_ELIMINATO~regout\ & ((\controller|numero_giocatori\(1) & (\controller|numero_giocatori[0]~11\ & VCC)) # (!\controller|numero_giocatori\(1) & (!\controller|numero_giocatori[0]~11\)))) # 
-- (!\datapath|GIOCATORE_ELIMINATO~regout\ & ((\controller|numero_giocatori\(1) & (!\controller|numero_giocatori[0]~11\)) # (!\controller|numero_giocatori\(1) & ((\controller|numero_giocatori[0]~11\) # (GND)))))
-- \controller|numero_giocatori[1]~13\ = CARRY((\datapath|GIOCATORE_ELIMINATO~regout\ & (!\controller|numero_giocatori\(1) & !\controller|numero_giocatori[0]~11\)) # (!\datapath|GIOCATORE_ELIMINATO~regout\ & ((!\controller|numero_giocatori[0]~11\) # 
-- (!\controller|numero_giocatori\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GIOCATORE_ELIMINATO~regout\,
	datab => \controller|numero_giocatori\(1),
	datad => VCC,
	cin => \controller|numero_giocatori[0]~11\,
	combout => \controller|numero_giocatori[1]~12_combout\,
	cout => \controller|numero_giocatori[1]~13\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: LCCOMB_X49_Y8_N0
\reset_sync_reg~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_sync_reg~feeder_combout\ = \SW~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(9),
	combout => \reset_sync_reg~feeder_combout\);

-- Location: LCFF_X49_Y8_N1
reset_sync_reg : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \reset_sync_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_sync_reg~regout\);

-- Location: LCCOMB_X49_Y8_N4
\RESET_N~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RESET_N~feeder_combout\ = \reset_sync_reg~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_sync_reg~regout\,
	combout => \RESET_N~feeder_combout\);

-- Location: LCFF_X49_Y8_N5
RESET_N : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \RESET_N~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RESET_N~regout\);

-- Location: LCFF_X49_Y6_N3
\controller|numero_giocatori[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[1]~12_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(1));

-- Location: LCCOMB_X49_Y6_N4
\controller|numero_giocatori[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[2]~14_combout\ = ((\datapath|GIOCATORE_ELIMINATO~regout\ $ (\controller|numero_giocatori\(2) $ (!\controller|numero_giocatori[1]~13\)))) # (GND)
-- \controller|numero_giocatori[2]~15\ = CARRY((\datapath|GIOCATORE_ELIMINATO~regout\ & ((\controller|numero_giocatori\(2)) # (!\controller|numero_giocatori[1]~13\))) # (!\datapath|GIOCATORE_ELIMINATO~regout\ & (\controller|numero_giocatori\(2) & 
-- !\controller|numero_giocatori[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GIOCATORE_ELIMINATO~regout\,
	datab => \controller|numero_giocatori\(2),
	datad => VCC,
	cin => \controller|numero_giocatori[1]~13\,
	combout => \controller|numero_giocatori[2]~14_combout\,
	cout => \controller|numero_giocatori[2]~15\);

-- Location: LCFF_X49_Y6_N5
\controller|numero_giocatori[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[2]~14_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(2));

-- Location: LCCOMB_X49_Y6_N6
\controller|numero_giocatori[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[3]~16_combout\ = (\controller|numero_giocatori\(3) & ((\datapath|GIOCATORE_ELIMINATO~regout\ & (\controller|numero_giocatori[2]~15\ & VCC)) # (!\datapath|GIOCATORE_ELIMINATO~regout\ & (!\controller|numero_giocatori[2]~15\)))) 
-- # (!\controller|numero_giocatori\(3) & ((\datapath|GIOCATORE_ELIMINATO~regout\ & (!\controller|numero_giocatori[2]~15\)) # (!\datapath|GIOCATORE_ELIMINATO~regout\ & ((\controller|numero_giocatori[2]~15\) # (GND)))))
-- \controller|numero_giocatori[3]~17\ = CARRY((\controller|numero_giocatori\(3) & (!\datapath|GIOCATORE_ELIMINATO~regout\ & !\controller|numero_giocatori[2]~15\)) # (!\controller|numero_giocatori\(3) & ((!\controller|numero_giocatori[2]~15\) # 
-- (!\datapath|GIOCATORE_ELIMINATO~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(3),
	datab => \datapath|GIOCATORE_ELIMINATO~regout\,
	datad => VCC,
	cin => \controller|numero_giocatori[2]~15\,
	combout => \controller|numero_giocatori[3]~16_combout\,
	cout => \controller|numero_giocatori[3]~17\);

-- Location: LCCOMB_X49_Y6_N8
\controller|numero_giocatori[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[4]~18_combout\ = ((\datapath|GIOCATORE_ELIMINATO~regout\ $ (\controller|numero_giocatori\(4) $ (!\controller|numero_giocatori[3]~17\)))) # (GND)
-- \controller|numero_giocatori[4]~19\ = CARRY((\datapath|GIOCATORE_ELIMINATO~regout\ & ((\controller|numero_giocatori\(4)) # (!\controller|numero_giocatori[3]~17\))) # (!\datapath|GIOCATORE_ELIMINATO~regout\ & (\controller|numero_giocatori\(4) & 
-- !\controller|numero_giocatori[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GIOCATORE_ELIMINATO~regout\,
	datab => \controller|numero_giocatori\(4),
	datad => VCC,
	cin => \controller|numero_giocatori[3]~17\,
	combout => \controller|numero_giocatori[4]~18_combout\,
	cout => \controller|numero_giocatori[4]~19\);

-- Location: LCFF_X49_Y6_N9
\controller|numero_giocatori[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[4]~18_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(4));

-- Location: LCCOMB_X49_Y6_N10
\controller|numero_giocatori[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[5]~20_combout\ = (\controller|numero_giocatori\(5) & ((\datapath|GIOCATORE_ELIMINATO~regout\ & (\controller|numero_giocatori[4]~19\ & VCC)) # (!\datapath|GIOCATORE_ELIMINATO~regout\ & (!\controller|numero_giocatori[4]~19\)))) 
-- # (!\controller|numero_giocatori\(5) & ((\datapath|GIOCATORE_ELIMINATO~regout\ & (!\controller|numero_giocatori[4]~19\)) # (!\datapath|GIOCATORE_ELIMINATO~regout\ & ((\controller|numero_giocatori[4]~19\) # (GND)))))
-- \controller|numero_giocatori[5]~21\ = CARRY((\controller|numero_giocatori\(5) & (!\datapath|GIOCATORE_ELIMINATO~regout\ & !\controller|numero_giocatori[4]~19\)) # (!\controller|numero_giocatori\(5) & ((!\controller|numero_giocatori[4]~19\) # 
-- (!\datapath|GIOCATORE_ELIMINATO~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(5),
	datab => \datapath|GIOCATORE_ELIMINATO~regout\,
	datad => VCC,
	cin => \controller|numero_giocatori[4]~19\,
	combout => \controller|numero_giocatori[5]~20_combout\,
	cout => \controller|numero_giocatori[5]~21\);

-- Location: LCCOMB_X49_Y6_N12
\controller|numero_giocatori[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[6]~22_combout\ = ((\controller|numero_giocatori\(6) $ (\datapath|GIOCATORE_ELIMINATO~regout\ $ (!\controller|numero_giocatori[5]~21\)))) # (GND)
-- \controller|numero_giocatori[6]~23\ = CARRY((\controller|numero_giocatori\(6) & ((\datapath|GIOCATORE_ELIMINATO~regout\) # (!\controller|numero_giocatori[5]~21\))) # (!\controller|numero_giocatori\(6) & (\datapath|GIOCATORE_ELIMINATO~regout\ & 
-- !\controller|numero_giocatori[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(6),
	datab => \datapath|GIOCATORE_ELIMINATO~regout\,
	datad => VCC,
	cin => \controller|numero_giocatori[5]~21\,
	combout => \controller|numero_giocatori[6]~22_combout\,
	cout => \controller|numero_giocatori[6]~23\);

-- Location: LCCOMB_X49_Y6_N14
\controller|numero_giocatori[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[7]~24_combout\ = (\datapath|GIOCATORE_ELIMINATO~regout\ & ((\controller|numero_giocatori\(7) & (\controller|numero_giocatori[6]~23\ & VCC)) # (!\controller|numero_giocatori\(7) & (!\controller|numero_giocatori[6]~23\)))) # 
-- (!\datapath|GIOCATORE_ELIMINATO~regout\ & ((\controller|numero_giocatori\(7) & (!\controller|numero_giocatori[6]~23\)) # (!\controller|numero_giocatori\(7) & ((\controller|numero_giocatori[6]~23\) # (GND)))))
-- \controller|numero_giocatori[7]~25\ = CARRY((\datapath|GIOCATORE_ELIMINATO~regout\ & (!\controller|numero_giocatori\(7) & !\controller|numero_giocatori[6]~23\)) # (!\datapath|GIOCATORE_ELIMINATO~regout\ & ((!\controller|numero_giocatori[6]~23\) # 
-- (!\controller|numero_giocatori\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GIOCATORE_ELIMINATO~regout\,
	datab => \controller|numero_giocatori\(7),
	datad => VCC,
	cin => \controller|numero_giocatori[6]~23\,
	combout => \controller|numero_giocatori[7]~24_combout\,
	cout => \controller|numero_giocatori[7]~25\);

-- Location: LCFF_X49_Y6_N15
\controller|numero_giocatori[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[7]~24_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(7));

-- Location: LCCOMB_X49_Y6_N16
\controller|numero_giocatori[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[8]~26_combout\ = ((\controller|numero_giocatori\(8) $ (\datapath|GIOCATORE_ELIMINATO~regout\ $ (!\controller|numero_giocatori[7]~25\)))) # (GND)
-- \controller|numero_giocatori[8]~27\ = CARRY((\controller|numero_giocatori\(8) & ((\datapath|GIOCATORE_ELIMINATO~regout\) # (!\controller|numero_giocatori[7]~25\))) # (!\controller|numero_giocatori\(8) & (\datapath|GIOCATORE_ELIMINATO~regout\ & 
-- !\controller|numero_giocatori[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(8),
	datab => \datapath|GIOCATORE_ELIMINATO~regout\,
	datad => VCC,
	cin => \controller|numero_giocatori[7]~25\,
	combout => \controller|numero_giocatori[8]~26_combout\,
	cout => \controller|numero_giocatori[8]~27\);

-- Location: LCCOMB_X49_Y6_N18
\controller|numero_giocatori[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[9]~28_combout\ = \datapath|GIOCATORE_ELIMINATO~regout\ $ (\controller|numero_giocatori[8]~27\ $ (\controller|numero_giocatori\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GIOCATORE_ELIMINATO~regout\,
	datad => \controller|numero_giocatori\(9),
	cin => \controller|numero_giocatori[8]~27\,
	combout => \controller|numero_giocatori[9]~28_combout\);

-- Location: LCFF_X49_Y6_N19
\controller|numero_giocatori[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[9]~28_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(9));

-- Location: LCCOMB_X49_Y6_N22
\controller|Update_State_Controller~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~1_combout\ = (!\controller|numero_giocatori\(8) & (!\controller|numero_giocatori\(7) & !\controller|numero_giocatori\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(8),
	datac => \controller|numero_giocatori\(7),
	datad => \controller|numero_giocatori\(9),
	combout => \controller|Update_State_Controller~1_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: LCCOMB_X49_Y8_N30
\controller|Update_State_Controller:next_old~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller:next_old~feeder_combout\ = \KEY~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(2),
	combout => \controller|Update_State_Controller:next_old~feeder_combout\);

-- Location: LCFF_X49_Y8_N31
\controller|Update_State_Controller:next_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|Update_State_Controller:next_old~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:next_old~regout\);

-- Location: LCCOMB_X49_Y7_N16
\controller|Update_State_Controller~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~4_combout\ = (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & (\KEY~combout\(2) & !\controller|Update_State_Controller:next_old~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datac => \KEY~combout\(2),
	datad => \controller|Update_State_Controller:next_old~regout\,
	combout => \controller|Update_State_Controller~4_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCCOMB_X49_Y8_N6
\controller|Update_State_Controller:enter_old~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller:enter_old~feeder_combout\ = \KEY~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~combout\(1),
	combout => \controller|Update_State_Controller:enter_old~feeder_combout\);

-- Location: LCFF_X49_Y8_N7
\controller|Update_State_Controller:enter_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|Update_State_Controller:enter_old~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:enter_old~regout\);

-- Location: LCCOMB_X49_Y7_N8
\controller|initialization_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|initialization_state~1_combout\ = (\KEY~combout\(1) & (!\controller|internal_state.INIT~regout\ & !\controller|Update_State_Controller:enter_old~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(1),
	datac => \controller|internal_state.INIT~regout\,
	datad => \controller|Update_State_Controller:enter_old~regout\,
	combout => \controller|initialization_state~1_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3),
	combout => \KEY~combout\(3));

-- Location: LCCOMB_X49_Y8_N28
\controller|Update_State_Controller:prev_old~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller:prev_old~feeder_combout\ = \KEY~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(3),
	combout => \controller|Update_State_Controller:prev_old~feeder_combout\);

-- Location: LCFF_X49_Y8_N29
\controller|Update_State_Controller:prev_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|Update_State_Controller:prev_old~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:prev_old~regout\);

-- Location: LCCOMB_X49_Y7_N10
\controller|initialization_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|initialization_state~0_combout\ = (\KEY~combout\(2) & (((!\controller|Update_State_Controller:prev_old~regout\ & \KEY~combout\(3))) # (!\controller|Update_State_Controller:next_old~regout\))) # (!\KEY~combout\(2) & 
-- (!\controller|Update_State_Controller:prev_old~regout\ & (\KEY~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \controller|Update_State_Controller:prev_old~regout\,
	datac => \KEY~combout\(3),
	datad => \controller|Update_State_Controller:next_old~regout\,
	combout => \controller|initialization_state~0_combout\);

-- Location: LCCOMB_X49_Y7_N14
\controller|initialization_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|initialization_state~2_combout\ = (!\controller|initialization_state~regout\ & ((\controller|initialization_state~0_combout\) # (!\controller|initialization_state~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|initialization_state~regout\,
	datac => \controller|initialization_state~1_combout\,
	datad => \controller|initialization_state~0_combout\,
	combout => \controller|initialization_state~2_combout\);

-- Location: LCFF_X49_Y6_N13
\controller|numero_giocatori[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[6]~22_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(6));

-- Location: LCFF_X49_Y6_N7
\controller|numero_giocatori[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[3]~16_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(3));

-- Location: LCCOMB_X49_Y6_N28
\controller|Update_State_Controller~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~0_combout\ = (!\controller|numero_giocatori\(5) & (!\controller|numero_giocatori\(4) & (!\controller|numero_giocatori\(6) & !\controller|numero_giocatori\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(5),
	datab => \controller|numero_giocatori\(4),
	datac => \controller|numero_giocatori\(6),
	datad => \controller|numero_giocatori\(3),
	combout => \controller|Update_State_Controller~0_combout\);

-- Location: LCCOMB_X49_Y6_N20
\controller|Update_State_Controller~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~2_combout\ = (!\controller|numero_giocatori\(2) & (!\controller|numero_giocatori\(1) & (\controller|Update_State_Controller~1_combout\ & \controller|Update_State_Controller~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(2),
	datab => \controller|numero_giocatori\(1),
	datac => \controller|Update_State_Controller~1_combout\,
	datad => \controller|Update_State_Controller~0_combout\,
	combout => \controller|Update_State_Controller~2_combout\);

-- Location: LCCOMB_X49_Y7_N28
\controller|Update_State_Controller~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~3_combout\ = (\KEY~combout\(3) & (!\controller|Update_State_Controller:elimina_giocatore_old~regout\ & (!\controller|Update_State_Controller:prev_old~regout\ & !\controller|Update_State_Controller~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(3),
	datab => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datac => \controller|Update_State_Controller:prev_old~regout\,
	datad => \controller|Update_State_Controller~2_combout\,
	combout => \controller|Update_State_Controller~3_combout\);

-- Location: LCCOMB_X49_Y7_N2
\controller|initialization_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|initialization_state~3_combout\ = (!\controller|initialization_state~2_combout\ & ((\controller|Update_State_Controller~5_combout\) # ((\controller|Update_State_Controller~3_combout\) # (!\controller|INIZIA_PARTITA~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~5_combout\,
	datab => \controller|INIZIA_PARTITA~0_combout\,
	datac => \controller|initialization_state~2_combout\,
	datad => \controller|Update_State_Controller~3_combout\,
	combout => \controller|initialization_state~3_combout\);

-- Location: LCFF_X49_Y7_N3
\controller|initialization_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|initialization_state~3_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|initialization_state~regout\);

-- Location: LCCOMB_X49_Y7_N0
\controller|INIZIA_PARTITA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|INIZIA_PARTITA~0_combout\ = (!\controller|internal_state.INIT~regout\ & (\controller|initialization_state~regout\ & (\KEY~combout\(1) & !\controller|Update_State_Controller:enter_old~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|internal_state.INIT~regout\,
	datab => \controller|initialization_state~regout\,
	datac => \KEY~combout\(1),
	datad => \controller|Update_State_Controller:enter_old~regout\,
	combout => \controller|INIZIA_PARTITA~0_combout\);

-- Location: LCCOMB_X49_Y7_N20
\controller|Update_State_Controller~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~5_combout\ = (\controller|Update_State_Controller~1_combout\ & (\controller|Update_State_Controller~4_combout\ & \controller|Update_State_Controller~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Update_State_Controller~1_combout\,
	datac => \controller|Update_State_Controller~4_combout\,
	datad => \controller|Update_State_Controller~0_combout\,
	combout => \controller|Update_State_Controller~5_combout\);

-- Location: LCCOMB_X49_Y7_N4
\controller|INIZIA_PARTITA~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|INIZIA_PARTITA~1_combout\ = (\controller|INIZIA_PARTITA~0_combout\ & (!\controller|Update_State_Controller~5_combout\ & !\controller|Update_State_Controller~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|INIZIA_PARTITA~0_combout\,
	datac => \controller|Update_State_Controller~5_combout\,
	datad => \controller|Update_State_Controller~3_combout\,
	combout => \controller|INIZIA_PARTITA~1_combout\);

-- Location: LCFF_X49_Y7_N5
\controller|INIZIA_PARTITA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|INIZIA_PARTITA~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|INIZIA_PARTITA~regout\);

-- Location: LCCOMB_X49_Y7_N6
\datapath|PARTITA_INIZIATA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|PARTITA_INIZIATA~0_combout\ = (\controller|INIZIA_PARTITA~regout\) # (\datapath|PARTITA_INIZIATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|INIZIA_PARTITA~regout\,
	datac => \datapath|PARTITA_INIZIATA~regout\,
	combout => \datapath|PARTITA_INIZIATA~0_combout\);

-- Location: LCFF_X49_Y7_N7
\datapath|PARTITA_INIZIATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|PARTITA_INIZIATA~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|PARTITA_INIZIATA~regout\);

-- Location: LCCOMB_X49_Y7_N24
\controller|internal_state.INIT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|internal_state.INIT~0_combout\ = (\controller|internal_state.INIT~regout\) # (\datapath|PARTITA_INIZIATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|internal_state.INIT~regout\,
	datad => \datapath|PARTITA_INIZIATA~regout\,
	combout => \controller|internal_state.INIT~0_combout\);

-- Location: LCFF_X49_Y7_N25
\controller|internal_state.INIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|internal_state.INIT~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|internal_state.INIT~regout\);

-- Location: LCCOMB_X49_Y7_N26
\controller|nuovo_giocatore_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|nuovo_giocatore_old~0_combout\ = (!\controller|internal_state.INIT~regout\ & \controller|initialization_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|internal_state.INIT~regout\,
	datad => \controller|initialization_state~regout\,
	combout => \controller|nuovo_giocatore_old~0_combout\);

-- Location: LCCOMB_X49_Y7_N30
\controller|elimina_giocatore_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|elimina_giocatore_old~0_combout\ = (\controller|nuovo_giocatore_old~0_combout\ & (((!\controller|Update_State_Controller~4_combout\) # (!\controller|Update_State_Controller~1_combout\)) # (!\controller|Update_State_Controller~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~0_combout\,
	datab => \controller|Update_State_Controller~1_combout\,
	datac => \controller|Update_State_Controller~4_combout\,
	datad => \controller|nuovo_giocatore_old~0_combout\,
	combout => \controller|elimina_giocatore_old~0_combout\);

-- Location: LCCOMB_X48_Y7_N0
\controller|elimina_giocatore_old~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|elimina_giocatore_old~1_combout\ = (!\datapath|GIOCATORE_ELIMINATO~regout\ & ((\controller|Update_State_Controller:elimina_giocatore_old~regout\) # ((\controller|elimina_giocatore_old~0_combout\ & 
-- \controller|Update_State_Controller~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GIOCATORE_ELIMINATO~regout\,
	datab => \controller|elimina_giocatore_old~0_combout\,
	datac => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datad => \controller|Update_State_Controller~3_combout\,
	combout => \controller|elimina_giocatore_old~1_combout\);

-- Location: LCFF_X48_Y7_N1
\controller|Update_State_Controller:elimina_giocatore_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|elimina_giocatore_old~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:elimina_giocatore_old~regout\);

-- Location: LCCOMB_X49_Y8_N12
\datapath|numero_giocatori_in_campo[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[0]~9_combout\ = !\datapath|numero_giocatori_in_campo\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|numero_giocatori_in_campo[0]~9_combout\);

-- Location: LCCOMB_X48_Y7_N16
\datapath|cicli_da_attendere[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_da_attendere[0]~5_combout\ = !\datapath|cicli_da_attendere\(0)
-- \datapath|cicli_da_attendere[0]~6\ = CARRY(!\datapath|cicli_da_attendere\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_da_attendere\(0),
	combout => \datapath|cicli_da_attendere[0]~5_combout\,
	cout => \datapath|cicli_da_attendere[0]~6\);

-- Location: LCCOMB_X48_Y7_N18
\datapath|cicli_da_attendere[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_da_attendere[1]~7_combout\ = (\datapath|cicli_da_attendere\(1) & (\datapath|cicli_da_attendere[0]~6\ $ (GND))) # (!\datapath|cicli_da_attendere\(1) & (!\datapath|cicli_da_attendere[0]~6\ & VCC))
-- \datapath|cicli_da_attendere[1]~8\ = CARRY((\datapath|cicli_da_attendere\(1) & !\datapath|cicli_da_attendere[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|cicli_da_attendere\(1),
	datad => VCC,
	cin => \datapath|cicli_da_attendere[0]~6\,
	combout => \datapath|cicli_da_attendere[1]~7_combout\,
	cout => \datapath|cicli_da_attendere[1]~8\);

-- Location: LCCOMB_X48_Y7_N8
\datapath|cicli_casuali_attesa[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_casuali_attesa[0]~2_combout\ = !\datapath|cicli_casuali_attesa\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|cicli_casuali_attesa\(0),
	combout => \datapath|cicli_casuali_attesa[0]~2_combout\);

-- Location: LCFF_X48_Y7_N9
\datapath|cicli_casuali_attesa[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_casuali_attesa[0]~2_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(0));

-- Location: LCCOMB_X48_Y7_N28
\datapath|cicli_casuali_attesa~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_casuali_attesa~1_combout\ = (\datapath|cicli_casuali_attesa\(0) & ((\datapath|cicli_casuali_attesa\(2) & ((\datapath|cicli_casuali_attesa\(1)))) # (!\datapath|cicli_casuali_attesa\(2) & (!\datapath|cicli_casuali_attesa\(3) & 
-- !\datapath|cicli_casuali_attesa\(1))))) # (!\datapath|cicli_casuali_attesa\(0) & (((\datapath|cicli_casuali_attesa\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_casuali_attesa\(3),
	datab => \datapath|cicli_casuali_attesa\(0),
	datac => \datapath|cicli_casuali_attesa\(2),
	datad => \datapath|cicli_casuali_attesa\(1),
	combout => \datapath|cicli_casuali_attesa~1_combout\);

-- Location: LCFF_X48_Y7_N29
\datapath|cicli_casuali_attesa[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_casuali_attesa~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(2));

-- Location: LCCOMB_X48_Y7_N26
\datapath|cicli_casuali_attesa~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_casuali_attesa~0_combout\ = (\datapath|cicli_casuali_attesa\(0) & (!\datapath|cicli_casuali_attesa\(1) & ((\datapath|cicli_casuali_attesa\(2)) # (!\datapath|cicli_casuali_attesa\(3))))) # (!\datapath|cicli_casuali_attesa\(0) & 
-- (((\datapath|cicli_casuali_attesa\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_casuali_attesa\(3),
	datab => \datapath|cicli_casuali_attesa\(0),
	datac => \datapath|cicli_casuali_attesa\(1),
	datad => \datapath|cicli_casuali_attesa\(2),
	combout => \datapath|cicli_casuali_attesa~0_combout\);

-- Location: LCFF_X48_Y7_N27
\datapath|cicli_casuali_attesa[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_casuali_attesa~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(1));

-- Location: LCCOMB_X48_Y7_N30
\datapath|cicli_casuali_attesa[1]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_casuali_attesa[1]~_wirecell_combout\ = !\datapath|cicli_casuali_attesa\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|cicli_casuali_attesa\(1),
	combout => \datapath|cicli_casuali_attesa[1]~_wirecell_combout\);

-- Location: LCCOMB_X48_Y7_N22
\datapath|cicli_da_attendere[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_da_attendere[3]~11_combout\ = (\datapath|cicli_da_attendere\(3) & (\datapath|cicli_da_attendere[2]~10\ $ (GND))) # (!\datapath|cicli_da_attendere\(3) & (!\datapath|cicli_da_attendere[2]~10\ & VCC))
-- \datapath|cicli_da_attendere[3]~12\ = CARRY((\datapath|cicli_da_attendere\(3) & !\datapath|cicli_da_attendere[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|cicli_da_attendere\(3),
	datad => VCC,
	cin => \datapath|cicli_da_attendere[2]~10\,
	combout => \datapath|cicli_da_attendere[3]~11_combout\,
	cout => \datapath|cicli_da_attendere[3]~12\);

-- Location: LCCOMB_X48_Y7_N24
\datapath|cicli_da_attendere[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_da_attendere[4]~13_combout\ = \datapath|cicli_da_attendere\(4) $ (\datapath|cicli_da_attendere[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_da_attendere\(4),
	cin => \datapath|cicli_da_attendere[3]~12\,
	combout => \datapath|cicli_da_attendere[4]~13_combout\);

-- Location: LCFF_X48_Y7_N25
\datapath|cicli_da_attendere[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_da_attendere[4]~13_combout\,
	sdata => VCC,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => \datapath|Equal2~1_combout\,
	ena => \datapath|aggiungi_dado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_da_attendere\(4));

-- Location: LCFF_X48_Y7_N17
\datapath|cicli_da_attendere[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_da_attendere[0]~5_combout\,
	sdata => \datapath|cicli_casuali_attesa\(0),
	aclr => \ALT_INV_RESET_N~regout\,
	sload => \datapath|Equal2~1_combout\,
	ena => \datapath|aggiungi_dado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_da_attendere\(0));

-- Location: LCCOMB_X48_Y7_N12
\datapath|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal2~0_combout\ = (!\datapath|cicli_da_attendere\(2) & (!\datapath|cicli_da_attendere\(3) & (!\datapath|cicli_da_attendere\(0) & !\datapath|cicli_da_attendere\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_da_attendere\(2),
	datab => \datapath|cicli_da_attendere\(3),
	datac => \datapath|cicli_da_attendere\(0),
	datad => \datapath|cicli_da_attendere\(1),
	combout => \datapath|Equal2~0_combout\);

-- Location: LCCOMB_X48_Y7_N2
\datapath|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal2~1_combout\ = (!\datapath|cicli_da_attendere\(4) & \datapath|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|cicli_da_attendere\(4),
	datad => \datapath|Equal2~0_combout\,
	combout => \datapath|Equal2~1_combout\);

-- Location: LCFF_X48_Y7_N19
\datapath|cicli_da_attendere[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_da_attendere[1]~7_combout\,
	sdata => \datapath|cicli_casuali_attesa[1]~_wirecell_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => \datapath|Equal2~1_combout\,
	ena => \datapath|aggiungi_dado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_da_attendere\(1));

-- Location: LCCOMB_X48_Y7_N20
\datapath|cicli_da_attendere[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_da_attendere[2]~9_combout\ = (\datapath|cicli_da_attendere\(2) & (!\datapath|cicli_da_attendere[1]~8\)) # (!\datapath|cicli_da_attendere\(2) & ((\datapath|cicli_da_attendere[1]~8\) # (GND)))
-- \datapath|cicli_da_attendere[2]~10\ = CARRY((!\datapath|cicli_da_attendere[1]~8\) # (!\datapath|cicli_da_attendere\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_da_attendere\(2),
	datad => VCC,
	cin => \datapath|cicli_da_attendere[1]~8\,
	combout => \datapath|cicli_da_attendere[2]~9_combout\,
	cout => \datapath|cicli_da_attendere[2]~10\);

-- Location: LCCOMB_X48_Y7_N14
\datapath|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add1~0_combout\ = \datapath|cicli_casuali_attesa\(3) $ (((!\datapath|cicli_casuali_attesa\(2) & (\datapath|cicli_casuali_attesa\(0) & !\datapath|cicli_casuali_attesa\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_casuali_attesa\(2),
	datab => \datapath|cicli_casuali_attesa\(0),
	datac => \datapath|cicli_casuali_attesa\(3),
	datad => \datapath|cicli_casuali_attesa\(1),
	combout => \datapath|Add1~0_combout\);

-- Location: LCFF_X48_Y7_N15
\datapath|cicli_casuali_attesa[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|Add1~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(3));

-- Location: LCFF_X48_Y7_N23
\datapath|cicli_da_attendere[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_da_attendere[3]~11_combout\,
	sdata => \datapath|cicli_casuali_attesa\(3),
	aclr => \ALT_INV_RESET_N~regout\,
	sload => \datapath|Equal2~1_combout\,
	ena => \datapath|aggiungi_dado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_da_attendere\(3));

-- Location: LCCOMB_X48_Y7_N4
\datapath|cicli_casuali_attesa[2]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_casuali_attesa[2]~_wirecell_combout\ = !\datapath|cicli_casuali_attesa\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|cicli_casuali_attesa\(2),
	combout => \datapath|cicli_casuali_attesa[2]~_wirecell_combout\);

-- Location: LCFF_X48_Y7_N21
\datapath|cicli_da_attendere[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_da_attendere[2]~9_combout\,
	sdata => \datapath|cicli_casuali_attesa[2]~_wirecell_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => \datapath|Equal2~1_combout\,
	ena => \datapath|aggiungi_dado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_da_attendere\(2));

-- Location: LCCOMB_X48_Y7_N10
\datapath|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal3~0_combout\ = (\datapath|cicli_da_attendere\(0) & (\datapath|cicli_da_attendere\(3) & (\datapath|cicli_da_attendere\(2) & \datapath|cicli_da_attendere\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_da_attendere\(0),
	datab => \datapath|cicli_da_attendere\(3),
	datac => \datapath|cicli_da_attendere\(2),
	datad => \datapath|cicli_da_attendere\(1),
	combout => \datapath|Equal3~0_combout\);

-- Location: LCCOMB_X47_Y8_N0
\datapath|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal3~1_combout\ = (\datapath|Equal3~0_combout\ & \datapath|cicli_da_attendere\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal3~0_combout\,
	datad => \datapath|cicli_da_attendere\(4),
	combout => \datapath|Equal3~1_combout\);

-- Location: LCFF_X44_Y8_N1
\datapath|dado_aggiunto\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Equal3~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sclr => \datapath|ALT_INV_aggiungi_dado~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|dado_aggiunto~regout\);

-- Location: LCCOMB_X48_Y8_N30
\datapath|elimina_dado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|elimina_dado~0_combout\ = (\datapath|GIOCATORE_ELIMINATO~2_combout\ & ((\datapath|Mux58~4_combout\) # ((\datapath|Mux59~4_combout\) # (\datapath|Mux57~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GIOCATORE_ELIMINATO~2_combout\,
	datab => \datapath|Mux58~4_combout\,
	datac => \datapath|Mux59~4_combout\,
	datad => \datapath|Mux57~4_combout\,
	combout => \datapath|elimina_dado~0_combout\);

-- Location: LCCOMB_X49_Y8_N2
\datapath|elimina_dado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|elimina_dado~1_combout\ = (\datapath|elimina_dado~0_combout\) # ((\controller|Update_State_Controller:elimina_giocatore_old~regout\ & \datapath|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datac => \datapath|elimina_dado~0_combout\,
	datad => \datapath|Equal4~0_combout\,
	combout => \datapath|elimina_dado~1_combout\);

-- Location: LCCOMB_X48_Y8_N8
\datapath|giocatori_in_campo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~0_combout\ = \datapath|Mux57~4_combout\ $ (((\datapath|aggiungi_dado~regout\ & (\datapath|Mux58~4_combout\ & \datapath|Mux59~4_combout\)) # (!\datapath|aggiungi_dado~regout\ & (!\datapath|Mux58~4_combout\ & 
-- !\datapath|Mux59~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|aggiungi_dado~regout\,
	datab => \datapath|Mux57~4_combout\,
	datac => \datapath|Mux58~4_combout\,
	datad => \datapath|Mux59~4_combout\,
	combout => \datapath|giocatori_in_campo~0_combout\);

-- Location: LCCOMB_X47_Y8_N20
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\ = (\datapath|indice_giocatore\(2) & ((\datapath|aggiungi_dado~regout\ & ((\datapath|Equal3~1_combout\))) # (!\datapath|aggiungi_dado~regout\ & (\datapath|elimina_dado~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|aggiungi_dado~regout\,
	datab => \datapath|elimina_dado~regout\,
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|Equal3~1_combout\,
	combout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\);

-- Location: LCCOMB_X47_Y8_N8
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[3].numero_dadi_in_mano[1]~0_combout\ = (!\datapath|indice_giocatore\(1) & (\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\ & !\datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\,
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[1]~0_combout\);

-- Location: LCFF_X47_Y8_N15
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X45_Y8_N4
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\ = (\datapath|indice_giocatore\(0) & (\datapath|indice_giocatore\(1) & \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(0),
	datab => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\,
	combout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\);

-- Location: LCFF_X45_Y8_N9
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X44_Y8_N14
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~feeder_combout\ = \datapath|giocatori_in_campo~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|giocatori_in_campo~0_combout\,
	combout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~feeder_combout\);

-- Location: LCCOMB_X44_Y8_N10
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\ = (\datapath|indice_giocatore\(1) & (\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\ & !\datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\,
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\);

-- Location: LCFF_X44_Y8_N15
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X45_Y8_N8
\datapath|Mux57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux57~0_combout\ = (\datapath|indice_giocatore\(1) & ((\datapath|indice_giocatore\(0) & (\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2))) # (!\datapath|indice_giocatore\(0) & 
-- ((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2)))))) # (!\datapath|indice_giocatore\(1) & (!\datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2),
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2),
	combout => \datapath|Mux57~0_combout\);

-- Location: LCCOMB_X47_Y8_N14
\datapath|Mux57~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux57~1_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|Mux57~0_combout\)))) # (!\datapath|indice_giocatore\(1) & ((\datapath|Mux57~0_combout\ & ((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2)))) # 
-- (!\datapath|Mux57~0_combout\ & (\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2),
	datad => \datapath|Mux57~0_combout\,
	combout => \datapath|Mux57~1_combout\);

-- Location: LCCOMB_X48_Y8_N22
\datapath|indice_giocatore~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~4_combout\ = (\datapath|indice_giocatore[3]~3_combout\ & (!\datapath|Equal4~0_combout\ & ((\datapath|Mux58~4_combout\) # (\datapath|Mux59~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore[3]~3_combout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|Mux58~4_combout\,
	datad => \datapath|Mux59~4_combout\,
	combout => \datapath|indice_giocatore~4_combout\);

-- Location: LCCOMB_X49_Y8_N10
\datapath|GIOCATORE_AGGIUNTO~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|GIOCATORE_AGGIUNTO~2_combout\ = (\datapath|indice_giocatore~4_combout\ & ((\datapath|indice_giocatore\(2) & ((\datapath|Mux57~1_combout\))) # (!\datapath|indice_giocatore\(2) & (\datapath|Mux57~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux57~3_combout\,
	datab => \datapath|indice_giocatore\(2),
	datac => \datapath|Mux57~1_combout\,
	datad => \datapath|indice_giocatore~4_combout\,
	combout => \datapath|GIOCATORE_AGGIUNTO~2_combout\);

-- Location: LCFF_X49_Y8_N11
\datapath|GIOCATORE_AGGIUNTO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|GIOCATORE_AGGIUNTO~2_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GIOCATORE_AGGIUNTO~regout\);

-- Location: LCCOMB_X49_Y7_N12
\controller|nuovo_giocatore_old~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|nuovo_giocatore_old~1_combout\ = (!\datapath|GIOCATORE_AGGIUNTO~regout\ & ((\controller|Update_State_Controller:nuovo_giocatore_old~regout\) # ((\controller|Update_State_Controller~5_combout\ & \controller|nuovo_giocatore_old~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~5_combout\,
	datab => \controller|nuovo_giocatore_old~0_combout\,
	datac => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datad => \datapath|GIOCATORE_AGGIUNTO~regout\,
	combout => \controller|nuovo_giocatore_old~1_combout\);

-- Location: LCFF_X49_Y7_N13
\controller|Update_State_Controller:nuovo_giocatore_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|nuovo_giocatore_old~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:nuovo_giocatore_old~regout\);

-- Location: LCFF_X49_Y8_N3
\datapath|elimina_dado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|elimina_dado~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sclr => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|elimina_dado~regout\);

-- Location: LCCOMB_X47_Y8_N10
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~4_combout\ = (!\datapath|indice_giocatore\(2) & ((\datapath|aggiungi_dado~regout\ & ((\datapath|Equal3~1_combout\))) # (!\datapath|aggiungi_dado~regout\ & (\datapath|elimina_dado~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|aggiungi_dado~regout\,
	datab => \datapath|elimina_dado~regout\,
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|Equal3~1_combout\,
	combout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~4_combout\);

-- Location: LCCOMB_X47_Y8_N30
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]~0_combout\ = (!\datapath|indice_giocatore\(0) & (\datapath|indice_giocatore\(1) & \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~4_combout\,
	combout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]~0_combout\);

-- Location: LCCOMB_X44_Y8_N28
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~1_combout\ = (\datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]~0_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]~0_combout\ & 
-- ((\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]~0_combout\,
	combout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~1_combout\);

-- Location: LCFF_X44_Y8_N29
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X46_Y8_N8
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\ = (!\datapath|indice_giocatore\(1) & (\datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~4_combout\ & \datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~4_combout\,
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\);

-- Location: LCCOMB_X44_Y8_N30
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~1_combout\ = (\datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\ & 
-- ((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\,
	combout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~1_combout\);

-- Location: LCFF_X44_Y8_N31
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X44_Y8_N2
\datapath|Mux59~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux59~2_combout\ = (\datapath|indice_giocatore\(1) & (\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0) & ((\datapath|indice_giocatore\(0))))) # (!\datapath|indice_giocatore\(1) & (((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0)) 
-- # (!\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0),
	datab => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux59~2_combout\);

-- Location: LCCOMB_X44_Y8_N26
\datapath|Mux59~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux59~3_combout\ = (\datapath|indice_giocatore\(0) & (((\datapath|Mux59~2_combout\)))) # (!\datapath|indice_giocatore\(0) & ((\datapath|Mux59~2_combout\ & (\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0))) # (!\datapath|Mux59~2_combout\ 
-- & ((\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0),
	datab => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0),
	datac => \datapath|indice_giocatore\(0),
	datad => \datapath|Mux59~2_combout\,
	combout => \datapath|Mux59~3_combout\);

-- Location: LCCOMB_X45_Y8_N18
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]~1_combout\ = (\datapath|giocatori_in_campo[3].numero_dadi_in_mano[1]~0_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[3].numero_dadi_in_mano[1]~0_combout\ & 
-- ((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[1]~0_combout\,
	combout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]~1_combout\);

-- Location: LCFF_X45_Y8_N19
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X44_Y8_N18
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~3_combout\ = (\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\ & 
-- ((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\,
	combout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~3_combout\);

-- Location: LCFF_X44_Y8_N19
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~3_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X44_Y8_N12
\datapath|Mux59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux59~0_combout\ = (\datapath|indice_giocatore\(0) & (((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0) & \datapath|indice_giocatore\(1))))) # (!\datapath|indice_giocatore\(0) & ((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0)) 
-- # ((!\datapath|indice_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0),
	datab => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0),
	datac => \datapath|indice_giocatore\(0),
	datad => \datapath|indice_giocatore\(1),
	combout => \datapath|Mux59~0_combout\);

-- Location: LCCOMB_X44_Y8_N22
\datapath|Mux59~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux59~1_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|Mux59~0_combout\)))) # (!\datapath|indice_giocatore\(1) & ((\datapath|Mux59~0_combout\ & ((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0)))) # 
-- (!\datapath|Mux59~0_combout\ & (\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0),
	datad => \datapath|Mux59~0_combout\,
	combout => \datapath|Mux59~1_combout\);

-- Location: LCCOMB_X44_Y8_N4
\datapath|Mux59~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux59~4_combout\ = (\datapath|indice_giocatore\(2) & ((\datapath|Mux59~1_combout\))) # (!\datapath|indice_giocatore\(2) & (\datapath|Mux59~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux59~3_combout\,
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|Mux59~1_combout\,
	combout => \datapath|Mux59~4_combout\);

-- Location: LCCOMB_X47_Y8_N6
\datapath|giocatori_in_campo~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~1_combout\ = \datapath|aggiungi_dado~regout\ $ (\datapath|Mux58~4_combout\ $ (!\datapath|Mux59~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|aggiungi_dado~regout\,
	datac => \datapath|Mux58~4_combout\,
	datad => \datapath|Mux59~4_combout\,
	combout => \datapath|giocatori_in_campo~1_combout\);

-- Location: LCCOMB_X47_Y8_N28
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\ = (!\datapath|indice_giocatore\(0) & (!\datapath|indice_giocatore\(1) & \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~4_combout\,
	combout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\);

-- Location: LCFF_X48_Y8_N5
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X46_Y8_N2
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~2_combout\ = (\datapath|indice_giocatore\(1) & (\datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~4_combout\ & \datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~4_combout\,
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~2_combout\);

-- Location: LCFF_X46_Y8_N23
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X46_Y8_N22
\datapath|Mux58~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux58~2_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1) & \datapath|indice_giocatore\(0))))) # (!\datapath|indice_giocatore\(1) & ((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1)) 
-- # ((!\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux58~2_combout\);

-- Location: LCCOMB_X48_Y8_N4
\datapath|Mux58~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux58~3_combout\ = (\datapath|indice_giocatore\(0) & (((\datapath|Mux58~2_combout\)))) # (!\datapath|indice_giocatore\(0) & ((\datapath|Mux58~2_combout\ & ((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1)))) # 
-- (!\datapath|Mux58~2_combout\ & (\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1),
	datad => \datapath|Mux58~2_combout\,
	combout => \datapath|Mux58~3_combout\);

-- Location: LCFF_X47_Y8_N3
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X47_Y8_N22
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[2].numero_dadi_in_mano[1]~0_combout\ = (!\datapath|indice_giocatore\(1) & (\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\ & \datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\,
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[1]~0_combout\);

-- Location: LCFF_X47_Y8_N13
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1));

-- Location: LCFF_X45_Y8_N29
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X44_Y8_N8
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~feeder_combout\ = \datapath|giocatori_in_campo~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|giocatori_in_campo~1_combout\,
	combout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~feeder_combout\);

-- Location: LCFF_X44_Y8_N9
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X45_Y8_N28
\datapath|Mux58~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux58~0_combout\ = (\datapath|indice_giocatore\(1) & ((\datapath|indice_giocatore\(0) & (\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1))) # (!\datapath|indice_giocatore\(0) & 
-- ((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1)))))) # (!\datapath|indice_giocatore\(1) & (!\datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1),
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1),
	combout => \datapath|Mux58~0_combout\);

-- Location: LCCOMB_X47_Y8_N12
\datapath|Mux58~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux58~1_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|Mux58~0_combout\)))) # (!\datapath|indice_giocatore\(1) & ((\datapath|Mux58~0_combout\ & (\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1))) # (!\datapath|Mux58~0_combout\ 
-- & ((\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datab => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1),
	datac => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1),
	datad => \datapath|Mux58~0_combout\,
	combout => \datapath|Mux58~1_combout\);

-- Location: LCCOMB_X48_Y8_N14
\datapath|Mux58~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux58~4_combout\ = (\datapath|indice_giocatore\(2) & ((\datapath|Mux58~1_combout\))) # (!\datapath|indice_giocatore\(2) & (\datapath|Mux58~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(2),
	datac => \datapath|Mux58~3_combout\,
	datad => \datapath|Mux58~1_combout\,
	combout => \datapath|Mux58~4_combout\);

-- Location: LCCOMB_X48_Y8_N26
\datapath|indice_giocatore[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[3]~17_combout\ = (\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & (\datapath|dado_aggiunto~regout\ & ((\datapath|Mux57~4_combout\)))) # (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & 
-- (((\datapath|dado_eliminato~regout\ & !\datapath|Mux57~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datab => \datapath|dado_aggiunto~regout\,
	datac => \datapath|dado_eliminato~regout\,
	datad => \datapath|Mux57~4_combout\,
	combout => \datapath|indice_giocatore[3]~17_combout\);

-- Location: LCCOMB_X48_Y8_N2
\datapath|indice_giocatore[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[3]~6_combout\ = (\datapath|indice_giocatore[3]~17_combout\ & (\controller|Update_State_Controller:nuovo_giocatore_old~regout\ $ (((!\datapath|Mux58~4_combout\ & !\datapath|Mux59~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datab => \datapath|Mux58~4_combout\,
	datac => \datapath|Mux59~4_combout\,
	datad => \datapath|indice_giocatore[3]~17_combout\,
	combout => \datapath|indice_giocatore[3]~6_combout\);

-- Location: LCCOMB_X48_Y8_N28
\datapath|indice_giocatore[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[3]~7_combout\ = (\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & (((!\datapath|Equal4~0_combout\ & !\datapath|indice_giocatore[3]~6_combout\)))) # 
-- (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & (((!\datapath|Equal4~0_combout\ & !\datapath|indice_giocatore[3]~6_combout\)) # (!\controller|Update_State_Controller:elimina_giocatore_old~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datab => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|indice_giocatore[3]~6_combout\,
	combout => \datapath|indice_giocatore[3]~7_combout\);

-- Location: LCCOMB_X45_Y8_N24
\datapath|indice_giocatore[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~8_combout\ = (\datapath|indice_giocatore[3]~7_combout\ & (((\datapath|indice_giocatore\(1))))) # (!\datapath|indice_giocatore[3]~7_combout\ & (!\datapath|indice_giocatore[1]~5_combout\ & (\datapath|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore[1]~5_combout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|indice_giocatore[3]~7_combout\,
	combout => \datapath|indice_giocatore[1]~8_combout\);

-- Location: LCFF_X45_Y8_N25
\datapath|indice_giocatore[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore[1]~8_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(1));

-- Location: LCCOMB_X45_Y8_N22
\datapath|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal4~0_combout\ = (!\datapath|indice_giocatore\(3) & (!\datapath|indice_giocatore\(0) & (!\datapath|indice_giocatore\(2) & !\datapath|indice_giocatore\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(3),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore\(1),
	combout => \datapath|Equal4~0_combout\);

-- Location: LCCOMB_X45_Y8_N2
\datapath|indice_giocatore[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[0]~10_combout\ = (\datapath|indice_giocatore[3]~7_combout\ & (((\datapath|indice_giocatore\(0))))) # (!\datapath|indice_giocatore[3]~7_combout\ & (\datapath|indice_giocatore~9_combout\ & (\datapath|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore~9_combout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|indice_giocatore\(0),
	datad => \datapath|indice_giocatore[3]~7_combout\,
	combout => \datapath|indice_giocatore[0]~10_combout\);

-- Location: LCFF_X45_Y8_N3
\datapath|indice_giocatore[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore[0]~10_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(0));

-- Location: LCFF_X48_Y8_N21
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2));

-- Location: LCFF_X46_Y8_N19
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X46_Y8_N18
\datapath|Mux57~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux57~2_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2) & \datapath|indice_giocatore\(0))))) # (!\datapath|indice_giocatore\(1) & ((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2)) 
-- # ((!\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux57~2_combout\);

-- Location: LCCOMB_X48_Y8_N20
\datapath|Mux57~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux57~3_combout\ = (\datapath|indice_giocatore\(0) & (((\datapath|Mux57~2_combout\)))) # (!\datapath|indice_giocatore\(0) & ((\datapath|Mux57~2_combout\ & (\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2))) # (!\datapath|Mux57~2_combout\ 
-- & ((\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2),
	datad => \datapath|Mux57~2_combout\,
	combout => \datapath|Mux57~3_combout\);

-- Location: LCCOMB_X48_Y8_N0
\datapath|Mux57~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux57~4_combout\ = (\datapath|indice_giocatore\(2) & ((\datapath|Mux57~1_combout\))) # (!\datapath|indice_giocatore\(2) & (\datapath|Mux57~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(2),
	datac => \datapath|Mux57~3_combout\,
	datad => \datapath|Mux57~1_combout\,
	combout => \datapath|Mux57~4_combout\);

-- Location: LCCOMB_X48_Y8_N16
\datapath|aggiungi_dado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|aggiungi_dado~0_combout\ = (\datapath|dado_aggiunto~regout\ & (((!\datapath|Mux58~4_combout\ & !\datapath|Mux59~4_combout\)) # (!\datapath|Mux57~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|dado_aggiunto~regout\,
	datab => \datapath|Mux57~4_combout\,
	datac => \datapath|Mux58~4_combout\,
	datad => \datapath|Mux59~4_combout\,
	combout => \datapath|aggiungi_dado~0_combout\);

-- Location: LCCOMB_X49_Y7_N22
\datapath|aggiungi_dado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|aggiungi_dado~1_combout\ = (\datapath|Equal4~0_combout\) # ((\datapath|aggiungi_dado~0_combout\) # ((!\datapath|dado_aggiunto~regout\ & \datapath|aggiungi_dado~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \datapath|dado_aggiunto~regout\,
	datac => \datapath|aggiungi_dado~regout\,
	datad => \datapath|aggiungi_dado~0_combout\,
	combout => \datapath|aggiungi_dado~1_combout\);

-- Location: LCFF_X49_Y7_N23
\datapath|aggiungi_dado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|aggiungi_dado~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|aggiungi_dado~regout\);

-- Location: LCCOMB_X45_Y8_N26
\datapath|dado_eliminato~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dado_eliminato~0_combout\ = (\datapath|elimina_dado~regout\ & !\datapath|aggiungi_dado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|elimina_dado~regout\,
	datac => \datapath|aggiungi_dado~regout\,
	combout => \datapath|dado_eliminato~0_combout\);

-- Location: LCFF_X45_Y8_N27
\datapath|dado_eliminato\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|dado_eliminato~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|dado_eliminato~regout\);

-- Location: LCCOMB_X48_Y8_N6
\datapath|GIOCATORE_ELIMINATO~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|GIOCATORE_ELIMINATO~2_combout\ = (\datapath|dado_eliminato~regout\ & \controller|Update_State_Controller:elimina_giocatore_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|dado_eliminato~regout\,
	datad => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	combout => \datapath|GIOCATORE_ELIMINATO~2_combout\);

-- Location: LCCOMB_X49_Y8_N14
\datapath|numero_giocatori_in_campo[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[2]~1_combout\ = (\datapath|Equal4~0_combout\) # ((\datapath|Mux57~4_combout\ & (!\datapath|dado_aggiunto~regout\)) # (!\datapath|Mux57~4_combout\ & ((!\datapath|GIOCATORE_ELIMINATO~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|dado_aggiunto~regout\,
	datab => \datapath|GIOCATORE_ELIMINATO~2_combout\,
	datac => \datapath|Mux57~4_combout\,
	datad => \datapath|Equal4~0_combout\,
	combout => \datapath|numero_giocatori_in_campo[2]~1_combout\);

-- Location: LCCOMB_X48_Y8_N12
\datapath|numero_giocatori_in_campo[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[2]~2_combout\ = (\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & (((!\datapath|Mux58~4_combout\ & !\datapath|Mux59~4_combout\)) # (!\datapath|Mux57~4_combout\))) # 
-- (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & ((\datapath|Mux58~4_combout\) # ((\datapath|Mux59~4_combout\) # (\datapath|Mux57~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datab => \datapath|Mux58~4_combout\,
	datac => \datapath|Mux59~4_combout\,
	datad => \datapath|Mux57~4_combout\,
	combout => \datapath|numero_giocatori_in_campo[2]~2_combout\);

-- Location: LCCOMB_X49_Y8_N8
\datapath|numero_giocatori_in_campo[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[2]~3_combout\ = (!\datapath|numero_giocatori_in_campo[2]~1_combout\ & !\datapath|numero_giocatori_in_campo[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|numero_giocatori_in_campo[2]~1_combout\,
	datad => \datapath|numero_giocatori_in_campo[2]~2_combout\,
	combout => \datapath|numero_giocatori_in_campo[2]~3_combout\);

-- Location: LCFF_X49_Y8_N13
\datapath|numero_giocatori_in_campo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo[0]~9_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|numero_giocatori_in_campo[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(0));

-- Location: LCCOMB_X49_Y8_N18
\datapath|numero_giocatori_in_campo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo~0_combout\ = \datapath|numero_giocatori_in_campo\(0) $ (\datapath|numero_giocatori_in_campo\(1) $ (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|numero_giocatori_in_campo\(0),
	datac => \datapath|numero_giocatori_in_campo\(1),
	datad => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	combout => \datapath|numero_giocatori_in_campo~0_combout\);

-- Location: LCFF_X49_Y8_N19
\datapath|numero_giocatori_in_campo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|numero_giocatori_in_campo[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(1));

-- Location: LCCOMB_X47_Y8_N16
\datapath|numero_giocatori_in_campo[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[2]~4_combout\ = (\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & (\datapath|numero_giocatori_in_campo\(1) & \datapath|numero_giocatori_in_campo\(0))) # 
-- (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & (!\datapath|numero_giocatori_in_campo\(1) & !\datapath|numero_giocatori_in_campo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datab => \datapath|numero_giocatori_in_campo\(1),
	datad => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|numero_giocatori_in_campo[2]~4_combout\);

-- Location: LCCOMB_X49_Y8_N22
\datapath|numero_giocatori_in_campo[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[2]~5_combout\ = \datapath|numero_giocatori_in_campo\(2) $ (((!\datapath|numero_giocatori_in_campo[2]~1_combout\ & (\datapath|numero_giocatori_in_campo[2]~4_combout\ & 
-- !\datapath|numero_giocatori_in_campo[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo[2]~1_combout\,
	datab => \datapath|numero_giocatori_in_campo[2]~4_combout\,
	datac => \datapath|numero_giocatori_in_campo\(2),
	datad => \datapath|numero_giocatori_in_campo[2]~2_combout\,
	combout => \datapath|numero_giocatori_in_campo[2]~5_combout\);

-- Location: LCFF_X49_Y8_N23
\datapath|numero_giocatori_in_campo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo[2]~5_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(2));

-- Location: LCCOMB_X47_Y8_N26
\datapath|indice_giocatore~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~12_combout\ = \datapath|numero_giocatori_in_campo\(2) $ (((!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & ((\datapath|numero_giocatori_in_campo\(1)) # (\datapath|numero_giocatori_in_campo\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|numero_giocatori_in_campo\(2),
	datad => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|indice_giocatore~12_combout\);

-- Location: LCCOMB_X47_Y8_N4
\datapath|indice_giocatore~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~13_combout\ = (\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & ((\datapath|indice_giocatore\(2) $ (!\datapath|indice_giocatore~12_combout\)))) # (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ 
-- & (\controller|Update_State_Controller:elimina_giocatore_old~regout\ & (\datapath|indice_giocatore\(2) $ (\datapath|indice_giocatore~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datab => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore~12_combout\,
	combout => \datapath|indice_giocatore~13_combout\);

-- Location: LCCOMB_X48_Y8_N24
\datapath|indice_giocatore~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~2_combout\ = (\datapath|GIOCATORE_ELIMINATO~2_combout\ & (!\datapath|Equal4~0_combout\ & (!\datapath|Mux58~4_combout\ & !\datapath|Mux59~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GIOCATORE_ELIMINATO~2_combout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|Mux58~4_combout\,
	datad => \datapath|Mux59~4_combout\,
	combout => \datapath|indice_giocatore~2_combout\);

-- Location: LCCOMB_X48_Y8_N10
\datapath|indice_giocatore~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~11_combout\ = (\datapath|Mux57~1_combout\ & (((\datapath|indice_giocatore~4_combout\)))) # (!\datapath|Mux57~1_combout\ & (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & 
-- (\datapath|indice_giocatore~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux57~1_combout\,
	datab => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datac => \datapath|indice_giocatore~2_combout\,
	datad => \datapath|indice_giocatore~4_combout\,
	combout => \datapath|indice_giocatore~11_combout\);

-- Location: LCCOMB_X49_Y8_N26
\datapath|indice_giocatore~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~14_combout\ = (!\datapath|indice_giocatore~11_combout\ & (\datapath|indice_giocatore\(2) $ (((\datapath|Equal4~0_combout\ & \datapath|indice_giocatore~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \datapath|indice_giocatore~13_combout\,
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore~11_combout\,
	combout => \datapath|indice_giocatore~14_combout\);

-- Location: LCFF_X49_Y8_N27
\datapath|indice_giocatore[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore~14_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(2));

-- Location: LCCOMB_X49_Y8_N20
\datapath|GIOCATORE_ELIMINATO~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|GIOCATORE_ELIMINATO~3_combout\ = (\datapath|indice_giocatore~2_combout\ & ((\datapath|indice_giocatore\(2) & ((!\datapath|Mux57~1_combout\))) # (!\datapath|indice_giocatore\(2) & (!\datapath|Mux57~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux57~3_combout\,
	datab => \datapath|indice_giocatore\(2),
	datac => \datapath|Mux57~1_combout\,
	datad => \datapath|indice_giocatore~2_combout\,
	combout => \datapath|GIOCATORE_ELIMINATO~3_combout\);

-- Location: LCFF_X49_Y8_N21
\datapath|GIOCATORE_ELIMINATO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|GIOCATORE_ELIMINATO~3_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sclr => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GIOCATORE_ELIMINATO~regout\);

-- Location: LCCOMB_X49_Y6_N30
\controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~2_combout\ = (\datapath|GIOCATORE_ELIMINATO~regout\ & (\controller|numero_giocatori\(0))) # (!\datapath|GIOCATORE_ELIMINATO~regout\ & ((\datapath|GIOCATORE_AGGIUNTO~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|numero_giocatori\(0),
	datac => \datapath|GIOCATORE_ELIMINATO~regout\,
	datad => \datapath|GIOCATORE_AGGIUNTO~regout\,
	combout => \controller|Add0~2_combout\);

-- Location: LCFF_X49_Y6_N1
\controller|numero_giocatori[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[0]~10_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(0));

-- Location: LCFF_X49_Y6_N11
\controller|numero_giocatori[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[5]~20_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(5));

-- Location: LCFF_X49_Y6_N17
\controller|numero_giocatori[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[8]~26_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(8));

-- Location: LCCOMB_X49_Y8_N16
\controller|LEDG[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|LEDG[0]~0_combout\ = (\datapath|GIOCATORE_ELIMINATO~regout\) # (\controller|LEDG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GIOCATORE_ELIMINATO~regout\,
	datac => \controller|LEDG\(0),
	combout => \controller|LEDG[0]~0_combout\);

-- Location: LCFF_X49_Y8_N17
\controller|LEDG[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|LEDG[0]~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|LEDG\(0));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|numero_giocatori\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|numero_giocatori\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|numero_giocatori\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|numero_giocatori\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|numero_giocatori\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|numero_giocatori\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|numero_giocatori\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|numero_giocatori\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|numero_giocatori\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|numero_giocatori\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \controller|LEDG\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));
END structure;


