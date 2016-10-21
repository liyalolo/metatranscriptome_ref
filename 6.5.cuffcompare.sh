#!/bin/bash
echo ==========start at : `date` ==========
/System/software/cufflinks-2.1.1.Linux_x86_64/cuffcompare -r /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/gene/GCF_000001635.25_GRCm38.p5_genomic.gff.gtf -o /Disk04/Project/RNA/ref/A731/project/result/Assemble/StringTie/../Cuffcompare/cuffcompare   /Disk04/Project/RNA/ref/A731/project/result/Assemble/StringTie/Melatonin/Melatonin.transcript.gtf  /Disk04/Project/RNA/ref/A731/project/result/Assemble/StringTie/TM/TM.transcript.gtf  /Disk04/Project/RNA/ref/A731/project/result/Assemble/StringTie/Leptin/Leptin.transcript.gtf  /Disk04/Project/RNA/ref/A731/project/result/Assemble/StringTie/Vehicle/Vehicle.transcript.gtf   && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/Assemble/StringTie/../Cuffcompare/cuffcompare.sh.sign


