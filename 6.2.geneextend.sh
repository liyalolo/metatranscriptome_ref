#!/bin/bash
echo ==========start at : `date` ==========
perl /Result/huangfei/RNA_RNAref_version4.1/Assemble/getGene.pl --posformat gtf /Disk04/Project/RNA/ref/A731/project/result/Assemble/All.refer.gtf /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/genome/genome.fa > /Disk04/Project/RNA/ref/A731/project/result/Assemble/ref_Gene.fa && \
perl /Result/huangfei/RNA_RNAref_version4.1/Assemble/getGene.pl --posformat psl /Disk04/Project/RNA/ref/A731/project/result/Assemble/All.refoverlap.psl /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/genome/genome.fa >/Disk04/Project/RNA/ref/A731/project/result/Assemble/ref_overlap.fa && \
/System/software/local/bin/blat /Disk04/Project/RNA/ref/A731/project/result/Assemble/ref_overlap.fa /Disk04/Project/RNA/ref/A731/project/result/Assemble/ref_Gene.fa -noHead /Disk04/Project/RNA/ref/A731/project/result/Assemble/ref2denovo.blat && \
/System/software/local/bin/blat /Disk04/Project/RNA/ref/A731/project/result/Assemble/ref_Gene.fa /Disk04/Project/RNA/ref/A731/project/result/Assemble/ref_overlap.fa -noHead /Disk04/Project/RNA/ref/A731/project/result/Assemble/denovo2ref.blat && \
perl /Result/huangfei/RNA_RNAref_version4.1/Assemble/redefinedUTR.pl -g /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/gene/GCF_000001635.25_GRCm38.p5_genomic.gff.gtf -r /Disk04/Project/RNA/ref/A731/project/result/Assemble/ref2denovo.blat -d /Disk04/Project/RNA/ref/A731/project/result/Assemble/denovo2ref.blat -s All -n /Disk04/Project/RNA/ref/A731/project/result/Assemble/All.refoverlap.psl -o /Disk04/Project/RNA/ref/A731/project/result/Assemble && \
cp /Disk04/Project/RNA/ref/A731/project/result/Assemble/All.refinedUTR.xls /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/NovelExtend && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/Assemble/geneextend.sh.sign
