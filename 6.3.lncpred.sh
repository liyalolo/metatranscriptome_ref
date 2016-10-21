#!/bin/bash
echo ==========start at : `date` ==========
perl /Result/huangfei/RNA_RNAref_version4.1/Assemble/getGene.pl --posformat psl /Disk04/Project/RNA/ref/A731/project/result/Assemble/All.novel_trans.psl /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/genome/genome.fa > /Disk04/Project/RNA/ref/A731/project/result/Assemble/All.novel_trans.fa && \
if [ -d '/Disk04/Project/RNA/ref/A731/project/result/Assemble/CNCI' ]; then rm -rf /Disk04/Project/RNA/ref/A731/project/result/Assemble/CNCI*; fi  && \
/home/huangfei/local/bin/python /home/huangfei/software/CNCI-master/CNCI.py -p 6 -f /Disk04/Project/RNA/ref/A731/project/result/Assemble/All.novel_trans.fa -o /Disk04/Project/RNA/ref/A731/project/result/Assemble/CNCI && \
perl /Result/huangfei/RNA_RNAref_version4.1/Assemble/NovelNonCodingStat.pl -i /Disk04/Project/RNA/ref/A731/project/result/Assemble/All.novel_trans.xls -c /Disk04/Project/RNA/ref/A731/project/result/Assemble/CNCI/CNCI.index -o /Disk04/Project/RNA/ref/A731/project/result/Assemble/NovelTrans.stat.xls && \
/System/software/R-3.1.0/bin/Rscript  /Result/huangfei/RNA_RNAref_version4.1/Assemble/statNovelTrans.R /Disk04/Project/RNA/ref/A731/project/result/Assemble/NovelTrans.stat.xls /Disk04/Project/RNA/ref/A731/project/result/Assemble/NovelTrans.stat.pdf && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Assemble/NovelTrans.stat.pdf /Disk04/Project/RNA/ref/A731/project/result/Assemble/NovelTrans.stat.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Assemble/All.novel_trans.xls /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/NovelExtend && \
cp /Disk04/Project/RNA/ref/A731/project/result/Assemble/NovelTrans.stat.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/NovelExtend && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/Assemble/lncpred.sh.sign

