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

-- DATE "10/01/2019 12:47:34"

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
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \controller|numero_giocatori[1]~13_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[2]~15_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[4]~20_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~2_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~6_combout\ : std_logic;
SIGNAL \controller|LessThan1~0_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[2]~3_combout\ : std_logic;
SIGNAL \controller|initialization_state~0_combout\ : std_logic;
SIGNAL \controller|initialization_state~1_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[0]~3_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~feeder_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \datapath|Add12~0_combout\ : std_logic;
SIGNAL \reset_sync_reg~feeder_combout\ : std_logic;
SIGNAL \reset_sync_reg~regout\ : std_logic;
SIGNAL \RESET_N~feeder_combout\ : std_logic;
SIGNAL \RESET_N~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller:prev_old~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller~1_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[0]~11_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_AGGIUNTO~feeder_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_AGGIUNTO~regout\ : std_logic;
SIGNAL \controller|internal_state.INIT~feeder_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:enter_old~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller~7_combout\ : std_logic;
SIGNAL \controller|elimina_giocatore_old~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:elimina_giocatore_old~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller~9_combout\ : std_logic;
SIGNAL \controller|INIZIA_PARTITA~0_combout\ : std_logic;
SIGNAL \controller|INIZIA_PARTITA~regout\ : std_logic;
SIGNAL \datapath|conteggio_controllato~0_combout\ : std_logic;
SIGNAL \datapath|PARTITA_INIZIATA~feeder_combout\ : std_logic;
SIGNAL \datapath|PARTITA_INIZIATA~regout\ : std_logic;
SIGNAL \controller|internal_state.INIT~regout\ : std_logic;
SIGNAL \controller|nuovo_giocatore_old~3_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[9]~19_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[0]~12\ : std_logic;
SIGNAL \controller|numero_giocatori[1]~14\ : std_logic;
SIGNAL \controller|numero_giocatori[2]~16\ : std_logic;
SIGNAL \controller|numero_giocatori[3]~17_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[3]~18\ : std_logic;
SIGNAL \controller|numero_giocatori[4]~21\ : std_logic;
SIGNAL \controller|numero_giocatori[5]~23\ : std_logic;
SIGNAL \controller|numero_giocatori[6]~24_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[5]~22_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~4_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~8_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_ELIMINATO~0_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_ELIMINATO~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller~11_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[6]~25\ : std_logic;
SIGNAL \controller|numero_giocatori[7]~26_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[7]~27\ : std_logic;
SIGNAL \controller|numero_giocatori[8]~28_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[8]~29\ : std_logic;
SIGNAL \controller|numero_giocatori[9]~30_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~5_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~10_combout\ : std_logic;
SIGNAL \controller|initialization_state~2_combout\ : std_logic;
SIGNAL \controller|initialization_state~regout\ : std_logic;
SIGNAL \controller|numero_giocatori[9]~10_combout\ : std_logic;
SIGNAL \controller|nuovo_giocatore_old~2_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:nuovo_giocatore_old~regout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[0]~6\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[1]~7_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa[0]~2_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa~1_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa~0_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa[1]~_wirecell_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[0]~5_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[0]~8_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[0]~5_combout\ : std_logic;
SIGNAL \datapath|Add2~4_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[2]~9_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa[2]~_wirecell_combout\ : std_logic;
SIGNAL \datapath|Equal3~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|Mux54~2_combout\ : std_logic;
SIGNAL \datapath|Mux54~3_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~1_combout\ : std_logic;
SIGNAL \datapath|Mux54~0_combout\ : std_logic;
SIGNAL \datapath|Mux54~1_combout\ : std_logic;
SIGNAL \datapath|Mux54~4_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[0]~2_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[0]~6_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|Mux56~2_combout\ : std_logic;
SIGNAL \datapath|Mux56~3_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\ : std_logic;
SIGNAL \datapath|Mux56~0_combout\ : std_logic;
SIGNAL \datapath|Mux56~1_combout\ : std_logic;
SIGNAL \datapath|Mux56~4_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~7_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~8_combout\ : std_logic;
SIGNAL \datapath|Mux55~0_combout\ : std_logic;
SIGNAL \datapath|Mux55~1_combout\ : std_logic;
SIGNAL \datapath|Add2~5_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[7].numero_dadi_in_mano[1]~0_combout\ : std_logic;
SIGNAL \datapath|Mux55~2_combout\ : std_logic;
SIGNAL \datapath|Mux55~3_combout\ : std_logic;
SIGNAL \datapath|Mux55~4_combout\ : std_logic;
SIGNAL \datapath|aggiungi_dado~0_combout\ : std_logic;
SIGNAL \datapath|aggiungi_dado~1_combout\ : std_logic;
SIGNAL \datapath|aggiungi_dado~regout\ : std_logic;
SIGNAL \datapath|Equal2~0_combout\ : std_logic;
SIGNAL \datapath|Equal2~1_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[1]~8\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[2]~10\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[3]~11_combout\ : std_logic;
SIGNAL \datapath|Add1~0_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[3]~12\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[4]~13_combout\ : std_logic;
SIGNAL \datapath|Equal3~1_combout\ : std_logic;
SIGNAL \datapath|dado_aggiunto~regout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[0]~7_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[0]~5_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~1_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~4_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[3]~9_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[3]~10_combout\ : std_logic;
SIGNAL \datapath|Equal4~0_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~0_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[0]~2_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[2]~4_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[3]~6_combout\ : std_logic;
SIGNAL \datapath|indice_turno_giocatore~4_combout\ : std_logic;
SIGNAL \datapath|Equal7~0_combout\ : std_logic;
SIGNAL \datapath|indice_turno_giocatore[2]~5_combout\ : std_logic;
SIGNAL \datapath|indice_turno_giocatore~2_combout\ : std_logic;
SIGNAL \datapath|Equal8~0_combout\ : std_logic;
SIGNAL \datapath|Equal8~1_combout\ : std_logic;
SIGNAL \datapath|Equal8~2_combout\ : std_logic;
SIGNAL \datapath|indice_turno_giocatore~3_combout\ : std_logic;
SIGNAL \datapath|TURNO_GIOCATORE~0_combout\ : std_logic;
SIGNAL \datapath|TURNO_GIOCATORE~1_combout\ : std_logic;
SIGNAL \datapath|TURNO_GIOCATORE~regout\ : std_logic;
SIGNAL \controller|internal_state.TURN_PLAYER~feeder_combout\ : std_logic;
SIGNAL \controller|internal_state.TURN_PLAYER~regout\ : std_logic;
SIGNAL \controller|turn_player_state~3_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[0]~6_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[5]~18_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[0]~7\ : std_logic;
SIGNAL \controller|ricorrenza_temp[1]~8_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[1]~9\ : std_logic;
SIGNAL \controller|ricorrenza_temp[2]~11\ : std_logic;
SIGNAL \controller|ricorrenza_temp[3]~12_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[3]~13\ : std_logic;
SIGNAL \controller|ricorrenza_temp[4]~14_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[4]~15\ : std_logic;
SIGNAL \controller|ricorrenza_temp[5]~16_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:next_old~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~3_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[2]~10_combout\ : std_logic;
SIGNAL \controller|turn_player_state~1_combout\ : std_logic;
SIGNAL \controller|turn_player_state~0_combout\ : std_logic;
SIGNAL \controller|turn_player_state~2_combout\ : std_logic;
SIGNAL \controller|turn_player_state~4_combout\ : std_logic;
SIGNAL \controller|turn_player_state~regout\ : std_logic;
SIGNAL \controller|dado_temp[1]~3_combout\ : std_logic;
SIGNAL \controller|Add2~1_combout\ : std_logic;
SIGNAL \controller|dado_temp[2]~4_combout\ : std_logic;
SIGNAL \controller|dado_temp[1]~0_combout\ : std_logic;
SIGNAL \controller|dado_temp[1]~1_combout\ : std_logic;
SIGNAL \controller|dado_temp[0]~2_combout\ : std_logic;
SIGNAL \controller|internal_state.TURN_FPGA~0_combout\ : std_logic;
SIGNAL \controller|internal_state.TURN_FPGA~regout\ : std_logic;
SIGNAL \controller|Selector1~0_combout\ : std_logic;
SIGNAL \controller|Selector0~0_combout\ : std_logic;
SIGNAL \controller|stato\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \controller|ricorrenza_temp\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \controller|numero_giocatori\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \controller|dado_temp\ : std_logic_vector(2 DOWNTO 0);
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
SIGNAL \ALT_INV_RESET_N~regout\ : std_logic;
SIGNAL \controller|ALT_INV_dado_temp\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \datapath|ALT_INV_aggiungi_dado~regout\ : std_logic;

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
\ALT_INV_RESET_N~regout\ <= NOT \RESET_N~regout\;
\controller|ALT_INV_dado_temp\(0) <= NOT \controller|dado_temp\(0);
\datapath|ALT_INV_aggiungi_dado~regout\ <= NOT \datapath|aggiungi_dado~regout\;

-- Location: LCFF_X45_Y17_N17
\controller|numero_giocatori[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[4]~20_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(4));

-- Location: LCFF_X45_Y17_N11
\controller|numero_giocatori[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[1]~13_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(1));

-- Location: LCFF_X45_Y17_N13
\controller|numero_giocatori[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[2]~15_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(2));

-- Location: LCCOMB_X45_Y17_N10
\controller|numero_giocatori[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[1]~13_combout\ = (\controller|numero_giocatori\(1) & ((\controller|Update_State_Controller~11_combout\ & (\controller|numero_giocatori[0]~12\ & VCC)) # (!\controller|Update_State_Controller~11_combout\ & 
-- (!\controller|numero_giocatori[0]~12\)))) # (!\controller|numero_giocatori\(1) & ((\controller|Update_State_Controller~11_combout\ & (!\controller|numero_giocatori[0]~12\)) # (!\controller|Update_State_Controller~11_combout\ & 
-- ((\controller|numero_giocatori[0]~12\) # (GND)))))
-- \controller|numero_giocatori[1]~14\ = CARRY((\controller|numero_giocatori\(1) & (!\controller|Update_State_Controller~11_combout\ & !\controller|numero_giocatori[0]~12\)) # (!\controller|numero_giocatori\(1) & ((!\controller|numero_giocatori[0]~12\) # 
-- (!\controller|Update_State_Controller~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(1),
	datab => \controller|Update_State_Controller~11_combout\,
	datad => VCC,
	cin => \controller|numero_giocatori[0]~12\,
	combout => \controller|numero_giocatori[1]~13_combout\,
	cout => \controller|numero_giocatori[1]~14\);

-- Location: LCCOMB_X45_Y17_N12
\controller|numero_giocatori[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[2]~15_combout\ = ((\controller|numero_giocatori\(2) $ (\controller|Update_State_Controller~11_combout\ $ (!\controller|numero_giocatori[1]~14\)))) # (GND)
-- \controller|numero_giocatori[2]~16\ = CARRY((\controller|numero_giocatori\(2) & ((\controller|Update_State_Controller~11_combout\) # (!\controller|numero_giocatori[1]~14\))) # (!\controller|numero_giocatori\(2) & 
-- (\controller|Update_State_Controller~11_combout\ & !\controller|numero_giocatori[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(2),
	datab => \controller|Update_State_Controller~11_combout\,
	datad => VCC,
	cin => \controller|numero_giocatori[1]~14\,
	combout => \controller|numero_giocatori[2]~15_combout\,
	cout => \controller|numero_giocatori[2]~16\);

-- Location: LCCOMB_X45_Y17_N16
\controller|numero_giocatori[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[4]~20_combout\ = ((\controller|numero_giocatori\(4) $ (\controller|Update_State_Controller~11_combout\ $ (!\controller|numero_giocatori[3]~18\)))) # (GND)
-- \controller|numero_giocatori[4]~21\ = CARRY((\controller|numero_giocatori\(4) & ((\controller|Update_State_Controller~11_combout\) # (!\controller|numero_giocatori[3]~18\))) # (!\controller|numero_giocatori\(4) & 
-- (\controller|Update_State_Controller~11_combout\ & !\controller|numero_giocatori[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(4),
	datab => \controller|Update_State_Controller~11_combout\,
	datad => VCC,
	cin => \controller|numero_giocatori[3]~18\,
	combout => \controller|numero_giocatori[4]~20_combout\,
	cout => \controller|numero_giocatori[4]~21\);

-- Location: LCCOMB_X49_Y17_N6
\controller|Update_State_Controller~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~2_combout\ = (\KEY~combout\(2) & (!\controller|Update_State_Controller:next_old~regout\ & ((!\controller|dado_temp\(1)) # (!\controller|dado_temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \controller|dado_temp\(2),
	datac => \controller|Update_State_Controller:next_old~regout\,
	datad => \controller|dado_temp\(1),
	combout => \controller|Update_State_Controller~2_combout\);

-- Location: LCCOMB_X46_Y17_N24
\controller|Update_State_Controller~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~6_combout\ = (\KEY~combout\(2) & (!\controller|Update_State_Controller:next_old~regout\ & !\controller|Update_State_Controller:nuovo_giocatore_old~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(2),
	datac => \controller|Update_State_Controller:next_old~regout\,
	datad => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	combout => \controller|Update_State_Controller~6_combout\);

-- Location: LCCOMB_X45_Y17_N0
\controller|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|LessThan1~0_combout\ = (\controller|numero_giocatori\(1)) # (\controller|numero_giocatori\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|numero_giocatori\(1),
	datad => \controller|numero_giocatori\(2),
	combout => \controller|LessThan1~0_combout\);

-- Location: LCFF_X45_Y18_N21
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Add2~5_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1));

-- Location: LCFF_X42_Y18_N13
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1));

-- Location: LCFF_X44_Y18_N25
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Add2~5_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1));

-- Location: LCFF_X42_Y18_N17
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Mux56~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0));

-- Location: LCFF_X46_Y18_N7
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Mux56~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0));

-- Location: LCFF_X45_Y18_N13
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2));

-- Location: LCFF_X42_Y18_N25
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Add2~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2));

-- Location: LCFF_X46_Y18_N1
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X48_Y18_N4
\datapath|numero_giocatori_in_campo[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[2]~3_combout\ = (\datapath|numero_giocatori_in_campo\(0) & \datapath|numero_giocatori_in_campo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|numero_giocatori_in_campo\(1),
	combout => \datapath|numero_giocatori_in_campo[2]~3_combout\);

-- Location: LCCOMB_X46_Y17_N16
\controller|initialization_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|initialization_state~0_combout\ = (!\controller|Update_State_Controller:enter_old~regout\ & (\KEY~combout\(1) & !\controller|internal_state.INIT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Update_State_Controller:enter_old~regout\,
	datac => \KEY~combout\(1),
	datad => \controller|internal_state.INIT~regout\,
	combout => \controller|initialization_state~0_combout\);

-- Location: LCCOMB_X47_Y17_N14
\controller|initialization_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|initialization_state~1_combout\ = (\controller|initialization_state~0_combout\ & ((\controller|initialization_state~regout\) # ((!\controller|Update_State_Controller~0_combout\ & !\controller|Update_State_Controller~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|initialization_state~regout\,
	datab => \controller|initialization_state~0_combout\,
	datac => \controller|Update_State_Controller~0_combout\,
	datad => \controller|Update_State_Controller~1_combout\,
	combout => \controller|initialization_state~1_combout\);

-- Location: LCCOMB_X43_Y18_N20
\datapath|indice_giocatore[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[0]~3_combout\ = ((!\datapath|dado_aggiunto~regout\ & !\datapath|Equal4~0_combout\)) # (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|dado_aggiunto~regout\,
	datac => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datad => \datapath|Equal4~0_combout\,
	combout => \datapath|indice_giocatore[0]~3_combout\);

-- Location: LCCOMB_X42_Y18_N20
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~0_combout\ = (!\datapath|indice_giocatore\(0) & (\datapath|indice_giocatore\(1) & \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~0_combout\,
	combout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]~0_combout\);

-- Location: LCCOMB_X46_Y18_N0
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~feeder_combout\ = \datapath|Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|Add2~4_combout\,
	combout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~feeder_combout\);

-- Location: LCCOMB_X45_Y18_N12
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~feeder_combout\ = \datapath|Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|Add2~4_combout\,
	combout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~feeder_combout\);

-- Location: LCCOMB_X42_Y18_N12
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~feeder_combout\ = \datapath|Add2~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|Add2~5_combout\,
	combout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]~feeder_combout\);

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

-- Location: LCCOMB_X47_Y18_N18
\datapath|Add12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add12~0_combout\ = \datapath|numero_giocatori_in_campo\(0) $ (\datapath|numero_giocatori_in_campo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datac => \datapath|numero_giocatori_in_campo\(1),
	combout => \datapath|Add12~0_combout\);

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

-- Location: LCCOMB_X47_Y18_N26
\reset_sync_reg~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_sync_reg~feeder_combout\ = \SW~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(9),
	combout => \reset_sync_reg~feeder_combout\);

-- Location: LCFF_X47_Y18_N27
reset_sync_reg : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \reset_sync_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_sync_reg~regout\);

-- Location: LCCOMB_X47_Y18_N4
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

-- Location: LCFF_X47_Y18_N5
RESET_N : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \RESET_N~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RESET_N~regout\);

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

-- Location: LCFF_X46_Y17_N9
\controller|Update_State_Controller:prev_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \KEY~combout\(3),
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:prev_old~regout\);

-- Location: LCCOMB_X46_Y17_N8
\controller|Update_State_Controller~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~1_combout\ = (\KEY~combout\(3) & !\controller|Update_State_Controller:prev_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(3),
	datac => \controller|Update_State_Controller:prev_old~regout\,
	combout => \controller|Update_State_Controller~1_combout\);

-- Location: LCCOMB_X45_Y17_N8
\controller|numero_giocatori[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[0]~11_combout\ = \controller|numero_giocatori\(0) $ (VCC)
-- \controller|numero_giocatori[0]~12\ = CARRY(\controller|numero_giocatori\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|numero_giocatori\(0),
	datad => VCC,
	combout => \controller|numero_giocatori[0]~11_combout\,
	cout => \controller|numero_giocatori[0]~12\);

-- Location: LCCOMB_X47_Y18_N8
\datapath|GIOCATORE_AGGIUNTO~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|GIOCATORE_AGGIUNTO~feeder_combout\ = \datapath|numero_giocatori_in_campo[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|numero_giocatori_in_campo[0]~5_combout\,
	combout => \datapath|GIOCATORE_AGGIUNTO~feeder_combout\);

-- Location: LCFF_X47_Y18_N9
\datapath|GIOCATORE_AGGIUNTO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|GIOCATORE_AGGIUNTO~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GIOCATORE_AGGIUNTO~regout\);

-- Location: LCCOMB_X46_Y17_N26
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

-- Location: LCFF_X46_Y17_N3
\controller|Update_State_Controller:enter_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \KEY~combout\(1),
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:enter_old~regout\);

-- Location: LCCOMB_X46_Y17_N6
\controller|Update_State_Controller~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~7_combout\ = (\controller|numero_giocatori[9]~10_combout\ & (((!\controller|Update_State_Controller~4_combout\) # (!\controller|Update_State_Controller~5_combout\)) # (!\controller|Update_State_Controller~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~6_combout\,
	datab => \controller|numero_giocatori[9]~10_combout\,
	datac => \controller|Update_State_Controller~5_combout\,
	datad => \controller|Update_State_Controller~4_combout\,
	combout => \controller|Update_State_Controller~7_combout\);

-- Location: LCCOMB_X44_Y17_N20
\controller|elimina_giocatore_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|elimina_giocatore_old~0_combout\ = (!\datapath|GIOCATORE_ELIMINATO~regout\ & ((\controller|Update_State_Controller:elimina_giocatore_old~regout\) # ((\controller|Update_State_Controller~8_combout\ & 
-- \controller|Update_State_Controller~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GIOCATORE_ELIMINATO~regout\,
	datab => \controller|Update_State_Controller~8_combout\,
	datac => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datad => \controller|Update_State_Controller~7_combout\,
	combout => \controller|elimina_giocatore_old~0_combout\);

-- Location: LCFF_X44_Y17_N21
\controller|Update_State_Controller:elimina_giocatore_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|elimina_giocatore_old~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:elimina_giocatore_old~regout\);

-- Location: LCCOMB_X46_Y17_N28
\controller|Update_State_Controller~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~9_combout\ = (\controller|Update_State_Controller~8_combout\ & !\controller|Update_State_Controller:elimina_giocatore_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~8_combout\,
	datad => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	combout => \controller|Update_State_Controller~9_combout\);

-- Location: LCCOMB_X46_Y17_N12
\controller|INIZIA_PARTITA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|INIZIA_PARTITA~0_combout\ = (\KEY~combout\(1) & (!\controller|Update_State_Controller:enter_old~regout\ & (\controller|Update_State_Controller~7_combout\ & !\controller|Update_State_Controller~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \controller|Update_State_Controller:enter_old~regout\,
	datac => \controller|Update_State_Controller~7_combout\,
	datad => \controller|Update_State_Controller~9_combout\,
	combout => \controller|INIZIA_PARTITA~0_combout\);

-- Location: LCFF_X46_Y17_N13
\controller|INIZIA_PARTITA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|INIZIA_PARTITA~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|INIZIA_PARTITA~regout\);

-- Location: LCCOMB_X48_Y17_N0
\datapath|conteggio_controllato~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|conteggio_controllato~0_combout\ = (\controller|INIZIA_PARTITA~regout\) # (\datapath|PARTITA_INIZIATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|INIZIA_PARTITA~regout\,
	datad => \datapath|PARTITA_INIZIATA~regout\,
	combout => \datapath|conteggio_controllato~0_combout\);

-- Location: LCCOMB_X48_Y17_N22
\datapath|PARTITA_INIZIATA~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|PARTITA_INIZIATA~feeder_combout\ = \datapath|conteggio_controllato~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|conteggio_controllato~0_combout\,
	combout => \datapath|PARTITA_INIZIATA~feeder_combout\);

-- Location: LCFF_X48_Y17_N23
\datapath|PARTITA_INIZIATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|PARTITA_INIZIATA~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|PARTITA_INIZIATA~regout\);

-- Location: LCFF_X46_Y17_N27
\controller|internal_state.INIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|internal_state.INIT~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|PARTITA_INIZIATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|internal_state.INIT~regout\);

-- Location: LCCOMB_X46_Y17_N22
\controller|nuovo_giocatore_old~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|nuovo_giocatore_old~3_combout\ = (\controller|Update_State_Controller:nuovo_giocatore_old~regout\) # ((!\controller|internal_state.INIT~regout\ & (\controller|initialization_state~regout\ & \controller|Update_State_Controller~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datab => \controller|internal_state.INIT~regout\,
	datac => \controller|initialization_state~regout\,
	datad => \controller|Update_State_Controller~10_combout\,
	combout => \controller|nuovo_giocatore_old~3_combout\);

-- Location: LCCOMB_X45_Y17_N6
\controller|numero_giocatori[9]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[9]~19_combout\ = (\controller|Update_State_Controller~11_combout\) # ((\datapath|GIOCATORE_AGGIUNTO~regout\ & \controller|nuovo_giocatore_old~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GIOCATORE_AGGIUNTO~regout\,
	datac => \controller|Update_State_Controller~11_combout\,
	datad => \controller|nuovo_giocatore_old~3_combout\,
	combout => \controller|numero_giocatori[9]~19_combout\);

-- Location: LCFF_X45_Y17_N9
\controller|numero_giocatori[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[0]~11_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(0));

-- Location: LCCOMB_X45_Y17_N14
\controller|numero_giocatori[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[3]~17_combout\ = (\controller|numero_giocatori\(3) & ((\controller|Update_State_Controller~11_combout\ & (\controller|numero_giocatori[2]~16\ & VCC)) # (!\controller|Update_State_Controller~11_combout\ & 
-- (!\controller|numero_giocatori[2]~16\)))) # (!\controller|numero_giocatori\(3) & ((\controller|Update_State_Controller~11_combout\ & (!\controller|numero_giocatori[2]~16\)) # (!\controller|Update_State_Controller~11_combout\ & 
-- ((\controller|numero_giocatori[2]~16\) # (GND)))))
-- \controller|numero_giocatori[3]~18\ = CARRY((\controller|numero_giocatori\(3) & (!\controller|Update_State_Controller~11_combout\ & !\controller|numero_giocatori[2]~16\)) # (!\controller|numero_giocatori\(3) & ((!\controller|numero_giocatori[2]~16\) # 
-- (!\controller|Update_State_Controller~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(3),
	datab => \controller|Update_State_Controller~11_combout\,
	datad => VCC,
	cin => \controller|numero_giocatori[2]~16\,
	combout => \controller|numero_giocatori[3]~17_combout\,
	cout => \controller|numero_giocatori[3]~18\);

-- Location: LCFF_X45_Y17_N15
\controller|numero_giocatori[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[3]~17_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(3));

-- Location: LCCOMB_X45_Y17_N18
\controller|numero_giocatori[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[5]~22_combout\ = (\controller|numero_giocatori\(5) & ((\controller|Update_State_Controller~11_combout\ & (\controller|numero_giocatori[4]~21\ & VCC)) # (!\controller|Update_State_Controller~11_combout\ & 
-- (!\controller|numero_giocatori[4]~21\)))) # (!\controller|numero_giocatori\(5) & ((\controller|Update_State_Controller~11_combout\ & (!\controller|numero_giocatori[4]~21\)) # (!\controller|Update_State_Controller~11_combout\ & 
-- ((\controller|numero_giocatori[4]~21\) # (GND)))))
-- \controller|numero_giocatori[5]~23\ = CARRY((\controller|numero_giocatori\(5) & (!\controller|Update_State_Controller~11_combout\ & !\controller|numero_giocatori[4]~21\)) # (!\controller|numero_giocatori\(5) & ((!\controller|numero_giocatori[4]~21\) # 
-- (!\controller|Update_State_Controller~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(5),
	datab => \controller|Update_State_Controller~11_combout\,
	datad => VCC,
	cin => \controller|numero_giocatori[4]~21\,
	combout => \controller|numero_giocatori[5]~22_combout\,
	cout => \controller|numero_giocatori[5]~23\);

-- Location: LCCOMB_X45_Y17_N20
\controller|numero_giocatori[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[6]~24_combout\ = ((\controller|numero_giocatori\(6) $ (\controller|Update_State_Controller~11_combout\ $ (!\controller|numero_giocatori[5]~23\)))) # (GND)
-- \controller|numero_giocatori[6]~25\ = CARRY((\controller|numero_giocatori\(6) & ((\controller|Update_State_Controller~11_combout\) # (!\controller|numero_giocatori[5]~23\))) # (!\controller|numero_giocatori\(6) & 
-- (\controller|Update_State_Controller~11_combout\ & !\controller|numero_giocatori[5]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(6),
	datab => \controller|Update_State_Controller~11_combout\,
	datad => VCC,
	cin => \controller|numero_giocatori[5]~23\,
	combout => \controller|numero_giocatori[6]~24_combout\,
	cout => \controller|numero_giocatori[6]~25\);

-- Location: LCFF_X45_Y17_N21
\controller|numero_giocatori[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[6]~24_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(6));

-- Location: LCFF_X45_Y17_N19
\controller|numero_giocatori[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[5]~22_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(5));

-- Location: LCCOMB_X45_Y17_N28
\controller|Update_State_Controller~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~4_combout\ = (!\controller|numero_giocatori\(4) & (!\controller|numero_giocatori\(3) & (!\controller|numero_giocatori\(6) & !\controller|numero_giocatori\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(4),
	datab => \controller|numero_giocatori\(3),
	datac => \controller|numero_giocatori\(6),
	datad => \controller|numero_giocatori\(5),
	combout => \controller|Update_State_Controller~4_combout\);

-- Location: LCCOMB_X45_Y17_N2
\controller|Update_State_Controller~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~8_combout\ = (\controller|Update_State_Controller~1_combout\ & ((\controller|LessThan1~0_combout\) # ((!\controller|Update_State_Controller~4_combout\) # (!\controller|Update_State_Controller~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|LessThan1~0_combout\,
	datab => \controller|Update_State_Controller~5_combout\,
	datac => \controller|Update_State_Controller~1_combout\,
	datad => \controller|Update_State_Controller~4_combout\,
	combout => \controller|Update_State_Controller~8_combout\);

-- Location: LCCOMB_X46_Y17_N10
\datapath|GIOCATORE_ELIMINATO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|GIOCATORE_ELIMINATO~0_combout\ = (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & \controller|Update_State_Controller:elimina_giocatore_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datad => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	combout => \datapath|GIOCATORE_ELIMINATO~0_combout\);

-- Location: LCFF_X46_Y17_N11
\datapath|GIOCATORE_ELIMINATO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|GIOCATORE_ELIMINATO~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GIOCATORE_ELIMINATO~regout\);

-- Location: LCCOMB_X45_Y17_N4
\controller|Update_State_Controller~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~11_combout\ = (\datapath|GIOCATORE_ELIMINATO~regout\ & ((\controller|Update_State_Controller:elimina_giocatore_old~regout\) # ((\controller|Update_State_Controller~8_combout\ & 
-- \controller|Update_State_Controller~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datab => \controller|Update_State_Controller~8_combout\,
	datac => \datapath|GIOCATORE_ELIMINATO~regout\,
	datad => \controller|Update_State_Controller~7_combout\,
	combout => \controller|Update_State_Controller~11_combout\);

-- Location: LCCOMB_X45_Y17_N22
\controller|numero_giocatori[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[7]~26_combout\ = (\controller|Update_State_Controller~11_combout\ & ((\controller|numero_giocatori\(7) & (\controller|numero_giocatori[6]~25\ & VCC)) # (!\controller|numero_giocatori\(7) & 
-- (!\controller|numero_giocatori[6]~25\)))) # (!\controller|Update_State_Controller~11_combout\ & ((\controller|numero_giocatori\(7) & (!\controller|numero_giocatori[6]~25\)) # (!\controller|numero_giocatori\(7) & ((\controller|numero_giocatori[6]~25\) # 
-- (GND)))))
-- \controller|numero_giocatori[7]~27\ = CARRY((\controller|Update_State_Controller~11_combout\ & (!\controller|numero_giocatori\(7) & !\controller|numero_giocatori[6]~25\)) # (!\controller|Update_State_Controller~11_combout\ & 
-- ((!\controller|numero_giocatori[6]~25\) # (!\controller|numero_giocatori\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~11_combout\,
	datab => \controller|numero_giocatori\(7),
	datad => VCC,
	cin => \controller|numero_giocatori[6]~25\,
	combout => \controller|numero_giocatori[7]~26_combout\,
	cout => \controller|numero_giocatori[7]~27\);

-- Location: LCFF_X45_Y17_N23
\controller|numero_giocatori[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[7]~26_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(7));

-- Location: LCCOMB_X45_Y17_N24
\controller|numero_giocatori[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[8]~28_combout\ = ((\controller|numero_giocatori\(8) $ (\controller|Update_State_Controller~11_combout\ $ (!\controller|numero_giocatori[7]~27\)))) # (GND)
-- \controller|numero_giocatori[8]~29\ = CARRY((\controller|numero_giocatori\(8) & ((\controller|Update_State_Controller~11_combout\) # (!\controller|numero_giocatori[7]~27\))) # (!\controller|numero_giocatori\(8) & 
-- (\controller|Update_State_Controller~11_combout\ & !\controller|numero_giocatori[7]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|numero_giocatori\(8),
	datab => \controller|Update_State_Controller~11_combout\,
	datad => VCC,
	cin => \controller|numero_giocatori[7]~27\,
	combout => \controller|numero_giocatori[8]~28_combout\,
	cout => \controller|numero_giocatori[8]~29\);

-- Location: LCFF_X45_Y17_N25
\controller|numero_giocatori[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[8]~28_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(8));

-- Location: LCCOMB_X45_Y17_N26
\controller|numero_giocatori[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[9]~30_combout\ = \controller|numero_giocatori\(9) $ (\controller|numero_giocatori[8]~29\ $ (\controller|Update_State_Controller~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controller|numero_giocatori\(9),
	datad => \controller|Update_State_Controller~11_combout\,
	cin => \controller|numero_giocatori[8]~29\,
	combout => \controller|numero_giocatori[9]~30_combout\);

-- Location: LCFF_X45_Y17_N27
\controller|numero_giocatori[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[9]~30_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|numero_giocatori[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(9));

-- Location: LCCOMB_X45_Y17_N30
\controller|Update_State_Controller~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~5_combout\ = (!\controller|numero_giocatori\(7) & (!\controller|numero_giocatori\(8) & !\controller|numero_giocatori\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|numero_giocatori\(7),
	datac => \controller|numero_giocatori\(8),
	datad => \controller|numero_giocatori\(9),
	combout => \controller|Update_State_Controller~5_combout\);

-- Location: LCCOMB_X46_Y17_N30
\controller|Update_State_Controller~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~10_combout\ = (\controller|Update_State_Controller~6_combout\ & (\controller|Update_State_Controller~5_combout\ & \controller|Update_State_Controller~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~6_combout\,
	datac => \controller|Update_State_Controller~5_combout\,
	datad => \controller|Update_State_Controller~4_combout\,
	combout => \controller|Update_State_Controller~10_combout\);

-- Location: LCCOMB_X46_Y17_N14
\controller|initialization_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|initialization_state~2_combout\ = (\controller|initialization_state~1_combout\ & ((\controller|Update_State_Controller~10_combout\) # ((\controller|Update_State_Controller~9_combout\) # (!\controller|initialization_state~regout\)))) # 
-- (!\controller|initialization_state~1_combout\ & (((\controller|initialization_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|initialization_state~1_combout\,
	datab => \controller|Update_State_Controller~10_combout\,
	datac => \controller|initialization_state~regout\,
	datad => \controller|Update_State_Controller~9_combout\,
	combout => \controller|initialization_state~2_combout\);

-- Location: LCFF_X46_Y17_N15
\controller|initialization_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|initialization_state~2_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|initialization_state~regout\);

-- Location: LCCOMB_X46_Y17_N0
\controller|numero_giocatori[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[9]~10_combout\ = (\controller|initialization_state~regout\ & !\controller|internal_state.INIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|initialization_state~regout\,
	datad => \controller|internal_state.INIT~regout\,
	combout => \controller|numero_giocatori[9]~10_combout\);

-- Location: LCCOMB_X46_Y17_N18
\controller|nuovo_giocatore_old~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|nuovo_giocatore_old~2_combout\ = (!\datapath|GIOCATORE_AGGIUNTO~regout\ & ((\controller|Update_State_Controller:nuovo_giocatore_old~regout\) # ((\controller|numero_giocatori[9]~10_combout\ & \controller|Update_State_Controller~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GIOCATORE_AGGIUNTO~regout\,
	datab => \controller|numero_giocatori[9]~10_combout\,
	datac => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datad => \controller|Update_State_Controller~10_combout\,
	combout => \controller|nuovo_giocatore_old~2_combout\);

-- Location: LCFF_X46_Y17_N19
\controller|Update_State_Controller:nuovo_giocatore_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|nuovo_giocatore_old~2_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:nuovo_giocatore_old~regout\);

-- Location: LCCOMB_X43_Y19_N16
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

-- Location: LCCOMB_X43_Y19_N18
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

-- Location: LCCOMB_X43_Y18_N22
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

-- Location: LCFF_X43_Y18_N23
\datapath|cicli_casuali_attesa[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_casuali_attesa[0]~2_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(0));

-- Location: LCCOMB_X43_Y18_N26
\datapath|cicli_casuali_attesa~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_casuali_attesa~1_combout\ = (\datapath|cicli_casuali_attesa\(1) & (((\datapath|cicli_casuali_attesa\(2))))) # (!\datapath|cicli_casuali_attesa\(1) & ((\datapath|cicli_casuali_attesa\(2) & ((!\datapath|cicli_casuali_attesa\(0)))) # 
-- (!\datapath|cicli_casuali_attesa\(2) & (!\datapath|cicli_casuali_attesa\(3) & \datapath|cicli_casuali_attesa\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_casuali_attesa\(3),
	datab => \datapath|cicli_casuali_attesa\(1),
	datac => \datapath|cicli_casuali_attesa\(2),
	datad => \datapath|cicli_casuali_attesa\(0),
	combout => \datapath|cicli_casuali_attesa~1_combout\);

-- Location: LCFF_X43_Y18_N27
\datapath|cicli_casuali_attesa[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_casuali_attesa~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(2));

-- Location: LCCOMB_X43_Y18_N0
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

-- Location: LCFF_X43_Y18_N1
\datapath|cicli_casuali_attesa[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_casuali_attesa~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(1));

-- Location: LCCOMB_X43_Y18_N8
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

-- Location: LCCOMB_X47_Y18_N28
\datapath|numero_giocatori_in_campo[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[0]~8_combout\ = !\datapath|numero_giocatori_in_campo\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|numero_giocatori_in_campo[0]~8_combout\);

-- Location: LCFF_X47_Y18_N29
\datapath|numero_giocatori_in_campo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo[0]~8_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|numero_giocatori_in_campo[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(0));

-- Location: LCCOMB_X44_Y18_N24
\datapath|indice_giocatore[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[0]~5_combout\ = (\datapath|numero_giocatori_in_campo\(0)) # (!\datapath|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal4~0_combout\,
	datad => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|indice_giocatore[0]~5_combout\);

-- Location: LCCOMB_X46_Y18_N18
\datapath|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add2~4_combout\ = \datapath|Mux54~4_combout\ $ (((\datapath|Mux55~4_combout\ & !\datapath|Mux56~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux55~4_combout\,
	datac => \datapath|Mux56~4_combout\,
	datad => \datapath|Mux54~4_combout\,
	combout => \datapath|Add2~4_combout\);

-- Location: LCCOMB_X43_Y19_N20
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

-- Location: LCCOMB_X43_Y19_N14
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

-- Location: LCFF_X43_Y19_N21
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

-- Location: LCCOMB_X43_Y19_N8
\datapath|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal3~0_combout\ = (\datapath|cicli_da_attendere\(0) & (\datapath|cicli_da_attendere\(1) & (\datapath|cicli_da_attendere\(2) & \datapath|cicli_da_attendere\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_da_attendere\(0),
	datab => \datapath|cicli_da_attendere\(1),
	datac => \datapath|cicli_da_attendere\(2),
	datad => \datapath|cicli_da_attendere\(3),
	combout => \datapath|Equal3~0_combout\);

-- Location: LCCOMB_X44_Y18_N8
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~0_combout\ = (!\datapath|indice_giocatore\(2) & (\datapath|aggiungi_dado~regout\ & (\datapath|cicli_da_attendere\(4) & \datapath|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(2),
	datab => \datapath|aggiungi_dado~regout\,
	datac => \datapath|cicli_da_attendere\(4),
	datad => \datapath|Equal3~0_combout\,
	combout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~0_combout\);

-- Location: LCCOMB_X44_Y18_N10
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~0_combout\ = (\datapath|indice_giocatore\(1) & (!\datapath|indice_giocatore\(0) & \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~0_combout\,
	combout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~0_combout\);

-- Location: LCFF_X44_Y18_N29
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Add2~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X45_Y18_N18
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~feeder_combout\ = \datapath|Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|Add2~4_combout\,
	combout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~feeder_combout\);

-- Location: LCCOMB_X45_Y18_N22
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\ = (\datapath|indice_giocatore\(0) & (!\datapath|indice_giocatore\(1) & \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~0_combout\,
	combout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\);

-- Location: LCFF_X45_Y18_N19
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X44_Y18_N20
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~1_combout\ = (\datapath|indice_giocatore\(1) & (\datapath|indice_giocatore\(0) & \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~0_combout\,
	combout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~1_combout\);

-- Location: LCFF_X44_Y18_N27
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Add2~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X44_Y18_N26
\datapath|Mux54~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux54~2_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2) & \datapath|indice_giocatore\(0))))) # (!\datapath|indice_giocatore\(1) & ((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2)) 
-- # ((!\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datab => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux54~2_combout\);

-- Location: LCCOMB_X44_Y18_N28
\datapath|Mux54~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux54~3_combout\ = (\datapath|indice_giocatore\(0) & (((\datapath|Mux54~2_combout\)))) # (!\datapath|indice_giocatore\(0) & ((\datapath|Mux54~2_combout\ & (\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2))) # (!\datapath|Mux54~2_combout\ 
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
	datad => \datapath|Mux54~2_combout\,
	combout => \datapath|Mux54~3_combout\);

-- Location: LCCOMB_X44_Y18_N4
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~0_combout\ = (\datapath|indice_giocatore\(2) & (\datapath|aggiungi_dado~regout\ & (\datapath|cicli_da_attendere\(4) & \datapath|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(2),
	datab => \datapath|aggiungi_dado~regout\,
	datac => \datapath|cicli_da_attendere\(4),
	datad => \datapath|Equal3~0_combout\,
	combout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~0_combout\);

-- Location: LCCOMB_X46_Y18_N8
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\ = (!\datapath|indice_giocatore\(0) & (\datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~0_combout\ & !\datapath|indice_giocatore\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~0_combout\,
	datad => \datapath|indice_giocatore\(1),
	combout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\);

-- Location: LCFF_X46_Y18_N23
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Add2~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X42_Y18_N22
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~1_combout\ = (\datapath|indice_giocatore\(0) & (\datapath|indice_giocatore\(1) & \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~0_combout\,
	combout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~1_combout\);

-- Location: LCFF_X42_Y18_N31
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Add2~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X42_Y18_N30
\datapath|Mux54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux54~0_combout\ = (\datapath|indice_giocatore\(1) & ((\datapath|indice_giocatore\(0) & ((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2)))) # (!\datapath|indice_giocatore\(0) & 
-- (\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2))))) # (!\datapath|indice_giocatore\(1) & (((!\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux54~0_combout\);

-- Location: LCCOMB_X46_Y18_N22
\datapath|Mux54~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux54~1_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|Mux54~0_combout\)))) # (!\datapath|indice_giocatore\(1) & ((\datapath|Mux54~0_combout\ & ((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2)))) # 
-- (!\datapath|Mux54~0_combout\ & (\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2),
	datad => \datapath|Mux54~0_combout\,
	combout => \datapath|Mux54~1_combout\);

-- Location: LCCOMB_X46_Y18_N10
\datapath|Mux54~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux54~4_combout\ = (\datapath|indice_giocatore\(2) & ((\datapath|Mux54~1_combout\))) # (!\datapath|indice_giocatore\(2) & (\datapath|Mux54~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(2),
	datac => \datapath|Mux54~3_combout\,
	datad => \datapath|Mux54~1_combout\,
	combout => \datapath|Mux54~4_combout\);

-- Location: LCCOMB_X43_Y18_N6
\datapath|indice_giocatore[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[0]~2_combout\ = (!\datapath|Equal4~0_combout\ & (((\datapath|Mux56~4_combout\ & !\datapath|Mux55~4_combout\)) # (!\datapath|Mux54~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux56~4_combout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|Mux55~4_combout\,
	datad => \datapath|Mux54~4_combout\,
	combout => \datapath|indice_giocatore[0]~2_combout\);

-- Location: LCCOMB_X43_Y18_N24
\datapath|indice_giocatore[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[0]~6_combout\ = (\datapath|indice_giocatore[0]~3_combout\ & (((\datapath|indice_giocatore\(0))))) # (!\datapath|indice_giocatore[0]~3_combout\ & ((\datapath|indice_giocatore[0]~2_combout\ & ((\datapath|indice_giocatore\(0)))) # 
-- (!\datapath|indice_giocatore[0]~2_combout\ & (!\datapath|indice_giocatore[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore[0]~3_combout\,
	datab => \datapath|indice_giocatore[0]~5_combout\,
	datac => \datapath|indice_giocatore\(0),
	datad => \datapath|indice_giocatore[0]~2_combout\,
	combout => \datapath|indice_giocatore[0]~6_combout\);

-- Location: LCFF_X43_Y18_N25
\datapath|indice_giocatore[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore[0]~6_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(0));

-- Location: LCFF_X44_Y18_N13
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Mux56~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X45_Y18_N14
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~feeder_combout\ = \datapath|Mux56~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|Mux56~4_combout\,
	combout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~feeder_combout\);

-- Location: LCFF_X45_Y18_N15
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0));

-- Location: LCFF_X44_Y18_N23
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Mux56~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X44_Y18_N22
\datapath|Mux56~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux56~2_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0) & \datapath|indice_giocatore\(0))))) # (!\datapath|indice_giocatore\(1) & ((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0)) 
-- # ((!\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datab => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux56~2_combout\);

-- Location: LCCOMB_X44_Y18_N12
\datapath|Mux56~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux56~3_combout\ = (\datapath|indice_giocatore\(0) & (((\datapath|Mux56~2_combout\)))) # (!\datapath|indice_giocatore\(0) & ((\datapath|Mux56~2_combout\ & (\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0))) # (!\datapath|Mux56~2_combout\ 
-- & ((\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0),
	datad => \datapath|Mux56~2_combout\,
	combout => \datapath|Mux56~3_combout\);

-- Location: LCCOMB_X45_Y18_N28
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~feeder_combout\ = \datapath|Mux56~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|Mux56~4_combout\,
	combout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~feeder_combout\);

-- Location: LCCOMB_X45_Y18_N8
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\ = (\datapath|indice_giocatore\(0) & (!\datapath|indice_giocatore\(1) & \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~0_combout\,
	combout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\);

-- Location: LCFF_X45_Y18_N29
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0));

-- Location: LCFF_X46_Y18_N13
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Mux56~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0));

-- Location: LCFF_X42_Y18_N3
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Mux56~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X42_Y18_N2
\datapath|Mux56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux56~0_combout\ = (\datapath|indice_giocatore\(1) & ((\datapath|indice_giocatore\(0) & ((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0)))) # (!\datapath|indice_giocatore\(0) & 
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
	combout => \datapath|Mux56~0_combout\);

-- Location: LCCOMB_X46_Y18_N12
\datapath|Mux56~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux56~1_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|Mux56~0_combout\)))) # (!\datapath|indice_giocatore\(1) & ((\datapath|Mux56~0_combout\ & ((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0)))) # 
-- (!\datapath|Mux56~0_combout\ & (\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datab => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0),
	datac => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0),
	datad => \datapath|Mux56~0_combout\,
	combout => \datapath|Mux56~1_combout\);

-- Location: LCCOMB_X46_Y18_N20
\datapath|Mux56~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux56~4_combout\ = (\datapath|indice_giocatore\(2) & ((!\datapath|Mux56~1_combout\))) # (!\datapath|indice_giocatore\(2) & (!\datapath|Mux56~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(2),
	datac => \datapath|Mux56~3_combout\,
	datad => \datapath|Mux56~1_combout\,
	combout => \datapath|Mux56~4_combout\);

-- Location: LCCOMB_X46_Y18_N28
\datapath|indice_giocatore~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~7_combout\ = (\datapath|Mux54~1_combout\ & (\datapath|indice_giocatore~0_combout\ & ((\datapath|Mux55~4_combout\) # (!\datapath|Mux56~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux54~1_combout\,
	datab => \datapath|indice_giocatore~0_combout\,
	datac => \datapath|Mux56~4_combout\,
	datad => \datapath|Mux55~4_combout\,
	combout => \datapath|indice_giocatore~7_combout\);

-- Location: LCCOMB_X43_Y18_N10
\datapath|indice_giocatore~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~8_combout\ = (!\datapath|indice_giocatore~7_combout\ & ((\datapath|Equal4~0_combout\ & (!\datapath|numero_giocatori_in_campo\(2))) # (!\datapath|Equal4~0_combout\ & ((\datapath|indice_giocatore\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \datapath|numero_giocatori_in_campo\(2),
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore~7_combout\,
	combout => \datapath|indice_giocatore~8_combout\);

-- Location: LCFF_X43_Y18_N11
\datapath|indice_giocatore[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore~8_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(2));

-- Location: LCFF_X46_Y18_N27
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Add2~5_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1));

-- Location: LCFF_X42_Y18_N7
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Add2~5_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X42_Y18_N6
\datapath|Mux55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux55~0_combout\ = (\datapath|indice_giocatore\(1) & ((\datapath|indice_giocatore\(0) & ((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1)))) # (!\datapath|indice_giocatore\(0) & 
-- (\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1))))) # (!\datapath|indice_giocatore\(1) & (((!\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux55~0_combout\);

-- Location: LCCOMB_X46_Y18_N26
\datapath|Mux55~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux55~1_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|Mux55~0_combout\)))) # (!\datapath|indice_giocatore\(1) & ((\datapath|Mux55~0_combout\ & ((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1)))) # 
-- (!\datapath|Mux55~0_combout\ & (\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1),
	datad => \datapath|Mux55~0_combout\,
	combout => \datapath|Mux55~1_combout\);

-- Location: LCCOMB_X45_Y18_N4
\datapath|Add2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add2~5_combout\ = \datapath|Mux56~4_combout\ $ (((\datapath|indice_giocatore\(2) & ((!\datapath|Mux55~1_combout\))) # (!\datapath|indice_giocatore\(2) & (!\datapath|Mux55~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux55~3_combout\,
	datab => \datapath|indice_giocatore\(2),
	datac => \datapath|Mux55~1_combout\,
	datad => \datapath|Mux56~4_combout\,
	combout => \datapath|Add2~5_combout\);

-- Location: LCCOMB_X46_Y18_N2
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[7].numero_dadi_in_mano[1]~0_combout\ = (!\datapath|indice_giocatore\(1) & (!\datapath|indice_giocatore\(0) & \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datac => \datapath|indice_giocatore\(0),
	datad => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~0_combout\,
	combout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[1]~0_combout\);

-- Location: LCFF_X46_Y18_N5
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Add2~5_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1));

-- Location: LCFF_X45_Y18_N31
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Add2~5_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1));

-- Location: LCFF_X44_Y18_N7
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|Add2~5_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	ena => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X44_Y18_N6
\datapath|Mux55~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux55~2_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1) & \datapath|indice_giocatore\(0))))) # (!\datapath|indice_giocatore\(1) & ((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1)) 
-- # ((!\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datab => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux55~2_combout\);

-- Location: LCCOMB_X46_Y18_N4
\datapath|Mux55~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux55~3_combout\ = (\datapath|indice_giocatore\(0) & (((\datapath|Mux55~2_combout\)))) # (!\datapath|indice_giocatore\(0) & ((\datapath|Mux55~2_combout\ & ((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1)))) # 
-- (!\datapath|Mux55~2_combout\ & (\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1),
	datad => \datapath|Mux55~2_combout\,
	combout => \datapath|Mux55~3_combout\);

-- Location: LCCOMB_X46_Y18_N30
\datapath|Mux55~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux55~4_combout\ = (\datapath|indice_giocatore\(2) & ((\datapath|Mux55~1_combout\))) # (!\datapath|indice_giocatore\(2) & (\datapath|Mux55~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(2),
	datac => \datapath|Mux55~3_combout\,
	datad => \datapath|Mux55~1_combout\,
	combout => \datapath|Mux55~4_combout\);

-- Location: LCCOMB_X43_Y18_N2
\datapath|aggiungi_dado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|aggiungi_dado~0_combout\ = (\datapath|dado_aggiunto~regout\ & (((\datapath|Mux56~4_combout\ & !\datapath|Mux55~4_combout\)) # (!\datapath|Mux54~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux56~4_combout\,
	datab => \datapath|dado_aggiunto~regout\,
	datac => \datapath|Mux55~4_combout\,
	datad => \datapath|Mux54~4_combout\,
	combout => \datapath|aggiungi_dado~0_combout\);

-- Location: LCCOMB_X43_Y18_N16
\datapath|aggiungi_dado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|aggiungi_dado~1_combout\ = (\datapath|Equal4~0_combout\) # ((\datapath|aggiungi_dado~0_combout\) # ((!\datapath|dado_aggiunto~regout\ & \datapath|aggiungi_dado~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|dado_aggiunto~regout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|aggiungi_dado~regout\,
	datad => \datapath|aggiungi_dado~0_combout\,
	combout => \datapath|aggiungi_dado~1_combout\);

-- Location: LCFF_X43_Y18_N17
\datapath|aggiungi_dado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|aggiungi_dado~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|aggiungi_dado~regout\);

-- Location: LCFF_X43_Y19_N17
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

-- Location: LCCOMB_X43_Y19_N2
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

-- Location: LCCOMB_X43_Y19_N12
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

-- Location: LCFF_X43_Y19_N19
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

-- Location: LCCOMB_X43_Y19_N22
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

-- Location: LCCOMB_X43_Y18_N28
\datapath|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add1~0_combout\ = \datapath|cicli_casuali_attesa\(3) $ (((!\datapath|cicli_casuali_attesa\(2) & (!\datapath|cicli_casuali_attesa\(1) & \datapath|cicli_casuali_attesa\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_casuali_attesa\(2),
	datab => \datapath|cicli_casuali_attesa\(1),
	datac => \datapath|cicli_casuali_attesa\(3),
	datad => \datapath|cicli_casuali_attesa\(0),
	combout => \datapath|Add1~0_combout\);

-- Location: LCFF_X43_Y18_N29
\datapath|cicli_casuali_attesa[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|Add1~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(3));

-- Location: LCFF_X43_Y19_N23
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

-- Location: LCCOMB_X43_Y19_N24
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

-- Location: LCFF_X43_Y19_N25
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

-- Location: LCCOMB_X43_Y18_N12
\datapath|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal3~1_combout\ = (\datapath|cicli_da_attendere\(4) & \datapath|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|cicli_da_attendere\(4),
	datad => \datapath|Equal3~0_combout\,
	combout => \datapath|Equal3~1_combout\);

-- Location: LCFF_X43_Y18_N13
\datapath|dado_aggiunto\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|Equal3~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	sclr => \datapath|ALT_INV_aggiungi_dado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|dado_aggiunto~regout\);

-- Location: LCCOMB_X47_Y18_N22
\datapath|numero_giocatori_in_campo[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[0]~7_combout\ = (\datapath|Equal4~0_combout\) # ((!\datapath|dado_aggiunto~regout\) # (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datac => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datad => \datapath|dado_aggiunto~regout\,
	combout => \datapath|numero_giocatori_in_campo[0]~7_combout\);

-- Location: LCCOMB_X47_Y18_N10
\datapath|numero_giocatori_in_campo[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[0]~5_combout\ = (!\datapath|numero_giocatori_in_campo[0]~7_combout\ & (\datapath|Mux54~4_combout\ & ((\datapath|Mux55~4_combout\) # (!\datapath|Mux56~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux55~4_combout\,
	datab => \datapath|numero_giocatori_in_campo[0]~7_combout\,
	datac => \datapath|Mux56~4_combout\,
	datad => \datapath|Mux54~4_combout\,
	combout => \datapath|numero_giocatori_in_campo[0]~5_combout\);

-- Location: LCFF_X47_Y18_N19
\datapath|numero_giocatori_in_campo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|Add12~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|numero_giocatori_in_campo[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(1));

-- Location: LCCOMB_X44_Y18_N30
\datapath|indice_giocatore[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~1_combout\ = (\datapath|numero_giocatori_in_campo\(1)) # (!\datapath|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|numero_giocatori_in_campo\(1),
	combout => \datapath|indice_giocatore[1]~1_combout\);

-- Location: LCCOMB_X43_Y18_N30
\datapath|indice_giocatore[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~4_combout\ = (\datapath|indice_giocatore[0]~3_combout\ & (((\datapath|indice_giocatore\(1))))) # (!\datapath|indice_giocatore[0]~3_combout\ & ((\datapath|indice_giocatore[0]~2_combout\ & ((\datapath|indice_giocatore\(1)))) # 
-- (!\datapath|indice_giocatore[0]~2_combout\ & (!\datapath|indice_giocatore[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore[0]~3_combout\,
	datab => \datapath|indice_giocatore[1]~1_combout\,
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|indice_giocatore[0]~2_combout\,
	combout => \datapath|indice_giocatore[1]~4_combout\);

-- Location: LCFF_X43_Y18_N31
\datapath|indice_giocatore[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore[1]~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(1));

-- Location: LCCOMB_X44_Y18_N18
\datapath|indice_giocatore[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[3]~9_combout\ = (\datapath|numero_giocatori_in_campo\(3)) # (!\datapath|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal4~0_combout\,
	datad => \datapath|numero_giocatori_in_campo\(3),
	combout => \datapath|indice_giocatore[3]~9_combout\);

-- Location: LCCOMB_X43_Y18_N4
\datapath|indice_giocatore[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[3]~10_combout\ = (\datapath|indice_giocatore[0]~3_combout\ & (((\datapath|indice_giocatore\(3))))) # (!\datapath|indice_giocatore[0]~3_combout\ & ((\datapath|indice_giocatore[0]~2_combout\ & ((\datapath|indice_giocatore\(3)))) # 
-- (!\datapath|indice_giocatore[0]~2_combout\ & (!\datapath|indice_giocatore[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore[0]~3_combout\,
	datab => \datapath|indice_giocatore[3]~9_combout\,
	datac => \datapath|indice_giocatore\(3),
	datad => \datapath|indice_giocatore[0]~2_combout\,
	combout => \datapath|indice_giocatore[3]~10_combout\);

-- Location: LCFF_X43_Y18_N5
\datapath|indice_giocatore[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore[3]~10_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(3));

-- Location: LCCOMB_X43_Y18_N18
\datapath|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal4~0_combout\ = (!\datapath|indice_giocatore\(0) & (!\datapath|indice_giocatore\(1) & (!\datapath|indice_giocatore\(3) & !\datapath|indice_giocatore\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(0),
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|indice_giocatore\(3),
	datad => \datapath|indice_giocatore\(2),
	combout => \datapath|Equal4~0_combout\);

-- Location: LCCOMB_X46_Y18_N14
\datapath|indice_giocatore~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~0_combout\ = (\datapath|dado_aggiunto~regout\ & !\datapath|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|dado_aggiunto~regout\,
	datad => \datapath|Equal4~0_combout\,
	combout => \datapath|indice_giocatore~0_combout\);

-- Location: LCCOMB_X46_Y18_N24
\datapath|numero_giocatori_in_campo[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[0]~2_combout\ = (((\datapath|Mux56~4_combout\ & !\datapath|Mux55~4_combout\)) # (!\datapath|Mux54~4_combout\)) # (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux56~4_combout\,
	datab => \datapath|Mux55~4_combout\,
	datac => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datad => \datapath|Mux54~4_combout\,
	combout => \datapath|numero_giocatori_in_campo[0]~2_combout\);

-- Location: LCCOMB_X47_Y18_N20
\datapath|numero_giocatori_in_campo[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[2]~4_combout\ = \datapath|numero_giocatori_in_campo\(2) $ (((\datapath|numero_giocatori_in_campo[2]~3_combout\ & (\datapath|indice_giocatore~0_combout\ & !\datapath|numero_giocatori_in_campo[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo[2]~3_combout\,
	datab => \datapath|indice_giocatore~0_combout\,
	datac => \datapath|numero_giocatori_in_campo\(2),
	datad => \datapath|numero_giocatori_in_campo[0]~2_combout\,
	combout => \datapath|numero_giocatori_in_campo[2]~4_combout\);

-- Location: LCFF_X47_Y18_N21
\datapath|numero_giocatori_in_campo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo[2]~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(2));

-- Location: LCCOMB_X47_Y18_N30
\datapath|numero_giocatori_in_campo[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[3]~6_combout\ = \datapath|numero_giocatori_in_campo\(3) $ (((\datapath|numero_giocatori_in_campo[2]~3_combout\ & (\datapath|numero_giocatori_in_campo\(2) & \datapath|numero_giocatori_in_campo[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo[2]~3_combout\,
	datab => \datapath|numero_giocatori_in_campo\(2),
	datac => \datapath|numero_giocatori_in_campo\(3),
	datad => \datapath|numero_giocatori_in_campo[0]~5_combout\,
	combout => \datapath|numero_giocatori_in_campo[3]~6_combout\);

-- Location: LCFF_X47_Y18_N31
\datapath|numero_giocatori_in_campo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo[3]~6_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(3));

-- Location: LCCOMB_X47_Y17_N0
\datapath|indice_turno_giocatore~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_turno_giocatore~4_combout\ = (!\datapath|indice_turno_giocatore\(0) & !\datapath|Equal8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|indice_turno_giocatore\(0),
	datad => \datapath|Equal8~2_combout\,
	combout => \datapath|indice_turno_giocatore~4_combout\);

-- Location: LCCOMB_X47_Y18_N24
\datapath|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal7~0_combout\ = (!\datapath|numero_giocatori_in_campo\(1) & (!\datapath|numero_giocatori_in_campo\(2) & !\datapath|numero_giocatori_in_campo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|numero_giocatori_in_campo\(2),
	datad => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|Equal7~0_combout\);

-- Location: LCCOMB_X46_Y17_N4
\datapath|indice_turno_giocatore[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_turno_giocatore[2]~5_combout\ = (!\controller|INIZIA_PARTITA~regout\ & (!\datapath|PARTITA_INIZIATA~regout\ & ((\datapath|numero_giocatori_in_campo\(3)) # (!\datapath|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|INIZIA_PARTITA~regout\,
	datab => \datapath|PARTITA_INIZIATA~regout\,
	datac => \datapath|numero_giocatori_in_campo\(3),
	datad => \datapath|Equal7~0_combout\,
	combout => \datapath|indice_turno_giocatore[2]~5_combout\);

-- Location: LCFF_X47_Y17_N1
\datapath|indice_turno_giocatore[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_turno_giocatore~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|indice_turno_giocatore[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_turno_giocatore\(0));

-- Location: LCCOMB_X47_Y17_N26
\datapath|indice_turno_giocatore~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_turno_giocatore~2_combout\ = (!\datapath|Equal8~2_combout\ & (\datapath|indice_turno_giocatore\(2) $ (((\datapath|indice_turno_giocatore\(1) & \datapath|indice_turno_giocatore\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(1),
	datab => \datapath|indice_turno_giocatore\(0),
	datac => \datapath|indice_turno_giocatore\(2),
	datad => \datapath|Equal8~2_combout\,
	combout => \datapath|indice_turno_giocatore~2_combout\);

-- Location: LCFF_X47_Y17_N27
\datapath|indice_turno_giocatore[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_turno_giocatore~2_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|indice_turno_giocatore[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_turno_giocatore\(2));

-- Location: LCCOMB_X46_Y18_N16
\datapath|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal8~0_combout\ = \datapath|numero_giocatori_in_campo\(2) $ (\datapath|indice_turno_giocatore\(2) $ (((\datapath|numero_giocatori_in_campo\(0)) # (\datapath|numero_giocatori_in_campo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datab => \datapath|numero_giocatori_in_campo\(2),
	datac => \datapath|indice_turno_giocatore\(2),
	datad => \datapath|numero_giocatori_in_campo\(1),
	combout => \datapath|Equal8~0_combout\);

-- Location: LCCOMB_X47_Y17_N22
\datapath|Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal8~1_combout\ = (\datapath|numero_giocatori_in_campo\(0) & (!\datapath|indice_turno_giocatore\(0) & (\datapath|indice_turno_giocatore\(1) $ (!\datapath|numero_giocatori_in_campo\(1))))) # (!\datapath|numero_giocatori_in_campo\(0) & 
-- (\datapath|indice_turno_giocatore\(0) & (\datapath|indice_turno_giocatore\(1) $ (\datapath|numero_giocatori_in_campo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(1),
	datab => \datapath|numero_giocatori_in_campo\(0),
	datac => \datapath|numero_giocatori_in_campo\(1),
	datad => \datapath|indice_turno_giocatore\(0),
	combout => \datapath|Equal8~1_combout\);

-- Location: LCCOMB_X47_Y17_N20
\datapath|Equal8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal8~2_combout\ = (\datapath|Equal8~0_combout\ & (\datapath|Equal8~1_combout\ & (\datapath|Equal7~0_combout\ $ (!\datapath|numero_giocatori_in_campo\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal7~0_combout\,
	datab => \datapath|numero_giocatori_in_campo\(3),
	datac => \datapath|Equal8~0_combout\,
	datad => \datapath|Equal8~1_combout\,
	combout => \datapath|Equal8~2_combout\);

-- Location: LCCOMB_X44_Y17_N16
\datapath|indice_turno_giocatore~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_turno_giocatore~3_combout\ = (!\datapath|Equal8~2_combout\ & (\datapath|indice_turno_giocatore\(0) $ (\datapath|indice_turno_giocatore\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(0),
	datac => \datapath|indice_turno_giocatore\(1),
	datad => \datapath|Equal8~2_combout\,
	combout => \datapath|indice_turno_giocatore~3_combout\);

-- Location: LCFF_X44_Y17_N17
\datapath|indice_turno_giocatore[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_turno_giocatore~3_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|indice_turno_giocatore[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_turno_giocatore\(1));

-- Location: LCCOMB_X44_Y17_N18
\datapath|TURNO_GIOCATORE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|TURNO_GIOCATORE~0_combout\ = (!\datapath|indice_turno_giocatore\(1) & !\datapath|indice_turno_giocatore\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|indice_turno_giocatore\(1),
	datad => \datapath|indice_turno_giocatore\(2),
	combout => \datapath|TURNO_GIOCATORE~0_combout\);

-- Location: LCCOMB_X48_Y17_N28
\datapath|TURNO_GIOCATORE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|TURNO_GIOCATORE~1_combout\ = (\datapath|conteggio_controllato~0_combout\ & (!\datapath|indice_turno_giocatore\(0) & (\datapath|TURNO_GIOCATORE~0_combout\))) # (!\datapath|conteggio_controllato~0_combout\ & 
-- (((\datapath|TURNO_GIOCATORE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(0),
	datab => \datapath|TURNO_GIOCATORE~0_combout\,
	datac => \datapath|TURNO_GIOCATORE~regout\,
	datad => \datapath|conteggio_controllato~0_combout\,
	combout => \datapath|TURNO_GIOCATORE~1_combout\);

-- Location: LCFF_X48_Y17_N29
\datapath|TURNO_GIOCATORE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|TURNO_GIOCATORE~1_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|TURNO_GIOCATORE~regout\);

-- Location: LCCOMB_X48_Y17_N30
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

-- Location: LCFF_X48_Y17_N31
\controller|internal_state.TURN_PLAYER\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|internal_state.TURN_PLAYER~feeder_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|PARTITA_INIZIATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|internal_state.TURN_PLAYER~regout\);

-- Location: LCCOMB_X48_Y17_N26
\controller|turn_player_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|turn_player_state~3_combout\ = (\KEY~combout\(1) & (\controller|internal_state.TURN_PLAYER~regout\ & !\controller|Update_State_Controller:enter_old~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \controller|internal_state.TURN_PLAYER~regout\,
	datac => \controller|Update_State_Controller:enter_old~regout\,
	combout => \controller|turn_player_state~3_combout\);

-- Location: LCCOMB_X47_Y17_N2
\controller|ricorrenza_temp[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[0]~6_combout\ = \controller|ricorrenza_temp\(0) $ (VCC)
-- \controller|ricorrenza_temp[0]~7\ = CARRY(\controller|ricorrenza_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|ricorrenza_temp\(0),
	datad => VCC,
	combout => \controller|ricorrenza_temp[0]~6_combout\,
	cout => \controller|ricorrenza_temp[0]~7\);

-- Location: LCCOMB_X47_Y17_N16
\controller|ricorrenza_temp[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[5]~18_combout\ = (!\controller|turn_player_state~regout\ & (\controller|internal_state.TURN_PLAYER~regout\ & (\RESET_N~regout\ & !\controller|turn_player_state~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|turn_player_state~regout\,
	datab => \controller|internal_state.TURN_PLAYER~regout\,
	datac => \RESET_N~regout\,
	datad => \controller|turn_player_state~2_combout\,
	combout => \controller|ricorrenza_temp[5]~18_combout\);

-- Location: LCFF_X47_Y17_N3
\controller|ricorrenza_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|ricorrenza_temp[0]~6_combout\,
	ena => \controller|ricorrenza_temp[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ricorrenza_temp\(0));

-- Location: LCCOMB_X47_Y17_N4
\controller|ricorrenza_temp[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[1]~8_combout\ = (\controller|Update_State_Controller~3_combout\ & ((\controller|ricorrenza_temp\(1) & (!\controller|ricorrenza_temp[0]~7\)) # (!\controller|ricorrenza_temp\(1) & ((\controller|ricorrenza_temp[0]~7\) # (GND))))) 
-- # (!\controller|Update_State_Controller~3_combout\ & ((\controller|ricorrenza_temp\(1) & (\controller|ricorrenza_temp[0]~7\ & VCC)) # (!\controller|ricorrenza_temp\(1) & (!\controller|ricorrenza_temp[0]~7\))))
-- \controller|ricorrenza_temp[1]~9\ = CARRY((\controller|Update_State_Controller~3_combout\ & ((!\controller|ricorrenza_temp[0]~7\) # (!\controller|ricorrenza_temp\(1)))) # (!\controller|Update_State_Controller~3_combout\ & (!\controller|ricorrenza_temp\(1) 
-- & !\controller|ricorrenza_temp[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~3_combout\,
	datab => \controller|ricorrenza_temp\(1),
	datad => VCC,
	cin => \controller|ricorrenza_temp[0]~7\,
	combout => \controller|ricorrenza_temp[1]~8_combout\,
	cout => \controller|ricorrenza_temp[1]~9\);

-- Location: LCFF_X47_Y17_N5
\controller|ricorrenza_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|ricorrenza_temp[1]~8_combout\,
	ena => \controller|ricorrenza_temp[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ricorrenza_temp\(1));

-- Location: LCCOMB_X47_Y17_N6
\controller|ricorrenza_temp[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[2]~10_combout\ = ((\controller|ricorrenza_temp\(2) $ (\controller|Update_State_Controller~3_combout\ $ (\controller|ricorrenza_temp[1]~9\)))) # (GND)
-- \controller|ricorrenza_temp[2]~11\ = CARRY((\controller|ricorrenza_temp\(2) & ((!\controller|ricorrenza_temp[1]~9\) # (!\controller|Update_State_Controller~3_combout\))) # (!\controller|ricorrenza_temp\(2) & 
-- (!\controller|Update_State_Controller~3_combout\ & !\controller|ricorrenza_temp[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ricorrenza_temp\(2),
	datab => \controller|Update_State_Controller~3_combout\,
	datad => VCC,
	cin => \controller|ricorrenza_temp[1]~9\,
	combout => \controller|ricorrenza_temp[2]~10_combout\,
	cout => \controller|ricorrenza_temp[2]~11\);

-- Location: LCCOMB_X47_Y17_N8
\controller|ricorrenza_temp[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[3]~12_combout\ = (\controller|Update_State_Controller~3_combout\ & ((\controller|ricorrenza_temp\(3) & (!\controller|ricorrenza_temp[2]~11\)) # (!\controller|ricorrenza_temp\(3) & ((\controller|ricorrenza_temp[2]~11\) # 
-- (GND))))) # (!\controller|Update_State_Controller~3_combout\ & ((\controller|ricorrenza_temp\(3) & (\controller|ricorrenza_temp[2]~11\ & VCC)) # (!\controller|ricorrenza_temp\(3) & (!\controller|ricorrenza_temp[2]~11\))))
-- \controller|ricorrenza_temp[3]~13\ = CARRY((\controller|Update_State_Controller~3_combout\ & ((!\controller|ricorrenza_temp[2]~11\) # (!\controller|ricorrenza_temp\(3)))) # (!\controller|Update_State_Controller~3_combout\ & 
-- (!\controller|ricorrenza_temp\(3) & !\controller|ricorrenza_temp[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~3_combout\,
	datab => \controller|ricorrenza_temp\(3),
	datad => VCC,
	cin => \controller|ricorrenza_temp[2]~11\,
	combout => \controller|ricorrenza_temp[3]~12_combout\,
	cout => \controller|ricorrenza_temp[3]~13\);

-- Location: LCFF_X47_Y17_N9
\controller|ricorrenza_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|ricorrenza_temp[3]~12_combout\,
	ena => \controller|ricorrenza_temp[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ricorrenza_temp\(3));

-- Location: LCCOMB_X47_Y17_N10
\controller|ricorrenza_temp[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[4]~14_combout\ = ((\controller|Update_State_Controller~3_combout\ $ (\controller|ricorrenza_temp\(4) $ (\controller|ricorrenza_temp[3]~13\)))) # (GND)
-- \controller|ricorrenza_temp[4]~15\ = CARRY((\controller|Update_State_Controller~3_combout\ & (\controller|ricorrenza_temp\(4) & !\controller|ricorrenza_temp[3]~13\)) # (!\controller|Update_State_Controller~3_combout\ & ((\controller|ricorrenza_temp\(4)) # 
-- (!\controller|ricorrenza_temp[3]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~3_combout\,
	datab => \controller|ricorrenza_temp\(4),
	datad => VCC,
	cin => \controller|ricorrenza_temp[3]~13\,
	combout => \controller|ricorrenza_temp[4]~14_combout\,
	cout => \controller|ricorrenza_temp[4]~15\);

-- Location: LCFF_X47_Y17_N11
\controller|ricorrenza_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|ricorrenza_temp[4]~14_combout\,
	ena => \controller|ricorrenza_temp[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ricorrenza_temp\(4));

-- Location: LCCOMB_X47_Y17_N12
\controller|ricorrenza_temp[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[5]~16_combout\ = \controller|Update_State_Controller~3_combout\ $ (\controller|ricorrenza_temp\(5) $ (!\controller|ricorrenza_temp[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~3_combout\,
	datab => \controller|ricorrenza_temp\(5),
	cin => \controller|ricorrenza_temp[4]~15\,
	combout => \controller|ricorrenza_temp[5]~16_combout\);

-- Location: LCFF_X47_Y17_N13
\controller|ricorrenza_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|ricorrenza_temp[5]~16_combout\,
	ena => \controller|ricorrenza_temp[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ricorrenza_temp\(5));

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

-- Location: LCFF_X46_Y17_N21
\controller|Update_State_Controller:next_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \KEY~combout\(2),
	aclr => \ALT_INV_RESET_N~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:next_old~regout\);

-- Location: LCCOMB_X46_Y17_N2
\controller|Update_State_Controller~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~0_combout\ = (\KEY~combout\(2) & !\controller|Update_State_Controller:next_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(2),
	datad => \controller|Update_State_Controller:next_old~regout\,
	combout => \controller|Update_State_Controller~0_combout\);

-- Location: LCCOMB_X47_Y17_N24
\controller|Update_State_Controller~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~3_combout\ = (\controller|Update_State_Controller~0_combout\ & (((!\controller|ricorrenza_temp\(4) & !\controller|ricorrenza_temp\(3))) # (!\controller|ricorrenza_temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ricorrenza_temp\(4),
	datab => \controller|ricorrenza_temp\(5),
	datac => \controller|ricorrenza_temp\(3),
	datad => \controller|Update_State_Controller~0_combout\,
	combout => \controller|Update_State_Controller~3_combout\);

-- Location: LCFF_X47_Y17_N7
\controller|ricorrenza_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|ricorrenza_temp[2]~10_combout\,
	ena => \controller|ricorrenza_temp[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ricorrenza_temp\(2));

-- Location: LCCOMB_X47_Y17_N30
\controller|turn_player_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|turn_player_state~1_combout\ = (!\controller|ricorrenza_temp\(1) & !\controller|ricorrenza_temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|ricorrenza_temp\(1),
	datad => \controller|ricorrenza_temp\(2),
	combout => \controller|turn_player_state~1_combout\);

-- Location: LCCOMB_X47_Y17_N28
\controller|turn_player_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|turn_player_state~0_combout\ = (!\controller|ricorrenza_temp\(4) & (!\controller|ricorrenza_temp\(0) & (!\controller|ricorrenza_temp\(3) & !\controller|ricorrenza_temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ricorrenza_temp\(4),
	datab => \controller|ricorrenza_temp\(0),
	datac => \controller|ricorrenza_temp\(3),
	datad => \controller|ricorrenza_temp\(5),
	combout => \controller|turn_player_state~0_combout\);

-- Location: LCCOMB_X47_Y17_N18
\controller|turn_player_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|turn_player_state~2_combout\ = (!\controller|Update_State_Controller~3_combout\ & (((\controller|turn_player_state~1_combout\ & \controller|turn_player_state~0_combout\)) # (!\controller|Update_State_Controller~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~1_combout\,
	datab => \controller|turn_player_state~1_combout\,
	datac => \controller|Update_State_Controller~3_combout\,
	datad => \controller|turn_player_state~0_combout\,
	combout => \controller|turn_player_state~2_combout\);

-- Location: LCCOMB_X48_Y17_N4
\controller|turn_player_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|turn_player_state~4_combout\ = (\controller|turn_player_state~3_combout\ & ((\controller|turn_player_state~regout\ & (!\controller|dado_temp[1]~0_combout\)) # (!\controller|turn_player_state~regout\ & 
-- ((\controller|turn_player_state~2_combout\))))) # (!\controller|turn_player_state~3_combout\ & (((\controller|turn_player_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|dado_temp[1]~0_combout\,
	datab => \controller|turn_player_state~3_combout\,
	datac => \controller|turn_player_state~regout\,
	datad => \controller|turn_player_state~2_combout\,
	combout => \controller|turn_player_state~4_combout\);

-- Location: LCFF_X48_Y17_N5
\controller|turn_player_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|turn_player_state~4_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|turn_player_state~regout\);

-- Location: LCCOMB_X49_Y17_N18
\controller|dado_temp[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|dado_temp[1]~3_combout\ = \controller|dado_temp\(1) $ (((\controller|dado_temp[1]~1_combout\ & (\controller|Update_State_Controller~2_combout\ $ (\controller|dado_temp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~2_combout\,
	datab => \controller|dado_temp[1]~1_combout\,
	datac => \controller|dado_temp\(1),
	datad => \controller|dado_temp\(0),
	combout => \controller|dado_temp[1]~3_combout\);

-- Location: LCFF_X49_Y17_N19
\controller|dado_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|dado_temp[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|dado_temp\(1));

-- Location: LCCOMB_X49_Y17_N12
\controller|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add2~1_combout\ = (\controller|dado_temp\(0) & (\controller|dado_temp\(2) $ (((\controller|Update_State_Controller~0_combout\) # (\controller|dado_temp\(1)))))) # (!\controller|dado_temp\(0) & (!\controller|dado_temp\(2) & 
-- ((!\controller|dado_temp\(1)) # (!\controller|Update_State_Controller~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|dado_temp\(0),
	datab => \controller|dado_temp\(2),
	datac => \controller|Update_State_Controller~0_combout\,
	datad => \controller|dado_temp\(1),
	combout => \controller|Add2~1_combout\);

-- Location: LCCOMB_X49_Y17_N0
\controller|dado_temp[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|dado_temp[2]~4_combout\ = (\controller|dado_temp[1]~1_combout\ & ((!\controller|Add2~1_combout\))) # (!\controller|dado_temp[1]~1_combout\ & (\controller|dado_temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|dado_temp[1]~1_combout\,
	datac => \controller|dado_temp\(2),
	datad => \controller|Add2~1_combout\,
	combout => \controller|dado_temp[2]~4_combout\);

-- Location: LCFF_X49_Y17_N1
\controller|dado_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|dado_temp[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|dado_temp\(2));

-- Location: LCCOMB_X49_Y17_N26
\controller|dado_temp[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|dado_temp[1]~0_combout\ = (\controller|Update_State_Controller~1_combout\ & (!\controller|dado_temp\(2) & (!\controller|Update_State_Controller~0_combout\ & !\controller|dado_temp\(1)))) # (!\controller|Update_State_Controller~1_combout\ & 
-- (((\controller|dado_temp\(2) & \controller|dado_temp\(1))) # (!\controller|Update_State_Controller~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~1_combout\,
	datab => \controller|dado_temp\(2),
	datac => \controller|Update_State_Controller~0_combout\,
	datad => \controller|dado_temp\(1),
	combout => \controller|dado_temp[1]~0_combout\);

-- Location: LCCOMB_X49_Y17_N4
\controller|dado_temp[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|dado_temp[1]~1_combout\ = (\controller|internal_state.TURN_PLAYER~regout\ & (\controller|turn_player_state~regout\ & (\RESET_N~regout\ & !\controller|dado_temp[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|internal_state.TURN_PLAYER~regout\,
	datab => \controller|turn_player_state~regout\,
	datac => \RESET_N~regout\,
	datad => \controller|dado_temp[1]~0_combout\,
	combout => \controller|dado_temp[1]~1_combout\);

-- Location: LCCOMB_X49_Y17_N28
\controller|dado_temp[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|dado_temp[0]~2_combout\ = \controller|dado_temp[1]~1_combout\ $ (\controller|dado_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|dado_temp[1]~1_combout\,
	datac => \controller|dado_temp\(0),
	combout => \controller|dado_temp[0]~2_combout\);

-- Location: LCFF_X49_Y17_N29
\controller|dado_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|dado_temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|dado_temp\(0));

-- Location: LCCOMB_X48_Y17_N12
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

-- Location: LCFF_X48_Y17_N13
\controller|internal_state.TURN_FPGA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|internal_state.TURN_FPGA~0_combout\,
	aclr => \ALT_INV_RESET_N~regout\,
	ena => \datapath|PARTITA_INIZIATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|internal_state.TURN_FPGA~regout\);

-- Location: LCCOMB_X49_Y17_N30
\controller|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector1~0_combout\ = (\controller|internal_state.TURN_FPGA~regout\) # (!\controller|internal_state.INIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|internal_state.INIT~regout\,
	datad => \controller|internal_state.TURN_FPGA~regout\,
	combout => \controller|Selector1~0_combout\);

-- Location: LCFF_X49_Y17_N31
\controller|stato[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|Selector1~0_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|stato\(0));

-- Location: LCCOMB_X49_Y17_N16
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

-- Location: LCFF_X49_Y17_N17
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
	datain => \controller|ALT_INV_dado_temp\(0),
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
	datain => \controller|dado_temp\(1),
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
	datain => \controller|dado_temp\(2),
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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


