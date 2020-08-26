## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {led[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN E19 [get_ports {led[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property PACKAGE_PIN U19 [get_ports {led[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property PACKAGE_PIN V19 [get_ports {led[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property PACKAGE_PIN W18 [get_ports {led[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property PACKAGE_PIN U15 [get_ports {led[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property PACKAGE_PIN U14 [get_ports {led[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property PACKAGE_PIN V14 [get_ports {led[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property PACKAGE_PIN V13 [get_ports {led[8]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[8]}]
set_property PACKAGE_PIN V3 [get_ports {led[9]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[9]}]
set_property PACKAGE_PIN W3 [get_ports {led[10]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[10]}]
set_property PACKAGE_PIN U3 [get_ports {led[11]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[11]}]

set_property PACKAGE_PIN T18 [get_ports octave_up]						
	set_property IOSTANDARD LVCMOS33 [get_ports octave_up]

set_property PACKAGE_PIN U17 [get_ports octave_dn]						
	set_property IOSTANDARD LVCMOS33 [get_ports octave_dn]
 


##Pmod Header JA
##Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {keys[11]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {keys[11]}]
##Sch name = JA2
set_property PACKAGE_PIN L2 [get_ports {keys[10]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {keys[10]}]
##Sch name = JA3
set_property PACKAGE_PIN J2 [get_ports {keys[9]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {keys[9]}]
##Sch name = JA4
set_property PACKAGE_PIN G2 [get_ports {keys[8]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {keys[8]}]
##Sch name = JA7
set_property PACKAGE_PIN H1 [get_ports {keys[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {keys[7]}]
##Sch name = JA8
set_property PACKAGE_PIN K2 [get_ports {sout[8]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sout[8]}]
##Sch name = JA9
set_property PACKAGE_PIN H2 [get_ports {sout[9]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sout[9]}]
##Sch name = JA10
set_property PACKAGE_PIN G3 [get_ports {sout[10]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sout[10]}]



##Pmod Header JB
##Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports {keys[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {keys[6]}]
##Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports {keys[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {keys[5]}]
##Sch name = JB3
set_property PACKAGE_PIN B15 [get_ports {keys[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {keys[4]}]
##Sch name = JB4
set_property PACKAGE_PIN B16 [get_ports {keys[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {keys[3]}]
##Sch name = JB7
set_property PACKAGE_PIN A15 [get_ports {keys[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {keys[2]}]
##Sch name = JB8
set_property PACKAGE_PIN A17 [get_ports {keys[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {keys[1]}]
##Sch name = JB9
set_property PACKAGE_PIN C15 [get_ports {keys[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {keys[0]}]
##Sch name = JB10 
set_property PACKAGE_PIN C16 [get_ports {sout[11]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sout[11]}]
 


##Pmod Header JC
##Sch name = JC1
set_property PACKAGE_PIN K17 [get_ports {sout[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sout[0]}]
##Sch name = JC2
set_property PACKAGE_PIN M18 [get_ports {sout[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sout[1]}]
##Sch name = JC3
set_property PACKAGE_PIN N17 [get_ports {sout[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sout[2]}]
##Sch name = JC4
set_property PACKAGE_PIN P18 [get_ports {sout[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sout[3]}]
##Sch name = JC7
set_property PACKAGE_PIN L17 [get_ports {sout[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sout[4]}]
##Sch name = JC8
set_property PACKAGE_PIN M19 [get_ports {sout[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sout[5]}]
##Sch name = JC9
set_property PACKAGE_PIN P17 [get_ports {sout[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sout[6]}]
##Sch name = JC10
set_property PACKAGE_PIN R18 [get_ports {sout[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sout[7]}]