#!/bin/bash
echo ==========start at : `date` ==========
perl /Result/huangfei/RNA_RNAref_version4.1/Assemble/getNovelTrans.pl -g /Disk04/Project/RNA/ref/A731/project/result/Assemble/Cuffcompare/cuffcompare.combined.gtf -r /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/gene/GCF_000001635.25_GRCm38.p5_genomic.gff.gtf -t /Disk04/Project/RNA/ref/A731/project/result/Assemble/Cuffcompare/cuffcompare.tracking -e 3 -l 200 -s All -o /Disk04/Project/RNA/ref/A731/project/result/Assemble -p Melatonin,TM,Leptin,Vehicle, && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/Assemble/noveltrans.sh.sign
