## SWITCHES (Girişler)
# A Girişleri (sw[0] - sw[3])
set_property PACKAGE_PIN V17 [get_ports {A[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]
set_property PACKAGE_PIN V16 [get_ports {A[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]
set_property PACKAGE_PIN W16 [get_ports {A[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]
set_property PACKAGE_PIN W17 [get_ports {A[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]

# B Girişleri (sw[4] - sw[7])
set_property PACKAGE_PIN W15 [get_ports {B[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]
set_property PACKAGE_PIN V15 [get_ports {B[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]
set_property PACKAGE_PIN W14 [get_ports {B[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]
set_property PACKAGE_PIN W13 [get_ports {B[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]

# Cin (Gelen Elde) Girişi (En soldaki anahtar: sw[15])
set_property PACKAGE_PIN R2 [get_ports {Cin}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Cin}]

## LEDS (Çıkışlar)
# Sum (Toplam Sonucu) Çıkışları (led[0] - led[3])
set_property PACKAGE_PIN U16 [get_ports {Sum[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Sum[0]}]
set_property PACKAGE_PIN E19 [get_ports {Sum[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Sum[1]}]
set_property PACKAGE_PIN U19 [get_ports {Sum[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Sum[2]}]
set_property PACKAGE_PIN V19 [get_ports {Sum[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Sum[3]}]

# Cout (Çıkan Elde) (En soldaki LED: led[15])
set_property PACKAGE_PIN L1 [get_ports {Cout}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Cout}]