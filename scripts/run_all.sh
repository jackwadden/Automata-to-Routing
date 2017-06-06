#!/bin/bash

# This file was used to generate results for FCCM'17 paper.
# you must have 'vpr' in your path before running this script

#PARAMS
EMAIL="your_email_address"
ARCH=d480_8row.xml
ROUTING_ITS=500

VPR_FLAGS_FCCM="--allow_unrelated_clustering off --sweep_dangling_blocks off --max_router_iterations ${ROUTING_ITS} --timing_tradeoff 0 --beta_clustering 0 --cluster_seed_type max_inputs --alpha_clustering 0 --timing_analysis off"

cd ../blifs

#for BLIF in er_relaxed_opt.blif
for BLIF in *_opt_3.orgate.blif
do
    vpr ${VPR_FLAGS_FCCM} ../archs/${ARCH} ${BLIF}
    mv vpr_stdout.log ${BLIF}.results
done

mail -s "DONE WITH ATR PLACE AND ROUTE EXPS" ${EMAIL} < /dev/null
