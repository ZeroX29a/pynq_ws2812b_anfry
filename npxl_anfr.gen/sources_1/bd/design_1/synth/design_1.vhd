--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
--Date        : Fri Sep  2 23:38:19 2022
--Host        : machine running 64-bit Ubuntu 20.04.4 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    Dout : out STD_LOGIC;
    clk : in STD_LOGIC;
    enable : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,da_ps7_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_Clock_divider_0_0 is
  port (
    CLK_IN : in STD_LOGIC;
    CLK_OUT : out STD_LOGIC
  );
  end component design_1_Clock_divider_0_0;
  component design_1_lighting_0_0 is
  port (
    clk1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    Dout : out STD_LOGIC
  );
  end component design_1_lighting_0_0;
  signal Clock_divider_0_CLK_OUT : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal lighting_0_Dout : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  Dout <= lighting_0_Dout;
  clk_1 <= clk;
Clock_divider_4hz: component design_1_Clock_divider_0_0
     port map (
      CLK_IN => clk_1,
      CLK_OUT => Clock_divider_0_CLK_OUT
    );
lighting_0: component design_1_lighting_0_0
     port map (
      Dout => lighting_0_Dout,
      clk => clk_1,
      clk1 => Clock_divider_0_CLK_OUT,
      enable => enable
    );
end STRUCTURE;
