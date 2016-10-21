#!/bin/bash
echo ==========start at : `date` ==========
/System/software/rsem-1.2.21/rsem-calculate-expression  --phred64-quals --paired-end  --num-threads 5  --samtools-sort-mem 4G   --bowtie2  --bowtie2-path /System/software/bowtie2-2.1.0/ -temporary-folder  /Disk04/Project/RNA/ref/A731/project/result/Expression/RSEM/Control/temp /Disk04/Project/RNA/ref/A731/project/result/Filter/SOAPnuke/Control/Control_1.fq.gz  /Disk04/Project/RNA/ref/A731/project/result/Filter/SOAPnuke/Control/Control_2.fq.gz /Disk04/Project/RNA/ref/A731/project/result/Expression/RSEM/refIndex/reference /Disk04/Project/RNA/ref/A731/project/result/Expression/RSEM/Control/Control && \
rm /Disk04/Project/RNA/ref/A731/project/result/Expression/RSEM/Control/Control.*.bam && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/Expression/RSEM/Control/rsem_Control.sh.sign


