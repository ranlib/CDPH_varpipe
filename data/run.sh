#!/bin/bash
# https://www.biostars.org/p/50963/
# Note: put tools directory in PATH

DATA=$HOME/Analysis/wgs_pipeline/data/
R1=$DATA/ERR552797_1.fastq.gz
R2=$DATA/ERR552797_2.fastq.gz
SAMPL=ERR552797
REF=$VARPIPE/ref2.fa

#cp ../tools/config.yml . 
#Varpipeline -q $R1 -q2 $R2 -r $REF -n $SAMPL -o $SAMPL -a -v -t 8 --keepfiles

TOOLS=/NCHHSTP-DTBE-Varpipe-WGS/tools
REF=$TOOLS/ref2.fa
DAT=/mnt/data
R1=$DAT/ERR552797_1.fastq.gz
R2=$DAT/ERR552797_2.fastq.gz
docker run --rm -v $DATA:$DAT -w $TOOLS dbest/varpipe:latest Varpipeline -q $R1 -q2 $R2 -r $REF -n $SAMPL -v -a --keepfiles

