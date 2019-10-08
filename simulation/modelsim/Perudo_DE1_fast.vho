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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/08/2019 17:36:33"

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
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \RESET_N~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|dado_aggiunto~regout\ : std_logic;
SIGNAL \datapath|Add8~16_combout\ : std_logic;
SIGNAL \datapath|Add8~42_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[2]~9_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[1]~8_combout\ : std_logic;
SIGNAL \datapath|Mux8~0_combout\ : std_logic;
SIGNAL \controller|initialization_state~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller~2_combout\ : std_logic;
SIGNAL \controller|nuovo_giocatore_old~0_combout\ : std_logic;
SIGNAL \datapath|Add7~0_combout\ : std_logic;
SIGNAL \datapath|Equal11~0_combout\ : std_logic;
SIGNAL \datapath|Equal3~0_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[29]~regout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[27]~regout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[25]~regout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[24]~regout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[22]~regout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[21]~regout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[20]~regout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[13]~regout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[8]~regout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[3]~regout\ : std_logic;
SIGNAL \datapath|scommessa_corrente.dado_scommesso.NONE~regout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~regout\ : std_logic;
SIGNAL \datapath|scommessa_corrente.dado_scommesso.SEI~regout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].dadi_in_mano[0].SEI~regout\ : std_logic;
SIGNAL \datapath|WideNor0~0_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente.dado_scommesso.CINQUE~regout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].dadi_in_mano[0].CINQUE~regout\ : std_logic;
SIGNAL \datapath|scommessa_corrente.dado_scommesso.QUATTRO~regout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].dadi_in_mano[0].QUATTRO~regout\ : std_logic;
SIGNAL \datapath|WideNor0~1_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente.dado_scommesso.UNO~regout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].dadi_in_mano[0].UNO~regout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL~8_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente.dado_scommesso.TRE~regout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].dadi_in_mano[0].TRE~regout\ : std_logic;
SIGNAL \datapath|scommessa_corrente.dado_scommesso.DUE~regout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].dadi_in_mano[0].DUE~regout\ : std_logic;
SIGNAL \datapath|WideNor0~2_combout\ : std_logic;
SIGNAL \datapath|WideNor0~3_combout\ : std_logic;
SIGNAL \datapath|LessThan10~2_combout\ : std_logic;
SIGNAL \datapath|LessThan10~7_combout\ : std_logic;
SIGNAL \datapath|LessThan10~8_combout\ : std_logic;
SIGNAL \datapath|LessThan10~9_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~3_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~12_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~13_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[2]~12_combout\ : std_logic;
SIGNAL \datapath|Decoder0~2_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~14_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~18_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~19_combout\ : std_logic;
SIGNAL \datapath|Decoder0~6_combout\ : std_logic;
SIGNAL \datapath|Equal5~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~24_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~26_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~2_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~29_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~1_combout\ : std_logic;
SIGNAL \controller|LessThan3~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~7_combout\ : std_logic;
SIGNAL \controller|check_old~0_combout\ : std_logic;
SIGNAL \datapath|CHECKED~regout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~33_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~34_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~37_combout\ : std_logic;
SIGNAL \datapath|Equal3~1_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~24_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~25_combout\ : std_logic;
SIGNAL \controller|initialization_state~0_combout\ : std_logic;
SIGNAL \controller|initialization_state~1_combout\ : std_logic;
SIGNAL \datapath|Add10~0_combout\ : std_logic;
SIGNAL \datapath|counter_check~2_combout\ : std_logic;
SIGNAL \datapath|counter_check~4_combout\ : std_logic;
SIGNAL \datapath|counter_check~6_combout\ : std_logic;
SIGNAL \datapath|counter_check~7_combout\ : std_logic;
SIGNAL \datapath|counter_check~9_combout\ : std_logic;
SIGNAL \datapath|counter_check~10_combout\ : std_logic;
SIGNAL \datapath|counter_check~11_combout\ : std_logic;
SIGNAL \datapath|counter_check~18_combout\ : std_logic;
SIGNAL \datapath|counter_check~23_combout\ : std_logic;
SIGNAL \datapath|counter_check~28_combout\ : std_logic;
SIGNAL \datapath|dadi_in_mano~280_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~39_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~40_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~41_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~42_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~43_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente~2_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~44_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~45_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente~3_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~46_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente~4_combout\ : std_logic;
SIGNAL \datapath|numero_per_generazione_casuale_dado~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~47_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente~5_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~48_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente~11_combout\ : std_logic;
SIGNAL \controller|turn_player_state~2_combout\ : std_logic;
SIGNAL \controller|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|CHECKED~0_combout\ : std_logic;
SIGNAL \datapath|Mux13~0_combout\ : std_logic;
SIGNAL \datapath|Mux13~1_combout\ : std_logic;
SIGNAL \datapath|Mux13~2_combout\ : std_logic;
SIGNAL \datapath|Mux13~3_combout\ : std_logic;
SIGNAL \datapath|Mux13~4_combout\ : std_logic;
SIGNAL \datapath|Mux14~0_combout\ : std_logic;
SIGNAL \datapath|Mux14~1_combout\ : std_logic;
SIGNAL \datapath|Mux14~2_combout\ : std_logic;
SIGNAL \datapath|Mux14~3_combout\ : std_logic;
SIGNAL \datapath|Mux14~4_combout\ : std_logic;
SIGNAL \datapath|Add6~0_combout\ : std_logic;
SIGNAL \datapath|Mux12~0_combout\ : std_logic;
SIGNAL \datapath|Mux12~1_combout\ : std_logic;
SIGNAL \datapath|Mux12~2_combout\ : std_logic;
SIGNAL \datapath|Mux12~3_combout\ : std_logic;
SIGNAL \datapath|Mux12~4_combout\ : std_logic;
SIGNAL \datapath|indice_dado[0]~5_combout\ : std_logic;
SIGNAL \datapath|indice_dado~6_combout\ : std_logic;
SIGNAL \datapath|indice_dado~7_combout\ : std_logic;
SIGNAL \datapath|indice_dado~8_combout\ : std_logic;
SIGNAL \datapath|indice_dado~9_combout\ : std_logic;
SIGNAL \datapath|Mux18~0_combout\ : std_logic;
SIGNAL \datapath|Mux18~1_combout\ : std_logic;
SIGNAL \datapath|Mux18~2_combout\ : std_logic;
SIGNAL \datapath|Mux18~3_combout\ : std_logic;
SIGNAL \datapath|Mux18~4_combout\ : std_logic;
SIGNAL \datapath|Mux19~0_combout\ : std_logic;
SIGNAL \datapath|Mux19~1_combout\ : std_logic;
SIGNAL \datapath|Mux19~2_combout\ : std_logic;
SIGNAL \datapath|Mux19~3_combout\ : std_logic;
SIGNAL \datapath|Mux19~4_combout\ : std_logic;
SIGNAL \datapath|Mux20~0_combout\ : std_logic;
SIGNAL \datapath|Mux20~1_combout\ : std_logic;
SIGNAL \datapath|Mux20~2_combout\ : std_logic;
SIGNAL \datapath|Mux20~3_combout\ : std_logic;
SIGNAL \datapath|Mux20~4_combout\ : std_logic;
SIGNAL \datapath|indice_dado~10_combout\ : std_logic;
SIGNAL \datapath|indice_dado[0]~11_combout\ : std_logic;
SIGNAL \datapath|indice_dado~12_combout\ : std_logic;
SIGNAL \datapath|indice_dado~13_combout\ : std_logic;
SIGNAL \datapath|indice_dado~14_combout\ : std_logic;
SIGNAL \datapath|Mux15~0_combout\ : std_logic;
SIGNAL \datapath|Mux15~1_combout\ : std_logic;
SIGNAL \datapath|Mux15~2_combout\ : std_logic;
SIGNAL \datapath|Mux15~3_combout\ : std_logic;
SIGNAL \datapath|Mux16~0_combout\ : std_logic;
SIGNAL \datapath|Mux16~1_combout\ : std_logic;
SIGNAL \datapath|Mux16~2_combout\ : std_logic;
SIGNAL \datapath|Mux16~3_combout\ : std_logic;
SIGNAL \datapath|Mux17~0_combout\ : std_logic;
SIGNAL \datapath|Mux17~1_combout\ : std_logic;
SIGNAL \datapath|Mux17~2_combout\ : std_logic;
SIGNAL \datapath|Mux17~3_combout\ : std_logic;
SIGNAL \datapath|Mux17~4_combout\ : std_logic;
SIGNAL \datapath|Add9~0_combout\ : std_logic;
SIGNAL \datapath|Add9~1_combout\ : std_logic;
SIGNAL \datapath|indice_dado~15_combout\ : std_logic;
SIGNAL \datapath|indice_dado[0]~16_combout\ : std_logic;
SIGNAL \datapath|indice_dado[0]~17_combout\ : std_logic;
SIGNAL \datapath|indice_dado~18_combout\ : std_logic;
SIGNAL \datapath|indice_dado[0]~19_combout\ : std_logic;
SIGNAL \datapath|Add9~2_combout\ : std_logic;
SIGNAL \datapath|indice_dado~20_combout\ : std_logic;
SIGNAL \datapath|indice_dado~21_combout\ : std_logic;
SIGNAL \datapath|indice_dado~22_combout\ : std_logic;
SIGNAL \datapath|indice_dado~23_combout\ : std_logic;
SIGNAL \datapath|indice_dado~24_combout\ : std_logic;
SIGNAL \datapath|indice_dado~25_combout\ : std_logic;
SIGNAL \datapath|indice_dado~26_combout\ : std_logic;
SIGNAL \datapath|indice_dado~27_combout\ : std_logic;
SIGNAL \datapath|indice_dado~28_combout\ : std_logic;
SIGNAL \datapath|indice_dado~29_combout\ : std_logic;
SIGNAL \datapath|indice_dado~30_combout\ : std_logic;
SIGNAL \datapath|indice_dado~31_combout\ : std_logic;
SIGNAL \datapath|indice_dado~32_combout\ : std_logic;
SIGNAL \datapath|indice_dado~33_combout\ : std_logic;
SIGNAL \datapath|indice_dado~34_combout\ : std_logic;
SIGNAL \datapath|indice_dado~35_combout\ : std_logic;
SIGNAL \datapath|indice_dado~36_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.SEI~_emulated_regout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.SEI~head_lut_combout\ : std_logic;
SIGNAL \datapath|numero_per_generazione_casuale_dado~1_combout\ : std_logic;
SIGNAL \datapath|numero_per_generazione_casuale_dado~2_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.CINQUE~_emulated_regout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.CINQUE~head_lut_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.QUATTRO~_emulated_regout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.QUATTRO~head_lut_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.UNO~_emulated_regout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.UNO~head_lut_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.TRE~_emulated_regout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.TRE~head_lut_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.DUE~_emulated_regout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.DUE~head_lut_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[4]~_emulated_regout\ : std_logic;
SIGNAL \controller|RICORRENZA[5]~_emulated_regout\ : std_logic;
SIGNAL \controller|RICORRENZA[3]~_emulated_regout\ : std_logic;
SIGNAL \controller|RICORRENZA[2]~_emulated_regout\ : std_logic;
SIGNAL \controller|RICORRENZA[1]~_emulated_regout\ : std_logic;
SIGNAL \controller|RICORRENZA[1]~head_lut_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.SEI~data_lut_combout\ : std_logic;
SIGNAL \controller|LessThan4~0_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.CINQUE~data_lut_combout\ : std_logic;
SIGNAL \controller|Mux4~0_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.QUATTRO~data_lut_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.UNO~data_lut_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.TRE~data_lut_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.DUE~data_lut_combout\ : std_logic;
SIGNAL \controller|Mux1~0_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[4]~data_lut_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[5]~data_lut_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[3]~data_lut_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[2]~data_lut_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[1]~data_lut_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~27_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~3_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~52_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~53_combout\ : std_logic;
SIGNAL \datapath|indice_dado[0]~37_combout\ : std_logic;
SIGNAL \datapath|Add4~5_combout\ : std_logic;
SIGNAL \datapath|indice_dado~38_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente.dado_scommesso.NONE~0_combout\ : std_logic;
SIGNAL \datapath|numero_per_generazione_casuale_dado[0]~3_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.SEI~latch_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.CINQUE~latch_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.QUATTRO~latch_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.UNO~latch_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.TRE~latch_combout\ : std_logic;
SIGNAL \controller|DADO_SCOMMESSO.DUE~latch_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[1]~latch_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa[2]~_wirecell_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[0]~10_combout\ : std_logic;
SIGNAL \reset_sync_reg~feeder_combout\ : std_logic;
SIGNAL \reset_sync_reg~regout\ : std_logic;
SIGNAL \RESET_N~regout\ : std_logic;
SIGNAL \RESET_N~clkctrl_outclk\ : std_logic;
SIGNAL \controller|Update_State_Controller:doubt_old~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:doubt_old~regout\ : std_logic;
SIGNAL \controller|check_old~2_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL~7_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_AGGIUNTO~1_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_AGGIUNTO~regout\ : std_logic;
SIGNAL \controller|nuovo_giocatore_old~1_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:nuovo_giocatore_old~regout\ : std_logic;
SIGNAL \datapath|reset_altri_giocatori~0_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo~9_combout\ : std_logic;
SIGNAL \datapath|reset_altri_giocatori~regout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\ : std_logic;
SIGNAL \datapath|indice_turno_giocatore~5_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:prev_old~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:prev_old~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller~0_combout\ : std_logic;
SIGNAL \controller|dado_temp[0]~5_combout\ : std_logic;
SIGNAL \controller|dado_temp[2]~2_combout\ : std_logic;
SIGNAL \controller|dado_temp[1]~4_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:next_old~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:next_old~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller~9_combout\ : std_logic;
SIGNAL \controller|Add2~2_combout\ : std_logic;
SIGNAL \controller|Add2~1_combout\ : std_logic;
SIGNAL \controller|dado_temp[2]~3_combout\ : std_logic;
SIGNAL \controller|LessThan5~0_combout\ : std_logic;
SIGNAL \controller|dado_temp[2]~6_combout\ : std_logic;
SIGNAL \controller|turn_player_state~3_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[0]~7\ : std_logic;
SIGNAL \controller|ricorrenza_temp[1]~9\ : std_logic;
SIGNAL \controller|ricorrenza_temp[2]~10_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[5]~14_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[2]~11\ : std_logic;
SIGNAL \controller|ricorrenza_temp[3]~12_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[3]~13\ : std_logic;
SIGNAL \controller|ricorrenza_temp[4]~16\ : std_logic;
SIGNAL \controller|ricorrenza_temp[5]~17_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~3_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~8_combout\ : std_logic;
SIGNAL \controller|internal_state.INIT~feeder_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~4_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~6_combout\ : std_logic;
SIGNAL \controller|INIZIA_PARTITA~0_combout\ : std_logic;
SIGNAL \controller|INIZIA_PARTITA~regout\ : std_logic;
SIGNAL \datapath|indice_turno_giocatore[0]~2_combout\ : std_logic;
SIGNAL \datapath|PARTITA_INIZIATA~feeder_combout\ : std_logic;
SIGNAL \datapath|PARTITA_INIZIATA~regout\ : std_logic;
SIGNAL \controller|internal_state.INIT~regout\ : std_logic;
SIGNAL \controller|turn_player_state~0_combout\ : std_logic;
SIGNAL \controller|turn_player_state~1_combout\ : std_logic;
SIGNAL \controller|turn_player_state~4_combout\ : std_logic;
SIGNAL \controller|turn_player_state~regout\ : std_logic;
SIGNAL \controller|Selector3~2_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:enter_old~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:enter_old~regout\ : std_logic;
SIGNAL \controller|Selector3~3_combout\ : std_logic;
SIGNAL \controller|PROSSIMO_TURNO~feeder_combout\ : std_logic;
SIGNAL \controller|PROSSIMO_TURNO~regout\ : std_logic;
SIGNAL \datapath|Equal11~1_combout\ : std_logic;
SIGNAL \datapath|indice_turno_giocatore[0]~4_combout\ : std_logic;
SIGNAL \datapath|Equal5~0_combout\ : std_logic;
SIGNAL \datapath|counter_check~0_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[31]~regout\ : std_logic;
SIGNAL \datapath|counter_check~5_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[26]~regout\ : std_logic;
SIGNAL \datapath|counter_check~21_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[10]~regout\ : std_logic;
SIGNAL \datapath|Add8~0_combout\ : std_logic;
SIGNAL \datapath|counter_check~31_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[0]~regout\ : std_logic;
SIGNAL \datapath|Add8~1\ : std_logic;
SIGNAL \datapath|Add8~2_combout\ : std_logic;
SIGNAL \datapath|counter_check~30_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[1]~regout\ : std_logic;
SIGNAL \datapath|Add8~3\ : std_logic;
SIGNAL \datapath|Add8~4_combout\ : std_logic;
SIGNAL \datapath|counter_check~29_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[2]~regout\ : std_logic;
SIGNAL \datapath|Add8~5\ : std_logic;
SIGNAL \datapath|Add8~7\ : std_logic;
SIGNAL \datapath|Add8~8_combout\ : std_logic;
SIGNAL \datapath|counter_check~27_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[4]~regout\ : std_logic;
SIGNAL \datapath|Add8~9\ : std_logic;
SIGNAL \datapath|Add8~10_combout\ : std_logic;
SIGNAL \datapath|counter_check~26_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[5]~regout\ : std_logic;
SIGNAL \datapath|Add8~11\ : std_logic;
SIGNAL \datapath|Add8~12_combout\ : std_logic;
SIGNAL \datapath|counter_check~25_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[6]~regout\ : std_logic;
SIGNAL \datapath|Add8~13\ : std_logic;
SIGNAL \datapath|Add8~14_combout\ : std_logic;
SIGNAL \datapath|counter_check~24_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[7]~regout\ : std_logic;
SIGNAL \datapath|Add8~15\ : std_logic;
SIGNAL \datapath|Add8~17\ : std_logic;
SIGNAL \datapath|Add8~18_combout\ : std_logic;
SIGNAL \datapath|counter_check~22_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[9]~regout\ : std_logic;
SIGNAL \datapath|Add8~19\ : std_logic;
SIGNAL \datapath|Add8~21\ : std_logic;
SIGNAL \datapath|Add8~22_combout\ : std_logic;
SIGNAL \datapath|counter_check~20_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[11]~regout\ : std_logic;
SIGNAL \datapath|Add8~23\ : std_logic;
SIGNAL \datapath|Add8~24_combout\ : std_logic;
SIGNAL \datapath|counter_check~19_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[12]~regout\ : std_logic;
SIGNAL \datapath|Add8~25\ : std_logic;
SIGNAL \datapath|Add8~27\ : std_logic;
SIGNAL \datapath|Add8~28_combout\ : std_logic;
SIGNAL \datapath|counter_check~17_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[14]~regout\ : std_logic;
SIGNAL \datapath|Add8~29\ : std_logic;
SIGNAL \datapath|Add8~30_combout\ : std_logic;
SIGNAL \datapath|counter_check~16_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[15]~regout\ : std_logic;
SIGNAL \datapath|Add8~31\ : std_logic;
SIGNAL \datapath|Add8~32_combout\ : std_logic;
SIGNAL \datapath|counter_check~15_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[16]~regout\ : std_logic;
SIGNAL \datapath|Add8~33\ : std_logic;
SIGNAL \datapath|Add8~34_combout\ : std_logic;
SIGNAL \datapath|counter_check~14_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[17]~regout\ : std_logic;
SIGNAL \datapath|Add8~35\ : std_logic;
SIGNAL \datapath|Add8~36_combout\ : std_logic;
SIGNAL \datapath|counter_check~13_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[18]~regout\ : std_logic;
SIGNAL \datapath|Add8~37\ : std_logic;
SIGNAL \datapath|Add8~38_combout\ : std_logic;
SIGNAL \datapath|counter_check~12_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[19]~regout\ : std_logic;
SIGNAL \datapath|Add8~39\ : std_logic;
SIGNAL \datapath|Add8~41\ : std_logic;
SIGNAL \datapath|Add8~43\ : std_logic;
SIGNAL \datapath|Add8~45\ : std_logic;
SIGNAL \datapath|Add8~46_combout\ : std_logic;
SIGNAL \datapath|counter_check~8_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[23]~regout\ : std_logic;
SIGNAL \datapath|Add8~47\ : std_logic;
SIGNAL \datapath|Add8~49\ : std_logic;
SIGNAL \datapath|Add8~51\ : std_logic;
SIGNAL \datapath|Add8~53\ : std_logic;
SIGNAL \datapath|Add8~55\ : std_logic;
SIGNAL \datapath|Add8~56_combout\ : std_logic;
SIGNAL \datapath|counter_check~3_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[28]~regout\ : std_logic;
SIGNAL \datapath|Add8~57\ : std_logic;
SIGNAL \datapath|Add8~59\ : std_logic;
SIGNAL \datapath|Add8~60_combout\ : std_logic;
SIGNAL \datapath|counter_check~1_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:counter_check[30]~regout\ : std_logic;
SIGNAL \datapath|Add8~61\ : std_logic;
SIGNAL \datapath|Add8~62_combout\ : std_logic;
SIGNAL \controller|internal_state.TURN_FPGA~feeder_combout\ : std_logic;
SIGNAL \controller|internal_state.TURN_FPGA~regout\ : std_logic;
SIGNAL \controller|ESEGUI_SCOMMESSA_FPGA~feeder_combout\ : std_logic;
SIGNAL \controller|ESEGUI_SCOMMESSA_FPGA~regout\ : std_logic;
SIGNAL \controller|ESEGUI_SCOMMESSA~feeder_combout\ : std_logic;
SIGNAL \controller|ESEGUI_SCOMMESSA~regout\ : std_logic;
SIGNAL \datapath|scommessa_corrente.ricorrenza[0]~0_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente~6_combout\ : std_logic;
SIGNAL \datapath|Add8~58_combout\ : std_logic;
SIGNAL \datapath|LessThan10~3_combout\ : std_logic;
SIGNAL \datapath|Add8~40_combout\ : std_logic;
SIGNAL \datapath|LessThan10~21_combout\ : std_logic;
SIGNAL \datapath|LessThan10~20_combout\ : std_logic;
SIGNAL \datapath|LessThan10~22_combout\ : std_logic;
SIGNAL \datapath|Add8~48_combout\ : std_logic;
SIGNAL \datapath|Add8~44_combout\ : std_logic;
SIGNAL \datapath|LessThan10~4_combout\ : std_logic;
SIGNAL \datapath|Add8~50_combout\ : std_logic;
SIGNAL \datapath|Add8~52_combout\ : std_logic;
SIGNAL \datapath|Add8~54_combout\ : std_logic;
SIGNAL \datapath|LessThan10~5_combout\ : std_logic;
SIGNAL \datapath|LessThan10~6_combout\ : std_logic;
SIGNAL \datapath|Add8~26_combout\ : std_logic;
SIGNAL \datapath|Add8~20_combout\ : std_logic;
SIGNAL \datapath|LessThan10~10_combout\ : std_logic;
SIGNAL \datapath|LessThan10~11_combout\ : std_logic;
SIGNAL \datapath|LessThan10~17_combout\ : std_logic;
SIGNAL \datapath|LessThan10~18_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[4]~15_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[4]~latch_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[4]~head_lut_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente~7_combout\ : std_logic;
SIGNAL \datapath|LessThan10~12_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[5]~latch_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[5]~head_lut_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente~8_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[3]~latch_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[3]~head_lut_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente~9_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[2]~latch_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[2]~head_lut_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente~10_combout\ : std_logic;
SIGNAL \controller|ricorrenza_temp[0]~6_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[0]~latch_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[0]~data_lut_combout\ : std_logic;
SIGNAL \controller|RICORRENZA[0]~_emulated_regout\ : std_logic;
SIGNAL \controller|RICORRENZA[0]~head_lut_combout\ : std_logic;
SIGNAL \datapath|scommessa_corrente~12_combout\ : std_logic;
SIGNAL \datapath|LessThan10~13_combout\ : std_logic;
SIGNAL \datapath|LessThan10~14_combout\ : std_logic;
SIGNAL \datapath|Add8~6_combout\ : std_logic;
SIGNAL \datapath|LessThan10~15_combout\ : std_logic;
SIGNAL \datapath|LessThan10~16_combout\ : std_logic;
SIGNAL \datapath|LessThan10~30_combout\ : std_logic;
SIGNAL \datapath|LessThan10~31_combout\ : std_logic;
SIGNAL \datapath|LessThan10~19_combout\ : std_logic;
SIGNAL \datapath|LessThan10~27_combout\ : std_logic;
SIGNAL \datapath|LessThan10~23_combout\ : std_logic;
SIGNAL \datapath|LessThan10~24_combout\ : std_logic;
SIGNAL \datapath|LessThan10~25_combout\ : std_logic;
SIGNAL \datapath|LessThan10~26_combout\ : std_logic;
SIGNAL \datapath|LessThan10~28_combout\ : std_logic;
SIGNAL \datapath|LessThan10~29_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~8_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~13_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~14_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~15_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~16_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~18_combout\ : std_logic;
SIGNAL \datapath|elimina_dado~0_combout\ : std_logic;
SIGNAL \datapath|elimina_dado~regout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~2_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~27_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[0]~6\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[1]~7_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa~1_combout\ : std_logic;
SIGNAL \datapath|Add1~0_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa~0_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa[1]~_wirecell_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[0]~5_combout\ : std_logic;
SIGNAL \datapath|cicli_casuali_attesa[0]~2_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\ : std_logic;
SIGNAL \datapath|Decoder0~3_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~15_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~50_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~11_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~49_combout\ : std_logic;
SIGNAL \datapath|Mux8~1_combout\ : std_logic;
SIGNAL \datapath|LessThan9~4_combout\ : std_logic;
SIGNAL \datapath|aggiungi_dado~0_combout\ : std_logic;
SIGNAL \datapath|aggiungi_dado~1_combout\ : std_logic;
SIGNAL \datapath|aggiungi_dado~regout\ : std_logic;
SIGNAL \datapath|Equal2~0_combout\ : std_logic;
SIGNAL \datapath|Equal2~1_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[1]~8\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[2]~10\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[3]~11_combout\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[3]~12\ : std_logic;
SIGNAL \datapath|cicli_da_attendere[4]~13_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~10_combout\ : std_logic;
SIGNAL \datapath|Decoder0~4_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~3_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~30_combout\ : std_logic;
SIGNAL \datapath|Decoder0~7_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~2_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~4_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~28_combout\ : std_logic;
SIGNAL \datapath|Decoder0~5_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~6_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~5_combout\ : std_logic;
SIGNAL \datapath|Mux7~2_combout\ : std_logic;
SIGNAL \datapath|Mux7~3_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~25_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\ : std_logic;
SIGNAL \datapath|Mux7~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~5_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~7_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~23_combout\ : std_logic;
SIGNAL \datapath|Decoder0~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~6_combout\ : std_logic;
SIGNAL \datapath|Mux7~1_combout\ : std_logic;
SIGNAL \datapath|Mux7~4_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~9_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~10_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~11_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[1]~17_combout\ : std_logic;
SIGNAL \datapath|indice_turno_giocatore~3_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~19_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~20_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore[2]~21_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~16_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~17_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~20_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~51_combout\ : std_logic;
SIGNAL \datapath|Mux8~2_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~21_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~22_combout\ : std_logic;
SIGNAL \datapath|Mux8~3_combout\ : std_logic;
SIGNAL \datapath|Mux8~4_combout\ : std_logic;
SIGNAL \datapath|GIOCATORE_AGGIUNTO~0_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~4_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~23_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~22_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~26_combout\ : std_logic;
SIGNAL \datapath|Equal4~0_combout\ : std_logic;
SIGNAL \datapath|reset_altri_giocatori~1_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[0]~6_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[3]~7_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[3]~8_combout\ : std_logic;
SIGNAL \datapath|NR_GIOCATORI_IN_CAMPO[3]~feeder_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~5_combout\ : std_logic;
SIGNAL \controller|DAMMI_GIOCATORI_IN_CAMPO~0_combout\ : std_logic;
SIGNAL \controller|DAMMI_GIOCATORI_IN_CAMPO~regout\ : std_logic;
SIGNAL \datapath|NR_GIOCATORI_IN_CAMPO[2]~feeder_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[1]~feeder_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller~1_combout\ : std_logic;
SIGNAL \controller|elimina_giocatore_old~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:elimina_giocatore_old~regout\ : std_logic;
SIGNAL \datapath|giocatore_eliminato_old~2_combout\ : std_logic;
SIGNAL \datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\ : std_logic;
SIGNAL \datapath|indice_dado[0]~4_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[2]~4_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[2]~5_combout\ : std_logic;
SIGNAL \datapath|Add7~1_combout\ : std_logic;
SIGNAL \datapath|Equal12~0_combout\ : std_logic;
SIGNAL \datapath|Equal12~1_combout\ : std_logic;
SIGNAL \datapath|Equal12~2_combout\ : std_logic;
SIGNAL \datapath|indice_turno_giocatore~6_combout\ : std_logic;
SIGNAL \datapath|prossimo_turno_old~0_combout\ : std_logic;
SIGNAL \datapath|prossimo_turno_old~regout\ : std_logic;
SIGNAL \controller|inizia_partita_old~0_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:inizia_partita_old~regout\ : std_logic;
SIGNAL \controller|Update_State_Controller~10_combout\ : std_logic;
SIGNAL \controller|DAMMI_TURNO_GIOCATORE~regout\ : std_logic;
SIGNAL \controller|turno[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|I_TURNO_GIOCATORE[0]~feeder_combout\ : std_logic;
SIGNAL \controller|turno[2]~feeder_combout\ : std_logic;
SIGNAL \controller|Equal0~0_combout\ : std_logic;
SIGNAL \controller|internal_state.TURN_PLAYER~0_combout\ : std_logic;
SIGNAL \controller|internal_state.TURN_PLAYER~regout\ : std_logic;
SIGNAL \controller|check_old~1_combout\ : std_logic;
SIGNAL \controller|check_old~3_combout\ : std_logic;
SIGNAL \controller|Update_State_Controller:check_old~regout\ : std_logic;
SIGNAL \datapath|indice_giocatore~5_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~6_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~2_combout\ : std_logic;
SIGNAL \datapath|indice_giocatore~7_combout\ : std_logic;
SIGNAL \datapath|Add2~0_combout\ : std_logic;
SIGNAL \datapath|Add4~4_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~32_combout\ : std_logic;
SIGNAL \datapath|Mux6~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~31_combout\ : std_logic;
SIGNAL \datapath|Decoder0~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~2_combout\ : std_logic;
SIGNAL \datapath|Mux6~1_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~35_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~38_combout\ : std_logic;
SIGNAL \datapath|giocatori_in_campo~36_combout\ : std_logic;
SIGNAL \datapath|Mux6~2_combout\ : std_logic;
SIGNAL \datapath|Mux6~3_combout\ : std_logic;
SIGNAL \datapath|Mux6~4_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[0]~2_combout\ : std_logic;
SIGNAL \datapath|numero_giocatori_in_campo[0]~3_combout\ : std_logic;
SIGNAL \controller|numero_giocatori[0]~feeder_combout\ : std_logic;
SIGNAL \controller|stato[0]~0_combout\ : std_logic;
SIGNAL \controller|stato[1]~feeder_combout\ : std_logic;
SIGNAL \controller|turno\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \controller|stato\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \controller|ricorrenza_temp\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \controller|numero_giocatori\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|dado_temp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|scommessa_corrente.ricorrenza\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \datapath|numero_per_generazione_casuale_dado\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|numero_giocatori_in_campo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|indice_turno_giocatore\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|indice_giocatore\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|indice_dado\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \datapath|NR_GIOCATORI_IN_CAMPO\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|I_TURNO_GIOCATORE\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 9);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RESET_N~clkctrl_outclk\ : std_logic;
SIGNAL \datapath|ALT_INV_aggiungi_dado~regout\ : std_logic;
SIGNAL \controller|ALT_INV_Update_State_Controller:check_old~regout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET_N~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET_N~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_RESET_N~clkctrl_outclk\ <= NOT \RESET_N~clkctrl_outclk\;
\datapath|ALT_INV_aggiungi_dado~regout\ <= NOT \datapath|aggiungi_dado~regout\;
\controller|ALT_INV_Update_State_Controller:check_old~regout\ <= NOT \controller|Update_State_Controller:check_old~regout\;

-- Location: LCFF_X19_Y16_N25
\datapath|dado_aggiunto\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|Equal3~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \datapath|ALT_INV_aggiungi_dado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|dado_aggiunto~regout\);

-- Location: LCFF_X18_Y16_N21
\datapath|cicli_da_attendere[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_da_attendere[2]~9_combout\,
	sdata => \datapath|cicli_casuali_attesa[2]~_wirecell_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => \datapath|Equal2~1_combout\,
	ena => \datapath|aggiungi_dado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_da_attendere\(2));

-- Location: LCCOMB_X21_Y15_N16
\datapath|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~16_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[8]~regout\ & (\datapath|Add8~15\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[8]~regout\ & (!\datapath|Add8~15\ & VCC))
-- \datapath|Add8~17\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[8]~regout\ & !\datapath|Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[8]~regout\,
	datad => VCC,
	cin => \datapath|Add8~15\,
	combout => \datapath|Add8~16_combout\,
	cout => \datapath|Add8~17\);

-- Location: LCCOMB_X21_Y14_N10
\datapath|Add8~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~42_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[21]~regout\ & (!\datapath|Add8~41\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[21]~regout\ & ((\datapath|Add8~41\) # (GND)))
-- \datapath|Add8~43\ = CARRY((!\datapath|Add8~41\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[21]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[21]~regout\,
	datad => VCC,
	cin => \datapath|Add8~41\,
	combout => \datapath|Add8~42_combout\,
	cout => \datapath|Add8~43\);

-- Location: LCFF_X23_Y16_N19
\controller|ricorrenza_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|ricorrenza_temp[1]~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|ricorrenza_temp[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ricorrenza_temp\(1));

-- Location: LCCOMB_X18_Y16_N20
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

-- Location: LCCOMB_X23_Y16_N18
\controller|ricorrenza_temp[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[1]~8_combout\ = (\controller|ricorrenza_temp\(1) & ((\controller|Update_State_Controller~8_combout\ & (!\controller|ricorrenza_temp[0]~7\)) # (!\controller|Update_State_Controller~8_combout\ & (\controller|ricorrenza_temp[0]~7\ 
-- & VCC)))) # (!\controller|ricorrenza_temp\(1) & ((\controller|Update_State_Controller~8_combout\ & ((\controller|ricorrenza_temp[0]~7\) # (GND))) # (!\controller|Update_State_Controller~8_combout\ & (!\controller|ricorrenza_temp[0]~7\))))
-- \controller|ricorrenza_temp[1]~9\ = CARRY((\controller|ricorrenza_temp\(1) & (\controller|Update_State_Controller~8_combout\ & !\controller|ricorrenza_temp[0]~7\)) # (!\controller|ricorrenza_temp\(1) & ((\controller|Update_State_Controller~8_combout\) # 
-- (!\controller|ricorrenza_temp[0]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ricorrenza_temp\(1),
	datab => \controller|Update_State_Controller~8_combout\,
	datad => VCC,
	cin => \controller|ricorrenza_temp[0]~7\,
	combout => \controller|ricorrenza_temp[1]~8_combout\,
	cout => \controller|ricorrenza_temp[1]~9\);

-- Location: LCFF_X24_Y13_N29
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~13_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0));

-- Location: LCFF_X24_Y13_N23
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X24_Y13_N12
\datapath|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux8~0_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0) & \datapath|indice_giocatore\(0))))) # (!\datapath|indice_giocatore\(1) & ((\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0)) # 
-- ((!\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0),
	datab => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux8~0_combout\);

-- Location: LCFF_X26_Y13_N19
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~19_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0));

-- Location: LCFF_X24_Y14_N21
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~24_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1));

-- Location: LCFF_X24_Y14_N25
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~26_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1));

-- Location: LCFF_X23_Y14_N23
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~29_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1));

-- Location: LCFF_X25_Y14_N29
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~33_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2));

-- Location: LCFF_X24_Y14_N27
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~34_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2));

-- Location: LCFF_X23_Y14_N25
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~37_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2));

-- Location: LCFF_X27_Y15_N29
\controller|initialization_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|initialization_state~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|initialization_state~regout\);

-- Location: LCCOMB_X27_Y15_N6
\controller|Update_State_Controller~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~2_combout\ = (!\controller|internal_state.INIT~regout\ & \controller|initialization_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|internal_state.INIT~regout\,
	datad => \controller|initialization_state~regout\,
	combout => \controller|Update_State_Controller~2_combout\);

-- Location: LCCOMB_X27_Y15_N20
\controller|nuovo_giocatore_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|nuovo_giocatore_old~0_combout\ = (\controller|Update_State_Controller:nuovo_giocatore_old~regout\) # ((\controller|Update_State_Controller~2_combout\ & (!\controller|numero_giocatori\(3) & \controller|Update_State_Controller~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~2_combout\,
	datab => \controller|numero_giocatori\(3),
	datac => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datad => \controller|Update_State_Controller~3_combout\,
	combout => \controller|nuovo_giocatore_old~0_combout\);

-- Location: LCCOMB_X27_Y14_N10
\datapath|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add7~0_combout\ = \datapath|numero_giocatori_in_campo\(1) $ (\datapath|numero_giocatori_in_campo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|numero_giocatori_in_campo\(1),
	datad => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|Add7~0_combout\);

-- Location: LCCOMB_X27_Y14_N4
\datapath|Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal11~0_combout\ = (!\datapath|numero_giocatori_in_campo\(1) & !\datapath|numero_giocatori_in_campo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|numero_giocatori_in_campo\(1),
	datad => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|Equal11~0_combout\);

-- Location: LCCOMB_X18_Y16_N12
\datapath|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal3~0_combout\ = (\datapath|cicli_da_attendere\(2) & (\datapath|cicli_da_attendere\(1) & (\datapath|cicli_da_attendere\(0) & \datapath|cicli_da_attendere\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_da_attendere\(2),
	datab => \datapath|cicli_da_attendere\(1),
	datac => \datapath|cicli_da_attendere\(0),
	datad => \datapath|cicli_da_attendere\(3),
	combout => \datapath|Equal3~0_combout\);

-- Location: LCFF_X22_Y14_N27
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[29]~regout\);

-- Location: LCFF_X20_Y14_N9
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[27]~regout\);

-- Location: LCFF_X20_Y14_N13
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[25]~regout\);

-- Location: LCFF_X20_Y14_N11
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~7_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[24]~regout\);

-- Location: LCFF_X20_Y14_N31
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~9_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[22]~regout\);

-- Location: LCFF_X22_Y14_N17
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[21]~regout\);

-- Location: LCFF_X22_Y14_N3
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~11_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[20]~regout\);

-- Location: LCFF_X20_Y15_N11
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~18_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[13]~regout\);

-- Location: LCFF_X21_Y15_N25
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|counter_check~23_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[8]~regout\);

-- Location: LCFF_X21_Y15_N13
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|counter_check~28_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[3]~regout\);

-- Location: LCFF_X20_Y16_N9
\datapath|scommessa_corrente.dado_scommesso.NONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|scommessa_corrente.dado_scommesso.NONE~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.dado_scommesso.NONE~regout\);

-- Location: LCFF_X20_Y16_N23
\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~regout\);

-- Location: LCFF_X20_Y16_N21
\datapath|scommessa_corrente.dado_scommesso.SEI\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|scommessa_corrente~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.dado_scommesso.SEI~regout\);

-- Location: LCFF_X20_Y16_N7
\datapath|giocatori_in_campo[0].dadi_in_mano[0].SEI\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~41_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].dadi_in_mano[0].SEI~regout\);

-- Location: LCCOMB_X20_Y16_N8
\datapath|WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|WideNor0~0_combout\ = (\datapath|scommessa_corrente.dado_scommesso.SEI~regout\ & ((\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~regout\ $ (\datapath|scommessa_corrente.dado_scommesso.NONE~regout\)) # 
-- (!\datapath|giocatori_in_campo[0].dadi_in_mano[0].SEI~regout\))) # (!\datapath|scommessa_corrente.dado_scommesso.SEI~regout\ & ((\datapath|giocatori_in_campo[0].dadi_in_mano[0].SEI~regout\) # (\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~regout\ $ 
-- (\datapath|scommessa_corrente.dado_scommesso.NONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|scommessa_corrente.dado_scommesso.SEI~regout\,
	datab => \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~regout\,
	datac => \datapath|scommessa_corrente.dado_scommesso.NONE~regout\,
	datad => \datapath|giocatori_in_campo[0].dadi_in_mano[0].SEI~regout\,
	combout => \datapath|WideNor0~0_combout\);

-- Location: LCFF_X20_Y16_N13
\datapath|scommessa_corrente.dado_scommesso.CINQUE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|scommessa_corrente~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.dado_scommesso.CINQUE~regout\);

-- Location: LCFF_X20_Y16_N31
\datapath|giocatori_in_campo[0].dadi_in_mano[0].CINQUE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~43_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].dadi_in_mano[0].CINQUE~regout\);

-- Location: LCFF_X21_Y16_N3
\datapath|scommessa_corrente.dado_scommesso.QUATTRO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|scommessa_corrente~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.dado_scommesso.QUATTRO~regout\);

-- Location: LCFF_X20_Y16_N29
\datapath|giocatori_in_campo[0].dadi_in_mano[0].QUATTRO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|giocatori_in_campo~45_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].dadi_in_mano[0].QUATTRO~regout\);

-- Location: LCCOMB_X20_Y16_N28
\datapath|WideNor0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|WideNor0~1_combout\ = (\datapath|scommessa_corrente.dado_scommesso.QUATTRO~regout\ & ((\datapath|giocatori_in_campo[0].dadi_in_mano[0].CINQUE~regout\ $ (\datapath|scommessa_corrente.dado_scommesso.CINQUE~regout\)) # 
-- (!\datapath|giocatori_in_campo[0].dadi_in_mano[0].QUATTRO~regout\))) # (!\datapath|scommessa_corrente.dado_scommesso.QUATTRO~regout\ & ((\datapath|giocatori_in_campo[0].dadi_in_mano[0].QUATTRO~regout\) # 
-- (\datapath|giocatori_in_campo[0].dadi_in_mano[0].CINQUE~regout\ $ (\datapath|scommessa_corrente.dado_scommesso.CINQUE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|scommessa_corrente.dado_scommesso.QUATTRO~regout\,
	datab => \datapath|giocatori_in_campo[0].dadi_in_mano[0].CINQUE~regout\,
	datac => \datapath|giocatori_in_campo[0].dadi_in_mano[0].QUATTRO~regout\,
	datad => \datapath|scommessa_corrente.dado_scommesso.CINQUE~regout\,
	combout => \datapath|WideNor0~1_combout\);

-- Location: LCFF_X20_Y16_N3
\datapath|scommessa_corrente.dado_scommesso.UNO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|scommessa_corrente~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.dado_scommesso.UNO~regout\);

-- Location: LCFF_X20_Y16_N1
\datapath|giocatori_in_campo[0].dadi_in_mano[0].UNO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~52_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].dadi_in_mano[0].UNO~regout\);

-- Location: LCCOMB_X20_Y16_N14
\datapath|GestoreGiocatoriInCampo_RTL~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|GestoreGiocatoriInCampo_RTL~8_combout\ = \datapath|scommessa_corrente.dado_scommesso.UNO~regout\ $ (\datapath|giocatori_in_campo[0].dadi_in_mano[0].UNO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|scommessa_corrente.dado_scommesso.UNO~regout\,
	datad => \datapath|giocatori_in_campo[0].dadi_in_mano[0].UNO~regout\,
	combout => \datapath|GestoreGiocatoriInCampo_RTL~8_combout\);

-- Location: LCFF_X20_Y16_N5
\datapath|scommessa_corrente.dado_scommesso.TRE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|scommessa_corrente~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.dado_scommesso.TRE~regout\);

-- Location: LCFF_X20_Y16_N11
\datapath|giocatori_in_campo[0].dadi_in_mano[0].TRE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~47_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].dadi_in_mano[0].TRE~regout\);

-- Location: LCFF_X20_Y16_N25
\datapath|scommessa_corrente.dado_scommesso.DUE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|scommessa_corrente~5_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.dado_scommesso.DUE~regout\);

-- Location: LCFF_X20_Y16_N27
\datapath|giocatori_in_campo[0].dadi_in_mano[0].DUE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~53_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].dadi_in_mano[0].DUE~regout\);

-- Location: LCCOMB_X20_Y16_N16
\datapath|WideNor0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|WideNor0~2_combout\ = (\datapath|scommessa_corrente.dado_scommesso.DUE~regout\ & ((\datapath|scommessa_corrente.dado_scommesso.TRE~regout\ $ (\datapath|giocatori_in_campo[0].dadi_in_mano[0].TRE~regout\)) # 
-- (!\datapath|giocatori_in_campo[0].dadi_in_mano[0].DUE~regout\))) # (!\datapath|scommessa_corrente.dado_scommesso.DUE~regout\ & ((\datapath|giocatori_in_campo[0].dadi_in_mano[0].DUE~regout\) # (\datapath|scommessa_corrente.dado_scommesso.TRE~regout\ $ 
-- (\datapath|giocatori_in_campo[0].dadi_in_mano[0].TRE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|scommessa_corrente.dado_scommesso.DUE~regout\,
	datab => \datapath|giocatori_in_campo[0].dadi_in_mano[0].DUE~regout\,
	datac => \datapath|scommessa_corrente.dado_scommesso.TRE~regout\,
	datad => \datapath|giocatori_in_campo[0].dadi_in_mano[0].TRE~regout\,
	combout => \datapath|WideNor0~2_combout\);

-- Location: LCCOMB_X20_Y16_N18
\datapath|WideNor0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|WideNor0~3_combout\ = (\datapath|WideNor0~2_combout\) # ((\datapath|GestoreGiocatoriInCampo_RTL~8_combout\) # ((\datapath|WideNor0~0_combout\) # (\datapath|WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|WideNor0~2_combout\,
	datab => \datapath|GestoreGiocatoriInCampo_RTL~8_combout\,
	datac => \datapath|WideNor0~0_combout\,
	datad => \datapath|WideNor0~1_combout\,
	combout => \datapath|WideNor0~3_combout\);

-- Location: LCCOMB_X22_Y14_N0
\datapath|LessThan10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~2_combout\ = (\datapath|scommessa_corrente.ricorrenza\(30) & ((!\datapath|Add8~60_combout\) # (!\datapath|Add8~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|scommessa_corrente.ricorrenza\(30),
	datac => \datapath|Add8~58_combout\,
	datad => \datapath|Add8~60_combout\,
	combout => \datapath|LessThan10~2_combout\);

-- Location: LCCOMB_X22_Y14_N4
\datapath|LessThan10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~7_combout\ = ((!\datapath|Add8~30_combout\) # (!\datapath|Add8~32_combout\)) # (!\datapath|Add8~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add8~34_combout\,
	datac => \datapath|Add8~32_combout\,
	datad => \datapath|Add8~30_combout\,
	combout => \datapath|LessThan10~7_combout\);

-- Location: LCCOMB_X22_Y14_N30
\datapath|LessThan10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~8_combout\ = ((!\datapath|Add8~42_combout\) # (!\datapath|Add8~36_combout\)) # (!\datapath|Add8~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Add8~38_combout\,
	datac => \datapath|Add8~36_combout\,
	datad => \datapath|Add8~42_combout\,
	combout => \datapath|LessThan10~8_combout\);

-- Location: LCCOMB_X22_Y14_N20
\datapath|LessThan10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~9_combout\ = (\datapath|scommessa_corrente.ricorrenza\(30) & (((\datapath|LessThan10~7_combout\) # (\datapath|LessThan10~8_combout\)) # (!\datapath|Add8~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add8~40_combout\,
	datab => \datapath|scommessa_corrente.ricorrenza\(30),
	datac => \datapath|LessThan10~7_combout\,
	datad => \datapath|LessThan10~8_combout\,
	combout => \datapath|LessThan10~9_combout\);

-- Location: LCFF_X21_Y16_N15
\datapath|scommessa_corrente.ricorrenza[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|scommessa_corrente~11_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.ricorrenza\(1));

-- Location: LCCOMB_X26_Y15_N6
\datapath|indice_giocatore~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~3_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL~7_combout\ & (!\datapath|Mux7~4_combout\ & (!\datapath|Mux8~4_combout\ & !\datapath|Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL~7_combout\,
	datab => \datapath|Mux7~4_combout\,
	datac => \datapath|Mux8~4_combout\,
	datad => \datapath|Mux6~4_combout\,
	combout => \datapath|indice_giocatore~3_combout\);

-- Location: LCCOMB_X24_Y13_N14
\datapath|giocatori_in_campo~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~12_combout\ = (\datapath|giocatori_in_campo~10_combout\ & (\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0))) # (!\datapath|giocatori_in_campo~10_combout\ & ((\datapath|Decoder0~1_combout\ & 
-- ((!\datapath|Mux8~4_combout\))) # (!\datapath|Decoder0~1_combout\ & (\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo~10_combout\,
	datab => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0),
	datac => \datapath|Decoder0~1_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~12_combout\);

-- Location: LCCOMB_X24_Y13_N28
\datapath|giocatori_in_campo~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~13_combout\ = (\datapath|giocatori_in_campo~12_combout\ & \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|giocatori_in_campo~12_combout\,
	datad => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\,
	combout => \datapath|giocatori_in_campo~13_combout\);

-- Location: LCCOMB_X22_Y15_N12
\datapath|indice_giocatore[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[2]~12_combout\ = (\datapath|Equal4~0_combout\ & (\datapath|indice_giocatore[1]~8_combout\ & ((\controller|Update_State_Controller:check_old~regout\) # (!\datapath|indice_giocatore[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \datapath|indice_giocatore[1]~11_combout\,
	datac => \datapath|indice_giocatore[1]~8_combout\,
	datad => \controller|Update_State_Controller:check_old~regout\,
	combout => \datapath|indice_giocatore[2]~12_combout\);

-- Location: LCCOMB_X25_Y14_N6
\datapath|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Decoder0~2_combout\ = (\datapath|indice_giocatore\(2) & (\datapath|indice_giocatore\(1) & \datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(2),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Decoder0~2_combout\);

-- Location: LCCOMB_X24_Y13_N22
\datapath|giocatori_in_campo~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~14_combout\ = (\datapath|giocatori_in_campo~10_combout\ & (((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0))))) # (!\datapath|giocatori_in_campo~10_combout\ & ((\datapath|Decoder0~2_combout\ & 
-- ((!\datapath|Mux8~4_combout\))) # (!\datapath|Decoder0~2_combout\ & (\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo~10_combout\,
	datab => \datapath|Decoder0~2_combout\,
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0),
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~14_combout\);

-- Location: LCCOMB_X23_Y14_N12
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\ = ((\datapath|numero_giocatori_in_campo\(0) & \datapath|numero_giocatori_in_campo\(1))) # (!\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\,
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|numero_giocatori_in_campo\(1),
	combout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\);

-- Location: LCCOMB_X23_Y13_N24
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~1_combout\ = (!\datapath|numero_giocatori_in_campo\(3) & \datapath|reset_altri_giocatori~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|numero_giocatori_in_campo\(3),
	datad => \datapath|reset_altri_giocatori~regout\,
	combout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~1_combout\);

-- Location: LCCOMB_X26_Y13_N10
\datapath|giocatori_in_campo~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~18_combout\ = (\datapath|Decoder0~5_combout\ & ((\datapath|giocatori_in_campo~10_combout\ & (\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0))) # (!\datapath|giocatori_in_campo~10_combout\ & 
-- ((!\datapath|Mux8~4_combout\))))) # (!\datapath|Decoder0~5_combout\ & (\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0),
	datab => \datapath|Decoder0~5_combout\,
	datac => \datapath|giocatori_in_campo~10_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~18_combout\);

-- Location: LCCOMB_X26_Y13_N18
\datapath|giocatori_in_campo~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~19_combout\ = (\datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~6_combout\ & \datapath|giocatori_in_campo~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~6_combout\,
	datad => \datapath|giocatori_in_campo~18_combout\,
	combout => \datapath|giocatori_in_campo~19_combout\);

-- Location: LCCOMB_X23_Y13_N26
\datapath|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Decoder0~6_combout\ = (!\datapath|indice_giocatore\(2) & (\datapath|indice_giocatore\(0) & \datapath|indice_giocatore\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(2),
	datac => \datapath|indice_giocatore\(0),
	datad => \datapath|indice_giocatore\(1),
	combout => \datapath|Decoder0~6_combout\);

-- Location: LCCOMB_X26_Y14_N2
\datapath|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal5~1_combout\ = (!\datapath|indice_turno_giocatore\(0) & !\datapath|indice_turno_giocatore\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|indice_turno_giocatore\(0),
	datad => \datapath|indice_turno_giocatore\(1),
	combout => \datapath|Equal5~1_combout\);

-- Location: LCCOMB_X24_Y14_N20
\datapath|giocatori_in_campo~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~24_combout\ = (\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\ & (\datapath|Mux7~4_combout\ $ (\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~1_combout\ $ (!\datapath|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux7~4_combout\,
	datab => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~1_combout\,
	datac => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~24_combout\);

-- Location: LCCOMB_X23_Y14_N6
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~1_combout\ = ((\datapath|indice_giocatore\(1)) # ((\datapath|indice_giocatore\(0)) # (!\datapath|indice_giocatore\(2)))) # (!\datapath|elimina_dado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|elimina_dado~regout\,
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~1_combout\);

-- Location: LCCOMB_X24_Y14_N24
\datapath|giocatori_in_campo~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~26_combout\ = (\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\ & (\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~1_combout\ $ (\datapath|Mux7~4_combout\ $ (!\datapath|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\,
	datab => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~1_combout\,
	datac => \datapath|Mux7~4_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~26_combout\);

-- Location: LCCOMB_X23_Y14_N16
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~2_combout\ = ((\datapath|Decoder0~3_combout\ & !\datapath|giocatori_in_campo~10_combout\)) # (!\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Decoder0~3_combout\,
	datac => \datapath|giocatori_in_campo~10_combout\,
	datad => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\,
	combout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~2_combout\);

-- Location: LCCOMB_X23_Y14_N10
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~0_combout\ = (!\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\ & ((!\datapath|Decoder0~6_combout\) # (!\datapath|elimina_dado~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|elimina_dado~regout\,
	datab => \datapath|Decoder0~6_combout\,
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\,
	combout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~0_combout\);

-- Location: LCCOMB_X23_Y14_N22
\datapath|giocatori_in_campo~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~29_combout\ = (\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~0_combout\ & ((\datapath|Mux7~4_combout\ $ (\datapath|Mux8~4_combout\)))) # (!\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~0_combout\ & 
-- (!\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\ & (\datapath|Mux7~4_combout\ $ (!\datapath|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~0_combout\,
	datab => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\,
	datac => \datapath|Mux7~4_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~29_combout\);

-- Location: LCCOMB_X23_Y14_N8
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~1_combout\ = (\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\) # ((\datapath|Decoder0~6_combout\ & !\datapath|giocatori_in_campo~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Decoder0~6_combout\,
	datac => \datapath|giocatori_in_campo~10_combout\,
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\,
	combout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~1_combout\);

-- Location: LCCOMB_X22_Y13_N2
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~1_combout\ = (\datapath|indice_giocatore\(2)) # ((\datapath|indice_giocatore\(0)) # ((\datapath|indice_giocatore\(1)) # (!\datapath|elimina_dado~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(2),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|elimina_dado~regout\,
	combout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~1_combout\);

-- Location: LCCOMB_X22_Y16_N14
\controller|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|LessThan3~0_combout\ = (!\controller|ricorrenza_temp\(5) & (!\controller|ricorrenza_temp\(3) & (!\controller|ricorrenza_temp\(0) & !\controller|ricorrenza_temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ricorrenza_temp\(5),
	datab => \controller|ricorrenza_temp\(3),
	datac => \controller|ricorrenza_temp\(0),
	datad => \controller|ricorrenza_temp\(4),
	combout => \controller|LessThan3~0_combout\);

-- Location: LCCOMB_X23_Y16_N8
\controller|Update_State_Controller~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~7_combout\ = ((\controller|LessThan3~0_combout\ & (!\controller|ricorrenza_temp\(1) & !\controller|ricorrenza_temp\(2)))) # (!\controller|Update_State_Controller~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|LessThan3~0_combout\,
	datab => \controller|ricorrenza_temp\(1),
	datac => \controller|Update_State_Controller~0_combout\,
	datad => \controller|ricorrenza_temp\(2),
	combout => \controller|Update_State_Controller~7_combout\);

-- Location: LCCOMB_X27_Y16_N10
\controller|check_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|check_old~0_combout\ = (\controller|Update_State_Controller~7_combout\ & (!\controller|Update_State_Controller~8_combout\ & !\controller|turn_player_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~7_combout\,
	datac => \controller|Update_State_Controller~8_combout\,
	datad => \controller|turn_player_state~regout\,
	combout => \controller|check_old~0_combout\);

-- Location: LCFF_X27_Y16_N7
\datapath|CHECKED\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|CHECKED~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|CHECKED~regout\);

-- Location: LCCOMB_X25_Y14_N28
\datapath|giocatori_in_campo~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~33_combout\ = (\datapath|Decoder0~2_combout\ & ((\datapath|elimina_dado~regout\ & ((!\datapath|Add4~4_combout\))) # (!\datapath|elimina_dado~regout\ & (\datapath|Add2~0_combout\)))) # (!\datapath|Decoder0~2_combout\ & 
-- (((\datapath|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Decoder0~2_combout\,
	datab => \datapath|elimina_dado~regout\,
	datac => \datapath|Add2~0_combout\,
	datad => \datapath|Add4~4_combout\,
	combout => \datapath|giocatori_in_campo~33_combout\);

-- Location: LCCOMB_X24_Y14_N26
\datapath|giocatori_in_campo~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~34_combout\ = (\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\ & ((\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~1_combout\ & (\datapath|Add2~0_combout\)) # 
-- (!\datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~1_combout\ & ((!\datapath|Add4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~0_combout\,
	datab => \datapath|giocatori_in_campo[3].numero_dadi_in_mano[2]~1_combout\,
	datac => \datapath|Add2~0_combout\,
	datad => \datapath|Add4~4_combout\,
	combout => \datapath|giocatori_in_campo~34_combout\);

-- Location: LCCOMB_X23_Y14_N24
\datapath|giocatori_in_campo~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~37_combout\ = (\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~0_combout\ & (\datapath|Add2~0_combout\)) # (!\datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~0_combout\ & (((!\datapath|Add4~4_combout\ & 
-- !\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[4].numero_dadi_in_mano[1]~0_combout\,
	datab => \datapath|Add2~0_combout\,
	datac => \datapath|Add4~4_combout\,
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\,
	combout => \datapath|giocatori_in_campo~37_combout\);

-- Location: LCCOMB_X19_Y16_N24
\datapath|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal3~1_combout\ = (\datapath|cicli_da_attendere\(4) & \datapath|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|cicli_da_attendere\(4),
	datad => \datapath|Equal3~0_combout\,
	combout => \datapath|Equal3~1_combout\);

-- Location: LCCOMB_X26_Y15_N22
\datapath|indice_giocatore~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~24_combout\ = (\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & (((\datapath|numero_giocatori_in_campo\(3) & !\datapath|Equal4~0_combout\)))) # (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & 
-- (!\datapath|indice_giocatore\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(3),
	datab => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datac => \datapath|numero_giocatori_in_campo\(3),
	datad => \datapath|Equal4~0_combout\,
	combout => \datapath|indice_giocatore~24_combout\);

-- Location: LCCOMB_X26_Y15_N8
\datapath|indice_giocatore~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~25_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL~7_combout\ & (!\datapath|Equal4~0_combout\ & (!\datapath|Add7~1_combout\))) # (!\datapath|GestoreGiocatoriInCampo_RTL~7_combout\ & 
-- (((\datapath|indice_giocatore~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \datapath|Add7~1_combout\,
	datac => \datapath|GestoreGiocatoriInCampo_RTL~7_combout\,
	datad => \datapath|indice_giocatore~24_combout\,
	combout => \datapath|indice_giocatore~25_combout\);

-- Location: LCCOMB_X27_Y16_N12
\controller|initialization_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|initialization_state~0_combout\ = (\controller|internal_state.INIT~regout\) # ((\controller|Update_State_Controller~6_combout\) # ((\controller|Update_State_Controller~0_combout\) # (\controller|Update_State_Controller~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|internal_state.INIT~regout\,
	datab => \controller|Update_State_Controller~6_combout\,
	datac => \controller|Update_State_Controller~0_combout\,
	datad => \controller|Update_State_Controller~3_combout\,
	combout => \controller|initialization_state~0_combout\);

-- Location: LCCOMB_X27_Y15_N28
\controller|initialization_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|initialization_state~1_combout\ = (!\controller|INIZIA_PARTITA~0_combout\ & ((\controller|initialization_state~regout\) # (!\controller|initialization_state~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|INIZIA_PARTITA~0_combout\,
	datac => \controller|initialization_state~regout\,
	datad => \controller|initialization_state~0_combout\,
	combout => \controller|initialization_state~1_combout\);

-- Location: LCCOMB_X24_Y14_N16
\datapath|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add10~0_combout\ = \datapath|indice_turno_giocatore\(0) $ (\datapath|indice_turno_giocatore\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|indice_turno_giocatore\(0),
	datad => \datapath|indice_turno_giocatore\(1),
	combout => \datapath|Add10~0_combout\);

-- Location: LCCOMB_X22_Y14_N26
\datapath|counter_check~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~2_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~58_combout\,
	combout => \datapath|counter_check~2_combout\);

-- Location: LCCOMB_X20_Y14_N8
\datapath|counter_check~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~4_combout\ = (\datapath|Add8~54_combout\ & !\datapath|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add8~54_combout\,
	datac => \datapath|Equal4~0_combout\,
	combout => \datapath|counter_check~4_combout\);

-- Location: LCCOMB_X20_Y14_N12
\datapath|counter_check~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~6_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~50_combout\,
	combout => \datapath|counter_check~6_combout\);

-- Location: LCCOMB_X20_Y14_N10
\datapath|counter_check~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~7_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|Add8~48_combout\,
	combout => \datapath|counter_check~7_combout\);

-- Location: LCCOMB_X20_Y14_N30
\datapath|counter_check~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~9_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|Add8~44_combout\,
	combout => \datapath|counter_check~9_combout\);

-- Location: LCCOMB_X22_Y14_N16
\datapath|counter_check~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~10_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~42_combout\,
	combout => \datapath|counter_check~10_combout\);

-- Location: LCCOMB_X22_Y14_N2
\datapath|counter_check~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~11_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~40_combout\,
	combout => \datapath|counter_check~11_combout\);

-- Location: LCCOMB_X20_Y15_N10
\datapath|counter_check~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~18_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datac => \datapath|Add8~26_combout\,
	combout => \datapath|counter_check~18_combout\);

-- Location: LCCOMB_X20_Y15_N4
\datapath|counter_check~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~23_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datac => \datapath|Add8~16_combout\,
	combout => \datapath|counter_check~23_combout\);

-- Location: LCCOMB_X21_Y16_N22
\datapath|counter_check~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~28_combout\ = (\datapath|Add8~6_combout\ & !\datapath|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add8~6_combout\,
	datac => \datapath|Equal4~0_combout\,
	combout => \datapath|counter_check~28_combout\);

-- Location: LCFF_X24_Y15_N23
\datapath|indice_dado[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_dado~18_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|indice_dado[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_dado\(2));

-- Location: LCFF_X24_Y15_N29
\datapath|indice_dado[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_dado~28_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|indice_dado[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_dado\(1));

-- Location: LCFF_X24_Y15_N11
\datapath|indice_dado[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_dado~38_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|indice_dado[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_dado\(0));

-- Location: LCCOMB_X24_Y15_N8
\datapath|dadi_in_mano~280\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dadi_in_mano~280_combout\ = (((!\datapath|Decoder0~2_combout\) # (!\datapath|indice_dado\(1))) # (!\datapath|indice_dado\(2))) # (!\datapath|indice_dado\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_dado\(0),
	datab => \datapath|indice_dado\(2),
	datac => \datapath|indice_dado\(1),
	datad => \datapath|Decoder0~2_combout\,
	combout => \datapath|dadi_in_mano~280_combout\);

-- Location: LCCOMB_X19_Y16_N20
\datapath|giocatori_in_campo~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~39_combout\ = (\datapath|dadi_in_mano~280_combout\) # (!\datapath|elimina_dado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|elimina_dado~regout\,
	datad => \datapath|dadi_in_mano~280_combout\,
	combout => \datapath|giocatori_in_campo~39_combout\);

-- Location: LCCOMB_X19_Y16_N10
\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ = (\datapath|Equal3~0_combout\ & (!\datapath|dadi_in_mano~280_combout\ & (\datapath|aggiungi_dado~regout\ & \datapath|cicli_da_attendere\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal3~0_combout\,
	datab => \datapath|dadi_in_mano~280_combout\,
	datac => \datapath|aggiungi_dado~regout\,
	datad => \datapath|cicli_da_attendere\(4),
	combout => \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\);

-- Location: LCCOMB_X20_Y16_N20
\datapath|scommessa_corrente~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente~0_combout\ = (!\controller|ESEGUI_SCOMMESSA_FPGA~regout\ & \controller|DADO_SCOMMESSO.SEI~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	datad => \controller|DADO_SCOMMESSO.SEI~head_lut_combout\,
	combout => \datapath|scommessa_corrente~0_combout\);

-- Location: LCFF_X19_Y16_N13
\datapath|numero_per_generazione_casuale_dado[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_per_generazione_casuale_dado~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_per_generazione_casuale_dado\(2));

-- Location: LCFF_X19_Y16_N19
\datapath|numero_per_generazione_casuale_dado[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_per_generazione_casuale_dado~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_per_generazione_casuale_dado\(1));

-- Location: LCCOMB_X19_Y16_N8
\datapath|giocatori_in_campo~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~40_combout\ = (\datapath|numero_per_generazione_casuale_dado\(1) & \datapath|numero_per_generazione_casuale_dado\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|numero_per_generazione_casuale_dado\(1),
	datad => \datapath|numero_per_generazione_casuale_dado\(2),
	combout => \datapath|giocatori_in_campo~40_combout\);

-- Location: LCCOMB_X20_Y16_N6
\datapath|giocatori_in_campo~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~41_combout\ = (\datapath|giocatori_in_campo~39_combout\ & ((\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ & (\datapath|giocatori_in_campo~40_combout\)) # 
-- (!\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ & ((\datapath|giocatori_in_campo[0].dadi_in_mano[0].SEI~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo~39_combout\,
	datab => \datapath|giocatori_in_campo~40_combout\,
	datac => \datapath|giocatori_in_campo[0].dadi_in_mano[0].SEI~regout\,
	datad => \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\,
	combout => \datapath|giocatori_in_campo~41_combout\);

-- Location: LCCOMB_X20_Y16_N12
\datapath|scommessa_corrente~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente~1_combout\ = (!\controller|ESEGUI_SCOMMESSA_FPGA~regout\ & \controller|DADO_SCOMMESSO.CINQUE~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	datad => \controller|DADO_SCOMMESSO.CINQUE~head_lut_combout\,
	combout => \datapath|scommessa_corrente~1_combout\);

-- Location: LCFF_X19_Y16_N7
\datapath|numero_per_generazione_casuale_dado[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_per_generazione_casuale_dado[0]~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_per_generazione_casuale_dado\(0));

-- Location: LCCOMB_X19_Y16_N4
\datapath|giocatori_in_campo~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~42_combout\ = (!\datapath|numero_per_generazione_casuale_dado\(0) & \datapath|numero_per_generazione_casuale_dado\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_per_generazione_casuale_dado\(0),
	datad => \datapath|numero_per_generazione_casuale_dado\(2),
	combout => \datapath|giocatori_in_campo~42_combout\);

-- Location: LCCOMB_X20_Y16_N30
\datapath|giocatori_in_campo~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~43_combout\ = (\datapath|giocatori_in_campo~39_combout\ & ((\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ & (\datapath|giocatori_in_campo~42_combout\)) # 
-- (!\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ & ((\datapath|giocatori_in_campo[0].dadi_in_mano[0].CINQUE~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo~39_combout\,
	datab => \datapath|giocatori_in_campo~42_combout\,
	datac => \datapath|giocatori_in_campo[0].dadi_in_mano[0].CINQUE~regout\,
	datad => \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\,
	combout => \datapath|giocatori_in_campo~43_combout\);

-- Location: LCCOMB_X21_Y16_N2
\datapath|scommessa_corrente~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente~2_combout\ = (!\controller|ESEGUI_SCOMMESSA_FPGA~regout\ & \controller|DADO_SCOMMESSO.QUATTRO~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	datad => \controller|DADO_SCOMMESSO.QUATTRO~head_lut_combout\,
	combout => \datapath|scommessa_corrente~2_combout\);

-- Location: LCCOMB_X19_Y16_N26
\datapath|giocatori_in_campo~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~44_combout\ = (!\datapath|numero_per_generazione_casuale_dado\(1) & \datapath|numero_per_generazione_casuale_dado\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|numero_per_generazione_casuale_dado\(1),
	datad => \datapath|numero_per_generazione_casuale_dado\(0),
	combout => \datapath|giocatori_in_campo~44_combout\);

-- Location: LCCOMB_X19_Y16_N0
\datapath|giocatori_in_campo~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~45_combout\ = (\datapath|giocatori_in_campo~39_combout\ & ((\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ & ((\datapath|giocatori_in_campo~44_combout\))) # 
-- (!\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ & (\datapath|giocatori_in_campo[0].dadi_in_mano[0].QUATTRO~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[0].dadi_in_mano[0].QUATTRO~regout\,
	datab => \datapath|giocatori_in_campo~44_combout\,
	datac => \datapath|giocatori_in_campo~39_combout\,
	datad => \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\,
	combout => \datapath|giocatori_in_campo~45_combout\);

-- Location: LCCOMB_X20_Y16_N2
\datapath|scommessa_corrente~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente~3_combout\ = (!\controller|ESEGUI_SCOMMESSA_FPGA~regout\ & \controller|DADO_SCOMMESSO.UNO~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	datad => \controller|DADO_SCOMMESSO.UNO~head_lut_combout\,
	combout => \datapath|scommessa_corrente~3_combout\);

-- Location: LCCOMB_X19_Y16_N14
\datapath|giocatori_in_campo~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~46_combout\ = (\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ & (!\datapath|numero_per_generazione_casuale_dado\(2) & (!\datapath|numero_per_generazione_casuale_dado\(1)))) # 
-- (!\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ & (((\datapath|giocatori_in_campo[0].dadi_in_mano[0].UNO~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_per_generazione_casuale_dado\(2),
	datab => \datapath|numero_per_generazione_casuale_dado\(1),
	datac => \datapath|giocatori_in_campo[0].dadi_in_mano[0].UNO~regout\,
	datad => \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\,
	combout => \datapath|giocatori_in_campo~46_combout\);

-- Location: LCCOMB_X20_Y16_N4
\datapath|scommessa_corrente~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente~4_combout\ = (!\controller|ESEGUI_SCOMMESSA_FPGA~regout\ & \controller|DADO_SCOMMESSO.TRE~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	datad => \controller|DADO_SCOMMESSO.TRE~head_lut_combout\,
	combout => \datapath|scommessa_corrente~4_combout\);

-- Location: LCCOMB_X19_Y16_N16
\datapath|numero_per_generazione_casuale_dado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_per_generazione_casuale_dado~0_combout\ = (\datapath|numero_per_generazione_casuale_dado\(1) & !\datapath|numero_per_generazione_casuale_dado\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|numero_per_generazione_casuale_dado\(1),
	datad => \datapath|numero_per_generazione_casuale_dado\(0),
	combout => \datapath|numero_per_generazione_casuale_dado~0_combout\);

-- Location: LCCOMB_X20_Y16_N10
\datapath|giocatori_in_campo~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~47_combout\ = (\datapath|giocatori_in_campo~39_combout\ & ((\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ & (\datapath|numero_per_generazione_casuale_dado~0_combout\)) # 
-- (!\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ & ((\datapath|giocatori_in_campo[0].dadi_in_mano[0].TRE~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo~39_combout\,
	datab => \datapath|numero_per_generazione_casuale_dado~0_combout\,
	datac => \datapath|giocatori_in_campo[0].dadi_in_mano[0].TRE~regout\,
	datad => \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\,
	combout => \datapath|giocatori_in_campo~47_combout\);

-- Location: LCCOMB_X20_Y16_N24
\datapath|scommessa_corrente~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente~5_combout\ = (!\controller|ESEGUI_SCOMMESSA_FPGA~regout\ & \controller|DADO_SCOMMESSO.DUE~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	datad => \controller|DADO_SCOMMESSO.DUE~head_lut_combout\,
	combout => \datapath|scommessa_corrente~5_combout\);

-- Location: LCCOMB_X19_Y16_N2
\datapath|giocatori_in_campo~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~48_combout\ = (\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ & (!\datapath|numero_per_generazione_casuale_dado\(2) & (\datapath|numero_per_generazione_casuale_dado\(0)))) # 
-- (!\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\ & (((\datapath|giocatori_in_campo[0].dadi_in_mano[0].DUE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_per_generazione_casuale_dado\(2),
	datab => \datapath|numero_per_generazione_casuale_dado\(0),
	datac => \datapath|giocatori_in_campo[0].dadi_in_mano[0].DUE~regout\,
	datad => \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\,
	combout => \datapath|giocatori_in_campo~48_combout\);

-- Location: LCCOMB_X21_Y16_N14
\datapath|scommessa_corrente~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente~11_combout\ = (\controller|ESEGUI_SCOMMESSA_FPGA~regout\) # (\controller|RICORRENZA[1]~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	datad => \controller|RICORRENZA[1]~head_lut_combout\,
	combout => \datapath|scommessa_corrente~11_combout\);

-- Location: LCCOMB_X27_Y16_N20
\controller|turn_player_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|turn_player_state~2_combout\ = (\KEY~combout\(0) & ((\controller|Update_State_Controller~6_combout\) # ((!\controller|internal_state.TURN_PLAYER~regout\)))) # (!\KEY~combout\(0) & (\controller|Update_State_Controller:doubt_old~regout\ & 
-- ((\controller|Update_State_Controller~6_combout\) # (!\controller|internal_state.TURN_PLAYER~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \controller|Update_State_Controller~6_combout\,
	datac => \controller|Update_State_Controller:doubt_old~regout\,
	datad => \controller|internal_state.TURN_PLAYER~regout\,
	combout => \controller|turn_player_state~2_combout\);

-- Location: LCCOMB_X25_Y16_N16
\controller|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux3~0_combout\ = (\controller|dado_temp\(1)) # (!\controller|dado_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|dado_temp\(1),
	datad => \controller|dado_temp\(0),
	combout => \controller|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y16_N6
\datapath|CHECKED~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|CHECKED~0_combout\ = (\datapath|Equal4~0_combout\ & \controller|Update_State_Controller:check_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datac => \controller|Update_State_Controller:check_old~regout\,
	combout => \datapath|CHECKED~0_combout\);

-- Location: LCCOMB_X24_Y14_N6
\datapath|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux13~0_combout\ = (\datapath|numero_giocatori_in_campo\(1) & (\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1) & ((\datapath|numero_giocatori_in_campo\(0))))) # (!\datapath|numero_giocatori_in_campo\(1) & 
-- (((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1)) # (\datapath|numero_giocatori_in_campo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1),
	datad => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|Mux13~0_combout\);

-- Location: LCCOMB_X24_Y14_N0
\datapath|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux13~1_combout\ = (\datapath|Mux13~0_combout\ & ((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1)) # ((!\datapath|Add7~0_combout\)))) # (!\datapath|Mux13~0_combout\ & (((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1) & 
-- \datapath|Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux13~0_combout\,
	datab => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1),
	datac => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1),
	datad => \datapath|Add7~0_combout\,
	combout => \datapath|Mux13~1_combout\);

-- Location: LCCOMB_X25_Y13_N16
\datapath|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux13~2_combout\ = (\datapath|numero_giocatori_in_campo\(0) & (((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1)) # (!\datapath|numero_giocatori_in_campo\(1))))) # (!\datapath|numero_giocatori_in_campo\(0) & 
-- (\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1) & (!\datapath|numero_giocatori_in_campo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1),
	datab => \datapath|numero_giocatori_in_campo\(0),
	datac => \datapath|numero_giocatori_in_campo\(1),
	datad => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1),
	combout => \datapath|Mux13~2_combout\);

-- Location: LCCOMB_X25_Y13_N26
\datapath|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux13~3_combout\ = (\datapath|Mux13~2_combout\ & (((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1)) # (!\datapath|Add7~0_combout\)))) # (!\datapath|Mux13~2_combout\ & (\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1) & 
-- ((\datapath|Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux13~2_combout\,
	datab => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1),
	datad => \datapath|Add7~0_combout\,
	combout => \datapath|Mux13~3_combout\);

-- Location: LCCOMB_X24_Y15_N6
\datapath|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux13~4_combout\ = (\datapath|Equal11~0_combout\ & ((\datapath|numero_giocatori_in_campo\(2) & ((\datapath|Mux13~1_combout\))) # (!\datapath|numero_giocatori_in_campo\(2) & (\datapath|Mux13~3_combout\)))) # (!\datapath|Equal11~0_combout\ & 
-- ((\datapath|numero_giocatori_in_campo\(2) & (\datapath|Mux13~3_combout\)) # (!\datapath|numero_giocatori_in_campo\(2) & ((\datapath|Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal11~0_combout\,
	datab => \datapath|numero_giocatori_in_campo\(2),
	datac => \datapath|Mux13~3_combout\,
	datad => \datapath|Mux13~1_combout\,
	combout => \datapath|Mux13~4_combout\);

-- Location: LCCOMB_X24_Y13_N8
\datapath|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux14~0_combout\ = (\datapath|numero_giocatori_in_campo\(0) & (((!\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0)) # (!\datapath|numero_giocatori_in_campo\(1))))) # (!\datapath|numero_giocatori_in_campo\(0) & 
-- (!\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0) & (!\datapath|numero_giocatori_in_campo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datab => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0),
	datac => \datapath|numero_giocatori_in_campo\(1),
	datad => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0),
	combout => \datapath|Mux14~0_combout\);

-- Location: LCCOMB_X24_Y13_N10
\datapath|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux14~1_combout\ = (\datapath|Mux14~0_combout\ & (((!\datapath|Add7~0_combout\) # (!\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0))))) # (!\datapath|Mux14~0_combout\ & (!\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0) & 
-- ((\datapath|Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0),
	datab => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0),
	datac => \datapath|Mux14~0_combout\,
	datad => \datapath|Add7~0_combout\,
	combout => \datapath|Mux14~1_combout\);

-- Location: LCCOMB_X25_Y15_N28
\datapath|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux14~2_combout\ = (\datapath|numero_giocatori_in_campo\(0) & (((!\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0)) # (!\datapath|numero_giocatori_in_campo\(1))))) # (!\datapath|numero_giocatori_in_campo\(0) & 
-- (!\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0) & (!\datapath|numero_giocatori_in_campo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datab => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0),
	datac => \datapath|numero_giocatori_in_campo\(1),
	datad => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0),
	combout => \datapath|Mux14~2_combout\);

-- Location: LCCOMB_X25_Y15_N30
\datapath|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux14~3_combout\ = (\datapath|Mux14~2_combout\ & (((!\datapath|Add7~0_combout\) # (!\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0))))) # (!\datapath|Mux14~2_combout\ & (!\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0) & 
-- ((\datapath|Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0),
	datab => \datapath|Mux14~2_combout\,
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0),
	datad => \datapath|Add7~0_combout\,
	combout => \datapath|Mux14~3_combout\);

-- Location: LCCOMB_X24_Y15_N4
\datapath|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux14~4_combout\ = (\datapath|Mux14~1_combout\ & ((\datapath|Mux14~3_combout\) # (\datapath|numero_giocatori_in_campo\(2) $ (!\datapath|Equal11~0_combout\)))) # (!\datapath|Mux14~1_combout\ & (\datapath|Mux14~3_combout\ & 
-- (\datapath|numero_giocatori_in_campo\(2) $ (\datapath|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux14~1_combout\,
	datab => \datapath|numero_giocatori_in_campo\(2),
	datac => \datapath|Equal11~0_combout\,
	datad => \datapath|Mux14~3_combout\,
	combout => \datapath|Mux14~4_combout\);

-- Location: LCCOMB_X24_Y15_N18
\datapath|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add6~0_combout\ = (\datapath|Mux13~4_combout\) # (!\datapath|Mux14~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Mux14~4_combout\,
	datad => \datapath|Mux13~4_combout\,
	combout => \datapath|Add6~0_combout\);

-- Location: LCCOMB_X27_Y14_N18
\datapath|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux12~0_combout\ = (\datapath|numero_giocatori_in_campo\(0) & (((\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2))) # (!\datapath|numero_giocatori_in_campo\(1)))) # (!\datapath|numero_giocatori_in_campo\(0) & 
-- (!\datapath|numero_giocatori_in_campo\(1) & (\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2),
	datad => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2),
	combout => \datapath|Mux12~0_combout\);

-- Location: LCCOMB_X27_Y14_N24
\datapath|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux12~1_combout\ = (\datapath|Add7~0_combout\ & ((\datapath|Mux12~0_combout\ & (\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2))) # (!\datapath|Mux12~0_combout\ & ((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2)))))) # 
-- (!\datapath|Add7~0_combout\ & (\datapath|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add7~0_combout\,
	datab => \datapath|Mux12~0_combout\,
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2),
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2),
	combout => \datapath|Mux12~1_combout\);

-- Location: LCCOMB_X27_Y14_N22
\datapath|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux12~2_combout\ = (\datapath|numero_giocatori_in_campo\(0) & ((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2)) # ((!\datapath|numero_giocatori_in_campo\(1))))) # (!\datapath|numero_giocatori_in_campo\(0) & 
-- (((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2) & !\datapath|numero_giocatori_in_campo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datab => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2),
	datac => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2),
	datad => \datapath|numero_giocatori_in_campo\(1),
	combout => \datapath|Mux12~2_combout\);

-- Location: LCCOMB_X27_Y14_N28
\datapath|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux12~3_combout\ = (\datapath|Mux12~2_combout\ & (((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2)) # (!\datapath|Add7~0_combout\)))) # (!\datapath|Mux12~2_combout\ & (\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2) & 
-- ((\datapath|Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2),
	datab => \datapath|Mux12~2_combout\,
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2),
	datad => \datapath|Add7~0_combout\,
	combout => \datapath|Mux12~3_combout\);

-- Location: LCCOMB_X27_Y14_N2
\datapath|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux12~4_combout\ = (\datapath|Mux12~1_combout\ & ((\datapath|Mux12~3_combout\) # (\datapath|Equal11~0_combout\ $ (!\datapath|numero_giocatori_in_campo\(2))))) # (!\datapath|Mux12~1_combout\ & (\datapath|Mux12~3_combout\ & 
-- (\datapath|Equal11~0_combout\ $ (\datapath|numero_giocatori_in_campo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux12~1_combout\,
	datab => \datapath|Mux12~3_combout\,
	datac => \datapath|Equal11~0_combout\,
	datad => \datapath|numero_giocatori_in_campo\(2),
	combout => \datapath|Mux12~4_combout\);

-- Location: LCCOMB_X23_Y15_N8
\datapath|indice_dado[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado[0]~5_combout\ = ((\datapath|Equal4~0_combout\) # (\datapath|LessThan10~29_combout\)) # (!\controller|Update_State_Controller:check_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Update_State_Controller:check_old~regout\,
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|LessThan10~29_combout\,
	combout => \datapath|indice_dado[0]~5_combout\);

-- Location: LCCOMB_X27_Y14_N20
\datapath|indice_dado~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~6_combout\ = (\datapath|numero_giocatori_in_campo\(0) & ((\datapath|numero_giocatori_in_campo\(1)) # ((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2))))) # (!\datapath|numero_giocatori_in_campo\(0) & 
-- (!\datapath|numero_giocatori_in_campo\(1) & (\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2),
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2),
	combout => \datapath|indice_dado~6_combout\);

-- Location: LCCOMB_X27_Y14_N30
\datapath|indice_dado~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~7_combout\ = (\datapath|numero_giocatori_in_campo\(1) & ((\datapath|indice_dado~6_combout\ & (\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2))) # (!\datapath|indice_dado~6_combout\ & 
-- ((\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2)))))) # (!\datapath|numero_giocatori_in_campo\(1) & (((\datapath|indice_dado~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|indice_dado~6_combout\,
	datad => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2),
	combout => \datapath|indice_dado~7_combout\);

-- Location: LCCOMB_X27_Y14_N8
\datapath|indice_dado~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~8_combout\ = (\datapath|numero_giocatori_in_campo\(0) & ((\datapath|numero_giocatori_in_campo\(1)) # ((\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2))))) # (!\datapath|numero_giocatori_in_campo\(0) & 
-- (!\datapath|numero_giocatori_in_campo\(1) & (\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2),
	datad => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2),
	combout => \datapath|indice_dado~8_combout\);

-- Location: LCCOMB_X27_Y14_N14
\datapath|indice_dado~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~9_combout\ = (\datapath|indice_dado~8_combout\ & ((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2)) # ((!\datapath|numero_giocatori_in_campo\(1))))) # (!\datapath|indice_dado~8_combout\ & 
-- (((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2) & \datapath|numero_giocatori_in_campo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2),
	datab => \datapath|indice_dado~8_combout\,
	datac => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2),
	datad => \datapath|numero_giocatori_in_campo\(1),
	combout => \datapath|indice_dado~9_combout\);

-- Location: LCCOMB_X24_Y14_N30
\datapath|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux18~0_combout\ = (\datapath|indice_turno_giocatore\(0) & ((\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2)) # ((!\datapath|indice_turno_giocatore\(1))))) # (!\datapath|indice_turno_giocatore\(0) & 
-- (((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2) & !\datapath|indice_turno_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2),
	datab => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2),
	datac => \datapath|indice_turno_giocatore\(0),
	datad => \datapath|indice_turno_giocatore\(1),
	combout => \datapath|Mux18~0_combout\);

-- Location: LCCOMB_X25_Y14_N14
\datapath|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux18~1_combout\ = (\datapath|Mux18~0_combout\ & ((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2)) # ((!\datapath|Add10~0_combout\)))) # (!\datapath|Mux18~0_combout\ & (((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2) & 
-- \datapath|Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2),
	datab => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2),
	datac => \datapath|Mux18~0_combout\,
	datad => \datapath|Add10~0_combout\,
	combout => \datapath|Mux18~1_combout\);

-- Location: LCCOMB_X25_Y14_N20
\datapath|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux18~2_combout\ = (\datapath|indice_turno_giocatore\(1) & (((\datapath|indice_turno_giocatore\(0) & \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2))))) # (!\datapath|indice_turno_giocatore\(1) & 
-- ((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2)) # ((\datapath|indice_turno_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2),
	datab => \datapath|indice_turno_giocatore\(1),
	datac => \datapath|indice_turno_giocatore\(0),
	datad => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2),
	combout => \datapath|Mux18~2_combout\);

-- Location: LCCOMB_X25_Y14_N22
\datapath|Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux18~3_combout\ = (\datapath|Mux18~2_combout\ & ((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2)) # ((!\datapath|Add10~0_combout\)))) # (!\datapath|Mux18~2_combout\ & (((\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2) & 
-- \datapath|Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux18~2_combout\,
	datab => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2),
	datac => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2),
	datad => \datapath|Add10~0_combout\,
	combout => \datapath|Mux18~3_combout\);

-- Location: LCCOMB_X26_Y14_N10
\datapath|Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux18~4_combout\ = (\datapath|Mux18~1_combout\ & ((\datapath|Mux18~3_combout\) # (\datapath|indice_turno_giocatore\(2) $ (!\datapath|Equal5~1_combout\)))) # (!\datapath|Mux18~1_combout\ & (\datapath|Mux18~3_combout\ & 
-- (\datapath|indice_turno_giocatore\(2) $ (\datapath|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux18~1_combout\,
	datab => \datapath|Mux18~3_combout\,
	datac => \datapath|indice_turno_giocatore\(2),
	datad => \datapath|Equal5~1_combout\,
	combout => \datapath|Mux18~4_combout\);

-- Location: LCCOMB_X24_Y14_N4
\datapath|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux19~0_combout\ = (\datapath|indice_turno_giocatore\(0) & ((\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1)) # ((!\datapath|indice_turno_giocatore\(1))))) # (!\datapath|indice_turno_giocatore\(0) & 
-- (((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1) & !\datapath|indice_turno_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1),
	datab => \datapath|indice_turno_giocatore\(0),
	datac => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1),
	datad => \datapath|indice_turno_giocatore\(1),
	combout => \datapath|Mux19~0_combout\);

-- Location: LCCOMB_X25_Y14_N16
\datapath|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux19~1_combout\ = (\datapath|Mux19~0_combout\ & (((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1)) # (!\datapath|Add10~0_combout\)))) # (!\datapath|Mux19~0_combout\ & (\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1) & 
-- ((\datapath|Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1),
	datab => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1),
	datac => \datapath|Mux19~0_combout\,
	datad => \datapath|Add10~0_combout\,
	combout => \datapath|Mux19~1_combout\);

-- Location: LCCOMB_X25_Y13_N4
\datapath|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux19~2_combout\ = (\datapath|indice_turno_giocatore\(0) & (((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1))) # (!\datapath|indice_turno_giocatore\(1)))) # (!\datapath|indice_turno_giocatore\(0) & (!\datapath|indice_turno_giocatore\(1) 
-- & (\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(0),
	datab => \datapath|indice_turno_giocatore\(1),
	datac => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1),
	datad => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1),
	combout => \datapath|Mux19~2_combout\);

-- Location: LCCOMB_X25_Y13_N30
\datapath|Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux19~3_combout\ = (\datapath|Mux19~2_combout\ & ((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1)) # ((!\datapath|Add10~0_combout\)))) # (!\datapath|Mux19~2_combout\ & (((\datapath|Add10~0_combout\ & 
-- \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1),
	datab => \datapath|Mux19~2_combout\,
	datac => \datapath|Add10~0_combout\,
	datad => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1),
	combout => \datapath|Mux19~3_combout\);

-- Location: LCCOMB_X26_Y14_N20
\datapath|Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux19~4_combout\ = (\datapath|indice_turno_giocatore\(2) & ((\datapath|Equal5~1_combout\ & ((\datapath|Mux19~1_combout\))) # (!\datapath|Equal5~1_combout\ & (\datapath|Mux19~3_combout\)))) # (!\datapath|indice_turno_giocatore\(2) & 
-- ((\datapath|Equal5~1_combout\ & (\datapath|Mux19~3_combout\)) # (!\datapath|Equal5~1_combout\ & ((\datapath|Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(2),
	datab => \datapath|Equal5~1_combout\,
	datac => \datapath|Mux19~3_combout\,
	datad => \datapath|Mux19~1_combout\,
	combout => \datapath|Mux19~4_combout\);

-- Location: LCCOMB_X24_Y13_N24
\datapath|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux20~0_combout\ = (\datapath|indice_turno_giocatore\(0) & (((!\datapath|indice_turno_giocatore\(1))) # (!\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0)))) # (!\datapath|indice_turno_giocatore\(0) & 
-- (((!\datapath|indice_turno_giocatore\(1) & !\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(0),
	datab => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0),
	datac => \datapath|indice_turno_giocatore\(1),
	datad => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0),
	combout => \datapath|Mux20~0_combout\);

-- Location: LCCOMB_X24_Y13_N30
\datapath|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux20~1_combout\ = (\datapath|Mux20~0_combout\ & (((!\datapath|Add10~0_combout\) # (!\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0))))) # (!\datapath|Mux20~0_combout\ & (!\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0) & 
-- ((\datapath|Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0),
	datab => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0),
	datac => \datapath|Mux20~0_combout\,
	datad => \datapath|Add10~0_combout\,
	combout => \datapath|Mux20~1_combout\);

-- Location: LCCOMB_X25_Y15_N0
\datapath|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux20~2_combout\ = (\datapath|indice_turno_giocatore\(1) & (\datapath|indice_turno_giocatore\(0) & ((!\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0))))) # (!\datapath|indice_turno_giocatore\(1) & ((\datapath|indice_turno_giocatore\(0)) 
-- # ((!\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(1),
	datab => \datapath|indice_turno_giocatore\(0),
	datac => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0),
	combout => \datapath|Mux20~2_combout\);

-- Location: LCCOMB_X25_Y15_N16
\datapath|Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux20~3_combout\ = (\datapath|Add10~0_combout\ & ((\datapath|Mux20~2_combout\ & ((!\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0)))) # (!\datapath|Mux20~2_combout\ & (!\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0))))) # 
-- (!\datapath|Add10~0_combout\ & (((\datapath|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0),
	datab => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0),
	datac => \datapath|Add10~0_combout\,
	datad => \datapath|Mux20~2_combout\,
	combout => \datapath|Mux20~3_combout\);

-- Location: LCCOMB_X26_Y14_N26
\datapath|Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux20~4_combout\ = (\datapath|indice_turno_giocatore\(2) & ((\datapath|Equal5~1_combout\ & (\datapath|Mux20~1_combout\)) # (!\datapath|Equal5~1_combout\ & ((\datapath|Mux20~3_combout\))))) # (!\datapath|indice_turno_giocatore\(2) & 
-- ((\datapath|Equal5~1_combout\ & ((\datapath|Mux20~3_combout\))) # (!\datapath|Equal5~1_combout\ & (\datapath|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(2),
	datab => \datapath|Equal5~1_combout\,
	datac => \datapath|Mux20~1_combout\,
	datad => \datapath|Mux20~3_combout\,
	combout => \datapath|Mux20~4_combout\);

-- Location: LCCOMB_X26_Y14_N24
\datapath|indice_dado~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~10_combout\ = (\datapath|Equal4~0_combout\) # (\datapath|Mux18~4_combout\ $ (((!\datapath|Mux19~4_combout\ & \datapath|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux18~4_combout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|Mux19~4_combout\,
	datad => \datapath|Mux20~4_combout\,
	combout => \datapath|indice_dado~10_combout\);

-- Location: LCCOMB_X26_Y14_N22
\datapath|indice_dado[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado[0]~11_combout\ = (\controller|Update_State_Controller:check_old~regout\) # ((\datapath|numero_giocatori_in_campo\(2) & ((\datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\) # 
-- (!\controller|Update_State_Controller:elimina_giocatore_old~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datab => \datapath|numero_giocatori_in_campo\(2),
	datac => \controller|Update_State_Controller:check_old~regout\,
	datad => \datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\,
	combout => \datapath|indice_dado[0]~11_combout\);

-- Location: LCCOMB_X26_Y14_N0
\datapath|indice_dado~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~12_combout\ = (\datapath|indice_dado[0]~37_combout\ & ((\datapath|indice_dado[0]~11_combout\ & (\datapath|indice_dado~10_combout\)) # (!\datapath|indice_dado[0]~11_combout\ & ((!\datapath|Add4~4_combout\))))) # 
-- (!\datapath|indice_dado[0]~37_combout\ & (!\datapath|indice_dado[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_dado[0]~37_combout\,
	datab => \datapath|indice_dado[0]~11_combout\,
	datac => \datapath|indice_dado~10_combout\,
	datad => \datapath|Add4~4_combout\,
	combout => \datapath|indice_dado~12_combout\);

-- Location: LCCOMB_X26_Y14_N6
\datapath|indice_dado~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~13_combout\ = (\datapath|indice_dado[0]~4_combout\ & (((\datapath|indice_dado~12_combout\)))) # (!\datapath|indice_dado[0]~4_combout\ & ((\datapath|indice_dado~12_combout\ & (\datapath|indice_dado~7_combout\)) # 
-- (!\datapath|indice_dado~12_combout\ & ((\datapath|indice_dado~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_dado[0]~4_combout\,
	datab => \datapath|indice_dado~7_combout\,
	datac => \datapath|indice_dado~9_combout\,
	datad => \datapath|indice_dado~12_combout\,
	combout => \datapath|indice_dado~13_combout\);

-- Location: LCCOMB_X27_Y13_N6
\datapath|indice_dado~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~14_combout\ = (!\datapath|indice_dado[0]~4_combout\ & (\datapath|Mux6~4_combout\ & (!\datapath|LessThan9~4_combout\ & \datapath|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_dado[0]~4_combout\,
	datab => \datapath|Mux6~4_combout\,
	datac => \datapath|LessThan9~4_combout\,
	datad => \datapath|Equal4~0_combout\,
	combout => \datapath|indice_dado~14_combout\);

-- Location: LCCOMB_X25_Y14_N26
\datapath|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux15~0_combout\ = (\datapath|indice_turno_giocatore\(1) & (((\datapath|indice_turno_giocatore\(0))))) # (!\datapath|indice_turno_giocatore\(1) & ((\datapath|indice_turno_giocatore\(0) & 
-- ((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2)))) # (!\datapath|indice_turno_giocatore\(0) & (\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(1),
	datab => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2),
	datac => \datapath|indice_turno_giocatore\(0),
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2),
	combout => \datapath|Mux15~0_combout\);

-- Location: LCCOMB_X24_Y14_N2
\datapath|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux15~1_combout\ = (\datapath|Mux15~0_combout\ & (((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2)) # (!\datapath|indice_turno_giocatore\(1))))) # (!\datapath|Mux15~0_combout\ & (\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2) & 
-- ((\datapath|indice_turno_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2),
	datab => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2),
	datac => \datapath|Mux15~0_combout\,
	datad => \datapath|indice_turno_giocatore\(1),
	combout => \datapath|Mux15~1_combout\);

-- Location: LCCOMB_X25_Y14_N8
\datapath|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux15~2_combout\ = (\datapath|indice_turno_giocatore\(0) & ((\datapath|indice_turno_giocatore\(1)) # ((\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2))))) # (!\datapath|indice_turno_giocatore\(0) & (!\datapath|indice_turno_giocatore\(1) 
-- & ((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(0),
	datab => \datapath|indice_turno_giocatore\(1),
	datac => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2),
	datad => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2),
	combout => \datapath|Mux15~2_combout\);

-- Location: LCCOMB_X25_Y14_N10
\datapath|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux15~3_combout\ = (\datapath|indice_turno_giocatore\(1) & ((\datapath|Mux15~2_combout\ & (\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2))) # (!\datapath|Mux15~2_combout\ & ((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2)))))) 
-- # (!\datapath|indice_turno_giocatore\(1) & (((\datapath|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2),
	datab => \datapath|indice_turno_giocatore\(1),
	datac => \datapath|Mux15~2_combout\,
	datad => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2),
	combout => \datapath|Mux15~3_combout\);

-- Location: LCCOMB_X25_Y13_N20
\datapath|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux16~0_combout\ = (\datapath|indice_turno_giocatore\(0) & (((\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1)) # (\datapath|indice_turno_giocatore\(1))))) # (!\datapath|indice_turno_giocatore\(0) & 
-- (\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1) & ((!\datapath|indice_turno_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1),
	datab => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1),
	datac => \datapath|indice_turno_giocatore\(0),
	datad => \datapath|indice_turno_giocatore\(1),
	combout => \datapath|Mux16~0_combout\);

-- Location: LCCOMB_X25_Y13_N2
\datapath|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux16~1_combout\ = (\datapath|Mux16~0_combout\ & (((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1))) # (!\datapath|indice_turno_giocatore\(1)))) # (!\datapath|Mux16~0_combout\ & (\datapath|indice_turno_giocatore\(1) & 
-- ((\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux16~0_combout\,
	datab => \datapath|indice_turno_giocatore\(1),
	datac => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1),
	datad => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1),
	combout => \datapath|Mux16~1_combout\);

-- Location: LCCOMB_X24_Y14_N28
\datapath|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux16~2_combout\ = (\datapath|indice_turno_giocatore\(1) & (\datapath|indice_turno_giocatore\(0))) # (!\datapath|indice_turno_giocatore\(1) & ((\datapath|indice_turno_giocatore\(0) & (\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1))) # 
-- (!\datapath|indice_turno_giocatore\(0) & ((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(1),
	datab => \datapath|indice_turno_giocatore\(0),
	datac => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1),
	datad => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1),
	combout => \datapath|Mux16~2_combout\);

-- Location: LCCOMB_X24_Y14_N10
\datapath|Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux16~3_combout\ = (\datapath|indice_turno_giocatore\(1) & ((\datapath|Mux16~2_combout\ & (\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1))) # (!\datapath|Mux16~2_combout\ & ((\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1)))))) 
-- # (!\datapath|indice_turno_giocatore\(1) & (((\datapath|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1),
	datab => \datapath|indice_turno_giocatore\(1),
	datac => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1),
	datad => \datapath|Mux16~2_combout\,
	combout => \datapath|Mux16~3_combout\);

-- Location: LCCOMB_X25_Y15_N26
\datapath|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux17~0_combout\ = (\datapath|indice_turno_giocatore\(1) & (\datapath|indice_turno_giocatore\(0))) # (!\datapath|indice_turno_giocatore\(1) & ((\datapath|indice_turno_giocatore\(0) & ((!\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0)))) 
-- # (!\datapath|indice_turno_giocatore\(0) & (!\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(1),
	datab => \datapath|indice_turno_giocatore\(0),
	datac => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0),
	combout => \datapath|Mux17~0_combout\);

-- Location: LCCOMB_X25_Y15_N4
\datapath|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux17~1_combout\ = (\datapath|indice_turno_giocatore\(1) & ((\datapath|Mux17~0_combout\ & (!\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0))) # (!\datapath|Mux17~0_combout\ & 
-- ((!\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0)))))) # (!\datapath|indice_turno_giocatore\(1) & (\datapath|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(1),
	datab => \datapath|Mux17~0_combout\,
	datac => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0),
	combout => \datapath|Mux17~1_combout\);

-- Location: LCCOMB_X24_Y13_N4
\datapath|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux17~2_combout\ = (\datapath|indice_turno_giocatore\(0) & (((\datapath|indice_turno_giocatore\(1)) # (!\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0))))) # (!\datapath|indice_turno_giocatore\(0) & 
-- (!\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0) & ((!\datapath|indice_turno_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(0),
	datab => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0),
	datac => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0),
	datad => \datapath|indice_turno_giocatore\(1),
	combout => \datapath|Mux17~2_combout\);

-- Location: LCCOMB_X24_Y13_N18
\datapath|Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux17~3_combout\ = (\datapath|Mux17~2_combout\ & (((!\datapath|indice_turno_giocatore\(1)) # (!\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0))))) # (!\datapath|Mux17~2_combout\ & (!\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0) 
-- & ((\datapath|indice_turno_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0),
	datab => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0),
	datac => \datapath|Mux17~2_combout\,
	datad => \datapath|indice_turno_giocatore\(1),
	combout => \datapath|Mux17~3_combout\);

-- Location: LCCOMB_X24_Y15_N24
\datapath|Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux17~4_combout\ = (\datapath|indice_turno_giocatore\(2) & ((\datapath|Mux17~1_combout\))) # (!\datapath|indice_turno_giocatore\(2) & (\datapath|Mux17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_turno_giocatore\(2),
	datac => \datapath|Mux17~3_combout\,
	datad => \datapath|Mux17~1_combout\,
	combout => \datapath|Mux17~4_combout\);

-- Location: LCCOMB_X24_Y15_N26
\datapath|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add9~0_combout\ = ((\datapath|indice_turno_giocatore\(2) & ((\datapath|Mux16~1_combout\))) # (!\datapath|indice_turno_giocatore\(2) & (\datapath|Mux16~3_combout\))) # (!\datapath|Mux17~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux17~4_combout\,
	datab => \datapath|indice_turno_giocatore\(2),
	datac => \datapath|Mux16~3_combout\,
	datad => \datapath|Mux16~1_combout\,
	combout => \datapath|Add9~0_combout\);

-- Location: LCCOMB_X24_Y15_N16
\datapath|Add9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add9~1_combout\ = \datapath|Add9~0_combout\ $ (((\datapath|indice_turno_giocatore\(2) & ((\datapath|Mux15~3_combout\))) # (!\datapath|indice_turno_giocatore\(2) & (\datapath|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux15~1_combout\,
	datab => \datapath|indice_turno_giocatore\(2),
	datac => \datapath|Mux15~3_combout\,
	datad => \datapath|Add9~0_combout\,
	combout => \datapath|Add9~1_combout\);

-- Location: LCCOMB_X24_Y15_N14
\datapath|indice_dado~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~15_combout\ = (\datapath|indice_dado[0]~5_combout\ & (((\datapath|indice_dado~13_combout\) # (\datapath|indice_dado~14_combout\)))) # (!\datapath|indice_dado[0]~5_combout\ & (!\datapath|Add9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add9~1_combout\,
	datab => \datapath|indice_dado~13_combout\,
	datac => \datapath|indice_dado~14_combout\,
	datad => \datapath|indice_dado[0]~5_combout\,
	combout => \datapath|indice_dado~15_combout\);

-- Location: LCCOMB_X23_Y15_N18
\datapath|indice_dado[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado[0]~16_combout\ = (\controller|Update_State_Controller:check_old~regout\ & (((\datapath|Equal5~0_combout\ & \datapath|LessThan10~29_combout\)))) # (!\controller|Update_State_Controller:check_old~regout\ & 
-- (\datapath|GestoreGiocatoriInCampo_RTL~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL~7_combout\,
	datab => \datapath|Equal5~0_combout\,
	datac => \controller|Update_State_Controller:check_old~regout\,
	datad => \datapath|LessThan10~29_combout\,
	combout => \datapath|indice_dado[0]~16_combout\);

-- Location: LCCOMB_X24_Y15_N12
\datapath|indice_dado[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado[0]~17_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|indice_dado[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|indice_dado[0]~16_combout\,
	combout => \datapath|indice_dado[0]~17_combout\);

-- Location: LCCOMB_X24_Y15_N22
\datapath|indice_dado~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~18_combout\ = (\datapath|indice_dado[0]~17_combout\ & (\datapath|Mux12~4_combout\ $ ((\datapath|Add6~0_combout\)))) # (!\datapath|indice_dado[0]~17_combout\ & (((!\datapath|indice_dado~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux12~4_combout\,
	datab => \datapath|Add6~0_combout\,
	datac => \datapath|indice_dado~15_combout\,
	datad => \datapath|indice_dado[0]~17_combout\,
	combout => \datapath|indice_dado~18_combout\);

-- Location: LCCOMB_X27_Y13_N0
\datapath|indice_dado[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado[0]~19_combout\ = (\datapath|indice_dado[0]~4_combout\) # ((\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & ((\datapath|dado_aggiunto~regout\) # (!\datapath|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_dado[0]~4_combout\,
	datab => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datac => \datapath|dado_aggiunto~regout\,
	datad => \datapath|Equal4~0_combout\,
	combout => \datapath|indice_dado[0]~19_combout\);

-- Location: LCCOMB_X24_Y15_N2
\datapath|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add9~2_combout\ = \datapath|Mux17~4_combout\ $ (((\datapath|indice_turno_giocatore\(2) & ((\datapath|Mux16~1_combout\))) # (!\datapath|indice_turno_giocatore\(2) & (\datapath|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux17~4_combout\,
	datab => \datapath|indice_turno_giocatore\(2),
	datac => \datapath|Mux16~3_combout\,
	datad => \datapath|Mux16~1_combout\,
	combout => \datapath|Add9~2_combout\);

-- Location: LCCOMB_X24_Y14_N8
\datapath|indice_dado~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~20_combout\ = (\datapath|numero_giocatori_in_campo\(0) & ((\datapath|numero_giocatori_in_campo\(1)) # ((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1))))) # (!\datapath|numero_giocatori_in_campo\(0) & 
-- (!\datapath|numero_giocatori_in_campo\(1) & ((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1),
	datad => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1),
	combout => \datapath|indice_dado~20_combout\);

-- Location: LCCOMB_X24_Y14_N22
\datapath|indice_dado~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~21_combout\ = (\datapath|numero_giocatori_in_campo\(1) & ((\datapath|indice_dado~20_combout\ & (\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1))) # (!\datapath|indice_dado~20_combout\ & 
-- ((\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1)))))) # (!\datapath|numero_giocatori_in_campo\(1) & (((\datapath|indice_dado~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1),
	datad => \datapath|indice_dado~20_combout\,
	combout => \datapath|indice_dado~21_combout\);

-- Location: LCCOMB_X25_Y13_N0
\datapath|indice_dado~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~22_combout\ = (\datapath|numero_giocatori_in_campo\(0) & (((\datapath|numero_giocatori_in_campo\(1)) # (\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1))))) # (!\datapath|numero_giocatori_in_campo\(0) & 
-- (\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1) & (!\datapath|numero_giocatori_in_campo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1),
	datab => \datapath|numero_giocatori_in_campo\(0),
	datac => \datapath|numero_giocatori_in_campo\(1),
	datad => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1),
	combout => \datapath|indice_dado~22_combout\);

-- Location: LCCOMB_X25_Y13_N14
\datapath|indice_dado~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~23_combout\ = (\datapath|indice_dado~22_combout\ & ((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1)) # ((!\datapath|numero_giocatori_in_campo\(1))))) # (!\datapath|indice_dado~22_combout\ & 
-- (((\datapath|numero_giocatori_in_campo\(1) & \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1),
	datab => \datapath|indice_dado~22_combout\,
	datac => \datapath|numero_giocatori_in_campo\(1),
	datad => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1),
	combout => \datapath|indice_dado~23_combout\);

-- Location: LCCOMB_X26_Y14_N12
\datapath|indice_dado~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~24_combout\ = (\datapath|Equal4~0_combout\) # (\datapath|Mux19~4_combout\ $ (\datapath|Mux20~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|Mux19~4_combout\,
	datad => \datapath|Mux20~4_combout\,
	combout => \datapath|indice_dado~24_combout\);

-- Location: LCCOMB_X26_Y14_N30
\datapath|indice_dado~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~25_combout\ = (\datapath|indice_dado[0]~11_combout\ & (((\datapath|indice_dado[0]~37_combout\ & \datapath|indice_dado~24_combout\)))) # (!\datapath|indice_dado[0]~11_combout\ & (((!\datapath|indice_dado[0]~37_combout\)) # 
-- (!\datapath|Add4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add4~5_combout\,
	datab => \datapath|indice_dado[0]~11_combout\,
	datac => \datapath|indice_dado[0]~37_combout\,
	datad => \datapath|indice_dado~24_combout\,
	combout => \datapath|indice_dado~25_combout\);

-- Location: LCCOMB_X25_Y14_N0
\datapath|indice_dado~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~26_combout\ = (\datapath|indice_dado[0]~4_combout\ & (((\datapath|indice_dado~25_combout\)))) # (!\datapath|indice_dado[0]~4_combout\ & ((\datapath|indice_dado~25_combout\ & ((\datapath|indice_dado~21_combout\))) # 
-- (!\datapath|indice_dado~25_combout\ & (\datapath|indice_dado~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_dado~23_combout\,
	datab => \datapath|indice_dado~21_combout\,
	datac => \datapath|indice_dado[0]~4_combout\,
	datad => \datapath|indice_dado~25_combout\,
	combout => \datapath|indice_dado~26_combout\);

-- Location: LCCOMB_X24_Y15_N20
\datapath|indice_dado~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~27_combout\ = (\datapath|indice_dado[0]~5_combout\ & ((\datapath|indice_dado~14_combout\) # ((\datapath|indice_dado~26_combout\)))) # (!\datapath|indice_dado[0]~5_combout\ & (((\datapath|Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_dado~14_combout\,
	datab => \datapath|Add9~2_combout\,
	datac => \datapath|indice_dado~26_combout\,
	datad => \datapath|indice_dado[0]~5_combout\,
	combout => \datapath|indice_dado~27_combout\);

-- Location: LCCOMB_X24_Y15_N28
\datapath|indice_dado~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~28_combout\ = (\datapath|indice_dado[0]~17_combout\ & (\datapath|Mux13~4_combout\ $ ((!\datapath|Mux14~4_combout\)))) # (!\datapath|indice_dado[0]~17_combout\ & (((!\datapath|indice_dado~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux13~4_combout\,
	datab => \datapath|Mux14~4_combout\,
	datac => \datapath|indice_dado~27_combout\,
	datad => \datapath|indice_dado[0]~17_combout\,
	combout => \datapath|indice_dado~28_combout\);

-- Location: LCCOMB_X24_Y13_N20
\datapath|indice_dado~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~29_combout\ = (\datapath|numero_giocatori_in_campo\(0) & ((\datapath|numero_giocatori_in_campo\(1)) # ((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0))))) # (!\datapath|numero_giocatori_in_campo\(0) & 
-- (!\datapath|numero_giocatori_in_campo\(1) & ((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0),
	datad => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(0),
	combout => \datapath|indice_dado~29_combout\);

-- Location: LCCOMB_X24_Y13_N2
\datapath|indice_dado~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~30_combout\ = (\datapath|numero_giocatori_in_campo\(1) & ((\datapath|indice_dado~29_combout\ & (\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0))) # (!\datapath|indice_dado~29_combout\ & 
-- ((\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0)))))) # (!\datapath|numero_giocatori_in_campo\(1) & (((\datapath|indice_dado~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(1),
	datab => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0),
	datac => \datapath|indice_dado~29_combout\,
	datad => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(0),
	combout => \datapath|indice_dado~30_combout\);

-- Location: LCCOMB_X25_Y15_N2
\datapath|indice_dado~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~31_combout\ = (\datapath|numero_giocatori_in_campo\(0) & (((\datapath|numero_giocatori_in_campo\(1)) # (\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0))))) # (!\datapath|numero_giocatori_in_campo\(0) & 
-- (\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0) & (!\datapath|numero_giocatori_in_campo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datab => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0),
	datac => \datapath|numero_giocatori_in_campo\(1),
	datad => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0),
	combout => \datapath|indice_dado~31_combout\);

-- Location: LCCOMB_X25_Y15_N8
\datapath|indice_dado~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~32_combout\ = (\datapath|indice_dado~31_combout\ & ((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0)) # ((!\datapath|numero_giocatori_in_campo\(1))))) # (!\datapath|indice_dado~31_combout\ & 
-- (((\datapath|numero_giocatori_in_campo\(1) & \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0),
	datab => \datapath|indice_dado~31_combout\,
	datac => \datapath|numero_giocatori_in_campo\(1),
	datad => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0),
	combout => \datapath|indice_dado~32_combout\);

-- Location: LCCOMB_X26_Y14_N4
\datapath|indice_dado~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~33_combout\ = (\datapath|Equal4~0_combout\) # (\datapath|Mux20~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Mux20~4_combout\,
	combout => \datapath|indice_dado~33_combout\);

-- Location: LCCOMB_X26_Y14_N14
\datapath|indice_dado~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~34_combout\ = (\datapath|indice_dado[0]~37_combout\ & ((\datapath|indice_dado[0]~11_combout\ & (\datapath|indice_dado~33_combout\)) # (!\datapath|indice_dado[0]~11_combout\ & ((!\datapath|Mux8~4_combout\))))) # 
-- (!\datapath|indice_dado[0]~37_combout\ & (!\datapath|indice_dado[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_dado[0]~37_combout\,
	datab => \datapath|indice_dado[0]~11_combout\,
	datac => \datapath|indice_dado~33_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|indice_dado~34_combout\);

-- Location: LCCOMB_X25_Y15_N18
\datapath|indice_dado~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~35_combout\ = (\datapath|indice_dado[0]~4_combout\ & (((\datapath|indice_dado~34_combout\)))) # (!\datapath|indice_dado[0]~4_combout\ & ((\datapath|indice_dado~34_combout\ & ((\datapath|indice_dado~30_combout\))) # 
-- (!\datapath|indice_dado~34_combout\ & (\datapath|indice_dado~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_dado[0]~4_combout\,
	datab => \datapath|indice_dado~32_combout\,
	datac => \datapath|indice_dado~30_combout\,
	datad => \datapath|indice_dado~34_combout\,
	combout => \datapath|indice_dado~35_combout\);

-- Location: LCCOMB_X24_Y15_N30
\datapath|indice_dado~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~36_combout\ = (\datapath|indice_dado[0]~5_combout\ & (((\datapath|indice_dado~35_combout\) # (\datapath|indice_dado~14_combout\)))) # (!\datapath|indice_dado[0]~5_combout\ & (\datapath|Mux17~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux17~4_combout\,
	datab => \datapath|indice_dado~35_combout\,
	datac => \datapath|indice_dado~14_combout\,
	datad => \datapath|indice_dado[0]~5_combout\,
	combout => \datapath|indice_dado~36_combout\);

-- Location: LCFF_X24_Y16_N11
\controller|DADO_SCOMMESSO.SEI~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|DADO_SCOMMESSO.SEI~data_lut_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|DADO_SCOMMESSO.SEI~_emulated_regout\);

-- Location: LCCOMB_X24_Y16_N16
\controller|DADO_SCOMMESSO.SEI~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.SEI~head_lut_combout\ = (\RESET_N~regout\ & (\controller|DADO_SCOMMESSO.SEI~_emulated_regout\ $ (((\controller|DADO_SCOMMESSO.SEI~latch_combout\))))) # (!\RESET_N~regout\ & (((\controller|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|DADO_SCOMMESSO.SEI~_emulated_regout\,
	datab => \RESET_N~regout\,
	datac => \controller|LessThan4~0_combout\,
	datad => \controller|DADO_SCOMMESSO.SEI~latch_combout\,
	combout => \controller|DADO_SCOMMESSO.SEI~head_lut_combout\);

-- Location: LCCOMB_X19_Y16_N12
\datapath|numero_per_generazione_casuale_dado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_per_generazione_casuale_dado~1_combout\ = (\datapath|numero_per_generazione_casuale_dado\(1) & (!\datapath|numero_per_generazione_casuale_dado\(2) & !\datapath|numero_per_generazione_casuale_dado\(0))) # 
-- (!\datapath|numero_per_generazione_casuale_dado\(1) & (\datapath|numero_per_generazione_casuale_dado\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|numero_per_generazione_casuale_dado\(1),
	datac => \datapath|numero_per_generazione_casuale_dado\(2),
	datad => \datapath|numero_per_generazione_casuale_dado\(0),
	combout => \datapath|numero_per_generazione_casuale_dado~1_combout\);

-- Location: LCCOMB_X19_Y16_N18
\datapath|numero_per_generazione_casuale_dado~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_per_generazione_casuale_dado~2_combout\ = (\datapath|numero_per_generazione_casuale_dado\(0) & (\datapath|numero_per_generazione_casuale_dado\(1) & !\datapath|numero_per_generazione_casuale_dado\(2))) # 
-- (!\datapath|numero_per_generazione_casuale_dado\(0) & (!\datapath|numero_per_generazione_casuale_dado\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_per_generazione_casuale_dado\(0),
	datac => \datapath|numero_per_generazione_casuale_dado\(1),
	datad => \datapath|numero_per_generazione_casuale_dado\(2),
	combout => \datapath|numero_per_generazione_casuale_dado~2_combout\);

-- Location: LCFF_X24_Y16_N3
\controller|DADO_SCOMMESSO.CINQUE~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|DADO_SCOMMESSO.CINQUE~data_lut_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|DADO_SCOMMESSO.CINQUE~_emulated_regout\);

-- Location: LCCOMB_X25_Y16_N6
\controller|DADO_SCOMMESSO.CINQUE~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.CINQUE~head_lut_combout\ = (\RESET_N~regout\ & (\controller|DADO_SCOMMESSO.CINQUE~_emulated_regout\ $ (((\controller|DADO_SCOMMESSO.CINQUE~latch_combout\))))) # (!\RESET_N~regout\ & (((\controller|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|DADO_SCOMMESSO.CINQUE~_emulated_regout\,
	datab => \controller|Mux4~0_combout\,
	datac => \RESET_N~regout\,
	datad => \controller|DADO_SCOMMESSO.CINQUE~latch_combout\,
	combout => \controller|DADO_SCOMMESSO.CINQUE~head_lut_combout\);

-- Location: LCFF_X24_Y16_N25
\controller|DADO_SCOMMESSO.QUATTRO~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|DADO_SCOMMESSO.QUATTRO~data_lut_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|DADO_SCOMMESSO.QUATTRO~_emulated_regout\);

-- Location: LCCOMB_X21_Y16_N28
\controller|DADO_SCOMMESSO.QUATTRO~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.QUATTRO~head_lut_combout\ = (\RESET_N~regout\ & ((\controller|DADO_SCOMMESSO.QUATTRO~_emulated_regout\ $ (\controller|DADO_SCOMMESSO.QUATTRO~latch_combout\)))) # (!\RESET_N~regout\ & (!\controller|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Mux3~0_combout\,
	datab => \controller|DADO_SCOMMESSO.QUATTRO~_emulated_regout\,
	datac => \controller|DADO_SCOMMESSO.QUATTRO~latch_combout\,
	datad => \RESET_N~regout\,
	combout => \controller|DADO_SCOMMESSO.QUATTRO~head_lut_combout\);

-- Location: LCFF_X24_Y16_N13
\controller|DADO_SCOMMESSO.UNO~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|DADO_SCOMMESSO.UNO~data_lut_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|DADO_SCOMMESSO.UNO~_emulated_regout\);

-- Location: LCCOMB_X24_Y16_N20
\controller|DADO_SCOMMESSO.UNO~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.UNO~head_lut_combout\ = (\RESET_N~regout\ & (\controller|DADO_SCOMMESSO.UNO~_emulated_regout\ $ (((\controller|DADO_SCOMMESSO.UNO~latch_combout\))))) # (!\RESET_N~regout\ & (((!\controller|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|DADO_SCOMMESSO.UNO~_emulated_regout\,
	datab => \RESET_N~regout\,
	datac => \controller|LessThan5~0_combout\,
	datad => \controller|DADO_SCOMMESSO.UNO~latch_combout\,
	combout => \controller|DADO_SCOMMESSO.UNO~head_lut_combout\);

-- Location: LCFF_X24_Y16_N7
\controller|DADO_SCOMMESSO.TRE~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|DADO_SCOMMESSO.TRE~data_lut_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|DADO_SCOMMESSO.TRE~_emulated_regout\);

-- Location: LCCOMB_X24_Y16_N8
\controller|DADO_SCOMMESSO.TRE~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.TRE~head_lut_combout\ = (\RESET_N~regout\ & (\controller|DADO_SCOMMESSO.TRE~_emulated_regout\ $ (((\controller|DADO_SCOMMESSO.TRE~latch_combout\))))) # (!\RESET_N~regout\ & (((\controller|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|DADO_SCOMMESSO.TRE~_emulated_regout\,
	datab => \RESET_N~regout\,
	datac => \controller|Add2~2_combout\,
	datad => \controller|DADO_SCOMMESSO.TRE~latch_combout\,
	combout => \controller|DADO_SCOMMESSO.TRE~head_lut_combout\);

-- Location: LCFF_X24_Y16_N5
\controller|DADO_SCOMMESSO.DUE~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|DADO_SCOMMESSO.DUE~data_lut_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|DADO_SCOMMESSO.DUE~_emulated_regout\);

-- Location: LCCOMB_X24_Y16_N28
\controller|DADO_SCOMMESSO.DUE~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.DUE~head_lut_combout\ = (\RESET_N~regout\ & ((\controller|DADO_SCOMMESSO.DUE~_emulated_regout\ $ (\controller|DADO_SCOMMESSO.DUE~latch_combout\)))) # (!\RESET_N~regout\ & (!\controller|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Mux1~0_combout\,
	datab => \RESET_N~regout\,
	datac => \controller|DADO_SCOMMESSO.DUE~_emulated_regout\,
	datad => \controller|DADO_SCOMMESSO.DUE~latch_combout\,
	combout => \controller|DADO_SCOMMESSO.DUE~head_lut_combout\);

-- Location: LCFF_X22_Y16_N11
\controller|RICORRENZA[4]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|RICORRENZA[4]~data_lut_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|RICORRENZA[4]~_emulated_regout\);

-- Location: LCFF_X22_Y16_N3
\controller|RICORRENZA[5]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|RICORRENZA[5]~data_lut_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|RICORRENZA[5]~_emulated_regout\);

-- Location: LCFF_X22_Y16_N17
\controller|RICORRENZA[3]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|RICORRENZA[3]~data_lut_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|RICORRENZA[3]~_emulated_regout\);

-- Location: LCFF_X22_Y16_N25
\controller|RICORRENZA[2]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|RICORRENZA[2]~data_lut_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|RICORRENZA[2]~_emulated_regout\);

-- Location: LCFF_X22_Y16_N21
\controller|RICORRENZA[1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|RICORRENZA[1]~data_lut_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|RICORRENZA[1]~_emulated_regout\);

-- Location: LCCOMB_X22_Y16_N6
\controller|RICORRENZA[1]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[1]~head_lut_combout\ = (\RESET_N~regout\ & (\controller|RICORRENZA[1]~_emulated_regout\ $ (((\controller|RICORRENZA[1]~latch_combout\))))) # (!\RESET_N~regout\ & (((\controller|ricorrenza_temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|RICORRENZA[1]~_emulated_regout\,
	datab => \controller|ricorrenza_temp\(1),
	datac => \RESET_N~regout\,
	datad => \controller|RICORRENZA[1]~latch_combout\,
	combout => \controller|RICORRENZA[1]~head_lut_combout\);

-- Location: LCCOMB_X24_Y16_N10
\controller|DADO_SCOMMESSO.SEI~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.SEI~data_lut_combout\ = \controller|LessThan4~0_combout\ $ (\controller|DADO_SCOMMESSO.SEI~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|LessThan4~0_combout\,
	datad => \controller|DADO_SCOMMESSO.SEI~latch_combout\,
	combout => \controller|DADO_SCOMMESSO.SEI~data_lut_combout\);

-- Location: LCCOMB_X25_Y16_N22
\controller|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|LessThan4~0_combout\ = (\controller|dado_temp\(1) & \controller|dado_temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|dado_temp\(1),
	datad => \controller|dado_temp\(2),
	combout => \controller|LessThan4~0_combout\);

-- Location: LCCOMB_X24_Y16_N2
\controller|DADO_SCOMMESSO.CINQUE~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.CINQUE~data_lut_combout\ = \controller|DADO_SCOMMESSO.CINQUE~latch_combout\ $ (\controller|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|DADO_SCOMMESSO.CINQUE~latch_combout\,
	datac => \controller|Mux4~0_combout\,
	combout => \controller|DADO_SCOMMESSO.CINQUE~data_lut_combout\);

-- Location: LCCOMB_X25_Y16_N0
\controller|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux4~0_combout\ = (\controller|dado_temp\(2) & !\controller|dado_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|dado_temp\(2),
	datad => \controller|dado_temp\(0),
	combout => \controller|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y16_N24
\controller|DADO_SCOMMESSO.QUATTRO~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.QUATTRO~data_lut_combout\ = \controller|Mux3~0_combout\ $ (!\controller|DADO_SCOMMESSO.QUATTRO~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Mux3~0_combout\,
	datac => \controller|DADO_SCOMMESSO.QUATTRO~latch_combout\,
	combout => \controller|DADO_SCOMMESSO.QUATTRO~data_lut_combout\);

-- Location: LCCOMB_X24_Y16_N12
\controller|DADO_SCOMMESSO.UNO~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.UNO~data_lut_combout\ = \controller|LessThan5~0_combout\ $ (!\controller|DADO_SCOMMESSO.UNO~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|LessThan5~0_combout\,
	datad => \controller|DADO_SCOMMESSO.UNO~latch_combout\,
	combout => \controller|DADO_SCOMMESSO.UNO~data_lut_combout\);

-- Location: LCCOMB_X24_Y16_N6
\controller|DADO_SCOMMESSO.TRE~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.TRE~data_lut_combout\ = \controller|Add2~2_combout\ $ (\controller|DADO_SCOMMESSO.TRE~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Add2~2_combout\,
	datad => \controller|DADO_SCOMMESSO.TRE~latch_combout\,
	combout => \controller|DADO_SCOMMESSO.TRE~data_lut_combout\);

-- Location: LCCOMB_X24_Y16_N4
\controller|DADO_SCOMMESSO.DUE~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.DUE~data_lut_combout\ = \controller|Mux1~0_combout\ $ (!\controller|DADO_SCOMMESSO.DUE~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Mux1~0_combout\,
	datad => \controller|DADO_SCOMMESSO.DUE~latch_combout\,
	combout => \controller|DADO_SCOMMESSO.DUE~data_lut_combout\);

-- Location: LCCOMB_X25_Y16_N26
\controller|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux1~0_combout\ = (\controller|dado_temp\(2)) # (!\controller|dado_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|dado_temp\(2),
	datad => \controller|dado_temp\(0),
	combout => \controller|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y16_N10
\controller|RICORRENZA[4]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[4]~data_lut_combout\ = \controller|ricorrenza_temp\(4) $ (\controller|RICORRENZA[4]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|ricorrenza_temp\(4),
	datad => \controller|RICORRENZA[4]~latch_combout\,
	combout => \controller|RICORRENZA[4]~data_lut_combout\);

-- Location: LCCOMB_X22_Y16_N2
\controller|RICORRENZA[5]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[5]~data_lut_combout\ = \controller|ricorrenza_temp\(5) $ (\controller|RICORRENZA[5]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|ricorrenza_temp\(5),
	datad => \controller|RICORRENZA[5]~latch_combout\,
	combout => \controller|RICORRENZA[5]~data_lut_combout\);

-- Location: LCCOMB_X22_Y16_N16
\controller|RICORRENZA[3]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[3]~data_lut_combout\ = \controller|ricorrenza_temp\(3) $ (\controller|RICORRENZA[3]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|ricorrenza_temp\(3),
	datad => \controller|RICORRENZA[3]~latch_combout\,
	combout => \controller|RICORRENZA[3]~data_lut_combout\);

-- Location: LCCOMB_X22_Y16_N24
\controller|RICORRENZA[2]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[2]~data_lut_combout\ = \controller|ricorrenza_temp\(2) $ (\controller|RICORRENZA[2]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|ricorrenza_temp\(2),
	datad => \controller|RICORRENZA[2]~latch_combout\,
	combout => \controller|RICORRENZA[2]~data_lut_combout\);

-- Location: LCCOMB_X22_Y16_N20
\controller|RICORRENZA[1]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[1]~data_lut_combout\ = \controller|ricorrenza_temp\(1) $ (\controller|RICORRENZA[1]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|ricorrenza_temp\(1),
	datad => \controller|RICORRENZA[1]~latch_combout\,
	combout => \controller|RICORRENZA[1]~data_lut_combout\);

-- Location: LCCOMB_X26_Y15_N2
\datapath|indice_giocatore[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~27_combout\ = (\controller|Update_State_Controller:check_old~regout\ & (((\datapath|Equal5~0_combout\)))) # (!\controller|Update_State_Controller:check_old~regout\ & 
-- (!\datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\ & ((\controller|Update_State_Controller:elimina_giocatore_old~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\,
	datab => \datapath|Equal5~0_combout\,
	datac => \controller|Update_State_Controller:check_old~regout\,
	datad => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	combout => \datapath|indice_giocatore[1]~27_combout\);

-- Location: LCCOMB_X20_Y16_N22
\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~3_combout\ = (\datapath|elimina_dado~regout\ & (\datapath|dadi_in_mano~280_combout\ & (\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~regout\))) # (!\datapath|elimina_dado~regout\ & 
-- (((\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~regout\) # (\datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|dadi_in_mano~280_combout\,
	datab => \datapath|elimina_dado~regout\,
	datac => \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~regout\,
	datad => \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~2_combout\,
	combout => \datapath|giocatori_in_campo[0].dadi_in_mano[0].NONE~3_combout\);

-- Location: LCCOMB_X20_Y16_N0
\datapath|giocatori_in_campo~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~52_combout\ = (\datapath|giocatori_in_campo~46_combout\ & ((\datapath|dadi_in_mano~280_combout\) # (!\datapath|elimina_dado~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|elimina_dado~regout\,
	datac => \datapath|dadi_in_mano~280_combout\,
	datad => \datapath|giocatori_in_campo~46_combout\,
	combout => \datapath|giocatori_in_campo~52_combout\);

-- Location: LCCOMB_X20_Y16_N26
\datapath|giocatori_in_campo~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~53_combout\ = (\datapath|giocatori_in_campo~48_combout\ & ((\datapath|dadi_in_mano~280_combout\) # (!\datapath|elimina_dado~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo~48_combout\,
	datab => \datapath|elimina_dado~regout\,
	datac => \datapath|dadi_in_mano~280_combout\,
	combout => \datapath|giocatori_in_campo~53_combout\);

-- Location: LCCOMB_X26_Y14_N16
\datapath|indice_dado[0]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado[0]~37_combout\ = (\controller|Update_State_Controller:check_old~regout\) # ((\controller|Update_State_Controller:elimina_giocatore_old~regout\ & (!\datapath|reset_altri_giocatori~1_combout\ & 
-- !\datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datab => \controller|Update_State_Controller:check_old~regout\,
	datac => \datapath|reset_altri_giocatori~1_combout\,
	datad => \datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\,
	combout => \datapath|indice_dado[0]~37_combout\);

-- Location: LCCOMB_X26_Y13_N2
\datapath|Add4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add4~5_combout\ = \datapath|Mux7~4_combout\ $ (((\datapath|indice_giocatore\(2) & (\datapath|Mux8~1_combout\)) # (!\datapath|indice_giocatore\(2) & ((\datapath|Mux8~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(2),
	datab => \datapath|Mux7~4_combout\,
	datac => \datapath|Mux8~1_combout\,
	datad => \datapath|Mux8~3_combout\,
	combout => \datapath|Add4~5_combout\);

-- Location: LCCOMB_X24_Y15_N10
\datapath|indice_dado~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado~38_combout\ = (\datapath|Equal4~0_combout\ & (((!\datapath|indice_dado~36_combout\)))) # (!\datapath|Equal4~0_combout\ & ((\datapath|indice_dado[0]~16_combout\ & (!\datapath|Mux14~4_combout\)) # (!\datapath|indice_dado[0]~16_combout\ 
-- & ((!\datapath|indice_dado~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \datapath|indice_dado[0]~16_combout\,
	datac => \datapath|Mux14~4_combout\,
	datad => \datapath|indice_dado~36_combout\,
	combout => \datapath|indice_dado~38_combout\);

-- Location: LCCOMB_X21_Y16_N26
\datapath|scommessa_corrente.dado_scommesso.NONE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente.dado_scommesso.NONE~0_combout\ = !\controller|ESEGUI_SCOMMESSA_FPGA~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	combout => \datapath|scommessa_corrente.dado_scommesso.NONE~0_combout\);

-- Location: LCCOMB_X19_Y16_N6
\datapath|numero_per_generazione_casuale_dado[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_per_generazione_casuale_dado[0]~3_combout\ = !\datapath|numero_per_generazione_casuale_dado\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|numero_per_generazione_casuale_dado\(0),
	combout => \datapath|numero_per_generazione_casuale_dado[0]~3_combout\);

-- Location: LCCOMB_X25_Y16_N20
\controller|DADO_SCOMMESSO.SEI~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.SEI~latch_combout\ = (GLOBAL(\RESET_N~clkctrl_outclk\) & (\controller|DADO_SCOMMESSO.SEI~latch_combout\)) # (!GLOBAL(\RESET_N~clkctrl_outclk\) & ((\controller|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|DADO_SCOMMESSO.SEI~latch_combout\,
	datac => \RESET_N~clkctrl_outclk\,
	datad => \controller|LessThan4~0_combout\,
	combout => \controller|DADO_SCOMMESSO.SEI~latch_combout\);

-- Location: LCCOMB_X25_Y16_N10
\controller|DADO_SCOMMESSO.CINQUE~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.CINQUE~latch_combout\ = (GLOBAL(\RESET_N~clkctrl_outclk\) & (\controller|DADO_SCOMMESSO.CINQUE~latch_combout\)) # (!GLOBAL(\RESET_N~clkctrl_outclk\) & ((\controller|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|DADO_SCOMMESSO.CINQUE~latch_combout\,
	datac => \RESET_N~clkctrl_outclk\,
	datad => \controller|Mux4~0_combout\,
	combout => \controller|DADO_SCOMMESSO.CINQUE~latch_combout\);

-- Location: LCCOMB_X25_Y16_N8
\controller|DADO_SCOMMESSO.QUATTRO~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.QUATTRO~latch_combout\ = (GLOBAL(\RESET_N~clkctrl_outclk\) & (\controller|DADO_SCOMMESSO.QUATTRO~latch_combout\)) # (!GLOBAL(\RESET_N~clkctrl_outclk\) & ((!\controller|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|DADO_SCOMMESSO.QUATTRO~latch_combout\,
	datac => \controller|Mux3~0_combout\,
	datad => \RESET_N~clkctrl_outclk\,
	combout => \controller|DADO_SCOMMESSO.QUATTRO~latch_combout\);

-- Location: LCCOMB_X25_Y16_N30
\controller|DADO_SCOMMESSO.UNO~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.UNO~latch_combout\ = (GLOBAL(\RESET_N~clkctrl_outclk\) & (\controller|DADO_SCOMMESSO.UNO~latch_combout\)) # (!GLOBAL(\RESET_N~clkctrl_outclk\) & ((!\controller|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|DADO_SCOMMESSO.UNO~latch_combout\,
	datac => \controller|LessThan5~0_combout\,
	datad => \RESET_N~clkctrl_outclk\,
	combout => \controller|DADO_SCOMMESSO.UNO~latch_combout\);

-- Location: LCCOMB_X25_Y16_N24
\controller|DADO_SCOMMESSO.TRE~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.TRE~latch_combout\ = (GLOBAL(\RESET_N~clkctrl_outclk\) & (\controller|DADO_SCOMMESSO.TRE~latch_combout\)) # (!GLOBAL(\RESET_N~clkctrl_outclk\) & ((\controller|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|DADO_SCOMMESSO.TRE~latch_combout\,
	datac => \RESET_N~clkctrl_outclk\,
	datad => \controller|Add2~2_combout\,
	combout => \controller|DADO_SCOMMESSO.TRE~latch_combout\);

-- Location: LCCOMB_X25_Y16_N2
\controller|DADO_SCOMMESSO.DUE~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DADO_SCOMMESSO.DUE~latch_combout\ = (GLOBAL(\RESET_N~clkctrl_outclk\) & (\controller|DADO_SCOMMESSO.DUE~latch_combout\)) # (!GLOBAL(\RESET_N~clkctrl_outclk\) & ((!\controller|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|DADO_SCOMMESSO.DUE~latch_combout\,
	datac => \RESET_N~clkctrl_outclk\,
	datad => \controller|Mux1~0_combout\,
	combout => \controller|DADO_SCOMMESSO.DUE~latch_combout\);

-- Location: LCCOMB_X23_Y16_N28
\controller|RICORRENZA[1]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[1]~latch_combout\ = (GLOBAL(\RESET_N~clkctrl_outclk\) & (\controller|RICORRENZA[1]~latch_combout\)) # (!GLOBAL(\RESET_N~clkctrl_outclk\) & ((\controller|ricorrenza_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|RICORRENZA[1]~latch_combout\,
	datac => \RESET_N~clkctrl_outclk\,
	datad => \controller|ricorrenza_temp\(1),
	combout => \controller|RICORRENZA[1]~latch_combout\);

-- Location: LCCOMB_X18_Y16_N30
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

-- Location: LCCOMB_X23_Y13_N14
\datapath|numero_giocatori_in_campo[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[0]~10_combout\ = !\datapath|numero_giocatori_in_campo\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|numero_giocatori_in_campo[0]~10_combout\);

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

-- Location: LCCOMB_X24_Y16_N14
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

-- Location: LCFF_X24_Y16_N15
reset_sync_reg : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \reset_sync_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_sync_reg~regout\);

-- Location: LCFF_X24_Y16_N1
RESET_N : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \reset_sync_reg~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RESET_N~regout\);

-- Location: CLKCTRL_G8
\RESET_N~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET_N~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET_N~clkctrl_outclk\);

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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X27_Y16_N14
\controller|Update_State_Controller:doubt_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller:doubt_old~0_combout\ = !\KEY~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~combout\(0),
	combout => \controller|Update_State_Controller:doubt_old~0_combout\);

-- Location: LCFF_X27_Y16_N15
\controller|Update_State_Controller:doubt_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|Update_State_Controller:doubt_old~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:doubt_old~regout\);

-- Location: LCCOMB_X27_Y16_N4
\controller|check_old~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|check_old~2_combout\ = (\controller|internal_state.INIT~regout\ & (!\controller|Update_State_Controller:doubt_old~regout\ & !\KEY~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|internal_state.INIT~regout\,
	datac => \controller|Update_State_Controller:doubt_old~regout\,
	datad => \KEY~combout\(0),
	combout => \controller|check_old~2_combout\);

-- Location: LCCOMB_X22_Y13_N26
\datapath|GestoreGiocatoriInCampo_RTL~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|GestoreGiocatoriInCampo_RTL~7_combout\ = (!\datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\ & \controller|Update_State_Controller:elimina_giocatore_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\,
	datad => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	combout => \datapath|GestoreGiocatoriInCampo_RTL~7_combout\);

-- Location: LCCOMB_X26_Y15_N4
\datapath|GIOCATORE_AGGIUNTO~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|GIOCATORE_AGGIUNTO~1_combout\ = (\datapath|Equal4~0_combout\ & (\datapath|Mux6~4_combout\ & \datapath|GIOCATORE_AGGIUNTO~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \datapath|Mux6~4_combout\,
	datac => \datapath|GIOCATORE_AGGIUNTO~0_combout\,
	combout => \datapath|GIOCATORE_AGGIUNTO~1_combout\);

-- Location: LCFF_X26_Y15_N5
\datapath|GIOCATORE_AGGIUNTO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|GIOCATORE_AGGIUNTO~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GIOCATORE_AGGIUNTO~regout\);

-- Location: LCCOMB_X27_Y15_N22
\controller|nuovo_giocatore_old~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|nuovo_giocatore_old~1_combout\ = (\controller|nuovo_giocatore_old~0_combout\ & !\datapath|GIOCATORE_AGGIUNTO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nuovo_giocatore_old~0_combout\,
	datac => \datapath|GIOCATORE_AGGIUNTO~regout\,
	combout => \controller|nuovo_giocatore_old~1_combout\);

-- Location: LCFF_X27_Y15_N23
\controller|Update_State_Controller:nuovo_giocatore_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|nuovo_giocatore_old~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:nuovo_giocatore_old~regout\);

-- Location: LCCOMB_X23_Y13_N20
\datapath|reset_altri_giocatori~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reset_altri_giocatori~0_combout\ = (\datapath|Equal4~0_combout\ & (!\datapath|Mux8~4_combout\ & (!\datapath|Mux7~4_combout\ & !\datapath|Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \datapath|Mux8~4_combout\,
	datac => \datapath|Mux7~4_combout\,
	datad => \datapath|Mux6~4_combout\,
	combout => \datapath|reset_altri_giocatori~0_combout\);

-- Location: LCCOMB_X23_Y13_N16
\datapath|numero_giocatori_in_campo~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo~9_combout\ = \datapath|numero_giocatori_in_campo\(0) $ (\datapath|numero_giocatori_in_campo\(1) $ (((\datapath|indice_dado[0]~4_combout\ & \datapath|reset_altri_giocatori~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_dado[0]~4_combout\,
	datab => \datapath|numero_giocatori_in_campo\(0),
	datac => \datapath|numero_giocatori_in_campo\(1),
	datad => \datapath|reset_altri_giocatori~0_combout\,
	combout => \datapath|numero_giocatori_in_campo~9_combout\);

-- Location: LCFF_X23_Y13_N17
\datapath|numero_giocatori_in_campo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo~9_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|numero_giocatori_in_campo[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(1));

-- Location: LCFF_X23_Y13_N29
\datapath|reset_altri_giocatori\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|reset_altri_giocatori~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sclr => \controller|ALT_INV_Update_State_Controller:check_old~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|reset_altri_giocatori~regout\);

-- Location: LCCOMB_X24_Y13_N16
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\ = (\datapath|numero_giocatori_in_campo\(3)) # (((\datapath|numero_giocatori_in_campo\(1) & \datapath|numero_giocatori_in_campo\(2))) # (!\datapath|reset_altri_giocatori~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(3),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|numero_giocatori_in_campo\(2),
	datad => \datapath|reset_altri_giocatori~regout\,
	combout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\);

-- Location: LCCOMB_X22_Y15_N16
\datapath|indice_turno_giocatore~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_turno_giocatore~5_combout\ = (!\datapath|Equal12~2_combout\ & !\datapath|indice_turno_giocatore\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal12~2_combout\,
	datac => \datapath|indice_turno_giocatore\(0),
	combout => \datapath|indice_turno_giocatore~5_combout\);

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

-- Location: LCCOMB_X24_Y16_N30
\controller|Update_State_Controller:prev_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller:prev_old~0_combout\ = !\KEY~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~combout\(3),
	combout => \controller|Update_State_Controller:prev_old~0_combout\);

-- Location: LCFF_X24_Y16_N31
\controller|Update_State_Controller:prev_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|Update_State_Controller:prev_old~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:prev_old~regout\);

-- Location: LCCOMB_X24_Y16_N0
\controller|Update_State_Controller~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~0_combout\ = (!\controller|Update_State_Controller:prev_old~regout\ & !\KEY~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Update_State_Controller:prev_old~regout\,
	datad => \KEY~combout\(3),
	combout => \controller|Update_State_Controller~0_combout\);

-- Location: LCCOMB_X25_Y16_N18
\controller|dado_temp[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|dado_temp[0]~5_combout\ = \controller|dado_temp\(0) $ (((\controller|internal_state.TURN_PLAYER~regout\ & (\controller|turn_player_state~regout\ & !\controller|dado_temp[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|internal_state.TURN_PLAYER~regout\,
	datab => \controller|turn_player_state~regout\,
	datac => \controller|dado_temp\(0),
	datad => \controller|dado_temp[2]~6_combout\,
	combout => \controller|dado_temp[0]~5_combout\);

-- Location: LCFF_X25_Y16_N19
\controller|dado_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|dado_temp[0]~5_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|dado_temp\(0));

-- Location: LCCOMB_X26_Y16_N30
\controller|dado_temp[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|dado_temp[2]~2_combout\ = (\controller|internal_state.TURN_PLAYER~regout\ & (\controller|turn_player_state~regout\ & !\controller|dado_temp[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|internal_state.TURN_PLAYER~regout\,
	datab => \controller|turn_player_state~regout\,
	datad => \controller|dado_temp[2]~6_combout\,
	combout => \controller|dado_temp[2]~2_combout\);

-- Location: LCCOMB_X25_Y16_N14
\controller|dado_temp[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|dado_temp[1]~4_combout\ = \controller|dado_temp\(1) $ (((\controller|dado_temp[2]~2_combout\ & (\controller|Update_State_Controller~9_combout\ $ (\controller|dado_temp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~9_combout\,
	datab => \controller|dado_temp\(0),
	datac => \controller|dado_temp\(1),
	datad => \controller|dado_temp[2]~2_combout\,
	combout => \controller|dado_temp[1]~4_combout\);

-- Location: LCFF_X25_Y16_N15
\controller|dado_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|dado_temp[1]~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|dado_temp\(1));

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

-- Location: LCCOMB_X22_Y16_N26
\controller|Update_State_Controller:next_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller:next_old~0_combout\ = !\KEY~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(2),
	combout => \controller|Update_State_Controller:next_old~0_combout\);

-- Location: LCFF_X22_Y16_N27
\controller|Update_State_Controller:next_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|Update_State_Controller:next_old~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:next_old~regout\);

-- Location: LCCOMB_X24_Y16_N26
\controller|Update_State_Controller~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~9_combout\ = (!\KEY~combout\(2) & (!\controller|Update_State_Controller:next_old~regout\ & ((!\controller|dado_temp\(1)) # (!\controller|dado_temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \controller|dado_temp\(2),
	datac => \controller|dado_temp\(1),
	datad => \controller|Update_State_Controller:next_old~regout\,
	combout => \controller|Update_State_Controller~9_combout\);

-- Location: LCCOMB_X25_Y16_N12
\controller|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add2~2_combout\ = (\controller|dado_temp\(1) & !\controller|dado_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|dado_temp\(1),
	datad => \controller|dado_temp\(0),
	combout => \controller|Add2~2_combout\);

-- Location: LCCOMB_X24_Y16_N18
\controller|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add2~1_combout\ = \controller|dado_temp\(2) $ (((\controller|Update_State_Controller~9_combout\ & ((!\controller|Add2~2_combout\))) # (!\controller|Update_State_Controller~9_combout\ & ((\controller|Mux3~0_combout\) # 
-- (\controller|Add2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Mux3~0_combout\,
	datab => \controller|Update_State_Controller~9_combout\,
	datac => \controller|Add2~2_combout\,
	datad => \controller|dado_temp\(2),
	combout => \controller|Add2~1_combout\);

-- Location: LCCOMB_X25_Y16_N28
\controller|dado_temp[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|dado_temp[2]~3_combout\ = (\controller|dado_temp[2]~2_combout\ & (!\controller|Add2~1_combout\)) # (!\controller|dado_temp[2]~2_combout\ & ((\controller|dado_temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Add2~1_combout\,
	datac => \controller|dado_temp\(2),
	datad => \controller|dado_temp[2]~2_combout\,
	combout => \controller|dado_temp[2]~3_combout\);

-- Location: LCFF_X25_Y16_N29
\controller|dado_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|dado_temp[2]~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|dado_temp\(2));

-- Location: LCCOMB_X25_Y16_N4
\controller|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|LessThan5~0_combout\ = (\controller|dado_temp\(1)) # (\controller|dado_temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|dado_temp\(1),
	datad => \controller|dado_temp\(2),
	combout => \controller|LessThan5~0_combout\);

-- Location: LCCOMB_X24_Y16_N22
\controller|dado_temp[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|dado_temp[2]~6_combout\ = (!\controller|Update_State_Controller~9_combout\ & ((\KEY~combout\(3)) # ((\controller|Update_State_Controller:prev_old~regout\) # (!\controller|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(3),
	datab => \controller|Update_State_Controller:prev_old~regout\,
	datac => \controller|LessThan5~0_combout\,
	datad => \controller|Update_State_Controller~9_combout\,
	combout => \controller|dado_temp[2]~6_combout\);

-- Location: LCCOMB_X27_Y16_N2
\controller|turn_player_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|turn_player_state~3_combout\ = ((\controller|internal_state.TURN_PLAYER~regout\ & (!\controller|dado_temp[2]~6_combout\)) # (!\controller|internal_state.TURN_PLAYER~regout\ & ((\controller|Update_State_Controller:check_old~regout\)))) # 
-- (!\controller|internal_state.INIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|internal_state.INIT~regout\,
	datab => \controller|internal_state.TURN_PLAYER~regout\,
	datac => \controller|dado_temp[2]~6_combout\,
	datad => \controller|Update_State_Controller:check_old~regout\,
	combout => \controller|turn_player_state~3_combout\);

-- Location: LCCOMB_X23_Y16_N16
\controller|ricorrenza_temp[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[0]~6_combout\ = \controller|ricorrenza_temp\(0) $ (VCC)
-- \controller|ricorrenza_temp[0]~7\ = CARRY(\controller|ricorrenza_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ricorrenza_temp\(0),
	datad => VCC,
	combout => \controller|ricorrenza_temp[0]~6_combout\,
	cout => \controller|ricorrenza_temp[0]~7\);

-- Location: LCCOMB_X23_Y16_N20
\controller|ricorrenza_temp[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[2]~10_combout\ = ((\controller|Update_State_Controller~8_combout\ $ (\controller|ricorrenza_temp\(2) $ (\controller|ricorrenza_temp[1]~9\)))) # (GND)
-- \controller|ricorrenza_temp[2]~11\ = CARRY((\controller|Update_State_Controller~8_combout\ & (\controller|ricorrenza_temp\(2) & !\controller|ricorrenza_temp[1]~9\)) # (!\controller|Update_State_Controller~8_combout\ & ((\controller|ricorrenza_temp\(2)) # 
-- (!\controller|ricorrenza_temp[1]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~8_combout\,
	datab => \controller|ricorrenza_temp\(2),
	datad => VCC,
	cin => \controller|ricorrenza_temp[1]~9\,
	combout => \controller|ricorrenza_temp[2]~10_combout\,
	cout => \controller|ricorrenza_temp[2]~11\);

-- Location: LCCOMB_X27_Y16_N30
\controller|ricorrenza_temp[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[5]~14_combout\ = (\controller|internal_state.TURN_PLAYER~regout\ & (!\controller|turn_player_state~regout\ & ((\controller|Update_State_Controller~8_combout\) # (!\controller|Update_State_Controller~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~7_combout\,
	datab => \controller|internal_state.TURN_PLAYER~regout\,
	datac => \controller|Update_State_Controller~8_combout\,
	datad => \controller|turn_player_state~regout\,
	combout => \controller|ricorrenza_temp[5]~14_combout\);

-- Location: LCFF_X23_Y16_N21
\controller|ricorrenza_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|ricorrenza_temp[2]~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|ricorrenza_temp[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ricorrenza_temp\(2));

-- Location: LCCOMB_X23_Y16_N22
\controller|ricorrenza_temp[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[3]~12_combout\ = (\controller|Update_State_Controller~8_combout\ & ((\controller|ricorrenza_temp\(3) & (!\controller|ricorrenza_temp[2]~11\)) # (!\controller|ricorrenza_temp\(3) & ((\controller|ricorrenza_temp[2]~11\) # 
-- (GND))))) # (!\controller|Update_State_Controller~8_combout\ & ((\controller|ricorrenza_temp\(3) & (\controller|ricorrenza_temp[2]~11\ & VCC)) # (!\controller|ricorrenza_temp\(3) & (!\controller|ricorrenza_temp[2]~11\))))
-- \controller|ricorrenza_temp[3]~13\ = CARRY((\controller|Update_State_Controller~8_combout\ & ((!\controller|ricorrenza_temp[2]~11\) # (!\controller|ricorrenza_temp\(3)))) # (!\controller|Update_State_Controller~8_combout\ & 
-- (!\controller|ricorrenza_temp\(3) & !\controller|ricorrenza_temp[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~8_combout\,
	datab => \controller|ricorrenza_temp\(3),
	datad => VCC,
	cin => \controller|ricorrenza_temp[2]~11\,
	combout => \controller|ricorrenza_temp[3]~12_combout\,
	cout => \controller|ricorrenza_temp[3]~13\);

-- Location: LCFF_X23_Y16_N23
\controller|ricorrenza_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|ricorrenza_temp[3]~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|ricorrenza_temp[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ricorrenza_temp\(3));

-- Location: LCCOMB_X23_Y16_N24
\controller|ricorrenza_temp[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[4]~15_combout\ = ((\controller|ricorrenza_temp\(4) $ (\controller|Update_State_Controller~8_combout\ $ (\controller|ricorrenza_temp[3]~13\)))) # (GND)
-- \controller|ricorrenza_temp[4]~16\ = CARRY((\controller|ricorrenza_temp\(4) & ((!\controller|ricorrenza_temp[3]~13\) # (!\controller|Update_State_Controller~8_combout\))) # (!\controller|ricorrenza_temp\(4) & 
-- (!\controller|Update_State_Controller~8_combout\ & !\controller|ricorrenza_temp[3]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ricorrenza_temp\(4),
	datab => \controller|Update_State_Controller~8_combout\,
	datad => VCC,
	cin => \controller|ricorrenza_temp[3]~13\,
	combout => \controller|ricorrenza_temp[4]~15_combout\,
	cout => \controller|ricorrenza_temp[4]~16\);

-- Location: LCCOMB_X23_Y16_N26
\controller|ricorrenza_temp[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ricorrenza_temp[5]~17_combout\ = \controller|ricorrenza_temp\(5) $ (\controller|ricorrenza_temp[4]~16\ $ (!\controller|Update_State_Controller~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ricorrenza_temp\(5),
	datad => \controller|Update_State_Controller~8_combout\,
	cin => \controller|ricorrenza_temp[4]~16\,
	combout => \controller|ricorrenza_temp[5]~17_combout\);

-- Location: LCFF_X23_Y16_N27
\controller|ricorrenza_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|ricorrenza_temp[5]~17_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|ricorrenza_temp[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ricorrenza_temp\(5));

-- Location: LCCOMB_X22_Y16_N12
\controller|Update_State_Controller~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~3_combout\ = (!\controller|Update_State_Controller:next_old~regout\ & !\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Update_State_Controller:next_old~regout\,
	datac => \KEY~combout\(2),
	combout => \controller|Update_State_Controller~3_combout\);

-- Location: LCCOMB_X23_Y16_N2
\controller|Update_State_Controller~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~8_combout\ = (\controller|Update_State_Controller~3_combout\ & (((!\controller|ricorrenza_temp\(4) & !\controller|ricorrenza_temp\(3))) # (!\controller|ricorrenza_temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ricorrenza_temp\(4),
	datab => \controller|ricorrenza_temp\(3),
	datac => \controller|ricorrenza_temp\(5),
	datad => \controller|Update_State_Controller~3_combout\,
	combout => \controller|Update_State_Controller~8_combout\);

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

-- Location: LCCOMB_X26_Y16_N14
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

-- Location: LCCOMB_X27_Y15_N0
\controller|Update_State_Controller~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~4_combout\ = (\controller|Update_State_Controller~2_combout\ & (((\controller|numero_giocatori\(3)) # (\controller|Update_State_Controller:nuovo_giocatore_old~regout\)) # 
-- (!\controller|Update_State_Controller~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~2_combout\,
	datab => \controller|Update_State_Controller~3_combout\,
	datac => \controller|numero_giocatori\(3),
	datad => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	combout => \controller|Update_State_Controller~4_combout\);

-- Location: LCCOMB_X27_Y16_N26
\controller|Update_State_Controller~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~6_combout\ = (\controller|Update_State_Controller:enter_old~regout\) # (\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:enter_old~regout\,
	datac => \KEY~combout\(1),
	combout => \controller|Update_State_Controller~6_combout\);

-- Location: LCCOMB_X27_Y15_N24
\controller|INIZIA_PARTITA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|INIZIA_PARTITA~0_combout\ = (\controller|Update_State_Controller~4_combout\ & (!\controller|Update_State_Controller~6_combout\ & ((\controller|Update_State_Controller:elimina_giocatore_old~regout\) # 
-- (!\controller|Update_State_Controller~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datab => \controller|Update_State_Controller~1_combout\,
	datac => \controller|Update_State_Controller~4_combout\,
	datad => \controller|Update_State_Controller~6_combout\,
	combout => \controller|INIZIA_PARTITA~0_combout\);

-- Location: LCFF_X26_Y16_N23
\controller|INIZIA_PARTITA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \controller|INIZIA_PARTITA~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|INIZIA_PARTITA~regout\);

-- Location: LCCOMB_X26_Y16_N22
\datapath|indice_turno_giocatore[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_turno_giocatore[0]~2_combout\ = (\datapath|PARTITA_INIZIATA~regout\) # (\controller|INIZIA_PARTITA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|PARTITA_INIZIATA~regout\,
	datac => \controller|INIZIA_PARTITA~regout\,
	combout => \datapath|indice_turno_giocatore[0]~2_combout\);

-- Location: LCCOMB_X26_Y16_N16
\datapath|PARTITA_INIZIATA~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|PARTITA_INIZIATA~feeder_combout\ = \datapath|indice_turno_giocatore[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|indice_turno_giocatore[0]~2_combout\,
	combout => \datapath|PARTITA_INIZIATA~feeder_combout\);

-- Location: LCFF_X26_Y16_N17
\datapath|PARTITA_INIZIATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|PARTITA_INIZIATA~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|PARTITA_INIZIATA~regout\);

-- Location: LCFF_X26_Y16_N15
\controller|internal_state.INIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|internal_state.INIT~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|PARTITA_INIZIATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|internal_state.INIT~regout\);

-- Location: LCCOMB_X27_Y16_N24
\controller|turn_player_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|turn_player_state~0_combout\ = (!\controller|Update_State_Controller:enter_old~regout\ & (\controller|internal_state.TURN_PLAYER~regout\ & (!\KEY~combout\(1) & \controller|internal_state.INIT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:enter_old~regout\,
	datab => \controller|internal_state.TURN_PLAYER~regout\,
	datac => \KEY~combout\(1),
	datad => \controller|internal_state.INIT~regout\,
	combout => \controller|turn_player_state~0_combout\);

-- Location: LCCOMB_X27_Y16_N22
\controller|turn_player_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|turn_player_state~1_combout\ = (\controller|Update_State_Controller~7_combout\ & (!\controller|Update_State_Controller~8_combout\ & (\controller|turn_player_state~0_combout\ & !\controller|turn_player_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~7_combout\,
	datab => \controller|Update_State_Controller~8_combout\,
	datac => \controller|turn_player_state~0_combout\,
	datad => \controller|turn_player_state~regout\,
	combout => \controller|turn_player_state~1_combout\);

-- Location: LCCOMB_X27_Y16_N0
\controller|turn_player_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|turn_player_state~4_combout\ = (\controller|turn_player_state~1_combout\) # ((\controller|turn_player_state~regout\ & ((\controller|turn_player_state~2_combout\) # (\controller|turn_player_state~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|turn_player_state~2_combout\,
	datab => \controller|turn_player_state~3_combout\,
	datac => \controller|turn_player_state~regout\,
	datad => \controller|turn_player_state~1_combout\,
	combout => \controller|turn_player_state~4_combout\);

-- Location: LCFF_X27_Y16_N1
\controller|turn_player_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|turn_player_state~4_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|turn_player_state~regout\);

-- Location: LCCOMB_X26_Y16_N26
\controller|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector3~2_combout\ = (!\controller|Update_State_Controller~9_combout\ & (\controller|turn_player_state~regout\ & ((!\controller|LessThan5~0_combout\) # (!\controller|Update_State_Controller~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~9_combout\,
	datab => \controller|Update_State_Controller~0_combout\,
	datac => \controller|turn_player_state~regout\,
	datad => \controller|LessThan5~0_combout\,
	combout => \controller|Selector3~2_combout\);

-- Location: LCCOMB_X26_Y16_N12
\controller|Update_State_Controller:enter_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller:enter_old~0_combout\ = !\KEY~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(1),
	combout => \controller|Update_State_Controller:enter_old~0_combout\);

-- Location: LCFF_X26_Y16_N13
\controller|Update_State_Controller:enter_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|Update_State_Controller:enter_old~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:enter_old~regout\);

-- Location: LCCOMB_X26_Y16_N28
\controller|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector3~3_combout\ = (\controller|internal_state.TURN_PLAYER~regout\ & (\controller|Selector3~2_combout\ & (!\KEY~combout\(1) & !\controller|Update_State_Controller:enter_old~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|internal_state.TURN_PLAYER~regout\,
	datab => \controller|Selector3~2_combout\,
	datac => \KEY~combout\(1),
	datad => \controller|Update_State_Controller:enter_old~regout\,
	combout => \controller|Selector3~3_combout\);

-- Location: LCCOMB_X26_Y16_N4
\controller|PROSSIMO_TURNO~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|PROSSIMO_TURNO~feeder_combout\ = \controller|Selector3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Selector3~3_combout\,
	combout => \controller|PROSSIMO_TURNO~feeder_combout\);

-- Location: LCFF_X26_Y16_N5
\controller|PROSSIMO_TURNO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|PROSSIMO_TURNO~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PROSSIMO_TURNO~regout\);

-- Location: LCCOMB_X24_Y15_N0
\datapath|Equal11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal11~1_combout\ = (!\datapath|numero_giocatori_in_campo\(3) & (!\datapath|numero_giocatori_in_campo\(2) & (!\datapath|numero_giocatori_in_campo\(0) & !\datapath|numero_giocatori_in_campo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(3),
	datab => \datapath|numero_giocatori_in_campo\(2),
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|numero_giocatori_in_campo\(1),
	combout => \datapath|Equal11~1_combout\);

-- Location: LCCOMB_X26_Y16_N6
\datapath|indice_turno_giocatore[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_turno_giocatore[0]~4_combout\ = (!\datapath|Equal11~1_combout\ & (((!\datapath|prossimo_turno_old~regout\ & \controller|PROSSIMO_TURNO~regout\)) # (!\datapath|indice_turno_giocatore[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|prossimo_turno_old~regout\,
	datab => \controller|PROSSIMO_TURNO~regout\,
	datac => \datapath|Equal11~1_combout\,
	datad => \datapath|indice_turno_giocatore[0]~2_combout\,
	combout => \datapath|indice_turno_giocatore[0]~4_combout\);

-- Location: LCFF_X22_Y15_N17
\datapath|indice_turno_giocatore[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_turno_giocatore~5_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|indice_turno_giocatore[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_turno_giocatore\(0));

-- Location: LCCOMB_X26_Y15_N14
\datapath|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal5~0_combout\ = (!\datapath|indice_turno_giocatore\(2) & (!\datapath|indice_turno_giocatore\(0) & !\datapath|indice_turno_giocatore\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(2),
	datab => \datapath|indice_turno_giocatore\(0),
	datac => \datapath|indice_turno_giocatore\(1),
	combout => \datapath|Equal5~0_combout\);

-- Location: LCCOMB_X20_Y14_N24
\datapath|counter_check~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~0_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~62_combout\,
	combout => \datapath|counter_check~0_combout\);

-- Location: LCFF_X20_Y14_N25
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[31]~regout\);

-- Location: LCCOMB_X20_Y14_N18
\datapath|counter_check~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~5_combout\ = (\datapath|Add8~52_combout\ & !\datapath|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add8~52_combout\,
	datac => \datapath|Equal4~0_combout\,
	combout => \datapath|counter_check~5_combout\);

-- Location: LCFF_X20_Y14_N19
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~5_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[26]~regout\);

-- Location: LCCOMB_X20_Y15_N24
\datapath|counter_check~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~21_combout\ = (\datapath|Add8~20_combout\ & !\datapath|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add8~20_combout\,
	datac => \datapath|Equal4~0_combout\,
	combout => \datapath|counter_check~21_combout\);

-- Location: LCFF_X21_Y15_N27
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|counter_check~21_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[10]~regout\);

-- Location: LCCOMB_X21_Y15_N0
\datapath|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~0_combout\ = (\datapath|WideNor0~3_combout\ & (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[0]~regout\ & VCC)) # (!\datapath|WideNor0~3_combout\ & (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[0]~regout\ $ (VCC)))
-- \datapath|Add8~1\ = CARRY((!\datapath|WideNor0~3_combout\ & \datapath|GestoreGiocatoriInCampo_RTL:counter_check[0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|WideNor0~3_combout\,
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[0]~regout\,
	datad => VCC,
	combout => \datapath|Add8~0_combout\,
	cout => \datapath|Add8~1\);

-- Location: LCCOMB_X21_Y16_N8
\datapath|counter_check~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~31_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~0_combout\,
	combout => \datapath|counter_check~31_combout\);

-- Location: LCFF_X21_Y15_N1
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|counter_check~31_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[0]~regout\);

-- Location: LCCOMB_X21_Y15_N2
\datapath|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~2_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[1]~regout\ & (!\datapath|Add8~1\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[1]~regout\ & ((\datapath|Add8~1\) # (GND)))
-- \datapath|Add8~3\ = CARRY((!\datapath|Add8~1\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[1]~regout\,
	datad => VCC,
	cin => \datapath|Add8~1\,
	combout => \datapath|Add8~2_combout\,
	cout => \datapath|Add8~3\);

-- Location: LCCOMB_X20_Y15_N22
\datapath|counter_check~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~30_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~2_combout\,
	combout => \datapath|counter_check~30_combout\);

-- Location: LCFF_X21_Y15_N15
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|counter_check~30_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[1]~regout\);

-- Location: LCCOMB_X21_Y15_N4
\datapath|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~4_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[2]~regout\ & (\datapath|Add8~3\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[2]~regout\ & (!\datapath|Add8~3\ & VCC))
-- \datapath|Add8~5\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[2]~regout\ & !\datapath|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[2]~regout\,
	datad => VCC,
	cin => \datapath|Add8~3\,
	combout => \datapath|Add8~4_combout\,
	cout => \datapath|Add8~5\);

-- Location: LCCOMB_X20_Y15_N0
\datapath|counter_check~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~29_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~4_combout\,
	combout => \datapath|counter_check~29_combout\);

-- Location: LCFF_X21_Y15_N3
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|counter_check~29_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[2]~regout\);

-- Location: LCCOMB_X21_Y15_N6
\datapath|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~6_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[3]~regout\ & (!\datapath|Add8~5\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[3]~regout\ & ((\datapath|Add8~5\) # (GND)))
-- \datapath|Add8~7\ = CARRY((!\datapath|Add8~5\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[3]~regout\,
	datad => VCC,
	cin => \datapath|Add8~5\,
	combout => \datapath|Add8~6_combout\,
	cout => \datapath|Add8~7\);

-- Location: LCCOMB_X21_Y15_N8
\datapath|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~8_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[4]~regout\ & (\datapath|Add8~7\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[4]~regout\ & (!\datapath|Add8~7\ & VCC))
-- \datapath|Add8~9\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[4]~regout\ & !\datapath|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[4]~regout\,
	datad => VCC,
	cin => \datapath|Add8~7\,
	combout => \datapath|Add8~8_combout\,
	cout => \datapath|Add8~9\);

-- Location: LCCOMB_X22_Y15_N10
\datapath|counter_check~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~27_combout\ = (\datapath|Add8~8_combout\ & !\datapath|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Add8~8_combout\,
	datad => \datapath|Equal4~0_combout\,
	combout => \datapath|counter_check~27_combout\);

-- Location: LCFF_X21_Y15_N5
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|counter_check~27_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[4]~regout\);

-- Location: LCCOMB_X21_Y15_N10
\datapath|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~10_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[5]~regout\ & (!\datapath|Add8~9\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[5]~regout\ & ((\datapath|Add8~9\) # (GND)))
-- \datapath|Add8~11\ = CARRY((!\datapath|Add8~9\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[5]~regout\,
	datad => VCC,
	cin => \datapath|Add8~9\,
	combout => \datapath|Add8~10_combout\,
	cout => \datapath|Add8~11\);

-- Location: LCCOMB_X20_Y15_N6
\datapath|counter_check~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~26_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datac => \datapath|Add8~10_combout\,
	combout => \datapath|counter_check~26_combout\);

-- Location: LCFF_X21_Y15_N31
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|counter_check~26_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[5]~regout\);

-- Location: LCCOMB_X21_Y15_N12
\datapath|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~12_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[6]~regout\ & (\datapath|Add8~11\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[6]~regout\ & (!\datapath|Add8~11\ & VCC))
-- \datapath|Add8~13\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[6]~regout\ & !\datapath|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[6]~regout\,
	datad => VCC,
	cin => \datapath|Add8~11\,
	combout => \datapath|Add8~12_combout\,
	cout => \datapath|Add8~13\);

-- Location: LCCOMB_X20_Y15_N20
\datapath|counter_check~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~25_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datac => \datapath|Add8~12_combout\,
	combout => \datapath|counter_check~25_combout\);

-- Location: LCFF_X21_Y15_N23
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|counter_check~25_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[6]~regout\);

-- Location: LCCOMB_X21_Y15_N14
\datapath|Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~14_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[7]~regout\ & (!\datapath|Add8~13\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[7]~regout\ & ((\datapath|Add8~13\) # (GND)))
-- \datapath|Add8~15\ = CARRY((!\datapath|Add8~13\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[7]~regout\,
	datad => VCC,
	cin => \datapath|Add8~13\,
	combout => \datapath|Add8~14_combout\,
	cout => \datapath|Add8~15\);

-- Location: LCCOMB_X20_Y15_N30
\datapath|counter_check~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~24_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datac => \datapath|Add8~14_combout\,
	combout => \datapath|counter_check~24_combout\);

-- Location: LCFF_X21_Y15_N9
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|counter_check~24_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[7]~regout\);

-- Location: LCCOMB_X21_Y15_N18
\datapath|Add8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~18_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[9]~regout\ & (!\datapath|Add8~17\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[9]~regout\ & ((\datapath|Add8~17\) # (GND)))
-- \datapath|Add8~19\ = CARRY((!\datapath|Add8~17\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[9]~regout\,
	datad => VCC,
	cin => \datapath|Add8~17\,
	combout => \datapath|Add8~18_combout\,
	cout => \datapath|Add8~19\);

-- Location: LCCOMB_X20_Y15_N18
\datapath|counter_check~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~22_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~18_combout\,
	combout => \datapath|counter_check~22_combout\);

-- Location: LCFF_X21_Y15_N19
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|counter_check~22_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[9]~regout\);

-- Location: LCCOMB_X21_Y15_N20
\datapath|Add8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~20_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[10]~regout\ & (\datapath|Add8~19\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[10]~regout\ & (!\datapath|Add8~19\ & VCC))
-- \datapath|Add8~21\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[10]~regout\ & !\datapath|Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[10]~regout\,
	datad => VCC,
	cin => \datapath|Add8~19\,
	combout => \datapath|Add8~20_combout\,
	cout => \datapath|Add8~21\);

-- Location: LCCOMB_X21_Y15_N22
\datapath|Add8~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~22_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[11]~regout\ & (!\datapath|Add8~21\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[11]~regout\ & ((\datapath|Add8~21\) # (GND)))
-- \datapath|Add8~23\ = CARRY((!\datapath|Add8~21\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[11]~regout\,
	datad => VCC,
	cin => \datapath|Add8~21\,
	combout => \datapath|Add8~22_combout\,
	cout => \datapath|Add8~23\);

-- Location: LCCOMB_X20_Y15_N2
\datapath|counter_check~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~20_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~22_combout\,
	combout => \datapath|counter_check~20_combout\);

-- Location: LCFF_X20_Y15_N3
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~20_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[11]~regout\);

-- Location: LCCOMB_X21_Y15_N24
\datapath|Add8~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~24_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[12]~regout\ & (\datapath|Add8~23\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[12]~regout\ & (!\datapath|Add8~23\ & VCC))
-- \datapath|Add8~25\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[12]~regout\ & !\datapath|Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[12]~regout\,
	datad => VCC,
	cin => \datapath|Add8~23\,
	combout => \datapath|Add8~24_combout\,
	cout => \datapath|Add8~25\);

-- Location: LCCOMB_X20_Y15_N16
\datapath|counter_check~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~19_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~24_combout\,
	combout => \datapath|counter_check~19_combout\);

-- Location: LCFF_X20_Y15_N17
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~19_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[12]~regout\);

-- Location: LCCOMB_X21_Y15_N26
\datapath|Add8~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~26_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[13]~regout\ & (!\datapath|Add8~25\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[13]~regout\ & ((\datapath|Add8~25\) # (GND)))
-- \datapath|Add8~27\ = CARRY((!\datapath|Add8~25\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[13]~regout\,
	datad => VCC,
	cin => \datapath|Add8~25\,
	combout => \datapath|Add8~26_combout\,
	cout => \datapath|Add8~27\);

-- Location: LCCOMB_X21_Y15_N28
\datapath|Add8~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~28_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[14]~regout\ & (\datapath|Add8~27\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[14]~regout\ & (!\datapath|Add8~27\ & VCC))
-- \datapath|Add8~29\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[14]~regout\ & !\datapath|Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[14]~regout\,
	datad => VCC,
	cin => \datapath|Add8~27\,
	combout => \datapath|Add8~28_combout\,
	cout => \datapath|Add8~29\);

-- Location: LCCOMB_X20_Y15_N28
\datapath|counter_check~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~17_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~28_combout\,
	combout => \datapath|counter_check~17_combout\);

-- Location: LCFF_X20_Y15_N29
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~17_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[14]~regout\);

-- Location: LCCOMB_X21_Y15_N30
\datapath|Add8~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~30_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[15]~regout\ & (!\datapath|Add8~29\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[15]~regout\ & ((\datapath|Add8~29\) # (GND)))
-- \datapath|Add8~31\ = CARRY((!\datapath|Add8~29\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[15]~regout\,
	datad => VCC,
	cin => \datapath|Add8~29\,
	combout => \datapath|Add8~30_combout\,
	cout => \datapath|Add8~31\);

-- Location: LCCOMB_X21_Y16_N24
\datapath|counter_check~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~16_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~30_combout\,
	combout => \datapath|counter_check~16_combout\);

-- Location: LCFF_X21_Y16_N25
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~16_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[15]~regout\);

-- Location: LCCOMB_X21_Y14_N0
\datapath|Add8~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~32_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[16]~regout\ & (\datapath|Add8~31\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[16]~regout\ & (!\datapath|Add8~31\ & VCC))
-- \datapath|Add8~33\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[16]~regout\ & !\datapath|Add8~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[16]~regout\,
	datad => VCC,
	cin => \datapath|Add8~31\,
	combout => \datapath|Add8~32_combout\,
	cout => \datapath|Add8~33\);

-- Location: LCCOMB_X22_Y14_N14
\datapath|counter_check~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~15_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|Add8~32_combout\,
	combout => \datapath|counter_check~15_combout\);

-- Location: LCFF_X22_Y14_N15
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~15_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[16]~regout\);

-- Location: LCCOMB_X21_Y14_N2
\datapath|Add8~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~34_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[17]~regout\ & (!\datapath|Add8~33\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[17]~regout\ & ((\datapath|Add8~33\) # (GND)))
-- \datapath|Add8~35\ = CARRY((!\datapath|Add8~33\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[17]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[17]~regout\,
	datad => VCC,
	cin => \datapath|Add8~33\,
	combout => \datapath|Add8~34_combout\,
	cout => \datapath|Add8~35\);

-- Location: LCCOMB_X22_Y14_N12
\datapath|counter_check~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~14_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~34_combout\,
	combout => \datapath|counter_check~14_combout\);

-- Location: LCFF_X22_Y14_N13
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~14_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[17]~regout\);

-- Location: LCCOMB_X21_Y14_N4
\datapath|Add8~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~36_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[18]~regout\ & (\datapath|Add8~35\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[18]~regout\ & (!\datapath|Add8~35\ & VCC))
-- \datapath|Add8~37\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[18]~regout\ & !\datapath|Add8~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[18]~regout\,
	datad => VCC,
	cin => \datapath|Add8~35\,
	combout => \datapath|Add8~36_combout\,
	cout => \datapath|Add8~37\);

-- Location: LCCOMB_X22_Y14_N10
\datapath|counter_check~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~13_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|Add8~36_combout\,
	combout => \datapath|counter_check~13_combout\);

-- Location: LCFF_X22_Y14_N11
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~13_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[18]~regout\);

-- Location: LCCOMB_X21_Y14_N6
\datapath|Add8~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~38_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[19]~regout\ & (!\datapath|Add8~37\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[19]~regout\ & ((\datapath|Add8~37\) # (GND)))
-- \datapath|Add8~39\ = CARRY((!\datapath|Add8~37\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[19]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[19]~regout\,
	datad => VCC,
	cin => \datapath|Add8~37\,
	combout => \datapath|Add8~38_combout\,
	cout => \datapath|Add8~39\);

-- Location: LCCOMB_X22_Y14_N24
\datapath|counter_check~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~12_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|Add8~38_combout\,
	combout => \datapath|counter_check~12_combout\);

-- Location: LCFF_X22_Y14_N25
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[19]~regout\);

-- Location: LCCOMB_X21_Y14_N8
\datapath|Add8~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~40_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[20]~regout\ & (\datapath|Add8~39\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[20]~regout\ & (!\datapath|Add8~39\ & VCC))
-- \datapath|Add8~41\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[20]~regout\ & !\datapath|Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[20]~regout\,
	datad => VCC,
	cin => \datapath|Add8~39\,
	combout => \datapath|Add8~40_combout\,
	cout => \datapath|Add8~41\);

-- Location: LCCOMB_X21_Y14_N12
\datapath|Add8~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~44_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[22]~regout\ & (\datapath|Add8~43\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[22]~regout\ & (!\datapath|Add8~43\ & VCC))
-- \datapath|Add8~45\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[22]~regout\ & !\datapath|Add8~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[22]~regout\,
	datad => VCC,
	cin => \datapath|Add8~43\,
	combout => \datapath|Add8~44_combout\,
	cout => \datapath|Add8~45\);

-- Location: LCCOMB_X21_Y14_N14
\datapath|Add8~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~46_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[23]~regout\ & (!\datapath|Add8~45\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[23]~regout\ & ((\datapath|Add8~45\) # (GND)))
-- \datapath|Add8~47\ = CARRY((!\datapath|Add8~45\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[23]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[23]~regout\,
	datad => VCC,
	cin => \datapath|Add8~45\,
	combout => \datapath|Add8~46_combout\,
	cout => \datapath|Add8~47\);

-- Location: LCCOMB_X20_Y14_N16
\datapath|counter_check~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~8_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|Add8~46_combout\,
	combout => \datapath|counter_check~8_combout\);

-- Location: LCFF_X20_Y14_N17
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[23]~regout\);

-- Location: LCCOMB_X21_Y14_N16
\datapath|Add8~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~48_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[24]~regout\ & (\datapath|Add8~47\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[24]~regout\ & (!\datapath|Add8~47\ & VCC))
-- \datapath|Add8~49\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[24]~regout\ & !\datapath|Add8~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[24]~regout\,
	datad => VCC,
	cin => \datapath|Add8~47\,
	combout => \datapath|Add8~48_combout\,
	cout => \datapath|Add8~49\);

-- Location: LCCOMB_X21_Y14_N18
\datapath|Add8~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~50_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[25]~regout\ & (!\datapath|Add8~49\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[25]~regout\ & ((\datapath|Add8~49\) # (GND)))
-- \datapath|Add8~51\ = CARRY((!\datapath|Add8~49\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[25]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[25]~regout\,
	datad => VCC,
	cin => \datapath|Add8~49\,
	combout => \datapath|Add8~50_combout\,
	cout => \datapath|Add8~51\);

-- Location: LCCOMB_X21_Y14_N20
\datapath|Add8~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~52_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[26]~regout\ & (\datapath|Add8~51\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[26]~regout\ & (!\datapath|Add8~51\ & VCC))
-- \datapath|Add8~53\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[26]~regout\ & !\datapath|Add8~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[26]~regout\,
	datad => VCC,
	cin => \datapath|Add8~51\,
	combout => \datapath|Add8~52_combout\,
	cout => \datapath|Add8~53\);

-- Location: LCCOMB_X21_Y14_N22
\datapath|Add8~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~54_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[27]~regout\ & (!\datapath|Add8~53\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[27]~regout\ & ((\datapath|Add8~53\) # (GND)))
-- \datapath|Add8~55\ = CARRY((!\datapath|Add8~53\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[27]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[27]~regout\,
	datad => VCC,
	cin => \datapath|Add8~53\,
	combout => \datapath|Add8~54_combout\,
	cout => \datapath|Add8~55\);

-- Location: LCCOMB_X21_Y14_N24
\datapath|Add8~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~56_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[28]~regout\ & (\datapath|Add8~55\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[28]~regout\ & (!\datapath|Add8~55\ & VCC))
-- \datapath|Add8~57\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[28]~regout\ & !\datapath|Add8~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[28]~regout\,
	datad => VCC,
	cin => \datapath|Add8~55\,
	combout => \datapath|Add8~56_combout\,
	cout => \datapath|Add8~57\);

-- Location: LCCOMB_X20_Y14_N22
\datapath|counter_check~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~3_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~56_combout\,
	combout => \datapath|counter_check~3_combout\);

-- Location: LCFF_X20_Y14_N23
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[28]~regout\);

-- Location: LCCOMB_X21_Y14_N26
\datapath|Add8~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~58_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[29]~regout\ & (!\datapath|Add8~57\)) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[29]~regout\ & ((\datapath|Add8~57\) # (GND)))
-- \datapath|Add8~59\ = CARRY((!\datapath|Add8~57\) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[29]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[29]~regout\,
	datad => VCC,
	cin => \datapath|Add8~57\,
	combout => \datapath|Add8~58_combout\,
	cout => \datapath|Add8~59\);

-- Location: LCCOMB_X21_Y14_N28
\datapath|Add8~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~60_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[30]~regout\ & (\datapath|Add8~59\ $ (GND))) # (!\datapath|GestoreGiocatoriInCampo_RTL:counter_check[30]~regout\ & (!\datapath|Add8~59\ & VCC))
-- \datapath|Add8~61\ = CARRY((\datapath|GestoreGiocatoriInCampo_RTL:counter_check[30]~regout\ & !\datapath|Add8~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[30]~regout\,
	datad => VCC,
	cin => \datapath|Add8~59\,
	combout => \datapath|Add8~60_combout\,
	cout => \datapath|Add8~61\);

-- Location: LCCOMB_X22_Y14_N28
\datapath|counter_check~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|counter_check~1_combout\ = (!\datapath|Equal4~0_combout\ & \datapath|Add8~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|Add8~60_combout\,
	combout => \datapath|counter_check~1_combout\);

-- Location: LCFF_X22_Y14_N29
\datapath|GestoreGiocatoriInCampo_RTL:counter_check[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|counter_check~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Update_State_Controller:check_old~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[30]~regout\);

-- Location: LCCOMB_X21_Y14_N30
\datapath|Add8~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add8~62_combout\ = \datapath|Add8~61\ $ (\datapath|GestoreGiocatoriInCampo_RTL:counter_check[31]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \datapath|GestoreGiocatoriInCampo_RTL:counter_check[31]~regout\,
	cin => \datapath|Add8~61\,
	combout => \datapath|Add8~62_combout\);

-- Location: LCCOMB_X26_Y16_N2
\controller|internal_state.TURN_FPGA~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|internal_state.TURN_FPGA~feeder_combout\ = \controller|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Equal0~0_combout\,
	combout => \controller|internal_state.TURN_FPGA~feeder_combout\);

-- Location: LCFF_X26_Y16_N3
\controller|internal_state.TURN_FPGA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|internal_state.TURN_FPGA~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|PARTITA_INIZIATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|internal_state.TURN_FPGA~regout\);

-- Location: LCCOMB_X26_Y16_N20
\controller|ESEGUI_SCOMMESSA_FPGA~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ESEGUI_SCOMMESSA_FPGA~feeder_combout\ = \controller|internal_state.TURN_FPGA~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|internal_state.TURN_FPGA~regout\,
	combout => \controller|ESEGUI_SCOMMESSA_FPGA~feeder_combout\);

-- Location: LCFF_X26_Y16_N21
\controller|ESEGUI_SCOMMESSA_FPGA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|ESEGUI_SCOMMESSA_FPGA~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ESEGUI_SCOMMESSA_FPGA~regout\);

-- Location: LCCOMB_X22_Y16_N0
\controller|ESEGUI_SCOMMESSA~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ESEGUI_SCOMMESSA~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \controller|ESEGUI_SCOMMESSA~feeder_combout\);

-- Location: LCFF_X22_Y16_N1
\controller|ESEGUI_SCOMMESSA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|ESEGUI_SCOMMESSA~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ESEGUI_SCOMMESSA~regout\);

-- Location: LCCOMB_X21_Y16_N30
\datapath|scommessa_corrente.ricorrenza[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente.ricorrenza[0]~0_combout\ = (\controller|ESEGUI_SCOMMESSA~regout\) # (\controller|ESEGUI_SCOMMESSA_FPGA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|ESEGUI_SCOMMESSA~regout\,
	datad => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	combout => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\);

-- Location: LCFF_X23_Y15_N1
\datapath|scommessa_corrente.ricorrenza[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.ricorrenza\(31));

-- Location: LCCOMB_X22_Y16_N8
\datapath|scommessa_corrente~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente~6_combout\ = (\datapath|scommessa_corrente.ricorrenza\(30) & !\controller|ESEGUI_SCOMMESSA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|scommessa_corrente.ricorrenza\(30),
	datad => \controller|ESEGUI_SCOMMESSA~regout\,
	combout => \datapath|scommessa_corrente~6_combout\);

-- Location: LCFF_X22_Y16_N9
\datapath|scommessa_corrente.ricorrenza[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|scommessa_corrente~6_combout\,
	sdata => VCC,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.ricorrenza\(30));

-- Location: LCCOMB_X22_Y14_N22
\datapath|LessThan10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~3_combout\ = (\datapath|scommessa_corrente.ricorrenza\(30) & (\datapath|Add8~58_combout\ & \datapath|Add8~60_combout\)) # (!\datapath|scommessa_corrente.ricorrenza\(30) & (!\datapath|Add8~58_combout\ & !\datapath|Add8~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|scommessa_corrente.ricorrenza\(30),
	datac => \datapath|Add8~58_combout\,
	datad => \datapath|Add8~60_combout\,
	combout => \datapath|LessThan10~3_combout\);

-- Location: LCCOMB_X22_Y14_N8
\datapath|LessThan10~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~21_combout\ = (\datapath|scommessa_corrente.ricorrenza\(30) & (\datapath|Add8~38_combout\ & (\datapath|Add8~36_combout\ & \datapath|Add8~40_combout\))) # (!\datapath|scommessa_corrente.ricorrenza\(30) & (!\datapath|Add8~38_combout\ & 
-- (!\datapath|Add8~36_combout\ & !\datapath|Add8~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|scommessa_corrente.ricorrenza\(30),
	datab => \datapath|Add8~38_combout\,
	datac => \datapath|Add8~36_combout\,
	datad => \datapath|Add8~40_combout\,
	combout => \datapath|LessThan10~21_combout\);

-- Location: LCCOMB_X22_Y14_N18
\datapath|LessThan10~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~20_combout\ = (\datapath|Add8~34_combout\ & (\datapath|scommessa_corrente.ricorrenza\(30) & (\datapath|Add8~32_combout\ & \datapath|Add8~30_combout\))) # (!\datapath|Add8~34_combout\ & (!\datapath|scommessa_corrente.ricorrenza\(30) & 
-- (!\datapath|Add8~32_combout\ & !\datapath|Add8~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add8~34_combout\,
	datab => \datapath|scommessa_corrente.ricorrenza\(30),
	datac => \datapath|Add8~32_combout\,
	datad => \datapath|Add8~30_combout\,
	combout => \datapath|LessThan10~20_combout\);

-- Location: LCCOMB_X22_Y14_N6
\datapath|LessThan10~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~22_combout\ = (\datapath|LessThan10~21_combout\ & (\datapath|LessThan10~20_combout\ & (\datapath|Add8~42_combout\ $ (!\datapath|scommessa_corrente.ricorrenza\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add8~42_combout\,
	datab => \datapath|scommessa_corrente.ricorrenza\(30),
	datac => \datapath|LessThan10~21_combout\,
	datad => \datapath|LessThan10~20_combout\,
	combout => \datapath|LessThan10~22_combout\);

-- Location: LCCOMB_X20_Y14_N20
\datapath|LessThan10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~4_combout\ = (\datapath|scommessa_corrente.ricorrenza\(30) & (\datapath|Add8~46_combout\ & (\datapath|Add8~48_combout\ & \datapath|Add8~44_combout\))) # (!\datapath|scommessa_corrente.ricorrenza\(30) & (!\datapath|Add8~46_combout\ & 
-- (!\datapath|Add8~48_combout\ & !\datapath|Add8~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|scommessa_corrente.ricorrenza\(30),
	datab => \datapath|Add8~46_combout\,
	datac => \datapath|Add8~48_combout\,
	datad => \datapath|Add8~44_combout\,
	combout => \datapath|LessThan10~4_combout\);

-- Location: LCCOMB_X20_Y14_N26
\datapath|LessThan10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~5_combout\ = (\datapath|scommessa_corrente.ricorrenza\(30) & (\datapath|Add8~50_combout\ & (\datapath|Add8~52_combout\ & \datapath|Add8~54_combout\))) # (!\datapath|scommessa_corrente.ricorrenza\(30) & (!\datapath|Add8~50_combout\ & 
-- (!\datapath|Add8~52_combout\ & !\datapath|Add8~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|scommessa_corrente.ricorrenza\(30),
	datab => \datapath|Add8~50_combout\,
	datac => \datapath|Add8~52_combout\,
	datad => \datapath|Add8~54_combout\,
	combout => \datapath|LessThan10~5_combout\);

-- Location: LCCOMB_X20_Y14_N0
\datapath|LessThan10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~6_combout\ = (\datapath|LessThan10~4_combout\ & (\datapath|LessThan10~5_combout\ & (\datapath|scommessa_corrente.ricorrenza\(30) $ (!\datapath|Add8~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|scommessa_corrente.ricorrenza\(30),
	datab => \datapath|Add8~56_combout\,
	datac => \datapath|LessThan10~4_combout\,
	datad => \datapath|LessThan10~5_combout\,
	combout => \datapath|LessThan10~6_combout\);

-- Location: LCCOMB_X20_Y15_N8
\datapath|LessThan10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~10_combout\ = (\datapath|Add8~16_combout\ & (\datapath|Add8~20_combout\ & \datapath|Add8~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add8~16_combout\,
	datac => \datapath|Add8~20_combout\,
	datad => \datapath|Add8~18_combout\,
	combout => \datapath|LessThan10~10_combout\);

-- Location: LCCOMB_X20_Y15_N14
\datapath|LessThan10~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~11_combout\ = (\datapath|Add8~22_combout\ & ((\datapath|Add8~24_combout\ & (!\datapath|LessThan10~10_combout\)) # (!\datapath|Add8~24_combout\ & ((\datapath|Add8~28_combout\))))) # (!\datapath|Add8~22_combout\ & 
-- (((\datapath|Add8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add8~22_combout\,
	datab => \datapath|Add8~24_combout\,
	datac => \datapath|LessThan10~10_combout\,
	datad => \datapath|Add8~28_combout\,
	combout => \datapath|LessThan10~11_combout\);

-- Location: LCCOMB_X20_Y15_N12
\datapath|LessThan10~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~17_combout\ = (\datapath|Add8~16_combout\ & (\datapath|Add8~24_combout\ & (\datapath|Add8~18_combout\ & \datapath|Add8~22_combout\))) # (!\datapath|Add8~16_combout\ & ((\datapath|Add8~24_combout\) # ((\datapath|Add8~18_combout\) # 
-- (\datapath|Add8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add8~16_combout\,
	datab => \datapath|Add8~24_combout\,
	datac => \datapath|Add8~18_combout\,
	datad => \datapath|Add8~22_combout\,
	combout => \datapath|LessThan10~17_combout\);

-- Location: LCCOMB_X20_Y15_N26
\datapath|LessThan10~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~18_combout\ = (\datapath|Add8~16_combout\ & (((\datapath|Add8~20_combout\ & \datapath|LessThan10~17_combout\)) # (!\datapath|Add8~28_combout\))) # (!\datapath|Add8~16_combout\ & (!\datapath|Add8~28_combout\ & 
-- ((\datapath|Add8~20_combout\) # (\datapath|LessThan10~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add8~16_combout\,
	datab => \datapath|Add8~28_combout\,
	datac => \datapath|Add8~20_combout\,
	datad => \datapath|LessThan10~17_combout\,
	combout => \datapath|LessThan10~18_combout\);

-- Location: LCFF_X23_Y16_N25
\controller|ricorrenza_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|ricorrenza_temp[4]~15_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|ricorrenza_temp[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ricorrenza_temp\(4));

-- Location: LCCOMB_X23_Y16_N6
\controller|RICORRENZA[4]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[4]~latch_combout\ = (GLOBAL(\RESET_N~clkctrl_outclk\) & (\controller|RICORRENZA[4]~latch_combout\)) # (!GLOBAL(\RESET_N~clkctrl_outclk\) & ((\controller|ricorrenza_temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|RICORRENZA[4]~latch_combout\,
	datac => \controller|ricorrenza_temp\(4),
	datad => \RESET_N~clkctrl_outclk\,
	combout => \controller|RICORRENZA[4]~latch_combout\);

-- Location: LCCOMB_X22_Y16_N4
\controller|RICORRENZA[4]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[4]~head_lut_combout\ = (\RESET_N~regout\ & (\controller|RICORRENZA[4]~_emulated_regout\ $ (((\controller|RICORRENZA[4]~latch_combout\))))) # (!\RESET_N~regout\ & (((\controller|ricorrenza_temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|RICORRENZA[4]~_emulated_regout\,
	datab => \controller|ricorrenza_temp\(4),
	datac => \RESET_N~regout\,
	datad => \controller|RICORRENZA[4]~latch_combout\,
	combout => \controller|RICORRENZA[4]~head_lut_combout\);

-- Location: LCCOMB_X21_Y16_N16
\datapath|scommessa_corrente~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente~7_combout\ = (\controller|ESEGUI_SCOMMESSA_FPGA~regout\) # (\controller|RICORRENZA[4]~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	datad => \controller|RICORRENZA[4]~head_lut_combout\,
	combout => \datapath|scommessa_corrente~7_combout\);

-- Location: LCFF_X21_Y16_N17
\datapath|scommessa_corrente.ricorrenza[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|scommessa_corrente~7_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.ricorrenza\(4));

-- Location: LCCOMB_X23_Y15_N14
\datapath|LessThan10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~12_combout\ = (\datapath|scommessa_corrente.ricorrenza\(4) & (!\datapath|Add8~8_combout\ & (\datapath|scommessa_corrente.ricorrenza\(5) $ (!\datapath|Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|scommessa_corrente.ricorrenza\(5),
	datab => \datapath|scommessa_corrente.ricorrenza\(4),
	datac => \datapath|Add8~10_combout\,
	datad => \datapath|Add8~8_combout\,
	combout => \datapath|LessThan10~12_combout\);

-- Location: LCCOMB_X23_Y16_N0
\controller|RICORRENZA[5]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[5]~latch_combout\ = (GLOBAL(\RESET_N~clkctrl_outclk\) & (\controller|RICORRENZA[5]~latch_combout\)) # (!GLOBAL(\RESET_N~clkctrl_outclk\) & ((\controller|ricorrenza_temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|RICORRENZA[5]~latch_combout\,
	datab => \RESET_N~clkctrl_outclk\,
	datad => \controller|ricorrenza_temp\(5),
	combout => \controller|RICORRENZA[5]~latch_combout\);

-- Location: LCCOMB_X23_Y16_N12
\controller|RICORRENZA[5]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[5]~head_lut_combout\ = (\RESET_N~regout\ & (\controller|RICORRENZA[5]~_emulated_regout\ $ (((\controller|RICORRENZA[5]~latch_combout\))))) # (!\RESET_N~regout\ & (((\controller|ricorrenza_temp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|RICORRENZA[5]~_emulated_regout\,
	datab => \RESET_N~regout\,
	datac => \controller|ricorrenza_temp\(5),
	datad => \controller|RICORRENZA[5]~latch_combout\,
	combout => \controller|RICORRENZA[5]~head_lut_combout\);

-- Location: LCCOMB_X23_Y16_N10
\datapath|scommessa_corrente~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente~8_combout\ = (\controller|ESEGUI_SCOMMESSA_FPGA~regout\) # (\controller|RICORRENZA[5]~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	datad => \controller|RICORRENZA[5]~head_lut_combout\,
	combout => \datapath|scommessa_corrente~8_combout\);

-- Location: LCFF_X23_Y16_N11
\datapath|scommessa_corrente.ricorrenza[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|scommessa_corrente~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.ricorrenza\(5));

-- Location: LCCOMB_X23_Y16_N4
\controller|RICORRENZA[3]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[3]~latch_combout\ = (GLOBAL(\RESET_N~clkctrl_outclk\) & (\controller|RICORRENZA[3]~latch_combout\)) # (!GLOBAL(\RESET_N~clkctrl_outclk\) & ((\controller|ricorrenza_temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|RICORRENZA[3]~latch_combout\,
	datac => \RESET_N~clkctrl_outclk\,
	datad => \controller|ricorrenza_temp\(3),
	combout => \controller|RICORRENZA[3]~latch_combout\);

-- Location: LCCOMB_X22_Y16_N22
\controller|RICORRENZA[3]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[3]~head_lut_combout\ = (\RESET_N~regout\ & (\controller|RICORRENZA[3]~_emulated_regout\ $ (((\controller|RICORRENZA[3]~latch_combout\))))) # (!\RESET_N~regout\ & (((\controller|ricorrenza_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|RICORRENZA[3]~_emulated_regout\,
	datab => \controller|ricorrenza_temp\(3),
	datac => \RESET_N~regout\,
	datad => \controller|RICORRENZA[3]~latch_combout\,
	combout => \controller|RICORRENZA[3]~head_lut_combout\);

-- Location: LCCOMB_X21_Y16_N6
\datapath|scommessa_corrente~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente~9_combout\ = (\controller|ESEGUI_SCOMMESSA_FPGA~regout\) # (\controller|RICORRENZA[3]~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	datad => \controller|RICORRENZA[3]~head_lut_combout\,
	combout => \datapath|scommessa_corrente~9_combout\);

-- Location: LCFF_X21_Y16_N7
\datapath|scommessa_corrente.ricorrenza[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|scommessa_corrente~9_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.ricorrenza\(3));

-- Location: LCCOMB_X23_Y16_N30
\controller|RICORRENZA[2]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[2]~latch_combout\ = (GLOBAL(\RESET_N~clkctrl_outclk\) & (\controller|RICORRENZA[2]~latch_combout\)) # (!GLOBAL(\RESET_N~clkctrl_outclk\) & ((\controller|ricorrenza_temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|RICORRENZA[2]~latch_combout\,
	datac => \controller|ricorrenza_temp\(2),
	datad => \RESET_N~clkctrl_outclk\,
	combout => \controller|RICORRENZA[2]~latch_combout\);

-- Location: LCCOMB_X22_Y16_N18
\controller|RICORRENZA[2]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[2]~head_lut_combout\ = (\RESET_N~regout\ & (\controller|RICORRENZA[2]~_emulated_regout\ $ (((\controller|RICORRENZA[2]~latch_combout\))))) # (!\RESET_N~regout\ & (((\controller|ricorrenza_temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|RICORRENZA[2]~_emulated_regout\,
	datab => \controller|ricorrenza_temp\(2),
	datac => \RESET_N~regout\,
	datad => \controller|RICORRENZA[2]~latch_combout\,
	combout => \controller|RICORRENZA[2]~head_lut_combout\);

-- Location: LCCOMB_X21_Y16_N12
\datapath|scommessa_corrente~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente~10_combout\ = (\controller|ESEGUI_SCOMMESSA_FPGA~regout\) # (\controller|RICORRENZA[2]~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	datad => \controller|RICORRENZA[2]~head_lut_combout\,
	combout => \datapath|scommessa_corrente~10_combout\);

-- Location: LCFF_X21_Y16_N13
\datapath|scommessa_corrente.ricorrenza[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|scommessa_corrente~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.ricorrenza\(2));

-- Location: LCFF_X23_Y16_N1
\controller|ricorrenza_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \controller|ricorrenza_temp[0]~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|ricorrenza_temp[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ricorrenza_temp\(0));

-- Location: LCCOMB_X23_Y16_N14
\controller|RICORRENZA[0]~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[0]~latch_combout\ = (GLOBAL(\RESET_N~clkctrl_outclk\) & (\controller|RICORRENZA[0]~latch_combout\)) # (!GLOBAL(\RESET_N~clkctrl_outclk\) & ((\controller|ricorrenza_temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|RICORRENZA[0]~latch_combout\,
	datac => \RESET_N~clkctrl_outclk\,
	datad => \controller|ricorrenza_temp\(0),
	combout => \controller|RICORRENZA[0]~latch_combout\);

-- Location: LCCOMB_X22_Y16_N28
\controller|RICORRENZA[0]~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[0]~data_lut_combout\ = \controller|ricorrenza_temp\(0) $ (\controller|RICORRENZA[0]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ricorrenza_temp\(0),
	datac => \controller|RICORRENZA[0]~latch_combout\,
	combout => \controller|RICORRENZA[0]~data_lut_combout\);

-- Location: LCFF_X22_Y16_N29
\controller|RICORRENZA[0]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|RICORRENZA[0]~data_lut_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|RICORRENZA[0]~_emulated_regout\);

-- Location: LCCOMB_X22_Y16_N30
\controller|RICORRENZA[0]~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|RICORRENZA[0]~head_lut_combout\ = (\RESET_N~regout\ & ((\controller|RICORRENZA[0]~latch_combout\ $ (\controller|RICORRENZA[0]~_emulated_regout\)))) # (!\RESET_N~regout\ & (\controller|ricorrenza_temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ricorrenza_temp\(0),
	datab => \RESET_N~regout\,
	datac => \controller|RICORRENZA[0]~latch_combout\,
	datad => \controller|RICORRENZA[0]~_emulated_regout\,
	combout => \controller|RICORRENZA[0]~head_lut_combout\);

-- Location: LCCOMB_X21_Y16_N0
\datapath|scommessa_corrente~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|scommessa_corrente~12_combout\ = (\controller|ESEGUI_SCOMMESSA_FPGA~regout\) # (\controller|RICORRENZA[0]~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|ESEGUI_SCOMMESSA_FPGA~regout\,
	datad => \controller|RICORRENZA[0]~head_lut_combout\,
	combout => \datapath|scommessa_corrente~12_combout\);

-- Location: LCFF_X21_Y16_N1
\datapath|scommessa_corrente.ricorrenza[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|scommessa_corrente~12_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|scommessa_corrente.ricorrenza[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|scommessa_corrente.ricorrenza\(0));

-- Location: LCCOMB_X22_Y15_N14
\datapath|LessThan10~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~13_combout\ = (\datapath|scommessa_corrente.ricorrenza\(1) & (((\datapath|scommessa_corrente.ricorrenza\(0) & !\datapath|Add8~0_combout\)) # (!\datapath|Add8~2_combout\))) # (!\datapath|scommessa_corrente.ricorrenza\(1) & 
-- (\datapath|scommessa_corrente.ricorrenza\(0) & (!\datapath|Add8~0_combout\ & !\datapath|Add8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|scommessa_corrente.ricorrenza\(1),
	datab => \datapath|scommessa_corrente.ricorrenza\(0),
	datac => \datapath|Add8~0_combout\,
	datad => \datapath|Add8~2_combout\,
	combout => \datapath|LessThan10~13_combout\);

-- Location: LCCOMB_X23_Y15_N20
\datapath|LessThan10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~14_combout\ = (\datapath|scommessa_corrente.ricorrenza\(2) & ((\datapath|LessThan10~13_combout\) # (!\datapath|Add8~4_combout\))) # (!\datapath|scommessa_corrente.ricorrenza\(2) & (!\datapath|Add8~4_combout\ & 
-- \datapath|LessThan10~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|scommessa_corrente.ricorrenza\(2),
	datac => \datapath|Add8~4_combout\,
	datad => \datapath|LessThan10~13_combout\,
	combout => \datapath|LessThan10~14_combout\);

-- Location: LCCOMB_X23_Y15_N6
\datapath|LessThan10~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~15_combout\ = (\datapath|scommessa_corrente.ricorrenza\(3) & ((\datapath|LessThan10~14_combout\) # (!\datapath|Add8~6_combout\))) # (!\datapath|scommessa_corrente.ricorrenza\(3) & (\datapath|LessThan10~14_combout\ & 
-- !\datapath|Add8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|scommessa_corrente.ricorrenza\(3),
	datac => \datapath|LessThan10~14_combout\,
	datad => \datapath|Add8~6_combout\,
	combout => \datapath|LessThan10~15_combout\);

-- Location: LCCOMB_X23_Y15_N28
\datapath|LessThan10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~16_combout\ = (\datapath|LessThan10~15_combout\ & (\datapath|scommessa_corrente.ricorrenza\(4) $ (!\datapath|Add8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|scommessa_corrente.ricorrenza\(4),
	datac => \datapath|Add8~8_combout\,
	datad => \datapath|LessThan10~15_combout\,
	combout => \datapath|LessThan10~16_combout\);

-- Location: LCCOMB_X23_Y15_N4
\datapath|LessThan10~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~30_combout\ = (\datapath|LessThan10~12_combout\) # ((\datapath|Add8~10_combout\ & (\datapath|scommessa_corrente.ricorrenza\(5) & \datapath|LessThan10~16_combout\)) # (!\datapath|Add8~10_combout\ & 
-- ((\datapath|scommessa_corrente.ricorrenza\(5)) # (\datapath|LessThan10~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add8~10_combout\,
	datab => \datapath|LessThan10~12_combout\,
	datac => \datapath|scommessa_corrente.ricorrenza\(5),
	datad => \datapath|LessThan10~16_combout\,
	combout => \datapath|LessThan10~30_combout\);

-- Location: LCCOMB_X23_Y15_N10
\datapath|LessThan10~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~31_combout\ = (\datapath|scommessa_corrente.ricorrenza\(30) & (((\datapath|LessThan10~30_combout\) # (!\datapath|Add8~12_combout\)) # (!\datapath|Add8~14_combout\))) # (!\datapath|scommessa_corrente.ricorrenza\(30) & 
-- (!\datapath|Add8~14_combout\ & (\datapath|LessThan10~30_combout\ & !\datapath|Add8~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|scommessa_corrente.ricorrenza\(30),
	datab => \datapath|Add8~14_combout\,
	datac => \datapath|LessThan10~30_combout\,
	datad => \datapath|Add8~12_combout\,
	combout => \datapath|LessThan10~31_combout\);

-- Location: LCCOMB_X23_Y15_N2
\datapath|LessThan10~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~19_combout\ = (\datapath|LessThan10~31_combout\ & (!\datapath|LessThan10~18_combout\ & (\datapath|scommessa_corrente.ricorrenza\(30) $ (!\datapath|Add8~28_combout\)))) # (!\datapath|LessThan10~31_combout\ & 
-- (\datapath|scommessa_corrente.ricorrenza\(30) & (\datapath|Add8~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|scommessa_corrente.ricorrenza\(30),
	datab => \datapath|Add8~28_combout\,
	datac => \datapath|LessThan10~18_combout\,
	datad => \datapath|LessThan10~31_combout\,
	combout => \datapath|LessThan10~19_combout\);

-- Location: LCCOMB_X23_Y15_N12
\datapath|LessThan10~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~27_combout\ = (\datapath|LessThan10~19_combout\ & (((\datapath|scommessa_corrente.ricorrenza\(30) & \datapath|LessThan10~11_combout\)) # (!\datapath|Add8~26_combout\))) # (!\datapath|LessThan10~19_combout\ & 
-- (\datapath|scommessa_corrente.ricorrenza\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|scommessa_corrente.ricorrenza\(30),
	datab => \datapath|Add8~26_combout\,
	datac => \datapath|LessThan10~11_combout\,
	datad => \datapath|LessThan10~19_combout\,
	combout => \datapath|LessThan10~27_combout\);

-- Location: LCCOMB_X23_Y15_N24
\datapath|LessThan10~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~23_combout\ = (\datapath|LessThan10~6_combout\ & ((\datapath|LessThan10~9_combout\) # ((\datapath|LessThan10~22_combout\ & \datapath|LessThan10~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|LessThan10~9_combout\,
	datab => \datapath|LessThan10~22_combout\,
	datac => \datapath|LessThan10~6_combout\,
	datad => \datapath|LessThan10~27_combout\,
	combout => \datapath|LessThan10~23_combout\);

-- Location: LCCOMB_X20_Y14_N14
\datapath|LessThan10~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~24_combout\ = ((!\datapath|Add8~44_combout\) # (!\datapath|Add8~48_combout\)) # (!\datapath|Add8~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Add8~46_combout\,
	datac => \datapath|Add8~48_combout\,
	datad => \datapath|Add8~44_combout\,
	combout => \datapath|LessThan10~24_combout\);

-- Location: LCCOMB_X20_Y14_N28
\datapath|LessThan10~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~25_combout\ = ((!\datapath|Add8~56_combout\) # (!\datapath|Add8~52_combout\)) # (!\datapath|Add8~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Add8~50_combout\,
	datac => \datapath|Add8~52_combout\,
	datad => \datapath|Add8~56_combout\,
	combout => \datapath|LessThan10~25_combout\);

-- Location: LCCOMB_X20_Y14_N6
\datapath|LessThan10~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~26_combout\ = (\datapath|scommessa_corrente.ricorrenza\(30) & (((\datapath|LessThan10~24_combout\) # (\datapath|LessThan10~25_combout\)) # (!\datapath|Add8~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|scommessa_corrente.ricorrenza\(30),
	datab => \datapath|Add8~54_combout\,
	datac => \datapath|LessThan10~24_combout\,
	datad => \datapath|LessThan10~25_combout\,
	combout => \datapath|LessThan10~26_combout\);

-- Location: LCCOMB_X23_Y15_N22
\datapath|LessThan10~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~28_combout\ = (\datapath|LessThan10~2_combout\) # ((\datapath|LessThan10~3_combout\ & ((\datapath|LessThan10~23_combout\) # (\datapath|LessThan10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|LessThan10~2_combout\,
	datab => \datapath|LessThan10~3_combout\,
	datac => \datapath|LessThan10~23_combout\,
	datad => \datapath|LessThan10~26_combout\,
	combout => \datapath|LessThan10~28_combout\);

-- Location: LCCOMB_X23_Y15_N0
\datapath|LessThan10~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan10~29_combout\ = (\datapath|Add8~62_combout\ & ((\datapath|LessThan10~28_combout\) # (!\datapath|scommessa_corrente.ricorrenza\(31)))) # (!\datapath|Add8~62_combout\ & (!\datapath|scommessa_corrente.ricorrenza\(31) & 
-- \datapath|LessThan10~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Add8~62_combout\,
	datac => \datapath|scommessa_corrente.ricorrenza\(31),
	datad => \datapath|LessThan10~28_combout\,
	combout => \datapath|LessThan10~29_combout\);

-- Location: LCCOMB_X23_Y15_N26
\datapath|indice_giocatore[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~8_combout\ = (\controller|Update_State_Controller:check_old~regout\ & (((\datapath|Equal4~0_combout\) # (!\datapath|LessThan10~29_combout\)) # (!\datapath|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller:check_old~regout\,
	datab => \datapath|Equal5~0_combout\,
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|LessThan10~29_combout\,
	combout => \datapath|indice_giocatore[1]~8_combout\);

-- Location: LCCOMB_X23_Y15_N16
\datapath|indice_giocatore[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~13_combout\ = (\datapath|indice_giocatore[1]~27_combout\ & (((\controller|Update_State_Controller:check_old~regout\ & !\datapath|LessThan10~29_combout\)) # (!\datapath|Equal4~0_combout\))) # 
-- (!\datapath|indice_giocatore[1]~27_combout\ & (((\controller|Update_State_Controller:check_old~regout\ & !\datapath|LessThan10~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore[1]~27_combout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \controller|Update_State_Controller:check_old~regout\,
	datad => \datapath|LessThan10~29_combout\,
	combout => \datapath|indice_giocatore[1]~13_combout\);

-- Location: LCCOMB_X23_Y15_N30
\datapath|indice_giocatore[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~14_combout\ = (!\datapath|indice_giocatore[1]~8_combout\ & ((\datapath|indice_giocatore[1]~13_combout\) # ((!\datapath|GestoreGiocatoriInCampo_RTL~7_combout\ & !\datapath|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL~7_combout\,
	datab => \datapath|Equal4~0_combout\,
	datac => \datapath|indice_giocatore[1]~13_combout\,
	datad => \datapath|indice_giocatore[1]~8_combout\,
	combout => \datapath|indice_giocatore[1]~14_combout\);

-- Location: LCCOMB_X22_Y15_N18
\datapath|indice_giocatore~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~15_combout\ = (\datapath|indice_giocatore[1]~14_combout\ & (\datapath|numero_giocatori_in_campo\(1) $ (((!\datapath|numero_giocatori_in_campo\(0) & \datapath|indice_giocatore[1]~13_combout\))))) # 
-- (!\datapath|indice_giocatore[1]~14_combout\ & (((!\datapath|indice_giocatore[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(1),
	datab => \datapath|numero_giocatori_in_campo\(0),
	datac => \datapath|indice_giocatore[1]~13_combout\,
	datad => \datapath|indice_giocatore[1]~14_combout\,
	combout => \datapath|indice_giocatore~15_combout\);

-- Location: LCCOMB_X22_Y15_N0
\datapath|indice_giocatore~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~16_combout\ = (\datapath|indice_giocatore[1]~8_combout\ & (\datapath|indice_turno_giocatore\(1) $ (((!\datapath|indice_turno_giocatore\(0) & \datapath|indice_giocatore~15_combout\))))) # 
-- (!\datapath|indice_giocatore[1]~8_combout\ & (((\datapath|indice_giocatore~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(1),
	datab => \datapath|indice_turno_giocatore\(0),
	datac => \datapath|indice_giocatore[1]~8_combout\,
	datad => \datapath|indice_giocatore~15_combout\,
	combout => \datapath|indice_giocatore~16_combout\);

-- Location: LCCOMB_X22_Y15_N24
\datapath|indice_giocatore[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~18_combout\ = (!\datapath|indice_giocatore[2]~12_combout\ & ((\datapath|indice_giocatore[1]~17_combout\ & (\datapath|indice_giocatore\(1))) # (!\datapath|indice_giocatore[1]~17_combout\ & 
-- ((!\datapath|indice_giocatore~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore[2]~12_combout\,
	datab => \datapath|indice_giocatore[1]~17_combout\,
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|indice_giocatore~16_combout\,
	combout => \datapath|indice_giocatore[1]~18_combout\);

-- Location: LCFF_X22_Y15_N25
\datapath|indice_giocatore[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore[1]~18_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(1));

-- Location: LCCOMB_X22_Y13_N24
\datapath|elimina_dado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|elimina_dado~0_combout\ = (\datapath|reset_altri_giocatori~1_combout\ & (\datapath|indice_dado[0]~4_combout\ & (!\datapath|Equal4~0_combout\))) # (!\datapath|reset_altri_giocatori~1_combout\ & ((\datapath|GestoreGiocatoriInCampo_RTL~7_combout\) 
-- # ((\datapath|indice_dado[0]~4_combout\ & !\datapath|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reset_altri_giocatori~1_combout\,
	datab => \datapath|indice_dado[0]~4_combout\,
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|GestoreGiocatoriInCampo_RTL~7_combout\,
	combout => \datapath|elimina_dado~0_combout\);

-- Location: LCFF_X22_Y13_N25
\datapath|elimina_dado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|elimina_dado~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|elimina_dado~regout\);

-- Location: LCCOMB_X22_Y13_N6
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~2_combout\ = (\datapath|indice_giocatore\(2)) # (((\datapath|indice_giocatore\(1)) # (!\datapath|elimina_dado~regout\)) # (!\datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(2),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|elimina_dado~regout\,
	combout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~2_combout\);

-- Location: LCCOMB_X25_Y13_N28
\datapath|giocatori_in_campo~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~27_combout\ = (\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\ & (\datapath|Mux7~4_combout\ $ (\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~2_combout\ $ (!\datapath|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux7~4_combout\,
	datab => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\,
	datac => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~2_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~27_combout\);

-- Location: LCCOMB_X18_Y16_N16
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

-- Location: LCCOMB_X18_Y16_N18
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

-- Location: LCCOMB_X18_Y16_N6
\datapath|cicli_casuali_attesa~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_casuali_attesa~1_combout\ = (\datapath|cicli_casuali_attesa\(0) & ((\datapath|cicli_casuali_attesa\(2) & ((\datapath|cicli_casuali_attesa\(1)))) # (!\datapath|cicli_casuali_attesa\(2) & (!\datapath|cicli_casuali_attesa\(3) & 
-- !\datapath|cicli_casuali_attesa\(1))))) # (!\datapath|cicli_casuali_attesa\(0) & (((\datapath|cicli_casuali_attesa\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_casuali_attesa\(0),
	datab => \datapath|cicli_casuali_attesa\(3),
	datac => \datapath|cicli_casuali_attesa\(2),
	datad => \datapath|cicli_casuali_attesa\(1),
	combout => \datapath|cicli_casuali_attesa~1_combout\);

-- Location: LCFF_X18_Y16_N7
\datapath|cicli_casuali_attesa[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_casuali_attesa~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(2));

-- Location: LCCOMB_X18_Y16_N4
\datapath|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add1~0_combout\ = \datapath|cicli_casuali_attesa\(3) $ (((\datapath|cicli_casuali_attesa\(0) & (!\datapath|cicli_casuali_attesa\(1) & !\datapath|cicli_casuali_attesa\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_casuali_attesa\(0),
	datab => \datapath|cicli_casuali_attesa\(1),
	datac => \datapath|cicli_casuali_attesa\(3),
	datad => \datapath|cicli_casuali_attesa\(2),
	combout => \datapath|Add1~0_combout\);

-- Location: LCFF_X18_Y16_N5
\datapath|cicli_casuali_attesa[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|Add1~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(3));

-- Location: LCCOMB_X18_Y16_N0
\datapath|cicli_casuali_attesa~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|cicli_casuali_attesa~0_combout\ = (\datapath|cicli_casuali_attesa\(0) & (!\datapath|cicli_casuali_attesa\(1) & ((\datapath|cicli_casuali_attesa\(2)) # (!\datapath|cicli_casuali_attesa\(3))))) # (!\datapath|cicli_casuali_attesa\(0) & 
-- (((\datapath|cicli_casuali_attesa\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_casuali_attesa\(0),
	datab => \datapath|cicli_casuali_attesa\(3),
	datac => \datapath|cicli_casuali_attesa\(1),
	datad => \datapath|cicli_casuali_attesa\(2),
	combout => \datapath|cicli_casuali_attesa~0_combout\);

-- Location: LCFF_X18_Y16_N1
\datapath|cicli_casuali_attesa[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_casuali_attesa~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(1));

-- Location: LCCOMB_X18_Y16_N14
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

-- Location: LCCOMB_X18_Y16_N10
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

-- Location: LCFF_X18_Y16_N11
\datapath|cicli_casuali_attesa[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_casuali_attesa[0]~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_casuali_attesa\(0));

-- Location: LCCOMB_X23_Y13_N30
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\ = (!\datapath|numero_giocatori_in_campo\(2) & (!\datapath|numero_giocatori_in_campo\(3) & \datapath|reset_altri_giocatori~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|numero_giocatori_in_campo\(2),
	datac => \datapath|numero_giocatori_in_campo\(3),
	datad => \datapath|reset_altri_giocatori~regout\,
	combout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\);

-- Location: LCCOMB_X23_Y14_N30
\datapath|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Decoder0~3_combout\ = (!\datapath|indice_giocatore\(1) & (\datapath|indice_giocatore\(2) & !\datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Decoder0~3_combout\);

-- Location: LCCOMB_X23_Y14_N0
\datapath|giocatori_in_campo~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~15_combout\ = (\datapath|giocatori_in_campo~10_combout\ & (((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0))))) # (!\datapath|giocatori_in_campo~10_combout\ & ((\datapath|Decoder0~3_combout\ & 
-- ((!\datapath|Mux8~4_combout\))) # (!\datapath|Decoder0~3_combout\ & (\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo~10_combout\,
	datab => \datapath|Decoder0~3_combout\,
	datac => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0),
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~15_combout\);

-- Location: LCCOMB_X23_Y14_N4
\datapath|giocatori_in_campo~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~50_combout\ = (\datapath|giocatori_in_campo~15_combout\ & (((\datapath|numero_giocatori_in_campo\(1) & \datapath|numero_giocatori_in_campo\(0))) # (!\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(1),
	datab => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\,
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|giocatori_in_campo~15_combout\,
	combout => \datapath|giocatori_in_campo~50_combout\);

-- Location: LCFF_X23_Y14_N5
\datapath|giocatori_in_campo[3].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~50_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X23_Y13_N4
\datapath|giocatori_in_campo~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~11_combout\ = (\datapath|Decoder0~0_combout\ & ((\datapath|giocatori_in_campo~10_combout\ & (\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0))) # (!\datapath|giocatori_in_campo~10_combout\ & 
-- ((!\datapath|Mux8~4_combout\))))) # (!\datapath|Decoder0~0_combout\ & (\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Decoder0~0_combout\,
	datab => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0),
	datac => \datapath|giocatori_in_campo~10_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~11_combout\);

-- Location: LCCOMB_X23_Y13_N0
\datapath|giocatori_in_campo~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~49_combout\ = (\datapath|giocatori_in_campo~11_combout\ & ((\datapath|numero_giocatori_in_campo\(1)) # ((\datapath|numero_giocatori_in_campo\(0)) # (!\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(1),
	datab => \datapath|giocatori_in_campo~11_combout\,
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\,
	combout => \datapath|giocatori_in_campo~49_combout\);

-- Location: LCFF_X23_Y13_N1
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~49_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X24_Y13_N6
\datapath|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux8~1_combout\ = (\datapath|Mux8~0_combout\ & ((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0)) # ((\datapath|indice_giocatore\(0))))) # (!\datapath|Mux8~0_combout\ & (((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0) & 
-- !\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux8~0_combout\,
	datab => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(0),
	datac => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(0),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux8~1_combout\);

-- Location: LCCOMB_X27_Y13_N20
\datapath|LessThan9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|LessThan9~4_combout\ = (!\datapath|Mux7~4_combout\ & ((\datapath|indice_giocatore\(2) & ((!\datapath|Mux8~1_combout\))) # (!\datapath|indice_giocatore\(2) & (!\datapath|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux8~3_combout\,
	datab => \datapath|Mux7~4_combout\,
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|Mux8~1_combout\,
	combout => \datapath|LessThan9~4_combout\);

-- Location: LCCOMB_X27_Y13_N12
\datapath|aggiungi_dado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|aggiungi_dado~0_combout\ = ((\datapath|dado_aggiunto~regout\ & ((\datapath|LessThan9~4_combout\) # (!\datapath|Mux6~4_combout\)))) # (!\datapath|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|dado_aggiunto~regout\,
	datab => \datapath|Mux6~4_combout\,
	datac => \datapath|LessThan9~4_combout\,
	datad => \datapath|Equal4~0_combout\,
	combout => \datapath|aggiungi_dado~0_combout\);

-- Location: LCCOMB_X27_Y13_N24
\datapath|aggiungi_dado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|aggiungi_dado~1_combout\ = (\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & ((\datapath|aggiungi_dado~0_combout\) # ((!\datapath|dado_aggiunto~regout\ & \datapath|aggiungi_dado~regout\)))) # 
-- (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & (((\datapath|aggiungi_dado~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|dado_aggiunto~regout\,
	datab => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datac => \datapath|aggiungi_dado~regout\,
	datad => \datapath|aggiungi_dado~0_combout\,
	combout => \datapath|aggiungi_dado~1_combout\);

-- Location: LCFF_X27_Y13_N25
\datapath|aggiungi_dado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|aggiungi_dado~1_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|aggiungi_dado~regout\);

-- Location: LCFF_X18_Y16_N17
\datapath|cicli_da_attendere[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_da_attendere[0]~5_combout\,
	sdata => \datapath|cicli_casuali_attesa\(0),
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => \datapath|Equal2~1_combout\,
	ena => \datapath|aggiungi_dado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_da_attendere\(0));

-- Location: LCCOMB_X18_Y16_N26
\datapath|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal2~0_combout\ = (!\datapath|cicli_da_attendere\(2) & (!\datapath|cicli_da_attendere\(1) & (!\datapath|cicli_da_attendere\(0) & !\datapath|cicli_da_attendere\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|cicli_da_attendere\(2),
	datab => \datapath|cicli_da_attendere\(1),
	datac => \datapath|cicli_da_attendere\(0),
	datad => \datapath|cicli_da_attendere\(3),
	combout => \datapath|Equal2~0_combout\);

-- Location: LCCOMB_X18_Y16_N8
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

-- Location: LCFF_X18_Y16_N19
\datapath|cicli_da_attendere[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_da_attendere[1]~7_combout\,
	sdata => \datapath|cicli_casuali_attesa[1]~_wirecell_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => \datapath|Equal2~1_combout\,
	ena => \datapath|aggiungi_dado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_da_attendere\(1));

-- Location: LCCOMB_X18_Y16_N22
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

-- Location: LCFF_X18_Y16_N23
\datapath|cicli_da_attendere[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_da_attendere[3]~11_combout\,
	sdata => \datapath|cicli_casuali_attesa\(3),
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => \datapath|Equal2~1_combout\,
	ena => \datapath|aggiungi_dado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_da_attendere\(3));

-- Location: LCCOMB_X18_Y16_N24
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

-- Location: LCFF_X18_Y16_N25
\datapath|cicli_da_attendere[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|cicli_da_attendere[4]~13_combout\,
	sdata => VCC,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => \datapath|Equal2~1_combout\,
	ena => \datapath|aggiungi_dado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|cicli_da_attendere\(4));

-- Location: LCCOMB_X19_Y16_N30
\datapath|giocatori_in_campo~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~10_combout\ = (!\datapath|elimina_dado~regout\ & (((!\datapath|aggiungi_dado~regout\) # (!\datapath|cicli_da_attendere\(4))) # (!\datapath|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal3~0_combout\,
	datab => \datapath|cicli_da_attendere\(4),
	datac => \datapath|elimina_dado~regout\,
	datad => \datapath|aggiungi_dado~regout\,
	combout => \datapath|giocatori_in_campo~10_combout\);

-- Location: LCCOMB_X26_Y13_N28
\datapath|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Decoder0~4_combout\ = (!\datapath|indice_giocatore\(1) & (!\datapath|indice_giocatore\(2) & \datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Decoder0~4_combout\);

-- Location: LCCOMB_X25_Y13_N12
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~3_combout\ = ((!\datapath|giocatori_in_campo~10_combout\ & \datapath|Decoder0~4_combout\)) # (!\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\,
	datac => \datapath|giocatori_in_campo~10_combout\,
	datad => \datapath|Decoder0~4_combout\,
	combout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~3_combout\);

-- Location: LCFF_X25_Y13_N29
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~27_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X27_Y13_N10
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\ = ((\datapath|numero_giocatori_in_campo\(1) & (\datapath|numero_giocatori_in_campo\(0) & \datapath|numero_giocatori_in_campo\(2)))) # 
-- (!\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~1_combout\,
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|numero_giocatori_in_campo\(2),
	combout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\);

-- Location: LCCOMB_X25_Y13_N24
\datapath|giocatori_in_campo~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~30_combout\ = (\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\ & (\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~1_combout\ $ (\datapath|Mux8~4_combout\ $ (!\datapath|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~1_combout\,
	datab => \datapath|Mux8~4_combout\,
	datac => \datapath|Mux7~4_combout\,
	datad => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\,
	combout => \datapath|giocatori_in_campo~30_combout\);

-- Location: LCCOMB_X26_Y13_N8
\datapath|Decoder0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Decoder0~7_combout\ = (!\datapath|indice_giocatore\(1) & (!\datapath|indice_giocatore\(2) & !\datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Decoder0~7_combout\);

-- Location: LCCOMB_X25_Y13_N18
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~2_combout\ = ((\datapath|Decoder0~7_combout\ & !\datapath|giocatori_in_campo~10_combout\)) # (!\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Decoder0~7_combout\,
	datac => \datapath|giocatori_in_campo~10_combout\,
	datad => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\,
	combout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~2_combout\);

-- Location: LCFF_X25_Y13_N25
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~30_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X22_Y13_N4
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~4_combout\ = (\datapath|indice_giocatore\(2)) # ((\datapath|indice_giocatore\(0)) # ((!\datapath|elimina_dado~regout\) # (!\datapath|indice_giocatore\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(2),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|elimina_dado~regout\,
	combout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~4_combout\);

-- Location: LCCOMB_X26_Y13_N30
\datapath|giocatori_in_campo~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~28_combout\ = (\datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~6_combout\ & (\datapath|Mux8~4_combout\ $ (\datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~4_combout\ $ (!\datapath|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~6_combout\,
	datab => \datapath|Mux8~4_combout\,
	datac => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~4_combout\,
	datad => \datapath|Mux7~4_combout\,
	combout => \datapath|giocatori_in_campo~28_combout\);

-- Location: LCCOMB_X26_Y13_N4
\datapath|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Decoder0~5_combout\ = (\datapath|indice_giocatore\(1) & (!\datapath|indice_giocatore\(2) & !\datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Decoder0~5_combout\);

-- Location: LCCOMB_X27_Y13_N30
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~6_combout\ = ((\datapath|numero_giocatori_in_campo\(2) & ((\datapath|numero_giocatori_in_campo\(1)) # (\datapath|numero_giocatori_in_campo\(0))))) # 
-- (!\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~1_combout\,
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|numero_giocatori_in_campo\(2),
	combout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~6_combout\);

-- Location: LCCOMB_X26_Y13_N16
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~5_combout\ = ((\datapath|Decoder0~5_combout\ & !\datapath|giocatori_in_campo~10_combout\)) # (!\datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Decoder0~5_combout\,
	datac => \datapath|giocatori_in_campo~10_combout\,
	datad => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~6_combout\,
	combout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~5_combout\);

-- Location: LCFF_X26_Y13_N31
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~28_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X25_Y13_N10
\datapath|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux7~2_combout\ = (\datapath|indice_giocatore\(0) & (\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1) & ((\datapath|indice_giocatore\(1))))) # (!\datapath|indice_giocatore\(0) & (((\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1)) 
-- # (!\datapath|indice_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(1),
	datab => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(1),
	datac => \datapath|indice_giocatore\(0),
	datad => \datapath|indice_giocatore\(1),
	combout => \datapath|Mux7~2_combout\);

-- Location: LCCOMB_X25_Y13_N6
\datapath|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux7~3_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|Mux7~2_combout\)))) # (!\datapath|indice_giocatore\(1) & ((\datapath|Mux7~2_combout\ & ((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1)))) # (!\datapath|Mux7~2_combout\ & 
-- (\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datab => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(1),
	datac => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(1),
	datad => \datapath|Mux7~2_combout\,
	combout => \datapath|Mux7~3_combout\);

-- Location: LCCOMB_X25_Y14_N30
\datapath|giocatori_in_campo~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~25_combout\ = \datapath|Mux7~4_combout\ $ (\datapath|Mux8~4_combout\ $ (((\datapath|Decoder0~2_combout\ & \datapath|elimina_dado~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Decoder0~2_combout\,
	datab => \datapath|elimina_dado~regout\,
	datac => \datapath|Mux7~4_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~25_combout\);

-- Location: LCCOMB_X25_Y14_N2
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\ = (\datapath|indice_giocatore\(0) & (!\datapath|giocatori_in_campo~10_combout\ & (\datapath|indice_giocatore\(1) & \datapath|indice_giocatore\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(0),
	datab => \datapath|giocatori_in_campo~10_combout\,
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|indice_giocatore\(2),
	combout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\);

-- Location: LCFF_X25_Y14_N31
\datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~25_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[0].numero_dadi_in_mano[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X24_Y14_N18
\datapath|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux7~0_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1) & \datapath|indice_giocatore\(0))))) # (!\datapath|indice_giocatore\(1) & ((\datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1)) # 
-- ((!\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(1),
	datab => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(1),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y14_N4
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~5_combout\ = (\datapath|indice_giocatore\(0)) # (((!\datapath|indice_giocatore\(2)) # (!\datapath|indice_giocatore\(1))) # (!\datapath|elimina_dado~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(0),
	datab => \datapath|elimina_dado~regout\,
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|indice_giocatore\(2),
	combout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~5_combout\);

-- Location: LCCOMB_X23_Y14_N20
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~7_combout\ = ((\datapath|numero_giocatori_in_campo\(0)) # (\datapath|numero_giocatori_in_campo\(1))) # (!\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~4_combout\,
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|numero_giocatori_in_campo\(1),
	combout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~7_combout\);

-- Location: LCCOMB_X25_Y14_N12
\datapath|giocatori_in_campo~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~23_combout\ = (\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~7_combout\ & (\datapath|Mux7~4_combout\ $ (\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~5_combout\ $ (!\datapath|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux7~4_combout\,
	datab => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~5_combout\,
	datac => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~7_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~23_combout\);

-- Location: LCCOMB_X23_Y14_N18
\datapath|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Decoder0~0_combout\ = (\datapath|indice_giocatore\(1) & (\datapath|indice_giocatore\(2) & !\datapath|indice_giocatore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Decoder0~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~6_combout\ = ((\datapath|Decoder0~0_combout\ & !\datapath|giocatori_in_campo~10_combout\)) # (!\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~7_combout\,
	datab => \datapath|Decoder0~0_combout\,
	datac => \datapath|giocatori_in_campo~10_combout\,
	combout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~6_combout\);

-- Location: LCFF_X25_Y14_N13
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~23_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1));

-- Location: LCCOMB_X24_Y14_N14
\datapath|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux7~1_combout\ = (\datapath|Mux7~0_combout\ & ((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1)) # ((\datapath|indice_giocatore\(0))))) # (!\datapath|Mux7~0_combout\ & (((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1) & 
-- !\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(1),
	datab => \datapath|Mux7~0_combout\,
	datac => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(1),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux7~1_combout\);

-- Location: LCCOMB_X25_Y14_N24
\datapath|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux7~4_combout\ = (\datapath|indice_giocatore\(2) & ((\datapath|Mux7~1_combout\))) # (!\datapath|indice_giocatore\(2) & (\datapath|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(2),
	datac => \datapath|Mux7~3_combout\,
	datad => \datapath|Mux7~1_combout\,
	combout => \datapath|Mux7~4_combout\);

-- Location: LCCOMB_X27_Y13_N26
\datapath|indice_giocatore[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~9_combout\ = (((!\datapath|Mux8~4_combout\ & !\datapath|Mux7~4_combout\)) # (!\datapath|Mux6~4_combout\)) # (!\datapath|dado_aggiunto~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|dado_aggiunto~regout\,
	datab => \datapath|Mux8~4_combout\,
	datac => \datapath|Mux6~4_combout\,
	datad => \datapath|Mux7~4_combout\,
	combout => \datapath|indice_giocatore[1]~9_combout\);

-- Location: LCCOMB_X27_Y13_N8
\datapath|indice_giocatore[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~10_combout\ = ((\datapath|Equal4~0_combout\ & \datapath|indice_giocatore[1]~9_combout\)) # (!\controller|Update_State_Controller:nuovo_giocatore_old~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datac => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datad => \datapath|indice_giocatore[1]~9_combout\,
	combout => \datapath|indice_giocatore[1]~10_combout\);

-- Location: LCCOMB_X22_Y13_N18
\datapath|indice_giocatore[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~11_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL~7_combout\ & (\datapath|Equal4~0_combout\ & (\datapath|reset_altri_giocatori~1_combout\ $ (\datapath|indice_giocatore[1]~10_combout\)))) # 
-- (!\datapath|GestoreGiocatoriInCampo_RTL~7_combout\ & (((\datapath|indice_giocatore[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reset_altri_giocatori~1_combout\,
	datab => \datapath|GestoreGiocatoriInCampo_RTL~7_combout\,
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|indice_giocatore[1]~10_combout\,
	combout => \datapath|indice_giocatore[1]~11_combout\);

-- Location: LCCOMB_X22_Y13_N8
\datapath|indice_giocatore[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[1]~17_combout\ = (!\controller|Update_State_Controller:check_old~regout\ & \datapath|indice_giocatore[1]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Update_State_Controller:check_old~regout\,
	datad => \datapath|indice_giocatore[1]~11_combout\,
	combout => \datapath|indice_giocatore[1]~17_combout\);

-- Location: LCCOMB_X22_Y15_N20
\datapath|indice_turno_giocatore~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_turno_giocatore~3_combout\ = (!\datapath|Equal12~2_combout\ & (\datapath|indice_turno_giocatore\(2) $ (((\datapath|indice_turno_giocatore\(0) & \datapath|indice_turno_giocatore\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(0),
	datab => \datapath|Equal12~2_combout\,
	datac => \datapath|indice_turno_giocatore\(2),
	datad => \datapath|indice_turno_giocatore\(1),
	combout => \datapath|indice_turno_giocatore~3_combout\);

-- Location: LCFF_X22_Y15_N21
\datapath|indice_turno_giocatore[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_turno_giocatore~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|indice_turno_giocatore[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_turno_giocatore\(2));

-- Location: LCCOMB_X22_Y15_N30
\datapath|indice_giocatore~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~19_combout\ = (\datapath|indice_giocatore[1]~14_combout\ & (\datapath|numero_giocatori_in_campo\(2) $ (((\datapath|Equal11~0_combout\ & \datapath|indice_giocatore[1]~13_combout\))))) # (!\datapath|indice_giocatore[1]~14_combout\ 
-- & (((!\datapath|indice_giocatore[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal11~0_combout\,
	datab => \datapath|numero_giocatori_in_campo\(2),
	datac => \datapath|indice_giocatore[1]~13_combout\,
	datad => \datapath|indice_giocatore[1]~14_combout\,
	combout => \datapath|indice_giocatore~19_combout\);

-- Location: LCCOMB_X22_Y15_N28
\datapath|indice_giocatore~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~20_combout\ = (\datapath|indice_giocatore[1]~8_combout\ & (\datapath|indice_turno_giocatore\(2) $ (((\datapath|Equal5~1_combout\ & \datapath|indice_giocatore~19_combout\))))) # (!\datapath|indice_giocatore[1]~8_combout\ & 
-- (((\datapath|indice_giocatore~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal5~1_combout\,
	datab => \datapath|indice_turno_giocatore\(2),
	datac => \datapath|indice_giocatore[1]~8_combout\,
	datad => \datapath|indice_giocatore~19_combout\,
	combout => \datapath|indice_giocatore~20_combout\);

-- Location: LCCOMB_X22_Y15_N22
\datapath|indice_giocatore[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore[2]~21_combout\ = (!\datapath|indice_giocatore[2]~12_combout\ & ((\datapath|indice_giocatore[1]~17_combout\ & (\datapath|indice_giocatore\(2))) # (!\datapath|indice_giocatore[1]~17_combout\ & 
-- ((!\datapath|indice_giocatore~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore[2]~12_combout\,
	datab => \datapath|indice_giocatore[1]~17_combout\,
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore~20_combout\,
	combout => \datapath|indice_giocatore[2]~21_combout\);

-- Location: LCFF_X22_Y15_N23
\datapath|indice_giocatore[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore[2]~21_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(2));

-- Location: LCCOMB_X26_Y13_N22
\datapath|giocatori_in_campo~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~16_combout\ = (\datapath|Decoder0~4_combout\ & ((\datapath|giocatori_in_campo~10_combout\ & (\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0))) # (!\datapath|giocatori_in_campo~10_combout\ & 
-- ((!\datapath|Mux8~4_combout\))))) # (!\datapath|Decoder0~4_combout\ & (\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Decoder0~4_combout\,
	datab => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0),
	datac => \datapath|giocatori_in_campo~10_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~16_combout\);

-- Location: LCCOMB_X26_Y13_N0
\datapath|giocatori_in_campo~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~17_combout\ = (\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\ & \datapath|giocatori_in_campo~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\,
	datad => \datapath|giocatori_in_campo~16_combout\,
	combout => \datapath|giocatori_in_campo~17_combout\);

-- Location: LCFF_X26_Y13_N1
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~17_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X23_Y13_N12
\datapath|giocatori_in_campo~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~20_combout\ = (\datapath|Decoder0~6_combout\ & ((\datapath|giocatori_in_campo~10_combout\ & (\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0))) # (!\datapath|giocatori_in_campo~10_combout\ & 
-- ((!\datapath|Mux8~4_combout\))))) # (!\datapath|Decoder0~6_combout\ & (\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Decoder0~6_combout\,
	datab => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0),
	datac => \datapath|giocatori_in_campo~10_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~20_combout\);

-- Location: LCCOMB_X23_Y13_N18
\datapath|giocatori_in_campo~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~51_combout\ = (\datapath|giocatori_in_campo~20_combout\ & (((\datapath|numero_giocatori_in_campo\(3)) # (\datapath|numero_giocatori_in_campo\(2))) # (!\datapath|reset_altri_giocatori~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|reset_altri_giocatori~regout\,
	datab => \datapath|numero_giocatori_in_campo\(3),
	datac => \datapath|numero_giocatori_in_campo\(2),
	datad => \datapath|giocatori_in_campo~20_combout\,
	combout => \datapath|giocatori_in_campo~51_combout\);

-- Location: LCFF_X23_Y13_N19
\datapath|giocatori_in_campo[4].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~51_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X26_Y13_N24
\datapath|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux8~2_combout\ = (\datapath|indice_giocatore\(1) & ((\datapath|indice_giocatore\(0) & ((\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0)))) # (!\datapath|indice_giocatore\(0) & (\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0))))) 
-- # (!\datapath|indice_giocatore\(1) & (((!\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(0),
	datab => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Mux8~2_combout\);

-- Location: LCCOMB_X26_Y13_N26
\datapath|giocatori_in_campo~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~21_combout\ = (\datapath|Decoder0~7_combout\ & ((\datapath|giocatori_in_campo~10_combout\ & (\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0))) # (!\datapath|giocatori_in_campo~10_combout\ & 
-- ((!\datapath|Mux8~4_combout\))))) # (!\datapath|Decoder0~7_combout\ & (\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0),
	datab => \datapath|Decoder0~7_combout\,
	datac => \datapath|giocatori_in_campo~10_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|giocatori_in_campo~21_combout\);

-- Location: LCCOMB_X26_Y13_N6
\datapath|giocatori_in_campo~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~22_combout\ = (\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\ & \datapath|giocatori_in_campo~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\,
	datad => \datapath|giocatori_in_campo~21_combout\,
	combout => \datapath|giocatori_in_campo~22_combout\);

-- Location: LCFF_X26_Y13_N7
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~22_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0));

-- Location: LCCOMB_X26_Y13_N12
\datapath|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux8~3_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|Mux8~2_combout\)))) # (!\datapath|indice_giocatore\(1) & ((\datapath|Mux8~2_combout\ & ((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0)))) # (!\datapath|Mux8~2_combout\ & 
-- (\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datab => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(0),
	datac => \datapath|Mux8~2_combout\,
	datad => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(0),
	combout => \datapath|Mux8~3_combout\);

-- Location: LCCOMB_X27_Y13_N28
\datapath|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux8~4_combout\ = (\datapath|indice_giocatore\(2) & (\datapath|Mux8~1_combout\)) # (!\datapath|indice_giocatore\(2) & ((\datapath|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Mux8~1_combout\,
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|Mux8~3_combout\,
	combout => \datapath|Mux8~4_combout\);

-- Location: LCCOMB_X27_Y13_N22
\datapath|GIOCATORE_AGGIUNTO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|GIOCATORE_AGGIUNTO~0_combout\ = (\datapath|dado_aggiunto~regout\ & (\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & ((\datapath|Mux8~4_combout\) # (\datapath|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|dado_aggiunto~regout\,
	datab => \datapath|Mux8~4_combout\,
	datac => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	datad => \datapath|Mux7~4_combout\,
	combout => \datapath|GIOCATORE_AGGIUNTO~0_combout\);

-- Location: LCCOMB_X26_Y15_N0
\datapath|indice_giocatore~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~4_combout\ = (!\datapath|indice_giocatore~3_combout\ & (!\controller|Update_State_Controller:check_old~regout\ & ((!\datapath|Mux6~4_combout\) # (!\datapath|GIOCATORE_AGGIUNTO~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore~3_combout\,
	datab => \controller|Update_State_Controller:check_old~regout\,
	datac => \datapath|GIOCATORE_AGGIUNTO~0_combout\,
	datad => \datapath|Mux6~4_combout\,
	combout => \datapath|indice_giocatore~4_combout\);

-- Location: LCCOMB_X26_Y15_N20
\datapath|indice_giocatore~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~23_combout\ = (\datapath|Equal4~0_combout\ & ((!\datapath|indice_giocatore~4_combout\) # (!\datapath|indice_giocatore\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datac => \datapath|indice_giocatore\(3),
	datad => \datapath|indice_giocatore~4_combout\,
	combout => \datapath|indice_giocatore~23_combout\);

-- Location: LCCOMB_X26_Y15_N30
\datapath|indice_giocatore~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~22_combout\ = (!\datapath|Add7~1_combout\ & (\datapath|Equal5~0_combout\ & (\controller|Update_State_Controller:check_old~regout\ & \datapath|LessThan10~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add7~1_combout\,
	datab => \datapath|Equal5~0_combout\,
	datac => \controller|Update_State_Controller:check_old~regout\,
	datad => \datapath|LessThan10~29_combout\,
	combout => \datapath|indice_giocatore~22_combout\);

-- Location: LCCOMB_X26_Y15_N12
\datapath|indice_giocatore~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~26_combout\ = (!\datapath|indice_giocatore~23_combout\ & (!\datapath|indice_giocatore~22_combout\ & ((\controller|Update_State_Controller:check_old~regout\) # (!\datapath|indice_giocatore~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore~25_combout\,
	datab => \controller|Update_State_Controller:check_old~regout\,
	datac => \datapath|indice_giocatore~23_combout\,
	datad => \datapath|indice_giocatore~22_combout\,
	combout => \datapath|indice_giocatore~26_combout\);

-- Location: LCFF_X26_Y15_N13
\datapath|indice_giocatore[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore~26_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(3));

-- Location: LCCOMB_X26_Y13_N14
\datapath|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal4~0_combout\ = (\datapath|indice_giocatore\(2)) # ((\datapath|indice_giocatore\(3)) # ((\datapath|indice_giocatore\(1)) # (\datapath|indice_giocatore\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(2),
	datab => \datapath|indice_giocatore\(3),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|Equal4~0_combout\);

-- Location: LCCOMB_X26_Y14_N8
\datapath|reset_altri_giocatori~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|reset_altri_giocatori~1_combout\ = (!\datapath|Mux7~4_combout\ & (!\datapath|Mux6~4_combout\ & !\datapath|Mux8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux7~4_combout\,
	datac => \datapath|Mux6~4_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|reset_altri_giocatori~1_combout\);

-- Location: LCCOMB_X22_Y13_N12
\datapath|numero_giocatori_in_campo[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[0]~6_combout\ = ((!\datapath|reset_altri_giocatori~1_combout\) # (!\datapath|Equal4~0_combout\)) # (!\datapath|indice_dado[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_dado[0]~4_combout\,
	datac => \datapath|Equal4~0_combout\,
	datad => \datapath|reset_altri_giocatori~1_combout\,
	combout => \datapath|numero_giocatori_in_campo[0]~6_combout\);

-- Location: LCCOMB_X23_Y13_N22
\datapath|numero_giocatori_in_campo[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[3]~7_combout\ = (\datapath|numero_giocatori_in_campo\(1) & (\datapath|numero_giocatori_in_campo\(2) & (\datapath|numero_giocatori_in_campo\(0) & \datapath|numero_giocatori_in_campo[0]~6_combout\))) # 
-- (!\datapath|numero_giocatori_in_campo\(1) & (!\datapath|numero_giocatori_in_campo\(2) & (!\datapath|numero_giocatori_in_campo\(0) & !\datapath|numero_giocatori_in_campo[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(1),
	datab => \datapath|numero_giocatori_in_campo\(2),
	datac => \datapath|numero_giocatori_in_campo\(0),
	datad => \datapath|numero_giocatori_in_campo[0]~6_combout\,
	combout => \datapath|numero_giocatori_in_campo[3]~7_combout\);

-- Location: LCCOMB_X23_Y13_N8
\datapath|numero_giocatori_in_campo[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[3]~8_combout\ = \datapath|numero_giocatori_in_campo\(3) $ (((\datapath|numero_giocatori_in_campo[3]~7_combout\ & \datapath|numero_giocatori_in_campo[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|numero_giocatori_in_campo[3]~7_combout\,
	datac => \datapath|numero_giocatori_in_campo\(3),
	datad => \datapath|numero_giocatori_in_campo[0]~3_combout\,
	combout => \datapath|numero_giocatori_in_campo[3]~8_combout\);

-- Location: LCFF_X23_Y13_N9
\datapath|numero_giocatori_in_campo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo[3]~8_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(3));

-- Location: LCCOMB_X27_Y15_N4
\datapath|NR_GIOCATORI_IN_CAMPO[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|NR_GIOCATORI_IN_CAMPO[3]~feeder_combout\ = \datapath|numero_giocatori_in_campo\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|numero_giocatori_in_campo\(3),
	combout => \datapath|NR_GIOCATORI_IN_CAMPO[3]~feeder_combout\);

-- Location: LCCOMB_X27_Y15_N10
\controller|Update_State_Controller~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~5_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\ & ((\controller|Update_State_Controller:elimina_giocatore_old~regout\) # ((\controller|Update_State_Controller~1_combout\ & 
-- \controller|Update_State_Controller~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~1_combout\,
	datab => \datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\,
	datac => \controller|Update_State_Controller~4_combout\,
	datad => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	combout => \controller|Update_State_Controller~5_combout\);

-- Location: LCCOMB_X27_Y15_N2
\controller|DAMMI_GIOCATORI_IN_CAMPO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|DAMMI_GIOCATORI_IN_CAMPO~0_combout\ = (\controller|Update_State_Controller~5_combout\) # ((\controller|nuovo_giocatore_old~0_combout\ & \datapath|GIOCATORE_AGGIUNTO~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|nuovo_giocatore_old~0_combout\,
	datac => \datapath|GIOCATORE_AGGIUNTO~regout\,
	datad => \controller|Update_State_Controller~5_combout\,
	combout => \controller|DAMMI_GIOCATORI_IN_CAMPO~0_combout\);

-- Location: LCFF_X27_Y15_N3
\controller|DAMMI_GIOCATORI_IN_CAMPO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|DAMMI_GIOCATORI_IN_CAMPO~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|DAMMI_GIOCATORI_IN_CAMPO~regout\);

-- Location: LCFF_X27_Y15_N5
\datapath|NR_GIOCATORI_IN_CAMPO[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|NR_GIOCATORI_IN_CAMPO[3]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|DAMMI_GIOCATORI_IN_CAMPO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|NR_GIOCATORI_IN_CAMPO\(3));

-- Location: LCFF_X27_Y15_N1
\controller|numero_giocatori[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|NR_GIOCATORI_IN_CAMPO\(3),
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(3));

-- Location: LCCOMB_X27_Y15_N14
\datapath|NR_GIOCATORI_IN_CAMPO[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|NR_GIOCATORI_IN_CAMPO[2]~feeder_combout\ = \datapath|numero_giocatori_in_campo\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|numero_giocatori_in_campo\(2),
	combout => \datapath|NR_GIOCATORI_IN_CAMPO[2]~feeder_combout\);

-- Location: LCFF_X27_Y15_N15
\datapath|NR_GIOCATORI_IN_CAMPO[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|NR_GIOCATORI_IN_CAMPO[2]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|DAMMI_GIOCATORI_IN_CAMPO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|NR_GIOCATORI_IN_CAMPO\(2));

-- Location: LCFF_X27_Y15_N13
\controller|numero_giocatori[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|NR_GIOCATORI_IN_CAMPO\(2),
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(2));

-- Location: LCFF_X27_Y15_N19
\datapath|NR_GIOCATORI_IN_CAMPO[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|numero_giocatori_in_campo\(1),
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|DAMMI_GIOCATORI_IN_CAMPO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|NR_GIOCATORI_IN_CAMPO\(1));

-- Location: LCCOMB_X27_Y15_N30
\controller|numero_giocatori[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[1]~feeder_combout\ = \datapath|NR_GIOCATORI_IN_CAMPO\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|NR_GIOCATORI_IN_CAMPO\(1),
	combout => \controller|numero_giocatori[1]~feeder_combout\);

-- Location: LCFF_X27_Y15_N31
\controller|numero_giocatori[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[1]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(1));

-- Location: LCCOMB_X27_Y15_N12
\controller|Update_State_Controller~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~1_combout\ = (\controller|Update_State_Controller~0_combout\ & ((\controller|numero_giocatori\(3)) # ((\controller|numero_giocatori\(2)) # (\controller|numero_giocatori\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~0_combout\,
	datab => \controller|numero_giocatori\(3),
	datac => \controller|numero_giocatori\(2),
	datad => \controller|numero_giocatori\(1),
	combout => \controller|Update_State_Controller~1_combout\);

-- Location: LCCOMB_X27_Y15_N8
\controller|elimina_giocatore_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|elimina_giocatore_old~0_combout\ = (!\datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\ & ((\controller|Update_State_Controller:elimina_giocatore_old~regout\) # ((\controller|Update_State_Controller~4_combout\ & 
-- \controller|Update_State_Controller~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|Update_State_Controller~4_combout\,
	datab => \controller|Update_State_Controller~1_combout\,
	datac => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datad => \datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\,
	combout => \controller|elimina_giocatore_old~0_combout\);

-- Location: LCFF_X27_Y15_N9
\controller|Update_State_Controller:elimina_giocatore_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|elimina_giocatore_old~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:elimina_giocatore_old~regout\);

-- Location: LCCOMB_X22_Y13_N16
\datapath|giocatore_eliminato_old~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatore_eliminato_old~2_combout\ = (\controller|Update_State_Controller:elimina_giocatore_old~regout\ & (!\datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\ & \datapath|reset_altri_giocatori~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	datac => \datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\,
	datad => \datapath|reset_altri_giocatori~0_combout\,
	combout => \datapath|giocatore_eliminato_old~2_combout\);

-- Location: LCFF_X22_Y13_N17
\datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatore_eliminato_old~2_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\);

-- Location: LCCOMB_X25_Y15_N24
\datapath|indice_dado[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_dado[0]~4_combout\ = (\controller|Update_State_Controller:check_old~regout\) # ((!\datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\ & \controller|Update_State_Controller:elimina_giocatore_old~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|Update_State_Controller:check_old~regout\,
	datac => \datapath|GestoreGiocatoriInCampo_RTL:giocatore_eliminato_old~regout\,
	datad => \controller|Update_State_Controller:elimina_giocatore_old~regout\,
	combout => \datapath|indice_dado[0]~4_combout\);

-- Location: LCCOMB_X23_Y13_N2
\datapath|numero_giocatori_in_campo[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[2]~4_combout\ = (\datapath|numero_giocatori_in_campo\(1) & (\datapath|numero_giocatori_in_campo\(0) & ((!\datapath|reset_altri_giocatori~0_combout\) # (!\datapath|indice_dado[0]~4_combout\)))) # 
-- (!\datapath|numero_giocatori_in_campo\(1) & (!\datapath|numero_giocatori_in_campo\(0) & (\datapath|indice_dado[0]~4_combout\ & \datapath|reset_altri_giocatori~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(1),
	datab => \datapath|numero_giocatori_in_campo\(0),
	datac => \datapath|indice_dado[0]~4_combout\,
	datad => \datapath|reset_altri_giocatori~0_combout\,
	combout => \datapath|numero_giocatori_in_campo[2]~4_combout\);

-- Location: LCCOMB_X23_Y13_N10
\datapath|numero_giocatori_in_campo[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[2]~5_combout\ = \datapath|numero_giocatori_in_campo\(2) $ (((\datapath|numero_giocatori_in_campo[2]~4_combout\ & \datapath|numero_giocatori_in_campo[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|numero_giocatori_in_campo[2]~4_combout\,
	datac => \datapath|numero_giocatori_in_campo\(2),
	datad => \datapath|numero_giocatori_in_campo[0]~3_combout\,
	combout => \datapath|numero_giocatori_in_campo[2]~5_combout\);

-- Location: LCFF_X23_Y13_N11
\datapath|numero_giocatori_in_campo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo[2]~5_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(2));

-- Location: LCCOMB_X22_Y15_N26
\datapath|Add7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add7~1_combout\ = \datapath|numero_giocatori_in_campo\(3) $ (((\datapath|numero_giocatori_in_campo\(1)) # ((\datapath|numero_giocatori_in_campo\(2)) # (\datapath|numero_giocatori_in_campo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(1),
	datab => \datapath|numero_giocatori_in_campo\(2),
	datac => \datapath|numero_giocatori_in_campo\(3),
	datad => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|Add7~1_combout\);

-- Location: LCCOMB_X22_Y15_N4
\datapath|Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal12~0_combout\ = \datapath|indice_turno_giocatore\(2) $ (\datapath|numero_giocatori_in_campo\(2) $ (((\datapath|numero_giocatori_in_campo\(1)) # (\datapath|numero_giocatori_in_campo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(1),
	datab => \datapath|indice_turno_giocatore\(2),
	datac => \datapath|numero_giocatori_in_campo\(2),
	datad => \datapath|numero_giocatori_in_campo\(0),
	combout => \datapath|Equal12~0_combout\);

-- Location: LCCOMB_X22_Y15_N2
\datapath|Equal12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal12~1_combout\ = (\datapath|numero_giocatori_in_campo\(0) & (!\datapath|indice_turno_giocatore\(0) & (\datapath|numero_giocatori_in_campo\(1) $ (!\datapath|indice_turno_giocatore\(1))))) # (!\datapath|numero_giocatori_in_campo\(0) & 
-- (\datapath|indice_turno_giocatore\(0) & (\datapath|numero_giocatori_in_campo\(1) $ (\datapath|indice_turno_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(1),
	datab => \datapath|numero_giocatori_in_campo\(0),
	datac => \datapath|indice_turno_giocatore\(0),
	datad => \datapath|indice_turno_giocatore\(1),
	combout => \datapath|Equal12~1_combout\);

-- Location: LCCOMB_X22_Y15_N8
\datapath|Equal12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Equal12~2_combout\ = (!\datapath|Equal11~1_combout\ & (\datapath|Add7~1_combout\ & (\datapath|Equal12~0_combout\ & \datapath|Equal12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal11~1_combout\,
	datab => \datapath|Add7~1_combout\,
	datac => \datapath|Equal12~0_combout\,
	datad => \datapath|Equal12~1_combout\,
	combout => \datapath|Equal12~2_combout\);

-- Location: LCCOMB_X22_Y15_N6
\datapath|indice_turno_giocatore~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_turno_giocatore~6_combout\ = (!\datapath|Equal12~2_combout\ & (\datapath|indice_turno_giocatore\(0) $ (\datapath|indice_turno_giocatore\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_turno_giocatore\(0),
	datab => \datapath|Equal12~2_combout\,
	datac => \datapath|indice_turno_giocatore\(1),
	combout => \datapath|indice_turno_giocatore~6_combout\);

-- Location: LCFF_X22_Y15_N7
\datapath|indice_turno_giocatore[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_turno_giocatore~6_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|indice_turno_giocatore[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_turno_giocatore\(1));

-- Location: LCCOMB_X26_Y16_N10
\datapath|prossimo_turno_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|prossimo_turno_old~0_combout\ = (!\datapath|Equal11~1_combout\ & (\controller|PROSSIMO_TURNO~regout\ & !\datapath|prossimo_turno_old~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal11~1_combout\,
	datab => \controller|PROSSIMO_TURNO~regout\,
	datac => \datapath|prossimo_turno_old~regout\,
	combout => \datapath|prossimo_turno_old~0_combout\);

-- Location: LCFF_X26_Y16_N11
\datapath|prossimo_turno_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|prossimo_turno_old~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|prossimo_turno_old~regout\);

-- Location: LCCOMB_X26_Y16_N0
\controller|inizia_partita_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|inizia_partita_old~0_combout\ = (!\datapath|PARTITA_INIZIATA~regout\ & (!\datapath|prossimo_turno_old~regout\ & ((\controller|INIZIA_PARTITA~0_combout\) # (\controller|Update_State_Controller:inizia_partita_old~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|PARTITA_INIZIATA~regout\,
	datab => \controller|INIZIA_PARTITA~0_combout\,
	datac => \controller|Update_State_Controller:inizia_partita_old~regout\,
	datad => \datapath|prossimo_turno_old~regout\,
	combout => \controller|inizia_partita_old~0_combout\);

-- Location: LCFF_X26_Y16_N1
\controller|Update_State_Controller:inizia_partita_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|inizia_partita_old~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:inizia_partita_old~regout\);

-- Location: LCCOMB_X26_Y16_N8
\controller|Update_State_Controller~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Update_State_Controller~10_combout\ = (\datapath|prossimo_turno_old~regout\) # ((\datapath|PARTITA_INIZIATA~regout\ & ((\controller|Update_State_Controller:inizia_partita_old~regout\) # (\controller|INIZIA_PARTITA~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|PARTITA_INIZIATA~regout\,
	datab => \controller|Update_State_Controller:inizia_partita_old~regout\,
	datac => \controller|INIZIA_PARTITA~0_combout\,
	datad => \datapath|prossimo_turno_old~regout\,
	combout => \controller|Update_State_Controller~10_combout\);

-- Location: LCFF_X26_Y16_N9
\controller|DAMMI_TURNO_GIOCATORE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|Update_State_Controller~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|DAMMI_TURNO_GIOCATORE~regout\);

-- Location: LCFF_X25_Y15_N7
\datapath|I_TURNO_GIOCATORE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|indice_turno_giocatore\(1),
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|DAMMI_TURNO_GIOCATORE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|I_TURNO_GIOCATORE\(1));

-- Location: LCCOMB_X25_Y15_N22
\controller|turno[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|turno[1]~feeder_combout\ = \datapath|I_TURNO_GIOCATORE\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|I_TURNO_GIOCATORE\(1),
	combout => \controller|turno[1]~feeder_combout\);

-- Location: LCFF_X25_Y15_N23
\controller|turno[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|turno[1]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|turno\(1));

-- Location: LCCOMB_X25_Y15_N20
\datapath|I_TURNO_GIOCATORE[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|I_TURNO_GIOCATORE[0]~feeder_combout\ = \datapath|indice_turno_giocatore\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|indice_turno_giocatore\(0),
	combout => \datapath|I_TURNO_GIOCATORE[0]~feeder_combout\);

-- Location: LCFF_X25_Y15_N21
\datapath|I_TURNO_GIOCATORE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|I_TURNO_GIOCATORE[0]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \controller|DAMMI_TURNO_GIOCATORE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|I_TURNO_GIOCATORE\(0));

-- Location: LCFF_X25_Y15_N15
\controller|turno[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|I_TURNO_GIOCATORE\(0),
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|turno\(0));

-- Location: LCFF_X25_Y15_N11
\datapath|I_TURNO_GIOCATORE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|indice_turno_giocatore\(2),
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|DAMMI_TURNO_GIOCATORE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|I_TURNO_GIOCATORE\(2));

-- Location: LCCOMB_X25_Y15_N12
\controller|turno[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|turno[2]~feeder_combout\ = \datapath|I_TURNO_GIOCATORE\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|I_TURNO_GIOCATORE\(2),
	combout => \controller|turno[2]~feeder_combout\);

-- Location: LCFF_X25_Y15_N13
\controller|turno[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|turno[2]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|turno\(2));

-- Location: LCCOMB_X25_Y15_N14
\controller|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Equal0~0_combout\ = (\controller|turno\(1)) # ((\controller|turno\(0)) # (\controller|turno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|turno\(1),
	datac => \controller|turno\(0),
	datad => \controller|turno\(2),
	combout => \controller|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y16_N24
\controller|internal_state.TURN_PLAYER~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|internal_state.TURN_PLAYER~0_combout\ = !\controller|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|Equal0~0_combout\,
	combout => \controller|internal_state.TURN_PLAYER~0_combout\);

-- Location: LCFF_X26_Y16_N25
\controller|internal_state.TURN_PLAYER\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|internal_state.TURN_PLAYER~0_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|PARTITA_INIZIATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|internal_state.TURN_PLAYER~regout\);

-- Location: LCCOMB_X27_Y16_N28
\controller|check_old~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|check_old~1_combout\ = ((\controller|Update_State_Controller~6_combout\ & ((\controller|check_old~0_combout\) # (\controller|Selector3~2_combout\)))) # (!\controller|internal_state.TURN_PLAYER~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|check_old~0_combout\,
	datab => \controller|internal_state.TURN_PLAYER~regout\,
	datac => \controller|Selector3~2_combout\,
	datad => \controller|Update_State_Controller~6_combout\,
	combout => \controller|check_old~1_combout\);

-- Location: LCCOMB_X27_Y16_N16
\controller|check_old~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|check_old~3_combout\ = (!\datapath|CHECKED~regout\ & ((\controller|Update_State_Controller:check_old~regout\) # ((\controller|check_old~2_combout\ & \controller|check_old~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|CHECKED~regout\,
	datab => \controller|check_old~2_combout\,
	datac => \controller|Update_State_Controller:check_old~regout\,
	datad => \controller|check_old~1_combout\,
	combout => \controller|check_old~3_combout\);

-- Location: LCFF_X27_Y16_N17
\controller|Update_State_Controller:check_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|check_old~3_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|Update_State_Controller:check_old~regout\);

-- Location: LCCOMB_X26_Y15_N26
\datapath|indice_giocatore~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~5_combout\ = (\datapath|GestoreGiocatoriInCampo_RTL~7_combout\ & (\datapath|indice_giocatore\(0) $ ((\datapath|numero_giocatori_in_campo\(0))))) # (!\datapath|GestoreGiocatoriInCampo_RTL~7_combout\ & 
-- (\controller|Update_State_Controller:nuovo_giocatore_old~regout\ & (\datapath|indice_giocatore\(0) $ (!\datapath|numero_giocatori_in_campo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(0),
	datab => \datapath|numero_giocatori_in_campo\(0),
	datac => \datapath|GestoreGiocatoriInCampo_RTL~7_combout\,
	datad => \controller|Update_State_Controller:nuovo_giocatore_old~regout\,
	combout => \datapath|indice_giocatore~5_combout\);

-- Location: LCCOMB_X26_Y15_N24
\datapath|indice_giocatore~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~6_combout\ = (\datapath|Equal4~0_combout\ & (((\datapath|indice_giocatore\(0) & \datapath|indice_giocatore~4_combout\)))) # (!\datapath|Equal4~0_combout\ & (\datapath|indice_giocatore~5_combout\ $ 
-- ((\datapath|indice_giocatore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \datapath|indice_giocatore~5_combout\,
	datac => \datapath|indice_giocatore\(0),
	datad => \datapath|indice_giocatore~4_combout\,
	combout => \datapath|indice_giocatore~6_combout\);

-- Location: LCCOMB_X26_Y15_N28
\datapath|indice_giocatore~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~2_combout\ = (\datapath|indice_turno_giocatore\(0) & (((!\datapath|LessThan10~29_combout\)))) # (!\datapath|indice_turno_giocatore\(0) & (\datapath|LessThan10~29_combout\ & ((!\datapath|Equal5~0_combout\) # 
-- (!\datapath|numero_giocatori_in_campo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(0),
	datab => \datapath|indice_turno_giocatore\(0),
	datac => \datapath|Equal5~0_combout\,
	datad => \datapath|LessThan10~29_combout\,
	combout => \datapath|indice_giocatore~2_combout\);

-- Location: LCCOMB_X26_Y15_N16
\datapath|indice_giocatore~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|indice_giocatore~7_combout\ = (\controller|Update_State_Controller:check_old~regout\ & (!\datapath|indice_giocatore~2_combout\ & ((\datapath|indice_giocatore~6_combout\) # (!\datapath|Equal4~0_combout\)))) # 
-- (!\controller|Update_State_Controller:check_old~regout\ & (((\datapath|indice_giocatore~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \controller|Update_State_Controller:check_old~regout\,
	datac => \datapath|indice_giocatore~6_combout\,
	datad => \datapath|indice_giocatore~2_combout\,
	combout => \datapath|indice_giocatore~7_combout\);

-- Location: LCFF_X26_Y15_N17
\datapath|indice_giocatore[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|indice_giocatore~7_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|indice_giocatore\(0));

-- Location: LCCOMB_X23_Y14_N26
\datapath|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add2~0_combout\ = \datapath|Mux6~4_combout\ $ (((\datapath|Mux7~4_combout\ & \datapath|Mux8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux7~4_combout\,
	datac => \datapath|Mux6~4_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|Add2~0_combout\);

-- Location: LCCOMB_X26_Y14_N28
\datapath|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Add4~4_combout\ = \datapath|Mux6~4_combout\ $ (((\datapath|Mux7~4_combout\) # (\datapath|Mux8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux7~4_combout\,
	datac => \datapath|Mux6~4_combout\,
	datad => \datapath|Mux8~4_combout\,
	combout => \datapath|Add4~4_combout\);

-- Location: LCCOMB_X25_Y14_N18
\datapath|giocatori_in_campo~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~32_combout\ = (\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~7_combout\ & ((\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~5_combout\ & (\datapath|Add2~0_combout\)) # 
-- (!\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~5_combout\ & ((!\datapath|Add4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~7_combout\,
	datab => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~5_combout\,
	datac => \datapath|Add2~0_combout\,
	datad => \datapath|Add4~4_combout\,
	combout => \datapath|giocatori_in_campo~32_combout\);

-- Location: LCFF_X25_Y14_N19
\datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~32_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[1].numero_dadi_in_mano[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X27_Y14_N0
\datapath|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux6~0_combout\ = (\datapath|indice_giocatore\(0) & (\datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2) & (\datapath|indice_giocatore\(1)))) # (!\datapath|indice_giocatore\(0) & (((\datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2)) # 
-- (!\datapath|indice_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[0].numero_dadi_in_mano\(2),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[1].numero_dadi_in_mano\(2),
	combout => \datapath|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y14_N28
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~1_combout\ = ((\datapath|indice_giocatore\(1)) # ((!\datapath|indice_giocatore\(0)) # (!\datapath|indice_giocatore\(2)))) # (!\datapath|elimina_dado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|elimina_dado~regout\,
	datab => \datapath|indice_giocatore\(1),
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|indice_giocatore\(0),
	combout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~1_combout\);

-- Location: LCCOMB_X24_Y13_N0
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\ = (\datapath|numero_giocatori_in_campo\(3)) # ((\datapath|numero_giocatori_in_campo\(1)) # ((\datapath|numero_giocatori_in_campo\(2)) # (!\datapath|reset_altri_giocatori~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|numero_giocatori_in_campo\(3),
	datab => \datapath|numero_giocatori_in_campo\(1),
	datac => \datapath|numero_giocatori_in_campo\(2),
	datad => \datapath|reset_altri_giocatori~regout\,
	combout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\);

-- Location: LCCOMB_X24_Y14_N12
\datapath|giocatori_in_campo~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~31_combout\ = (\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\ & ((\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~1_combout\ & (\datapath|Add2~0_combout\)) # 
-- (!\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~1_combout\ & ((!\datapath|Add4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add2~0_combout\,
	datab => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~1_combout\,
	datac => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\,
	datad => \datapath|Add4~4_combout\,
	combout => \datapath|giocatori_in_campo~31_combout\);

-- Location: LCCOMB_X23_Y13_N6
\datapath|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Decoder0~1_combout\ = (\datapath|indice_giocatore\(2) & (\datapath|indice_giocatore\(0) & !\datapath|indice_giocatore\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|indice_giocatore\(2),
	datac => \datapath|indice_giocatore\(0),
	datad => \datapath|indice_giocatore\(1),
	combout => \datapath|Decoder0~1_combout\);

-- Location: LCCOMB_X24_Y13_N26
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~2_combout\ = ((\datapath|Decoder0~1_combout\ & !\datapath|giocatori_in_campo~10_combout\)) # (!\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Decoder0~1_combout\,
	datac => \datapath|giocatori_in_campo~10_combout\,
	datad => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~0_combout\,
	combout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~2_combout\);

-- Location: LCFF_X24_Y14_N13
\datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~31_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[2].numero_dadi_in_mano[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X27_Y14_N26
\datapath|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux6~1_combout\ = (\datapath|Mux6~0_combout\ & ((\datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2)) # ((\datapath|indice_giocatore\(1))))) # (!\datapath|Mux6~0_combout\ & (((!\datapath|indice_giocatore\(1) & 
-- \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[3].numero_dadi_in_mano\(2),
	datab => \datapath|Mux6~0_combout\,
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[2].numero_dadi_in_mano\(2),
	combout => \datapath|Mux6~1_combout\);

-- Location: LCCOMB_X25_Y13_N8
\datapath|giocatori_in_campo~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~35_combout\ = (\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\ & ((\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~2_combout\ & ((\datapath|Add2~0_combout\))) # 
-- (!\datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~2_combout\ & (!\datapath|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~2_combout\,
	datab => \datapath|Add4~4_combout\,
	datac => \datapath|Add2~0_combout\,
	datad => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~0_combout\,
	combout => \datapath|giocatori_in_campo~35_combout\);

-- Location: LCFF_X25_Y13_N9
\datapath|giocatori_in_campo[6].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~35_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[6].numero_dadi_in_mano[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X25_Y13_N22
\datapath|giocatori_in_campo~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~38_combout\ = (\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\ & ((\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~1_combout\ & ((\datapath|Add2~0_combout\))) # 
-- (!\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~1_combout\ & (!\datapath|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~1_combout\,
	datab => \datapath|Add4~4_combout\,
	datac => \datapath|Add2~0_combout\,
	datad => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~0_combout\,
	combout => \datapath|giocatori_in_campo~38_combout\);

-- Location: LCFF_X25_Y13_N23
\datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~38_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[7].numero_dadi_in_mano[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X26_Y13_N20
\datapath|giocatori_in_campo~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|giocatori_in_campo~36_combout\ = (\datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~6_combout\ & ((\datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~4_combout\ & ((\datapath|Add2~0_combout\))) # 
-- (!\datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~4_combout\ & (!\datapath|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Add4~4_combout\,
	datab => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~4_combout\,
	datac => \datapath|Add2~0_combout\,
	datad => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~6_combout\,
	combout => \datapath|giocatori_in_campo~36_combout\);

-- Location: LCFF_X26_Y13_N21
\datapath|giocatori_in_campo[5].numero_dadi_in_mano[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|giocatori_in_campo~36_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|giocatori_in_campo[5].numero_dadi_in_mano[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2));

-- Location: LCCOMB_X27_Y14_N12
\datapath|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux6~2_combout\ = (\datapath|indice_giocatore\(0) & (\datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2) & (\datapath|indice_giocatore\(1)))) # (!\datapath|indice_giocatore\(0) & (((\datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2)) # 
-- (!\datapath|indice_giocatore\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|giocatori_in_campo[4].numero_dadi_in_mano\(2),
	datab => \datapath|indice_giocatore\(0),
	datac => \datapath|indice_giocatore\(1),
	datad => \datapath|giocatori_in_campo[5].numero_dadi_in_mano\(2),
	combout => \datapath|Mux6~2_combout\);

-- Location: LCCOMB_X27_Y14_N6
\datapath|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux6~3_combout\ = (\datapath|indice_giocatore\(1) & (((\datapath|Mux6~2_combout\)))) # (!\datapath|indice_giocatore\(1) & ((\datapath|Mux6~2_combout\ & ((\datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2)))) # (!\datapath|Mux6~2_combout\ & 
-- (\datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|indice_giocatore\(1),
	datab => \datapath|giocatori_in_campo[6].numero_dadi_in_mano\(2),
	datac => \datapath|giocatori_in_campo[7].numero_dadi_in_mano\(2),
	datad => \datapath|Mux6~2_combout\,
	combout => \datapath|Mux6~3_combout\);

-- Location: LCCOMB_X27_Y14_N16
\datapath|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux6~4_combout\ = (\datapath|indice_giocatore\(2) & (\datapath|Mux6~1_combout\)) # (!\datapath|indice_giocatore\(2) & ((\datapath|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|Mux6~1_combout\,
	datac => \datapath|indice_giocatore\(2),
	datad => \datapath|Mux6~3_combout\,
	combout => \datapath|Mux6~4_combout\);

-- Location: LCCOMB_X26_Y15_N10
\datapath|numero_giocatori_in_campo[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[0]~2_combout\ = (\datapath|Mux8~4_combout\) # ((\datapath|Mux7~4_combout\) # ((!\datapath|GestoreGiocatoriInCampo_RTL~7_combout\ & !\controller|Update_State_Controller:check_old~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|GestoreGiocatoriInCampo_RTL~7_combout\,
	datab => \controller|Update_State_Controller:check_old~regout\,
	datac => \datapath|Mux8~4_combout\,
	datad => \datapath|Mux7~4_combout\,
	combout => \datapath|numero_giocatori_in_campo[0]~2_combout\);

-- Location: LCCOMB_X26_Y15_N18
\datapath|numero_giocatori_in_campo[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|numero_giocatori_in_campo[0]~3_combout\ = (\datapath|Equal4~0_combout\ & ((\datapath|Mux6~4_combout\ & (\datapath|GIOCATORE_AGGIUNTO~0_combout\)) # (!\datapath|Mux6~4_combout\ & ((!\datapath|numero_giocatori_in_campo[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|Equal4~0_combout\,
	datab => \datapath|Mux6~4_combout\,
	datac => \datapath|GIOCATORE_AGGIUNTO~0_combout\,
	datad => \datapath|numero_giocatori_in_campo[0]~2_combout\,
	combout => \datapath|numero_giocatori_in_campo[0]~3_combout\);

-- Location: LCFF_X23_Y13_N15
\datapath|numero_giocatori_in_campo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \datapath|numero_giocatori_in_campo[0]~10_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	ena => \datapath|numero_giocatori_in_campo[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|numero_giocatori_in_campo\(0));

-- Location: LCFF_X27_Y15_N27
\datapath|NR_GIOCATORI_IN_CAMPO[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \datapath|numero_giocatori_in_campo\(0),
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	sload => VCC,
	ena => \controller|DAMMI_GIOCATORI_IN_CAMPO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|NR_GIOCATORI_IN_CAMPO\(0));

-- Location: LCCOMB_X27_Y15_N16
\controller|numero_giocatori[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|numero_giocatori[0]~feeder_combout\ = \datapath|NR_GIOCATORI_IN_CAMPO\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|NR_GIOCATORI_IN_CAMPO\(0),
	combout => \controller|numero_giocatori[0]~feeder_combout\);

-- Location: LCFF_X27_Y15_N17
\controller|numero_giocatori[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|numero_giocatori[0]~feeder_combout\,
	aclr => \ALT_INV_RESET_N~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|numero_giocatori\(0));

-- Location: LCCOMB_X27_Y16_N8
\controller|stato[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|stato[0]~0_combout\ = !\controller|internal_state.TURN_PLAYER~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|internal_state.TURN_PLAYER~regout\,
	combout => \controller|stato[0]~0_combout\);

-- Location: LCFF_X27_Y16_N9
\controller|stato[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|stato[0]~0_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|stato\(0));

-- Location: LCCOMB_X27_Y16_N18
\controller|stato[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|stato[1]~feeder_combout\ = \controller|internal_state.INIT~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|internal_state.INIT~regout\,
	combout => \controller|stato[1]~feeder_combout\);

-- Location: LCFF_X27_Y16_N19
\controller|stato[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \controller|stato[1]~feeder_combout\,
	ena => \RESET_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|stato\(1));

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


