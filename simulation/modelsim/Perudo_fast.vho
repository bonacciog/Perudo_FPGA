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

-- DATE "10/01/2019 10:39:51"

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
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \datapath|cicli_da_attendere[0]~5_combout\ : std_logic;
SIGNAL \controller|initialization_state~regout\ : std_logic;
SIGNAL \controller|numero_giocatori[3]~12_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[3]~13_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:prev_old~regout\ : std_logic;
SIGNAL \controller|initialization_state~0_combout\ : std_logic;
SIGNAL \controller|initialization_state~1_combout\ : std_logic;
SIGNAL \controller|initialization_state~2_combout\ : std_logic;
SIGNAL \controller|initialization_state~3_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~5_combout\ : std_logic;
SIGNAL \datapath|Equal7~0_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~9_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[3]~4_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \controller|numero_giocatori[0]~10_combout\ : std_logic;
SIGNAL \reset_sync_reg~regout\ : std_logic;
SIGNAL \RESET_N~feeder_combout\ : std_logic;
SIGNAL \RESET_N~regout\ : std_logic;
SIGNAL \controller|numero_giocatori[0]~11\ : std_logic;
SIGNAL \controller|numero_giocatori[1]~15_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[1]~16\ : std_logic;
SIGNAL \controller|numero_giocatori[2]~18\ : std_logic;
SIGNAL \controller|numero_giocatori[3]~20\ : std_logic;
SIGNAL \controller|numero_giocatori[4]~22\ : std_logic;
SIGNAL \controller|numero_giocatori[5]~24\ : std_logic;
SIGNAL \controller|numero_giocatori[6]~26\ : std_logic;
SIGNAL \controller|numero_giocatori[7]~27_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[7]~28\ : std_logic;
SIGNAL \controller|numero_giocatori[8]~29_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[8]~30\ : std_logic;
SIGNAL \controller|numero_giocatori[9]~31_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~1_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:next_old~feeder_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:next_old~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller~2_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~5_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[2]~17_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~3_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~4_combout\ : std_logic;
SIGNAL \controller|elimina_giocatore_old~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:elimina_giocatore_old~regout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo~2_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~0_combout\ : std_logic;
SIGNAL \datapath|elimina_dado~0_combout\ : std_logic;
SIGNAL \datapath|elimina_dado~regout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[0]~6\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[1]~8\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[2]~9_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa[0]~2_combout\ : std_logic;
SIGNAL \datapath|Add1~0_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa~1_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa[2]~_wirecell_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[2]~10\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[3]~12\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[4]~13_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[3]~11_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[1]~7_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa~0_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa[1]~_wirecell_combout\ : std_logic;
SIGNAL \datapath|Equal2~0_combout\ : std_logic;
SIGNAL \datapath|Equal2~1_combout\ : std_logic;
SIGNAL \datapath|Equal3~0_combout\ : std_logic;
SIGNAL \datapath|Equal3~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~4_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~2_combout\ : std_logic;
SIGNAL \datapath|Mux57~2_combout\ : std_logic;
SIGNAL \datapath|Mux57~3_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\ : std_logic;
SIGNAL \datapath|Mux57~0_combout\ : std_logic;
SIGNAL \datapath|Mux57~1_combout\ : std_logic;
SIGNAL \datapath|Mux57~4_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_AGGIUNTO~1_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[2]~0_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[2]~1_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~6_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~3_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~4_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~7_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~3_combout\ : std_logic;
SIGNAL \datapath|Mux59~0_combout\ : std_logic;
SIGNAL \datapath|Mux59~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~3_combout\ : std_logic;
SIGNAL \datapath|Mux59~2_combout\ : std_logic;
SIGNAL \datapath|Mux59~3_combout\ : std_logic;
SIGNAL \datapath|Mux59~4_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_AGGIUNTO~0_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[3]~3_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[0]~22_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~15_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~16_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[0]~8_combout\ : std_logic;
SIGNAL \datapath|dado_aggiunto~regout\ : std_logic;
SIGNAL \datapath|indice_giocatore[0]~10_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[0]~11_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[3]~17_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~18_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|Mux58~0_combout\ : std_logic;
SIGNAL \datapath|Mux58~1_combout\ : std_logic;
SIGNAL \datapath|Mux58~2_combout\ : std_logic;
SIGNAL \datapath|Mux58~3_combout\ : std_logic;
SIGNAL \datapath|Mux58~4_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[0]~2_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[0]~12_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[0]~13_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[0]~14_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[3]~5_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[0]~7_combout\ : std_logic;
SIGNAL \datapath|Add13~0_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[3]~19_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[3]~20_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[3]~21_combout\ : std_logic;
SIGNAL \datapath|Equal4~0_combout\ : std_logic;
SIGNAL \datapath|aggiungi_dado~0_combout\ : std_logic;
SIGNAL \datapath|aggiungi_dado~1_combout\ : std_logic;
SIGNAL \datapath|aggiungi_dado~2_combout\ : std_logic;
SIGNAL \datapath|aggiungi_dado~regout\ : std_logic;
SIGNAL \datapath|dado_eliminato~0_combout\ : std_logic;
SIGNAL \datapath|dado_eliminato~regout\ : std_logic;
SIGNAL \datapath|GIOCATORE_ELIMINATO~0_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_ELIMINATO~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller~6_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[4]~21_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[6]~25_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[5]~23_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~8_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_AGGIUNTO~regout\ : std_logic;
SIGNAL \controller|NUOVO_GIOCATORE~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:nuovo_giocatore_old~regout\ : std_logic;
SIGNAL \controller|numero_giocatori[3]~14_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[3]~19_combout\ : std_logic;
SIGNAL \datapath|indice_turno_giocatore~0_combout\ : std_logic;
SIGNAL \datapath|PARTITA_INIZIATA~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller~7_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:enter_old~feeder_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:enter_old~regout\ : std_logic;
SIGNAL \controller|INIZIA_PARTITA~0_combout\ : std_logic;
SIGNAL \controller|INIZIA_PARTITA~regout\ : std_logic;
SIGNAL \datapath|PARTITA_INIZIATA~0_combout\ : std_logic;
SIGNAL \datapath|indice_turno_giocatore[1]~1_combout\ : std_logic;
SIGNAL \datapath|Equal8~0_combout\ : std_logic;
SIGNAL \datapath|Equal8~1_combout\ : std_logic;
SIGNAL \datapath|Equal8~2_combout\ : std_logic;
SIGNAL \datapath|indice_turno_giocatore~3_combout\ : std_logic;
SIGNAL \datapath|indice_turno_giocatore~2_combout\ : std_logic;
SIGNAL \datapath|TURNO_GIOCATORE~0_combout\ : std_logic;
SIGNAL \datapath|TURNO_GIOCATORE~1_combout\ : std_logic;
SIGNAL \datapath|TURNO_GIOCATORE~regout\ : std_logic;
SIGNAL \controller|internal_state.TURN_FPGA~0_combout\ : std_logic;
SIGNAL \controller|internal_state.TURN_FPGA~regout\ : std_logic;
SIGNAL \controller|internal_state.INIT~feeder_combout\ : std_logic;
SIGNAL \controller|internal_state.INIT~regout\ : std_logic;
SIGNAL \controller|Selector1~0_combout\ : std_logic;
SIGNAL \controller|internal_state.TURN_PLAYER~feeder_combout\ : std_logic;
SIGNAL \controller|internal_state.TURN_PLAYER~regout\ : std_logic;
SIGNAL \controller|Selector0~0_combout\ : std_logic;
SIGNAL \controller|stato\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \controller|numero_giocatori\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \datapath|numero_giocatori_in_campo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|indice_turno_giocatore\ : std_logic_vector(2 DOWNTO 0);
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

-- Location: LCFF_X49_Y9_N11
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

-- Location: LCCOMB_X49_Y9_N10
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

-- Location: LCFF_X48_Y8_N13
\controller|initialization_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|initialization_state~3_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|initialization_state~regout\);

-- Location: LCCOMB_X48_Y8_N20
\controller|numero_giocatori[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[3]~12_combout\ = (\controller|initialization_state~regout\ & !\controller|internal_state.INIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|initialization_state~regout\,
	datad => \controller|internal_state.INIT~regout\,
	combout => \controller|numero_giocatori[3]~12_combout\);

-- Location: LCCOMB_X48_Y8_N16
\controller|numero_giocatori[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[3]~13_combout\ = (((!\controller|Update_State_Controller~2_combout\) # (!\controller|Update_State_Controller~0_combout\)) # (!\controller|Update_State_Controller~1_combout\)) # (!\controller|numero_giocatori[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori[3]~12_combout\,
	datab => \controller|Update_State_Controller~1_combout\,
	datac => \controller|Update_State_Controller~0_combout\,
	datad => \controller|Update_State_Controller~2_combout\,
	combout => \controller|numero_giocatori[3]~13_combout\);

-- Location: LCFF_X48_Y8_N15
\controller|Update_State_Controller:prev_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \KEY~combout\(3),
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:prev_old~regout\);

-- Location: LCCOMB_X48_Y8_N30
\controller|initialization_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|initialization_state~0_combout\ = (\KEY~combout\(3) & (((!\controller|Update_State_Controller:next_old~regout\ & \KEY~combout\(2))) # (!\controller|Update_State_Controller:prev_old~regout\))) # (!\KEY~combout\(3) & 
-- (!\controller|Update_State_Controller:next_old~regout\ & ((\KEY~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(3),
	datab => \controller|Update_State_Controller:next_old~regout\,
	datac => \controller|Update_State_Controller:prev_old~regout\,
	datad => \KEY~combout\(2),
	combout => \controller|initialization_state~0_combout\);

-- Location: LCCOMB_X48_Y8_N22
\controller|initialization_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|initialization_state~1_combout\ = (\KEY~combout\(1) & (!\controller|Update_State_Controller:enter_old~regout\ & !\controller|internal_state.INIT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datac => \controller|Update_State_Controller:enter_old~regout\,
	datad => \controller|internal_state.INIT~regout\,
	combout => \controller|initialization_state~1_combout\);

-- Location: LCCOMB_X47_Y8_N16
\controller|initialization_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|initialization_state~2_combout\ = (\controller|initialization_state~1_combout\ & ((\controller|initialization_state~regout\) # (!\controller|initialization_state~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|initialization_state~0_combout\,
	datac => \controller|initialization_state~regout\,
	datad => \controller|initialization_state~1_combout\,
	combout => \controller|initialization_state~2_combout\);

-- Location: LCCOMB_X48_Y8_N12
\controller|initialization_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|initialization_state~3_combout\ = (\controller|initialization_state~2_combout\ & ((\controller|Update_State_Controller~8_combout\) # ((\controller|Update_State_Controller~7_combout\) # (!\controller|initialization_state~regout\)))) # 
-- (!\controller|initialization_state~2_combout\ & (((\controller|initialization_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~8_combout\,
	datab => \controller|initialization_state~2_combout\,
	datac => \controller|initialization_state~regout\,
	datad => \controller|Update_State_Controller~7_combout\,
	combout => \controller|initialization_state~3_combout\);

-- Location: LCFF_X48_Y10_N21
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2));

-- Location: LCFF_X46_Y10_N13
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2));

-- Location: LCFF_X48_Y10_N9
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1));

-- Location: LCFF_X46_Y10_N25
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1));

-- Location: LCFF_X47_Y10_N13
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0));

-- Location: LCFF_X47_Y10_N11
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0));

-- Location: LCFF_X47_Y10_N3
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X46_Y10_N12
\datapath|indice_giocatore~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~5_combout\ = (!\datapath|indice_giocatore\(2) & (!\controller|Update_State_Controller:elimina_giocatore_old~regout\ & !\controller|Update_State_Controller:nuovo_giocatore_old~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(2),
	datab => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datad => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	combout => \datapath|indice_giocatore~5_combout\);

-- Location: LCCOMB_X48_Y9_N10
\datapath|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal7~0_combout\ = (!\datapath|numero_giocatori_in_campo\(0) & !\datapath|numero_giocatori_in_campo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|numero_giocatori_in_campo\(1),
	combout => \datapath|Equal7~0_combout\);

-- Location: LCCOMB_X47_Y10_N20
\datapath|indice_giocatore~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~9_combout\ = \datapath|numero_giocatori_in_campo\(0) $ (\datapath|indice_giocatore[0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|indice_giocatore[0]~22_combout\,
	combout => \datapath|indice_giocatore~9_combout\);

-- Location: LCCOMB_X47_Y10_N12
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~1_combout\ = (\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\ & 
-- ((\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\,
	combout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~1_combout\);

-- Location: LCCOMB_X47_Y10_N10
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~1_combout\ = (\datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\ & 
-- ((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\,
	combout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~1_combout\);

-- Location: LCCOMB_X47_Y10_N2
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]~1_combout\ = (\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\ & 
-- ((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\,
	combout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]~1_combout\);

-- Location: LCCOMB_X49_Y10_N6
\datapath|numero_giocatori_in_campo[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[3]~4_combout\ = (\datapath|numero_giocatori_in_campo\(2) & (\datapath|numero_giocatori_in_campo\(1) & (\datapath|numero_giocatori_in_campo\(0) & !\datapath|GIOCATORE_ELIMINATO~0_combout\))) # 
-- (!\datapath|numero_giocatori_in_campo\(2) & (!\datapath|numero_giocatori_in_campo\(1) & (!\datapath|numero_giocatori_in_campo\(0) & \datapath|GIOCATORE_ELIMINATO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(2),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|GIOCATORE_ELIMINATO~0_combout\,
	combout => \datapath|numero_giocatori_in_campo[3]~4_combout\);

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

-- Location: LCCOMB_X49_Y8_N0
\controller|numero_giocatori[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[0]~10_combout\ = \controller|numero_giocatori\(0) $ (VCC)
-- \controller|numero_giocatori[0]~11\ = CARRY(\controller|numero_giocatori\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|numero_giocatori\(0),
	datad => VCC,
	combout => \controller|numero_giocatori[0]~10_combout\,
	cout => \controller|numero_giocatori[0]~11\);

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

-- Location: LCFF_X43_Y10_N21
reset_sync_reg : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_sync_reg~regout\);

-- Location: LCCOMB_X49_Y10_N2
\RESET_N~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RESET_N~feeder_combout\ = \reset_sync_reg~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_sync_reg~regout\,
	combout => \RESET_N~feeder_combout\);

-- Location: LCFF_X49_Y10_N3
RESET_N : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \RESET_N~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RESET_N~regout\);

-- Location: LCCOMB_X49_Y8_N2
\controller|numero_giocatori[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[1]~15_combout\ = (\controller|Update_State_Controller~6_combout\ & ((\controller|numero_giocatori\(1) & (\controller|numero_giocatori[0]~11\ & VCC)) # (!\controller|numero_giocatori\(1) & 
-- (!\controller|numero_giocatori[0]~11\)))) # (!\controller|Update_State_Controller~6_combout\ & ((\controller|numero_giocatori\(1) & (!\controller|numero_giocatori[0]~11\)) # (!\controller|numero_giocatori\(1) & ((\controller|numero_giocatori[0]~11\) # 
-- (GND)))))
-- \controller|numero_giocatori[1]~16\ = CARRY((\controller|Update_State_Controller~6_combout\ & (!\controller|numero_giocatori\(1) & !\controller|numero_giocatori[0]~11\)) # (!\controller|Update_State_Controller~6_combout\ & 
-- ((!\controller|numero_giocatori[0]~11\) # (!\controller|numero_giocatori\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~6_combout\,
	datab => \controller|numero_giocatori\(1),
	datad => VCC,
	cin => \controller|numero_giocatori[0]~11\,
	combout => \controller|numero_giocatori[1]~15_combout\,
	cout => \controller|numero_giocatori[1]~16\);

-- Location: LCFF_X49_Y8_N3
\controller|numero_giocatori[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[1]~15_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(1));

-- Location: LCCOMB_X49_Y8_N4
\controller|numero_giocatori[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[2]~17_combout\ = ((\controller|numero_giocatori\(2) $ (\controller|Update_State_Controller~6_combout\ $ (!\controller|numero_giocatori[1]~16\)))) # (GND)
-- \controller|numero_giocatori[2]~18\ = CARRY((\controller|numero_giocatori\(2) & ((\controller|Update_State_Controller~6_combout\) # (!\controller|numero_giocatori[1]~16\))) # (!\controller|numero_giocatori\(2) & 
-- (\controller|Update_State_Controller~6_combout\ & !\controller|numero_giocatori[1]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(2),
	datab => \controller|Update_State_Controller~6_combout\,
	datad => VCC,
	cin => \controller|numero_giocatori[1]~16\,
	combout => \controller|numero_giocatori[2]~17_combout\,
	cout => \controller|numero_giocatori[2]~18\);

-- Location: LCCOMB_X49_Y8_N6
\controller|numero_giocatori[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[3]~19_combout\ = (\controller|numero_giocatori\(3) & ((\controller|Update_State_Controller~6_combout\ & (\controller|numero_giocatori[2]~18\ & VCC)) # (!\controller|Update_State_Controller~6_combout\ & 
-- (!\controller|numero_giocatori[2]~18\)))) # (!\controller|numero_giocatori\(3) & ((\controller|Update_State_Controller~6_combout\ & (!\controller|numero_giocatori[2]~18\)) # (!\controller|Update_State_Controller~6_combout\ & 
-- ((\controller|numero_giocatori[2]~18\) # (GND)))))
-- \controller|numero_giocatori[3]~20\ = CARRY((\controller|numero_giocatori\(3) & (!\controller|Update_State_Controller~6_combout\ & !\controller|numero_giocatori[2]~18\)) # (!\controller|numero_giocatori\(3) & ((!\controller|numero_giocatori[2]~18\) # 
-- (!\controller|Update_State_Controller~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(3),
	datab => \controller|Update_State_Controller~6_combout\,
	datad => VCC,
	cin => \controller|numero_giocatori[2]~18\,
	combout => \controller|numero_giocatori[3]~19_combout\,
	cout => \controller|numero_giocatori[3]~20\);

-- Location: LCCOMB_X49_Y8_N8
\controller|numero_giocatori[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[4]~21_combout\ = ((\controller|numero_giocatori\(4) $ (\controller|Update_State_Controller~6_combout\ $ (!\controller|numero_giocatori[3]~20\)))) # (GND)
-- \controller|numero_giocatori[4]~22\ = CARRY((\controller|numero_giocatori\(4) & ((\controller|Update_State_Controller~6_combout\) # (!\controller|numero_giocatori[3]~20\))) # (!\controller|numero_giocatori\(4) & 
-- (\controller|Update_State_Controller~6_combout\ & !\controller|numero_giocatori[3]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(4),
	datab => \controller|Update_State_Controller~6_combout\,
	datad => VCC,
	cin => \controller|numero_giocatori[3]~20\,
	combout => \controller|numero_giocatori[4]~21_combout\,
	cout => \controller|numero_giocatori[4]~22\);

-- Location: LCCOMB_X49_Y8_N10
\controller|numero_giocatori[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[5]~23_combout\ = (\controller|numero_giocatori\(5) & ((\controller|Update_State_Controller~6_combout\ & (\controller|numero_giocatori[4]~22\ & VCC)) # (!\controller|Update_State_Controller~6_combout\ & 
-- (!\controller|numero_giocatori[4]~22\)))) # (!\controller|numero_giocatori\(5) & ((\controller|Update_State_Controller~6_combout\ & (!\controller|numero_giocatori[4]~22\)) # (!\controller|Update_State_Controller~6_combout\ & 
-- ((\controller|numero_giocatori[4]~22\) # (GND)))))
-- \controller|numero_giocatori[5]~24\ = CARRY((\controller|numero_giocatori\(5) & (!\controller|Update_State_Controller~6_combout\ & !\controller|numero_giocatori[4]~22\)) # (!\controller|numero_giocatori\(5) & ((!\controller|numero_giocatori[4]~22\) # 
-- (!\controller|Update_State_Controller~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(5),
	datab => \controller|Update_State_Controller~6_combout\,
	datad => VCC,
	cin => \controller|numero_giocatori[4]~22\,
	combout => \controller|numero_giocatori[5]~23_combout\,
	cout => \controller|numero_giocatori[5]~24\);

-- Location: LCCOMB_X49_Y8_N12
\controller|numero_giocatori[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[6]~25_combout\ = ((\controller|numero_giocatori\(6) $ (\controller|Update_State_Controller~6_combout\ $ (!\controller|numero_giocatori[5]~24\)))) # (GND)
-- \controller|numero_giocatori[6]~26\ = CARRY((\controller|numero_giocatori\(6) & ((\controller|Update_State_Controller~6_combout\) # (!\controller|numero_giocatori[5]~24\))) # (!\controller|numero_giocatori\(6) & 
-- (\controller|Update_State_Controller~6_combout\ & !\controller|numero_giocatori[5]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(6),
	datab => \controller|Update_State_Controller~6_combout\,
	datad => VCC,
	cin => \controller|numero_giocatori[5]~24\,
	combout => \controller|numero_giocatori[6]~25_combout\,
	cout => \controller|numero_giocatori[6]~26\);

-- Location: LCCOMB_X49_Y8_N14
\controller|numero_giocatori[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[7]~27_combout\ = (\controller|Update_State_Controller~6_combout\ & ((\controller|numero_giocatori\(7) & (\controller|numero_giocatori[6]~26\ & VCC)) # (!\controller|numero_giocatori\(7) & 
-- (!\controller|numero_giocatori[6]~26\)))) # (!\controller|Update_State_Controller~6_combout\ & ((\controller|numero_giocatori\(7) & (!\controller|numero_giocatori[6]~26\)) # (!\controller|numero_giocatori\(7) & ((\controller|numero_giocatori[6]~26\) # 
-- (GND)))))
-- \controller|numero_giocatori[7]~28\ = CARRY((\controller|Update_State_Controller~6_combout\ & (!\controller|numero_giocatori\(7) & !\controller|numero_giocatori[6]~26\)) # (!\controller|Update_State_Controller~6_combout\ & 
-- ((!\controller|numero_giocatori[6]~26\) # (!\controller|numero_giocatori\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~6_combout\,
	datab => \controller|numero_giocatori\(7),
	datad => VCC,
	cin => \controller|numero_giocatori[6]~26\,
	combout => \controller|numero_giocatori[7]~27_combout\,
	cout => \controller|numero_giocatori[7]~28\);

-- Location: LCFF_X49_Y8_N15
\controller|numero_giocatori[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[7]~27_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(7));

-- Location: LCCOMB_X49_Y8_N16
\controller|numero_giocatori[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[8]~29_combout\ = ((\controller|numero_giocatori\(8) $ (\controller|Update_State_Controller~6_combout\ $ (!\controller|numero_giocatori[7]~28\)))) # (GND)
-- \controller|numero_giocatori[8]~30\ = CARRY((\controller|numero_giocatori\(8) & ((\controller|Update_State_Controller~6_combout\) # (!\controller|numero_giocatori[7]~28\))) # (!\controller|numero_giocatori\(8) & 
-- (\controller|Update_State_Controller~6_combout\ & !\controller|numero_giocatori[7]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(8),
	datab => \controller|Update_State_Controller~6_combout\,
	datad => VCC,
	cin => \controller|numero_giocatori[7]~28\,
	combout => \controller|numero_giocatori[8]~29_combout\,
	cout => \controller|numero_giocatori[8]~30\);

-- Location: LCFF_X49_Y8_N17
\controller|numero_giocatori[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[8]~29_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(8));

-- Location: LCCOMB_X49_Y8_N18
\controller|numero_giocatori[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[9]~31_combout\ = \controller|numero_giocatori\(9) $ (\controller|numero_giocatori[8]~30\ $ (\controller|Update_State_Controller~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|numero_giocatori\(9),
	datad => \controller|Update_State_Controller~6_combout\,
	cin => \controller|numero_giocatori[8]~30\,
	combout => \controller|numero_giocatori[9]~31_combout\);

-- Location: LCFF_X49_Y8_N19
\controller|numero_giocatori[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[9]~31_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(9));

-- Location: LCCOMB_X49_Y8_N30
\controller|Update_State_Controller~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~1_combout\ = (!\controller|numero_giocatori\(7) & (!\controller|numero_giocatori\(8) & !\controller|numero_giocatori\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|numero_giocatori\(7),
	datac => \controller|numero_giocatori\(8),
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

-- Location: LCCOMB_X48_Y8_N8
\controller|Update_State_Controller:next_old~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller:next_old~feeder_combout\ = \KEY~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~combout\(2),
	combout => \controller|Update_State_Controller:next_old~feeder_combout\);

-- Location: LCFF_X48_Y8_N9
\controller|Update_State_Controller:next_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|Update_State_Controller:next_old~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:next_old~regout\);

-- Location: LCCOMB_X48_Y8_N14
\controller|Update_State_Controller~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~2_combout\ = (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & (!\controller|Update_State_Controller:next_old~regout\ & \KEY~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datab => \controller|Update_State_Controller:next_old~regout\,
	datad => \KEY~combout\(2),
	combout => \controller|Update_State_Controller~2_combout\);

-- Location: LCCOMB_X48_Y8_N26
\controller|Update_State_Controller~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~5_combout\ = (\controller|numero_giocatori[3]~12_combout\ & (((!\controller|Update_State_Controller~2_combout\) # (!\controller|Update_State_Controller~0_combout\)) # (!\controller|Update_State_Controller~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori[3]~12_combout\,
	datab => \controller|Update_State_Controller~1_combout\,
	datac => \controller|Update_State_Controller~0_combout\,
	datad => \controller|Update_State_Controller~2_combout\,
	combout => \controller|Update_State_Controller~5_combout\);

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

-- Location: LCFF_X49_Y8_N5
\controller|numero_giocatori[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[2]~17_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(2));

-- Location: LCCOMB_X49_Y8_N22
\controller|Update_State_Controller~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~3_combout\ = (!\controller|numero_giocatori\(1) & (\controller|Update_State_Controller~1_combout\ & \controller|Update_State_Controller~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|numero_giocatori\(1),
	datac => \controller|Update_State_Controller~1_combout\,
	datad => \controller|Update_State_Controller~0_combout\,
	combout => \controller|Update_State_Controller~3_combout\);

-- Location: LCCOMB_X49_Y8_N24
\controller|Update_State_Controller~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~4_combout\ = (!\controller|Update_State_Controller:prev_old~regout\ & (\KEY~combout\(3) & ((\controller|numero_giocatori\(2)) # (!\controller|Update_State_Controller~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:prev_old~regout\,
	datab => \KEY~combout\(3),
	datac => \controller|numero_giocatori\(2),
	datad => \controller|Update_State_Controller~3_combout\,
	combout => \controller|Update_State_Controller~4_combout\);

-- Location: LCCOMB_X49_Y8_N20
\controller|elimina_giocatore_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|elimina_giocatore_old~0_combout\ = (!\datapath|GIOCATORE_ELIMINATO~regout\ & ((\controller|Update_State_Controller:elimina_giocatore_old~regout\) # ((\controller|Update_State_Controller~4_combout\ & 
-- \controller|Update_State_Controller~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~4_combout\,
	datab => \controller|Update_State_Controller~5_combout\,
	datac => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datad => \datapath|GIOCATORE_ELIMINATO~regout\,
	combout => \controller|elimina_giocatore_old~0_combout\);

-- Location: LCFF_X49_Y8_N21
\controller|Update_State_Controller:elimina_giocatore_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|elimina_giocatore_old~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:elimina_giocatore_old~regout\);

-- Location: LCCOMB_X49_Y10_N14
\datapath|numero_giocatori_in_campo~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo~2_combout\ = \datapath|numero_giocatori_in_campo\(0) $ (\datapath|numero_giocatori_in_campo\(1) $ (\datapath|GIOCATORE_ELIMINATO~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datac => \datapath|numero_giocatori_in_campo\(1),
	datad => \datapath|GIOCATORE_ELIMINATO~0_combout\,
	combout => \datapath|numero_giocatori_in_campo~2_combout\);

-- Location: LCCOMB_X45_Y10_N20
\datapath|giocatori_in_campo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~0_combout\ = \datapath|Mux57~4_combout\ $ (((\datapath|Mux59~4_combout\ & (\datapath|aggiungi_dado~regout\ & \datapath|Mux58~4_combout\)) # (!\datapath|Mux59~4_combout\ & (!\datapath|aggiungi_dado~regout\ & 
-- !\datapath|Mux58~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux59~4_combout\,
	datab => \datapath|aggiungi_dado~regout\,
	datac => \datapath|Mux57~4_combout\,
	datad => \datapath|Mux58~4_combout\,
	combout => \datapath|giocatori_in_campo~0_combout\);

-- Location: LCCOMB_X44_Y10_N28
\datapath|elimina_dado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|elimina_dado~0_combout\ = (\controller|Update_State_Controller:elimina_giocatore_old~regout\ & ((\datapath|Equal4~0_combout\) # ((\datapath|dado_eliminato~regout\ & !\datapath|indice_giocatore[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|dado_eliminato~regout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datad => \datapath|indice_giocatore[0]~2_combout\,
	combout => \datapath|elimina_dado~0_combout\);

-- Location: LCFF_X44_Y10_N29
\datapath|elimina_dado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|elimina_dado~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|elimina_dado~regout\);

-- Location: LCCOMB_X49_Y9_N12
\datapath|cicli_da_attendere[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_da_attendere[1]~7_combout\ = (\datapath|cicli_da_attendere\(1) & (\datapath|cicli_da_attendere[0]~6\ $ (GND))) # (!\datapath|cicli_da_attendere\(1) & (!\datapath|cicli_da_attendere[0]~6\ & VCC))
-- \datapath|cicli_da_attendere[1]~8\ = CARRY((\datapath|cicli_da_attendere\(1) & !\datapath|cicli_da_attendere[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_da_attendere\(1),
	datad => VCC,
	cin => \datapath|cicli_da_attendere[0]~6\,
	combout => \datapath|cicli_da_attendere[1]~7_combout\,
	cout => \datapath|cicli_da_attendere[1]~8\);

-- Location: LCCOMB_X49_Y9_N14
\datapath|cicli_da_attendere[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_da_attendere[2]~9_combout\ = (\datapath|cicli_da_attendere\(2) & (!\datapath|cicli_da_attendere[1]~8\)) # (!\datapath|cicli_da_attendere\(2) & ((\datapath|cicli_da_attendere[1]~8\) # (GND)))
-- \datapath|cicli_da_attendere[2]~10\ = CARRY((!\datapath|cicli_da_attendere[1]~8\) # (!\datapath|cicli_da_attendere\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|cicli_da_attendere\(2),
	datad => VCC,
	cin => \datapath|cicli_da_attendere[1]~8\,
	combout => \datapath|cicli_da_attendere[2]~9_combout\,
	cout => \datapath|cicli_da_attendere[2]~10\);

-- Location: LCCOMB_X48_Y9_N22
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

-- Location: LCFF_X48_Y9_N23
\datapath|cicli_casuali_attesa[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_casuali_attesa[0]~2_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(0));

-- Location: LCCOMB_X48_Y7_N12
\datapath|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add1~0_combout\ = \datapath|cicli_casuali_attesa\(3) $ (((!\datapath|cicli_casuali_attesa\(1) & (!\datapath|cicli_casuali_attesa\(2) & \datapath|cicli_casuali_attesa\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_casuali_attesa\(1),
	datab => \datapath|cicli_casuali_attesa\(2),
	datac => \datapath|cicli_casuali_attesa\(3),
	datad => \datapath|cicli_casuali_attesa\(0),
	combout => \datapath|Add1~0_combout\);

-- Location: LCFF_X48_Y7_N13
\datapath|cicli_casuali_attesa[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|Add1~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(3));

-- Location: LCCOMB_X48_Y7_N14
\datapath|cicli_casuali_attesa~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_casuali_attesa~1_combout\ = (\datapath|cicli_casuali_attesa\(1) & (((\datapath|cicli_casuali_attesa\(2))))) # (!\datapath|cicli_casuali_attesa\(1) & ((\datapath|cicli_casuali_attesa\(2) & ((!\datapath|cicli_casuali_attesa\(0)))) # 
-- (!\datapath|cicli_casuali_attesa\(2) & (!\datapath|cicli_casuali_attesa\(3) & \datapath|cicli_casuali_attesa\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_casuali_attesa\(1),
	datab => \datapath|cicli_casuali_attesa\(3),
	datac => \datapath|cicli_casuali_attesa\(2),
	datad => \datapath|cicli_casuali_attesa\(0),
	combout => \datapath|cicli_casuali_attesa~1_combout\);

-- Location: LCFF_X48_Y7_N15
\datapath|cicli_casuali_attesa[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_casuali_attesa~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(2));

-- Location: LCCOMB_X49_Y7_N26
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

-- Location: LCCOMB_X49_Y9_N16
\datapath|cicli_da_attendere[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_da_attendere[3]~11_combout\ = (\datapath|cicli_da_attendere\(3) & (\datapath|cicli_da_attendere[2]~10\ $ (GND))) # (!\datapath|cicli_da_attendere\(3) & (!\datapath|cicli_da_attendere[2]~10\ & VCC))
-- \datapath|cicli_da_attendere[3]~12\ = CARRY((\datapath|cicli_da_attendere\(3) & !\datapath|cicli_da_attendere[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_da_attendere\(3),
	datad => VCC,
	cin => \datapath|cicli_da_attendere[2]~10\,
	combout => \datapath|cicli_da_attendere[3]~11_combout\,
	cout => \datapath|cicli_da_attendere[3]~12\);

-- Location: LCCOMB_X49_Y9_N18
\datapath|cicli_da_attendere[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_da_attendere[4]~13_combout\ = \datapath|cicli_da_attendere[3]~12\ $ (\datapath|cicli_da_attendere\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \datapath|cicli_da_attendere\(4),
	cin => \datapath|cicli_da_attendere[3]~12\,
	combout => \datapath|cicli_da_attendere[4]~13_combout\);

-- Location: LCFF_X49_Y9_N19
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

-- Location: LCFF_X49_Y9_N17
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

-- Location: LCCOMB_X48_Y7_N24
\datapath|cicli_casuali_attesa~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_casuali_attesa~0_combout\ = (\datapath|cicli_casuali_attesa\(1) & (((!\datapath|cicli_casuali_attesa\(0))))) # (!\datapath|cicli_casuali_attesa\(1) & (\datapath|cicli_casuali_attesa\(0) & ((\datapath|cicli_casuali_attesa\(2)) # 
-- (!\datapath|cicli_casuali_attesa\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_casuali_attesa\(3),
	datab => \datapath|cicli_casuali_attesa\(2),
	datac => \datapath|cicli_casuali_attesa\(1),
	datad => \datapath|cicli_casuali_attesa\(0),
	combout => \datapath|cicli_casuali_attesa~0_combout\);

-- Location: LCFF_X48_Y7_N25
\datapath|cicli_casuali_attesa[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_casuali_attesa~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(1));

-- Location: LCCOMB_X49_Y7_N0
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

-- Location: LCFF_X49_Y9_N13
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

-- Location: LCCOMB_X49_Y9_N8
\datapath|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal2~0_combout\ = (!\datapath|cicli_da_attendere\(0) & (!\datapath|cicli_da_attendere\(2) & (!\datapath|cicli_da_attendere\(3) & !\datapath|cicli_da_attendere\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_da_attendere\(0),
	datab => \datapath|cicli_da_attendere\(2),
	datac => \datapath|cicli_da_attendere\(3),
	datad => \datapath|cicli_da_attendere\(1),
	combout => \datapath|Equal2~0_combout\);

-- Location: LCCOMB_X49_Y9_N24
\datapath|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal2~1_combout\ = (!\datapath|cicli_da_attendere\(4) & \datapath|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|cicli_da_attendere\(4),
	datac => \datapath|Equal2~0_combout\,
	combout => \datapath|Equal2~1_combout\);

-- Location: LCFF_X49_Y9_N15
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

-- Location: LCCOMB_X49_Y9_N20
\datapath|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal3~0_combout\ = (\datapath|cicli_da_attendere\(0) & (\datapath|cicli_da_attendere\(2) & (\datapath|cicli_da_attendere\(3) & \datapath|cicli_da_attendere\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_da_attendere\(0),
	datab => \datapath|cicli_da_attendere\(2),
	datac => \datapath|cicli_da_attendere\(3),
	datad => \datapath|cicli_da_attendere\(1),
	combout => \datapath|Equal3~0_combout\);

-- Location: LCCOMB_X49_Y9_N6
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

-- Location: LCCOMB_X46_Y10_N28
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~4_combout\ = (!\datapath|indice_giocatore\(2) & ((\datapath|aggiungi_dado~regout\ & ((\datapath|Equal3~1_combout\))) # (!\datapath|aggiungi_dado~regout\ & (\datapath|elimina_dado~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(2),
	datab => \datapath|elimina_dado~regout\,
	datac => \datapath|aggiungi_dado~regout\,
	datad => \datapath|Equal3~1_combout\,
	combout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~4_combout\);

-- Location: LCCOMB_X45_Y10_N8
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\ = (!\datapath|indice_giocatore\(1) & (!\datapath|indice_giocatore\(0) & \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|indice_giocatore\(0),
	datad => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~4_combout\,
	combout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\);

-- Location: LCFF_X45_Y10_N19
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

-- Location: LCCOMB_X45_Y10_N2
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]~0_combout\ = (\datapath|indice_giocatore\(1) & (!\datapath|indice_giocatore\(0) & \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|indice_giocatore\(0),
	datad => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~4_combout\,
	combout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]~0_combout\);

-- Location: LCFF_X45_Y10_N13
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

-- Location: LCCOMB_X46_Y10_N20
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~2_combout\ = (\datapath|indice_giocatore\(0) & (\datapath|indice_giocatore\(1) & \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~4_combout\,
	combout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~2_combout\);

-- Location: LCFF_X46_Y10_N23
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X46_Y10_N22
\datapath|Mux57~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux57~2_combout\ = (\datapath|indice_giocatore\(0) & ((\datapath|indice_giocatore\(1) & ((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2)))) # (!\datapath|indice_giocatore\(1) & 
-- (\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2))))) # (!\datapath|indice_giocatore\(0) & (((!\datapath|indice_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2),
	datad => \datapath|indice_giocatore\(1),
	combout => \datapath|Mux57~2_combout\);

-- Location: LCCOMB_X45_Y10_N12
\datapath|Mux57~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux57~3_combout\ = (\datapath|indice_giocatore\(0) & (((\datapath|Mux57~2_combout\)))) # (!\datapath|indice_giocatore\(0) & ((\datapath|Mux57~2_combout\ & (\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2))) # (!\datapath|Mux57~2_combout\ 
-- & ((\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(0),
	datab => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2),
	datac => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2),
	datad => \datapath|Mux57~2_combout\,
	combout => \datapath|Mux57~3_combout\);

-- Location: LCCOMB_X46_Y10_N10
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\ = (\datapath|indice_giocatore\(2) & ((\datapath|aggiungi_dado~regout\ & ((\datapath|Equal3~1_combout\))) # (!\datapath|aggiungi_dado~regout\ & (\datapath|elimina_dado~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(2),
	datab => \datapath|elimina_dado~regout\,
	datac => \datapath|aggiungi_dado~regout\,
	datad => \datapath|Equal3~1_combout\,
	combout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\);

-- Location: LCCOMB_X46_Y10_N4
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\ = (!\datapath|indice_giocatore\(0) & (!\datapath|indice_giocatore\(1) & \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\,
	combout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\);

-- Location: LCFF_X48_Y10_N31
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X46_Y10_N2
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\ = (\datapath|indice_giocatore\(0) & (\datapath|indice_giocatore\(1) & \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\,
	combout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\);

-- Location: LCFF_X47_Y10_N25
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

-- Location: LCCOMB_X44_Y10_N12
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

-- Location: LCCOMB_X46_Y10_N8
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\ = (!\datapath|indice_giocatore\(0) & (\datapath|indice_giocatore\(1) & \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\,
	combout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\);

-- Location: LCFF_X44_Y10_N13
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X47_Y10_N24
\datapath|Mux57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux57~0_combout\ = (\datapath|indice_giocatore\(0) & (\datapath|indice_giocatore\(1) & (\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2)))) # (!\datapath|indice_giocatore\(0) & (((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2))) 
-- # (!\datapath|indice_giocatore\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(0),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2),
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2),
	combout => \datapath|Mux57~0_combout\);

-- Location: LCCOMB_X48_Y10_N30
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

-- Location: LCCOMB_X48_Y10_N0
\datapath|Mux57~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux57~4_combout\ = (\datapath|indice_giocatore\(2) & ((\datapath|Mux57~1_combout\))) # (!\datapath|indice_giocatore\(2) & (\datapath|Mux57~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(2),
	datac => \datapath|Mux57~3_combout\,
	datad => \datapath|Mux57~1_combout\,
	combout => \datapath|Mux57~4_combout\);

-- Location: LCCOMB_X49_Y10_N4
\datapath|GIOCATORE_AGGIUNTO~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|GIOCATORE_AGGIUNTO~1_combout\ = (!\datapath|Equal4~0_combout\ & (\datapath|Mux57~4_combout\ & \datapath|GIOCATORE_AGGIUNTO~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|Mux57~4_combout\,
	datad => \datapath|GIOCATORE_AGGIUNTO~0_combout\,
	combout => \datapath|GIOCATORE_AGGIUNTO~1_combout\);

-- Location: LCCOMB_X49_Y10_N26
\datapath|numero_giocatori_in_campo[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[2]~0_combout\ = (\datapath|numero_giocatori_in_campo\(0) & (\datapath|numero_giocatori_in_campo\(1) & (\datapath|GIOCATORE_AGGIUNTO~1_combout\ & !\datapath|GIOCATORE_ELIMINATO~0_combout\))) # 
-- (!\datapath|numero_giocatori_in_campo\(0) & (!\datapath|numero_giocatori_in_campo\(1) & ((\datapath|GIOCATORE_ELIMINATO~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|GIOCATORE_AGGIUNTO~1_combout\,
	datad => \datapath|GIOCATORE_ELIMINATO~0_combout\,
	combout => \datapath|numero_giocatori_in_campo[2]~0_combout\);

-- Location: LCCOMB_X49_Y10_N16
\datapath|numero_giocatori_in_campo[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[2]~1_combout\ = \datapath|numero_giocatori_in_campo\(2) $ (\datapath|numero_giocatori_in_campo[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|numero_giocatori_in_campo\(2),
	datad => \datapath|numero_giocatori_in_campo[2]~0_combout\,
	combout => \datapath|numero_giocatori_in_campo[2]~1_combout\);

-- Location: LCFF_X49_Y10_N17
\datapath|numero_giocatori_in_campo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo[2]~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(2));

-- Location: LCCOMB_X48_Y9_N20
\datapath|indice_giocatore~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~6_combout\ = (\controller|Update_State_Controller:elimina_giocatore_old~regout\ & (\datapath|Equal7~0_combout\ $ (((\datapath|numero_giocatori_in_campo\(2)))))) # 
-- (!\controller|Update_State_Controller:elimina_giocatore_old~regout\ & (((\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & \datapath|numero_giocatori_in_campo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal7~0_combout\,
	datab => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datac => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datad => \datapath|numero_giocatori_in_campo\(2),
	combout => \datapath|indice_giocatore~6_combout\);

-- Location: LCCOMB_X48_Y10_N26
\datapath|indice_giocatore~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~3_combout\ = ((\controller|Update_State_Controller:elimina_giocatore_old~regout\ & (\datapath|dado_eliminato~regout\ & \datapath|indice_giocatore[0]~2_combout\))) # (!\datapath|indice_giocatore\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datab => \datapath|dado_eliminato~regout\,
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore[0]~2_combout\,
	combout => \datapath|indice_giocatore~3_combout\);

-- Location: LCCOMB_X48_Y10_N24
\datapath|indice_giocatore~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~4_combout\ = (!\datapath|Equal4~0_combout\ & ((\datapath|indice_giocatore~3_combout\) # ((\datapath|Mux57~1_combout\ & \datapath|GIOCATORE_AGGIUNTO~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux57~1_combout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|GIOCATORE_AGGIUNTO~0_combout\,
	datad => \datapath|indice_giocatore~3_combout\,
	combout => \datapath|indice_giocatore~4_combout\);

-- Location: LCCOMB_X47_Y10_N4
\datapath|indice_giocatore~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~7_combout\ = (!\datapath|indice_giocatore~5_combout\ & (!\datapath|indice_giocatore~4_combout\ & ((!\datapath|indice_giocatore~6_combout\) # (!\datapath|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore~5_combout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|indice_giocatore~6_combout\,
	datad => \datapath|indice_giocatore~4_combout\,
	combout => \datapath|indice_giocatore~7_combout\);

-- Location: LCFF_X47_Y10_N5
\datapath|indice_giocatore[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore~7_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(2));

-- Location: LCCOMB_X49_Y10_N0
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]~1_combout\ = (\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\ & 
-- ((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\,
	combout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]~1_combout\);

-- Location: LCFF_X49_Y10_N1
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X47_Y10_N8
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~3_combout\ = (\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\ & ((!\datapath|Mux59~4_combout\))) # (!\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\ & 
-- (\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\,
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0),
	datad => \datapath|Mux59~4_combout\,
	combout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~3_combout\);

-- Location: LCFF_X47_Y10_N9
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~3_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X47_Y10_N22
\datapath|Mux59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux59~0_combout\ = (\datapath|indice_giocatore\(1) & ((\datapath|indice_giocatore\(0) & ((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0)))) # (!\datapath|indice_giocatore\(0) & 
-- (\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0))))) # (!\datapath|indice_giocatore\(1) & (((!\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux59~0_combout\);

-- Location: LCCOMB_X48_Y10_N4
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

-- Location: LCCOMB_X49_Y10_N10
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

-- Location: LCFF_X49_Y10_N11
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X46_Y10_N26
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\ = (\datapath|indice_giocatore\(0) & (!\datapath|indice_giocatore\(1) & \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~4_combout\,
	combout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\);

-- Location: LCCOMB_X47_Y10_N0
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~1_combout\ = (\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\ & 
-- ((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\,
	combout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~1_combout\);

-- Location: LCFF_X47_Y10_N1
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X49_Y10_N28
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~3_combout\ = (\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~2_combout\ & (!\datapath|Mux59~4_combout\)) # (!\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~2_combout\ & 
-- ((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux59~4_combout\,
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~2_combout\,
	combout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~3_combout\);

-- Location: LCFF_X49_Y10_N29
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~3_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X48_Y10_N10
\datapath|Mux59~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux59~2_combout\ = (\datapath|indice_giocatore\(0) & ((\datapath|indice_giocatore\(1) & ((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0)))) # (!\datapath|indice_giocatore\(1) & 
-- (\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0))))) # (!\datapath|indice_giocatore\(0) & (!\datapath|indice_giocatore\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(0),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0),
	combout => \datapath|Mux59~2_combout\);

-- Location: LCCOMB_X48_Y10_N28
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

-- Location: LCCOMB_X48_Y10_N6
\datapath|Mux59~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux59~4_combout\ = (\datapath|indice_giocatore\(2) & (\datapath|Mux59~1_combout\)) # (!\datapath|indice_giocatore\(2) & ((\datapath|Mux59~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(2),
	datac => \datapath|Mux59~1_combout\,
	datad => \datapath|Mux59~3_combout\,
	combout => \datapath|Mux59~4_combout\);

-- Location: LCCOMB_X49_Y10_N18
\datapath|GIOCATORE_AGGIUNTO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|GIOCATORE_AGGIUNTO~0_combout\ = (\datapath|dado_aggiunto~regout\ & (\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & ((\datapath|Mux59~4_combout\) # (\datapath|Mux58~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|dado_aggiunto~regout\,
	datab => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datac => \datapath|Mux59~4_combout\,
	datad => \datapath|Mux58~4_combout\,
	combout => \datapath|GIOCATORE_AGGIUNTO~0_combout\);

-- Location: LCCOMB_X49_Y10_N20
\datapath|numero_giocatori_in_campo[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[3]~3_combout\ = (\datapath|GIOCATORE_ELIMINATO~0_combout\) # ((\datapath|Mux57~4_combout\ & (\datapath|GIOCATORE_AGGIUNTO~0_combout\ & !\datapath|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux57~4_combout\,
	datab => \datapath|GIOCATORE_AGGIUNTO~0_combout\,
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|GIOCATORE_ELIMINATO~0_combout\,
	combout => \datapath|numero_giocatori_in_campo[3]~3_combout\);

-- Location: LCFF_X49_Y10_N15
\datapath|numero_giocatori_in_campo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo~2_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|numero_giocatori_in_campo[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(1));

-- Location: LCCOMB_X48_Y10_N2
\datapath|indice_giocatore[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[0]~22_combout\ = ((!\datapath|Equal4~0_combout\ & ((!\datapath|dado_eliminato~regout\) # (!\datapath|indice_giocatore[0]~2_combout\)))) # (!\controller|Update_State_Controller:elimina_giocatore_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore[0]~2_combout\,
	datab => \datapath|dado_eliminato~regout\,
	datac => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datad => \datapath|Equal4~0_combout\,
	combout => \datapath|indice_giocatore[0]~22_combout\);

-- Location: LCCOMB_X47_Y10_N14
\datapath|indice_giocatore[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~15_combout\ = (!\datapath|indice_giocatore[0]~13_combout\ & (!\datapath|indice_giocatore[0]~22_combout\ & (\datapath|numero_giocatori_in_campo\(0) $ (!\datapath|numero_giocatori_in_campo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|indice_giocatore[0]~13_combout\,
	datad => \datapath|indice_giocatore[0]~22_combout\,
	combout => \datapath|indice_giocatore[1]~15_combout\);

-- Location: LCCOMB_X47_Y10_N16
\datapath|indice_giocatore[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~16_combout\ = (\datapath|indice_giocatore[0]~13_combout\ & ((!\datapath|indice_giocatore\(1)))) # (!\datapath|indice_giocatore[0]~13_combout\ & (!\datapath|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|indice_giocatore[0]~13_combout\,
	combout => \datapath|indice_giocatore[1]~16_combout\);

-- Location: LCCOMB_X48_Y10_N20
\datapath|indice_giocatore[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[0]~8_combout\ = (!\datapath|Equal4~0_combout\ & !\datapath|dado_eliminato~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal4~0_combout\,
	datad => \datapath|dado_eliminato~regout\,
	combout => \datapath|indice_giocatore[0]~8_combout\);

-- Location: LCFF_X49_Y10_N13
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

-- Location: LCCOMB_X49_Y10_N12
\datapath|indice_giocatore[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[0]~10_combout\ = (!\datapath|Equal4~0_combout\ & (((!\datapath|Mux59~4_combout\ & !\datapath|Mux58~4_combout\)) # (!\datapath|dado_aggiunto~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \datapath|Mux59~4_combout\,
	datac => \datapath|dado_aggiunto~regout\,
	datad => \datapath|Mux58~4_combout\,
	combout => \datapath|indice_giocatore[0]~10_combout\);

-- Location: LCCOMB_X49_Y10_N22
\datapath|indice_giocatore[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[0]~11_combout\ = ((\datapath|indice_giocatore[0]~10_combout\) # ((!\datapath|Equal4~0_combout\ & !\datapath|Mux57~4_combout\))) # (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datac => \datapath|Mux57~4_combout\,
	datad => \datapath|indice_giocatore[0]~10_combout\,
	combout => \datapath|indice_giocatore[0]~11_combout\);

-- Location: LCCOMB_X48_Y9_N2
\datapath|indice_giocatore[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[3]~17_combout\ = (!\datapath|indice_giocatore[0]~11_combout\ & (((\datapath|indice_giocatore[0]~8_combout\) # (\datapath|indice_giocatore[0]~12_combout\)) # (!\controller|Update_State_Controller:elimina_giocatore_old~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datab => \datapath|indice_giocatore[0]~8_combout\,
	datac => \datapath|indice_giocatore[0]~12_combout\,
	datad => \datapath|indice_giocatore[0]~11_combout\,
	combout => \datapath|indice_giocatore[3]~17_combout\);

-- Location: LCCOMB_X47_Y10_N28
\datapath|indice_giocatore[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~18_combout\ = (!\datapath|indice_giocatore[1]~15_combout\ & (!\datapath|indice_giocatore[1]~16_combout\ & ((!\datapath|indice_giocatore[3]~17_combout\) # (!\datapath|numero_giocatori_in_campo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(1),
	datab => \datapath|indice_giocatore[1]~15_combout\,
	datac => \datapath|indice_giocatore[1]~16_combout\,
	datad => \datapath|indice_giocatore[3]~17_combout\,
	combout => \datapath|indice_giocatore[1]~18_combout\);

-- Location: LCFF_X47_Y10_N29
\datapath|indice_giocatore[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore[1]~18_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(1));

-- Location: LCCOMB_X48_Y10_N8
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

-- Location: LCCOMB_X47_Y10_N6
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\ = (\datapath|indice_giocatore\(0) & (!\datapath|indice_giocatore\(1) & \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~4_combout\,
	combout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\);

-- Location: LCFF_X48_Y10_N23
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1));

-- Location: LCFF_X47_Y10_N27
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

-- Location: LCCOMB_X44_Y10_N22
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

-- Location: LCFF_X44_Y10_N23
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X47_Y10_N26
\datapath|Mux58~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux58~0_combout\ = (\datapath|indice_giocatore\(0) & (\datapath|indice_giocatore\(1) & (\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1)))) # (!\datapath|indice_giocatore\(0) & (((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1))) 
-- # (!\datapath|indice_giocatore\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(0),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1),
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1),
	combout => \datapath|Mux58~0_combout\);

-- Location: LCCOMB_X48_Y10_N22
\datapath|Mux58~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux58~1_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|Mux58~0_combout\)))) # (!\datapath|indice_giocatore\(1) & ((\datapath|Mux58~0_combout\ & (\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1))) # (!\datapath|Mux58~0_combout\ 
-- & ((\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1),
	datad => \datapath|Mux58~0_combout\,
	combout => \datapath|Mux58~1_combout\);

-- Location: LCFF_X45_Y10_N1
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

-- Location: LCFF_X45_Y10_N11
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

-- Location: LCFF_X46_Y10_N31
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X46_Y10_N30
\datapath|Mux58~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux58~2_combout\ = (\datapath|indice_giocatore\(0) & ((\datapath|indice_giocatore\(1) & ((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1)))) # (!\datapath|indice_giocatore\(1) & 
-- (\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1))))) # (!\datapath|indice_giocatore\(0) & (((!\datapath|indice_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1),
	datad => \datapath|indice_giocatore\(1),
	combout => \datapath|Mux58~2_combout\);

-- Location: LCCOMB_X45_Y10_N10
\datapath|Mux58~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux58~3_combout\ = (\datapath|indice_giocatore\(0) & (((\datapath|Mux58~2_combout\)))) # (!\datapath|indice_giocatore\(0) & ((\datapath|Mux58~2_combout\ & ((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1)))) # 
-- (!\datapath|Mux58~2_combout\ & (\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(0),
	datab => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1),
	datac => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1),
	datad => \datapath|Mux58~2_combout\,
	combout => \datapath|Mux58~3_combout\);

-- Location: LCCOMB_X48_Y10_N14
\datapath|Mux58~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux58~4_combout\ = (\datapath|indice_giocatore\(2) & (\datapath|Mux58~1_combout\)) # (!\datapath|indice_giocatore\(2) & ((\datapath|Mux58~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux58~1_combout\,
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|Mux58~3_combout\,
	combout => \datapath|Mux58~4_combout\);

-- Location: LCCOMB_X48_Y10_N12
\datapath|indice_giocatore[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[0]~2_combout\ = (!\datapath|Mux59~4_combout\ & (!\datapath|Mux58~4_combout\ & !\datapath|Mux57~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux59~4_combout\,
	datac => \datapath|Mux58~4_combout\,
	datad => \datapath|Mux57~4_combout\,
	combout => \datapath|indice_giocatore[0]~2_combout\);

-- Location: LCCOMB_X48_Y10_N18
\datapath|indice_giocatore[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[0]~12_combout\ = (!\datapath|Equal4~0_combout\ & (\controller|Update_State_Controller:elimina_giocatore_old~regout\ $ (\datapath|indice_giocatore[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal4~0_combout\,
	datac => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datad => \datapath|indice_giocatore[0]~2_combout\,
	combout => \datapath|indice_giocatore[0]~12_combout\);

-- Location: LCCOMB_X48_Y10_N16
\datapath|indice_giocatore[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[0]~13_combout\ = (\datapath|indice_giocatore[0]~11_combout\ & ((\datapath|indice_giocatore[0]~8_combout\) # ((\datapath|indice_giocatore[0]~12_combout\) # (!\controller|Update_State_Controller:elimina_giocatore_old~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore[0]~8_combout\,
	datab => \datapath|indice_giocatore[0]~12_combout\,
	datac => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datad => \datapath|indice_giocatore[0]~11_combout\,
	combout => \datapath|indice_giocatore[0]~13_combout\);

-- Location: LCCOMB_X47_Y10_N30
\datapath|indice_giocatore[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[0]~14_combout\ = (\datapath|indice_giocatore[0]~13_combout\ & (((\datapath|indice_giocatore\(0))))) # (!\datapath|indice_giocatore[0]~13_combout\ & (\datapath|indice_giocatore~9_combout\ & (\datapath|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore~9_combout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|indice_giocatore\(0),
	datad => \datapath|indice_giocatore[0]~13_combout\,
	combout => \datapath|indice_giocatore[0]~14_combout\);

-- Location: LCFF_X47_Y10_N31
\datapath|indice_giocatore[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore[0]~14_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(0));

-- Location: LCCOMB_X49_Y10_N8
\datapath|numero_giocatori_in_campo[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[3]~5_combout\ = \datapath|numero_giocatori_in_campo\(3) $ (((\datapath|numero_giocatori_in_campo[3]~4_combout\ & ((\datapath|GIOCATORE_AGGIUNTO~1_combout\) # (\datapath|GIOCATORE_ELIMINATO~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo[3]~4_combout\,
	datab => \datapath|GIOCATORE_AGGIUNTO~1_combout\,
	datac => \datapath|numero_giocatori_in_campo\(3),
	datad => \datapath|GIOCATORE_ELIMINATO~0_combout\,
	combout => \datapath|numero_giocatori_in_campo[3]~5_combout\);

-- Location: LCFF_X49_Y10_N9
\datapath|numero_giocatori_in_campo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo[3]~5_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(3));

-- Location: LCCOMB_X49_Y10_N24
\datapath|numero_giocatori_in_campo[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[0]~7_combout\ = !\datapath|numero_giocatori_in_campo\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|numero_giocatori_in_campo[0]~7_combout\);

-- Location: LCFF_X49_Y10_N25
\datapath|numero_giocatori_in_campo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo[0]~7_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|numero_giocatori_in_campo[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(0));

-- Location: LCCOMB_X48_Y9_N4
\datapath|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add13~0_combout\ = \datapath|numero_giocatori_in_campo\(3) $ (((\datapath|numero_giocatori_in_campo\(2)) # ((\datapath|numero_giocatori_in_campo\(0)) # (\datapath|numero_giocatori_in_campo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(2),
	datab => \datapath|numero_giocatori_in_campo\(3),
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|numero_giocatori_in_campo\(1),
	combout => \datapath|Add13~0_combout\);

-- Location: LCCOMB_X48_Y9_N14
\datapath|indice_giocatore[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[3]~19_combout\ = (!\datapath|Add13~0_combout\ & (!\datapath|indice_giocatore[0]~13_combout\ & !\datapath|indice_giocatore[0]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Add13~0_combout\,
	datac => \datapath|indice_giocatore[0]~13_combout\,
	datad => \datapath|indice_giocatore[0]~22_combout\,
	combout => \datapath|indice_giocatore[3]~19_combout\);

-- Location: LCCOMB_X48_Y9_N28
\datapath|indice_giocatore[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[3]~20_combout\ = (\datapath|indice_giocatore[0]~13_combout\ & (!\datapath|indice_giocatore\(3))) # (!\datapath|indice_giocatore[0]~13_combout\ & ((!\datapath|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(3),
	datac => \datapath|indice_giocatore[0]~13_combout\,
	datad => \datapath|Equal4~0_combout\,
	combout => \datapath|indice_giocatore[3]~20_combout\);

-- Location: LCCOMB_X48_Y9_N30
\datapath|indice_giocatore[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[3]~21_combout\ = (!\datapath|indice_giocatore[3]~19_combout\ & (!\datapath|indice_giocatore[3]~20_combout\ & ((!\datapath|indice_giocatore[3]~17_combout\) # (!\datapath|numero_giocatori_in_campo\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(3),
	datab => \datapath|indice_giocatore[3]~17_combout\,
	datac => \datapath|indice_giocatore[3]~19_combout\,
	datad => \datapath|indice_giocatore[3]~20_combout\,
	combout => \datapath|indice_giocatore[3]~21_combout\);

-- Location: LCFF_X48_Y9_N31
\datapath|indice_giocatore[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore[3]~21_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(3));

-- Location: LCCOMB_X47_Y10_N18
\datapath|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal4~0_combout\ = (!\datapath|indice_giocatore\(1) & (!\datapath|indice_giocatore\(0) & (!\datapath|indice_giocatore\(2) & !\datapath|indice_giocatore\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore\(3),
	combout => \datapath|Equal4~0_combout\);

-- Location: LCCOMB_X45_Y10_N14
\datapath|aggiungi_dado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|aggiungi_dado~0_combout\ = (\datapath|aggiungi_dado~regout\ & ((!\controller|Update_State_Controller:nuovo_giocatore_old~regout\) # (!\datapath|dado_aggiunto~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|aggiungi_dado~regout\,
	datac => \datapath|dado_aggiunto~regout\,
	datad => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	combout => \datapath|aggiungi_dado~0_combout\);

-- Location: LCCOMB_X45_Y10_N4
\datapath|aggiungi_dado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|aggiungi_dado~1_combout\ = (\datapath|dado_aggiunto~regout\ & (((!\datapath|Mux59~4_combout\ & !\datapath|Mux58~4_combout\)) # (!\datapath|Mux57~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux59~4_combout\,
	datab => \datapath|dado_aggiunto~regout\,
	datac => \datapath|Mux57~4_combout\,
	datad => \datapath|Mux58~4_combout\,
	combout => \datapath|aggiungi_dado~1_combout\);

-- Location: LCCOMB_X44_Y10_N18
\datapath|aggiungi_dado~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|aggiungi_dado~2_combout\ = (\datapath|aggiungi_dado~0_combout\) # ((\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & ((\datapath|Equal4~0_combout\) # (\datapath|aggiungi_dado~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|aggiungi_dado~0_combout\,
	datad => \datapath|aggiungi_dado~1_combout\,
	combout => \datapath|aggiungi_dado~2_combout\);

-- Location: LCFF_X44_Y10_N19
\datapath|aggiungi_dado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|aggiungi_dado~2_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|aggiungi_dado~regout\);

-- Location: LCCOMB_X44_Y10_N16
\datapath|dado_eliminato~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dado_eliminato~0_combout\ = (!\datapath|aggiungi_dado~regout\ & \datapath|elimina_dado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|aggiungi_dado~regout\,
	datad => \datapath|elimina_dado~regout\,
	combout => \datapath|dado_eliminato~0_combout\);

-- Location: LCFF_X44_Y10_N17
\datapath|dado_eliminato\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|dado_eliminato~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|dado_eliminato~regout\);

-- Location: LCCOMB_X49_Y10_N30
\datapath|GIOCATORE_ELIMINATO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|GIOCATORE_ELIMINATO~0_combout\ = (!\datapath|Equal4~0_combout\ & (\controller|Update_State_Controller:elimina_giocatore_old~regout\ & (\datapath|dado_eliminato~regout\ & \datapath|indice_giocatore[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datac => \datapath|dado_eliminato~regout\,
	datad => \datapath|indice_giocatore[0]~2_combout\,
	combout => \datapath|GIOCATORE_ELIMINATO~0_combout\);

-- Location: LCFF_X49_Y10_N31
\datapath|GIOCATORE_ELIMINATO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|GIOCATORE_ELIMINATO~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GIOCATORE_ELIMINATO~regout\);

-- Location: LCCOMB_X49_Y8_N26
\controller|Update_State_Controller~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~6_combout\ = (\datapath|GIOCATORE_ELIMINATO~regout\ & ((\controller|Update_State_Controller:elimina_giocatore_old~regout\) # ((\controller|Update_State_Controller~5_combout\ & 
-- \controller|Update_State_Controller~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datab => \controller|Update_State_Controller~5_combout\,
	datac => \controller|Update_State_Controller~4_combout\,
	datad => \datapath|GIOCATORE_ELIMINATO~regout\,
	combout => \controller|Update_State_Controller~6_combout\);

-- Location: LCFF_X49_Y8_N9
\controller|numero_giocatori[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[4]~21_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(4));

-- Location: LCFF_X49_Y8_N13
\controller|numero_giocatori[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[6]~25_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(6));

-- Location: LCFF_X49_Y8_N11
\controller|numero_giocatori[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[5]~23_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(5));

-- Location: LCCOMB_X49_Y8_N28
\controller|Update_State_Controller~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~0_combout\ = (!\controller|numero_giocatori\(3) & (!\controller|numero_giocatori\(4) & (!\controller|numero_giocatori\(6) & !\controller|numero_giocatori\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(3),
	datab => \controller|numero_giocatori\(4),
	datac => \controller|numero_giocatori\(6),
	datad => \controller|numero_giocatori\(5),
	combout => \controller|Update_State_Controller~0_combout\);

-- Location: LCCOMB_X48_Y8_N24
\controller|Update_State_Controller~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~8_combout\ = (\controller|Update_State_Controller~2_combout\ & (\controller|Update_State_Controller~0_combout\ & \controller|Update_State_Controller~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~2_combout\,
	datac => \controller|Update_State_Controller~0_combout\,
	datad => \controller|Update_State_Controller~1_combout\,
	combout => \controller|Update_State_Controller~8_combout\);

-- Location: LCFF_X49_Y10_N5
\datapath|GIOCATORE_AGGIUNTO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|GIOCATORE_AGGIUNTO~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GIOCATORE_AGGIUNTO~regout\);

-- Location: LCCOMB_X48_Y8_N6
\controller|NUOVO_GIOCATORE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|NUOVO_GIOCATORE~0_combout\ = (!\datapath|GIOCATORE_AGGIUNTO~regout\ & ((\controller|Update_State_Controller:nuovo_giocatore_old~regout\) # ((\controller|numero_giocatori[3]~12_combout\ & \controller|Update_State_Controller~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori[3]~12_combout\,
	datab => \controller|Update_State_Controller~8_combout\,
	datac => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datad => \datapath|GIOCATORE_AGGIUNTO~regout\,
	combout => \controller|NUOVO_GIOCATORE~0_combout\);

-- Location: LCFF_X48_Y8_N7
\controller|Update_State_Controller:nuovo_giocatore_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|NUOVO_GIOCATORE~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:nuovo_giocatore_old~regout\);

-- Location: LCCOMB_X48_Y8_N0
\controller|numero_giocatori[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[3]~14_combout\ = (\controller|Update_State_Controller~6_combout\) # ((\datapath|GIOCATORE_AGGIUNTO~regout\ & ((\controller|Update_State_Controller:nuovo_giocatore_old~regout\) # 
-- (!\controller|numero_giocatori[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori[3]~13_combout\,
	datab => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datac => \controller|Update_State_Controller~6_combout\,
	datad => \datapath|GIOCATORE_AGGIUNTO~regout\,
	combout => \controller|numero_giocatori[3]~14_combout\);

-- Location: LCFF_X49_Y8_N1
\controller|numero_giocatori[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[0]~10_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(0));

-- Location: LCFF_X49_Y8_N7
\controller|numero_giocatori[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[3]~19_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(3));

-- Location: LCCOMB_X48_Y9_N26
\datapath|indice_turno_giocatore~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_turno_giocatore~0_combout\ = (!\datapath|Equal8~2_combout\ & (\datapath|indice_turno_giocatore\(2) $ (((\datapath|indice_turno_giocatore\(1) & \datapath|indice_turno_giocatore\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal8~2_combout\,
	datab => \datapath|indice_turno_giocatore\(1),
	datac => \datapath|indice_turno_giocatore\(2),
	datad => \datapath|indice_turno_giocatore\(0),
	combout => \datapath|indice_turno_giocatore~0_combout\);

-- Location: LCFF_X48_Y9_N17
\datapath|PARTITA_INIZIATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|PARTITA_INIZIATA~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|PARTITA_INIZIATA~regout\);

-- Location: LCCOMB_X48_Y8_N18
\controller|Update_State_Controller~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~7_combout\ = (!\controller|Update_State_Controller:elimina_giocatore_old~regout\ & \controller|Update_State_Controller~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datac => \controller|Update_State_Controller~4_combout\,
	combout => \controller|Update_State_Controller~7_combout\);

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

-- Location: LCCOMB_X48_Y8_N4
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

-- Location: LCFF_X48_Y8_N5
\controller|Update_State_Controller:enter_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|Update_State_Controller:enter_old~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:enter_old~regout\);

-- Location: LCCOMB_X48_Y8_N28
\controller|INIZIA_PARTITA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|INIZIA_PARTITA~0_combout\ = (\KEY~combout\(1) & (!\controller|Update_State_Controller~7_combout\ & (!\controller|Update_State_Controller:enter_old~regout\ & \controller|Update_State_Controller~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \controller|Update_State_Controller~7_combout\,
	datac => \controller|Update_State_Controller:enter_old~regout\,
	datad => \controller|Update_State_Controller~5_combout\,
	combout => \controller|INIZIA_PARTITA~0_combout\);

-- Location: LCFF_X48_Y8_N29
\controller|INIZIA_PARTITA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|INIZIA_PARTITA~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|INIZIA_PARTITA~regout\);

-- Location: LCCOMB_X48_Y8_N10
\datapath|PARTITA_INIZIATA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|PARTITA_INIZIATA~0_combout\ = (\datapath|PARTITA_INIZIATA~regout\) # (\controller|INIZIA_PARTITA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|PARTITA_INIZIATA~regout\,
	datad => \controller|INIZIA_PARTITA~regout\,
	combout => \datapath|PARTITA_INIZIATA~0_combout\);

-- Location: LCCOMB_X48_Y9_N6
\datapath|indice_turno_giocatore[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_turno_giocatore[1]~1_combout\ = (!\datapath|PARTITA_INIZIATA~0_combout\ & (((\datapath|numero_giocatori_in_campo\(3)) # (\datapath|numero_giocatori_in_campo\(2))) # (!\datapath|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal7~0_combout\,
	datab => \datapath|numero_giocatori_in_campo\(3),
	datac => \datapath|PARTITA_INIZIATA~0_combout\,
	datad => \datapath|numero_giocatori_in_campo\(2),
	combout => \datapath|indice_turno_giocatore[1]~1_combout\);

-- Location: LCFF_X48_Y9_N27
\datapath|indice_turno_giocatore[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_turno_giocatore~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|indice_turno_giocatore[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_turno_giocatore\(2));

-- Location: LCCOMB_X48_Y9_N8
\datapath|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal8~0_combout\ = (\datapath|indice_turno_giocatore\(0) & (!\datapath|numero_giocatori_in_campo\(0) & (\datapath|numero_giocatori_in_campo\(1) $ (\datapath|indice_turno_giocatore\(1))))) # (!\datapath|indice_turno_giocatore\(0) & 
-- (\datapath|numero_giocatori_in_campo\(0) & (\datapath|numero_giocatori_in_campo\(1) $ (!\datapath|indice_turno_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(1),
	datab => \datapath|indice_turno_giocatore\(0),
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|indice_turno_giocatore\(1),
	combout => \datapath|Equal8~0_combout\);

-- Location: LCCOMB_X48_Y9_N18
\datapath|Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal8~1_combout\ = (\datapath|Equal8~0_combout\ & (\datapath|Equal7~0_combout\ $ (\datapath|indice_turno_giocatore\(2) $ (!\datapath|numero_giocatori_in_campo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal7~0_combout\,
	datab => \datapath|indice_turno_giocatore\(2),
	datac => \datapath|Equal8~0_combout\,
	datad => \datapath|numero_giocatori_in_campo\(2),
	combout => \datapath|Equal8~1_combout\);

-- Location: LCCOMB_X48_Y9_N24
\datapath|Equal8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal8~2_combout\ = (\datapath|Equal8~1_combout\ & (\datapath|numero_giocatori_in_campo\(3) $ (((\datapath|numero_giocatori_in_campo\(2)) # (!\datapath|Equal7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal7~0_combout\,
	datab => \datapath|numero_giocatori_in_campo\(3),
	datac => \datapath|numero_giocatori_in_campo\(2),
	datad => \datapath|Equal8~1_combout\,
	combout => \datapath|Equal8~2_combout\);

-- Location: LCCOMB_X49_Y9_N30
\datapath|indice_turno_giocatore~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_turno_giocatore~3_combout\ = (!\datapath|indice_turno_giocatore\(0) & !\datapath|Equal8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|indice_turno_giocatore\(0),
	datad => \datapath|Equal8~2_combout\,
	combout => \datapath|indice_turno_giocatore~3_combout\);

-- Location: LCFF_X49_Y9_N31
\datapath|indice_turno_giocatore[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_turno_giocatore~3_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|indice_turno_giocatore[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_turno_giocatore\(0));

-- Location: LCCOMB_X49_Y9_N28
\datapath|indice_turno_giocatore~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_turno_giocatore~2_combout\ = (!\datapath|Equal8~2_combout\ & (\datapath|indice_turno_giocatore\(0) $ (\datapath|indice_turno_giocatore\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_turno_giocatore\(0),
	datac => \datapath|indice_turno_giocatore\(1),
	datad => \datapath|Equal8~2_combout\,
	combout => \datapath|indice_turno_giocatore~2_combout\);

-- Location: LCFF_X49_Y9_N29
\datapath|indice_turno_giocatore[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_turno_giocatore~2_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|indice_turno_giocatore[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_turno_giocatore\(1));

-- Location: LCCOMB_X48_Y9_N0
\datapath|TURNO_GIOCATORE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|TURNO_GIOCATORE~0_combout\ = (!\datapath|indice_turno_giocatore\(1) & !\datapath|indice_turno_giocatore\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_turno_giocatore\(1),
	datad => \datapath|indice_turno_giocatore\(2),
	combout => \datapath|TURNO_GIOCATORE~0_combout\);

-- Location: LCCOMB_X48_Y9_N12
\datapath|TURNO_GIOCATORE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|TURNO_GIOCATORE~1_combout\ = (\datapath|PARTITA_INIZIATA~0_combout\ & (\datapath|TURNO_GIOCATORE~0_combout\ & ((!\datapath|indice_turno_giocatore\(0))))) # (!\datapath|PARTITA_INIZIATA~0_combout\ & (((\datapath|TURNO_GIOCATORE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|PARTITA_INIZIATA~0_combout\,
	datab => \datapath|TURNO_GIOCATORE~0_combout\,
	datac => \datapath|TURNO_GIOCATORE~regout\,
	datad => \datapath|indice_turno_giocatore\(0),
	combout => \datapath|TURNO_GIOCATORE~1_combout\);

-- Location: LCFF_X48_Y9_N13
\datapath|TURNO_GIOCATORE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|TURNO_GIOCATORE~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|TURNO_GIOCATORE~regout\);

-- Location: LCCOMB_X48_Y7_N16
\controller|internal_state.TURN_FPGA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|internal_state.TURN_FPGA~0_combout\ = !\datapath|TURNO_GIOCATORE~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|TURNO_GIOCATORE~regout\,
	combout => \controller|internal_state.TURN_FPGA~0_combout\);

-- Location: LCFF_X48_Y7_N17
\controller|internal_state.TURN_FPGA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|internal_state.TURN_FPGA~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|PARTITA_INIZIATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|internal_state.TURN_FPGA~regout\);

-- Location: LCCOMB_X48_Y8_N2
\controller|internal_state.INIT~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|internal_state.INIT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \controller|internal_state.INIT~feeder_combout\);

-- Location: LCFF_X48_Y8_N3
\controller|internal_state.INIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|internal_state.INIT~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|PARTITA_INIZIATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|internal_state.INIT~regout\);

-- Location: LCCOMB_X49_Y7_N12
\controller|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector1~0_combout\ = (\controller|internal_state.TURN_FPGA~regout\) # (!\controller|internal_state.INIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|internal_state.TURN_FPGA~regout\,
	datad => \controller|internal_state.INIT~regout\,
	combout => \controller|Selector1~0_combout\);

-- Location: LCFF_X49_Y7_N13
\controller|stato[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|Selector1~0_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|stato\(0));

-- Location: LCCOMB_X48_Y7_N30
\controller|internal_state.TURN_PLAYER~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|internal_state.TURN_PLAYER~feeder_combout\ = \datapath|TURNO_GIOCATORE~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|TURNO_GIOCATORE~regout\,
	combout => \controller|internal_state.TURN_PLAYER~feeder_combout\);

-- Location: LCFF_X48_Y7_N31
\controller|internal_state.TURN_PLAYER\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|internal_state.TURN_PLAYER~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|PARTITA_INIZIATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|internal_state.TURN_PLAYER~regout\);

-- Location: LCCOMB_X49_Y7_N6
\controller|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector0~0_combout\ = (\controller|internal_state.TURN_PLAYER~regout\) # (\controller|internal_state.TURN_FPGA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|internal_state.TURN_PLAYER~regout\,
	datad => \controller|internal_state.TURN_FPGA~regout\,
	combout => \controller|Selector0~0_combout\);

-- Location: LCFF_X49_Y7_N7
\controller|stato[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|Selector0~0_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|stato\(1));

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
	datain => \controller|stato\(0),
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
	datain => \controller|stato\(1),
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


