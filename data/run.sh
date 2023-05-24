#!/bin/bash
# https://www.biostars.org/p/50963/
# Note: put tools directory in PATH

FASTQ=$HOME/Analysis/wgs_pipeline/data/
R1=$FASTQ/ERR552797_1.fastq.gz
R2=$FASTQ/ERR552797_2.fastq.gz
R1=$FASTQ/ERR552797_30percent_1.fq.gz
R2=$FASTQ/ERR552797_30percent_2.fq.gz
SAMPL=ERR552797
REF=../tools/ref2.fa

#cp ../tools/config.yml  
../tools/Varpipeline -q $R1 -q2 $R2 -r $REF -n $SAMPL -o $SAMPL -a -v -t 8 --keepfiles

exit

#TOOLS=/NCHHSTP-DTBE-Varpipe-WGS/tools
TOOLS=$HOME/Analysis/varpipe/tools
TLS=/mnt/tools
REF=$TLS/ref2.fa

FASTQ=$HOME/Analysis/wgs_pipeline/data/
FSQ=/mnt/fastq
R1=$FSQ/ERR552797_1.fastq.gz
R2=$FSQ/ERR552797_2.fastq.gz

DATA=$HOME/Analysis/varpipe/data
WRK=/mnt/data

docker run --rm -v $FASTQ:$FSQ -v $TOOLS:$TLS -v $DATA:$WRK -w $WRK dbest/varpipe:latest Varpipeline -q $R1 -q2 $R2 -r $REF -n $SAMPL -v -a --keepfiles

