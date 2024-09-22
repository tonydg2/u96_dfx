# This is a DFX build inside the IPI BD using a BDC, 
## NOT SCRIPTED
It works but DFX in the IPI sucks, so abandoning.
top_bd.tcl is the DFX BD, led_bd/led_bd1/led_bd2.tcl are the BDCs which are RMs for the
led_bd BDC.
Generate project and add files manually to test if desired.
top_bd_ORIGINAL.tcl is the old prior to changing the BD to DFX.

## Below this is old, scripts are changed significantly see submod
# DFX
Vivado/Vitis 2023.2

## FPGA/HW build:
scripts folder
> tclsh run.tcl

## SW build:
sw/scripts folder
> vitis -s builder.py 


### Debug config
uart/com : sudo gtkterm
/dev/ttyUSB1 115200-8-N-1

