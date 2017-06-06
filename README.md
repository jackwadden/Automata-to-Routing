# Automata to Routing
Automata to Routing is an open-source toolchain to design and evaluate island style spatial automata processing architectures. ATR leverages three open-source tools 1) ANMLZoo, 2) VASim, and 3) VTR to accomplish this task.

## Usage
ATR is run by running vpr using an automata circuit file on a valid spatial automata architecture description file. An example script used to run experiments for the FCCM'17 paper is in scripts/run_all.sh.

A simple example using the current mandatory flags is shown below:  

vpr --allow_unrelated_clustering off --sweep_dangling_blocks off --timing analysis off d480.xml example.blif

## Blif Emission
VASim is capable of generating .blif files from ANML or MNRL graph formats. An example using VASim to generate a blif file after optimizing the automata and enforcing a fan-in of 8 is shown below.  

vasim -Ox --enforce-fanin 8 --blif example.anml

## Spatial Automata Architecture Description
Most of the difficulty of this project was learning VPR's architecture description format, and building a file that would approximate the Micron D480 Automata Processor. Please refer to the VTR/VPR GitHub or mailing lists for architecture description definition questions.

## TODO
Automata-to-Routing left many interesting questions unanswered. If you are a researcher interested in augmenting ATR or evaluating your own spatial automata processing architecture. This tool is for you!

- Add timing/power/area modeling.
- Add functionality for .blif emission and architecture support for boolean logic and counter elements available in the ANML specification.
- Experiment with VPR command line parameters to get closer to the performance of Micron's compiler.

