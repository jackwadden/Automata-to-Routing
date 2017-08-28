#!/bin/bash
vpr \
    --allow_unrelated_clustering off \
    --sweep_dangling_blocks off \
    --timing_tradeoff 0 \
    --beta_clustering 0 \
    --cluster_seed_type max_inputs \
    --alpha_clustering 0 \
    --timing_analysis off \
    --disp on  \
    ../archs/d480.xml \
    ../blifs/lev_3.orgate.blif 
