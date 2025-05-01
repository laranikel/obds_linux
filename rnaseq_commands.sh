Analysis

load_mamba

#run fastqc specifie output directory with -o and -t number for running multiple files in parallel, followed by file name

fastqc -o 3_analysis/1_fastqc/ -t 2 1_fastq/cd4_rep1_read*.fastq.gz 

#download html output files using FileZilla, then inspect

#create multiqc file with fastqc output files

multiqc -o reports/ 1_fastqc/cd4_rep1_read*_fastqc.zip

#download html output files using FileZilla, then inspect
