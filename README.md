## Nested DFX initial test

### tested on HW, mostly works but trivial issues with lower level bitstreams, leave fix for later project if desired to automate full process (when loading one lower partial, the other shuts off but it can be loaded to turn back on - not sure why)

- run main script up to synth only, not P&R

cl;tclsh RUN_BUILD.tcl -name PRJ0 -clean -skipIMP

cl;tclsh RUN_BUILD.tcl -name PRJ0 -skipBD -clean -skipIMP -forceCleanImg

- see temporary modifications to syn.tcl
- then see nested_dfx2.tcl
  - run these commands from the output_products/dcp directory
   (launch vivado -mode tcl)




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

