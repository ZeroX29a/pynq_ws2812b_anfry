--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
--Date        : Fri Sep  2 23:38:20 2022
--Host        : machine running 64-bit Ubuntu 20.04.4 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    Dout : out STD_LOGIC;
    clk : in STD_LOGIC;
    enable : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    enable : in STD_LOGIC;
    Dout : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      Dout => Dout,
      clk => clk,
      enable => enable
    );
end STRUCTURE;
