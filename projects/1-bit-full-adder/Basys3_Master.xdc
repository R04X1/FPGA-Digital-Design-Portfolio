## SWITCHES (Girişler)
# sw[0] -> A Girişi
set_property PACKAGE_PIN V17 [get_ports {A}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A}]
# sw[1] -> B Girişi
set_property PACKAGE_PIN V16 [get_ports {B}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {B}]
# sw[2] -> Cin (Gelen Elde) Girişi
set_property PACKAGE_PIN W16 [get_ports {Cin}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Cin}]

## LEDS (Çıkışlar)
# led[0] -> Sum (Toplam Sonucu)
set_property PACKAGE_PIN U16 [get_ports {Sum}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Sum}]
# led[1] -> Cout (Çıkan Elde)
set_property PACKAGE_PIN E19 [get_ports {Cout}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Cout}]