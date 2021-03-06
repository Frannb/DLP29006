onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entradas
add wave -noupdate -color Cyan /proj_semaforo/clk50MHz
add wave -noupdate -color Cyan /proj_semaforo/rst
add wave -noupdate -color Cyan /proj_semaforo/Sensor_V1
add wave -noupdate -color Cyan /proj_semaforo/Sensor_V2
add wave -noupdate -color Cyan /proj_semaforo/Sensor_V3
add wave -noupdate -color Cyan /proj_semaforo/Foto_celula
add wave -noupdate -color Cyan /proj_semaforo/B_ped1
add wave -noupdate -color Cyan /proj_semaforo/B_ped2
add wave -noupdate -divider Saidas
add wave -noupdate -color Cyan /proj_semaforo/Acende_faixa
add wave -noupdate -expand -group Pedestre -color Cyan /proj_semaforo/bip1
add wave -noupdate -expand -group Pedestre -color Cyan /proj_semaforo/bip2
add wave -noupdate -expand -group Pedestre -color Red /proj_semaforo/R_pedestre
add wave -noupdate -expand -group Pedestre /proj_semaforo/G_pedestre
add wave -noupdate -expand -group Veiculos -color Red /proj_semaforo/R_veiculos
add wave -noupdate -expand -group Veiculos -color Gold /proj_semaforo/Y_veiculos
add wave -noupdate -expand -group Veiculos /proj_semaforo/G_veiculos
add wave -noupdate -color Cyan -radix unsigned /proj_semaforo/count_saida
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {392383561643836 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {462 sec}
