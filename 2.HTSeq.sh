#!/bin/bash
echo ==========start at : `date` ==========
export PYTHONPATH=/home/huangfei/local/lib/python2.7:$PYTHONPATH && \
/System/software/samtools-0.1.19/samtools view /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.removeMulti.sorted.bam |/home/huangfei/local/bin/python /home/huangfei/local/bin/htseq-count -f sam -r pos -i gene_id  -s no -a 0 -t exon -m intersection-nonempty -o /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/Control/Control.htseq.sam - /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/gene/GCF_000001635.25_GRCm38.p5_genomic.gff.gtf > /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/Control/Control.count && \
perl /Result/huangfei/RNA_RNAref_version4.1/Expression/tr2GeneINgtf.pl -g /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/gene/GCF_000001635.25_GRCm38.p5_genomic.gff.gtf -m -o /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/Control/Control.psl && \
perl /Result/huangfei/RNA_RNAref_version4.1/Expression/RandomInGene_HTSeq.pl -a /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/Control/Control.htseq.sam -f /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/Control/Control.psl -n Control -o /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/Control && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Expression/Reads_random.R /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/Control/Control.random.cout /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/Control/Control.random.pdf Control && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/Control/Control.random.pdf /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/Control/Control.random.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/Control/Control.random.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Expression/Gene && \
rm /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/Control/Control.htseq.sam && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/Control/Htseq_Control.sh.sign





