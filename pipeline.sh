#!/bin/bash

THREADS=8

BASE=~/rna_seq_project

RAW=$BASE/raw_fastq
TRIM=$BASE/trimmed
QC=$BASE/qc
ALIGN=$BASE/alignment
COUNT=$BASE/counts
QUANT=$BASE/salmon_quant
GENOME=$BASE/genome

mkdir -p $TRIM $QC $ALIGN $COUNT $QUANT

echo "Running FastQC..."
fastqc $RAW/*.fastq.gz -o $QC -t $THREADS

echo "Done!"
