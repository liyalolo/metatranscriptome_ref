#!/bin/bash
echo ==========start at : `date` ==========
/Result/huangfei/software/hisat-0.1.6-beta/hisat -q  --phred33  --n-ceil "L,0,0.05"  -I 100 -X 500 -t -p 12 --known-splicesite-infile /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/gene/mm10.splice_site.txt  --no-unal  -x /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/genome/genome   -1 /Disk04/Project/RNA/ref/A731/project/result/Filter/SOAPnuke/Control/Control_1.fq.gz -2 /Disk04/Project/RNA/ref/A731/project/result/Filter/SOAPnuke/Control/Control_2.fq.gz |/System/software/samtools-0.1.19/samtools view -bS - >/Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.bam && \
perl /Result/huangfei/RNA_RNAref_version4.1/Alignment/removeGenomeMulti.pl -f /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.bam -a /System/software/samtools-0.1.19/samtools |/System/software/samtools-0.1.19/samtools view -bS - >/Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.removeMulti.bam && \
perl /Result/huangfei/RNA_RNAref_version4.1/Alignment/AlignStat.pl -f /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.bam -q /Disk04/Project/RNA/ref/A731/project/result/Filter/SOAPnuke/Control/Control_1.fq.gz -o /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control -s Control -a /System/software/samtools-0.1.19/samtools && \
/System/software/samtools-0.1.19/samtools sort -m 4G /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.bam /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.sorted && \
/System/software/samtools-0.1.19/samtools sort -m 4G /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.removeMulti.bam /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.removeMulti.sorted && \
/System/software/bedtools-2.17.0/bin/bedtools genomecov -ibam  /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.removeMulti.sorted.bam -g /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/genome/genome.sort.length -bg |gzip > /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.depth.gz && \
perl /Result/huangfei/RNA_RNAref_version4.1/Alignment/DepthStat.pl -d /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.depth.gz -l /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/genome/genome.sort.length -f /Disk04/Project/RNA/ref/A731/project/result/Filter/SOAPnuke/Control/Control_1.fq.gz -o /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.depth.stat && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Alignment/ReadsDistribution.R /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.depth.stat Control /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.readsdensity.pdf && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.readsdensity.pdf /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.readsdensity.png && \
perl /Result/huangfei/RNA_RNAref_version4.1/Alignment/findJunc.pl -i /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.removeMulti.sorted.bam -s /System/software/samtools-0.1.19/samtools -c 2 -o /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.junc && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Alignment/drawAlignStat.R /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.stat.xls /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.stat.pdf Control && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.stat.pdf /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.stat.png && \
if [ -f /Disk04/Project/RNA/ref/A731/project/result/Upload/Alignment/Control.sorted.bam ]; then rm /Disk04/Project/RNA/ref/A731/project/result/Upload/Alignment/Control.sorted.bam; fi && \
mv /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.sorted.bam /Disk04/Project/RNA/ref/A731/project/result/Upload/Alignment && \
ln -s /Disk04/Project/RNA/ref/A731/project/result/Upload/Alignment/Control.sorted.bam /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control && \
/System/software/samtools-0.1.19/samtools index /Disk04/Project/RNA/ref/A731/project/result/Upload/Alignment/Control.sorted.bam && \
cp /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.stat.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Alignment && \
cp /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.readsdensity.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Alignment && \
rm /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.removeMulti.bam && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Hisat_Control.sh.sign
