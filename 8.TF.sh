
#!/bin/bash
echo ==========start at : `date` ==========
perl /Result/huangfei/RNA_RNAref_version4.1/TF/getGene.pl /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/gene/GCF_000001635.25_GRCm38.p5_genomic.gff.gtf /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/genome/genome.fa >/Disk04/Project/RNA/ref/A731/project/result/TF/for_tf_predict.fa && \
/Result/huangfei/software/TransDecoder-2.1.0/TransDecoder.LongOrfs -m 30 -t  /Disk04/Project/RNA/ref/A731/project/result/TF/for_tf_predict.fa -o /Disk04/Project/RNA/ref/A731/project/result/TF && \
#perl /Result/huangfei/RNA_RNAref_version4.1/TF/filter4longOrfs.pl -s 1 -i /Disk04/Project/RNA/ref/A731/project/result/TF/longest_orfs.pep -o /Disk04/Project/RNA/ref/A731/project/result/TF/longest_orfs.pep_filter.fa && \
/Disk04/Project/RNA/yilingbo/project/test_731//TF/filter4longOrfs.pl -s 1 -i /Disk04/Project/RNA/ref/A731/project/result/TF/longest_orfs.pep -o /Disk04/Project/RNA/ref/A731/project/result/TF/longest_orfs.pep_filter.fa && \
/Result/huangfei/software/hmmer-3.1b2-linux-intel-x86_64/binaries/hmmsearch  --domT 4 --cpu 6  --domtblout /Disk04/Project/RNA/ref/A731/project/result/TF/TF.hmm.tab /Result/huangfei/RNA_RNAref_version4.1/TF/AnimalTFDB/AnimalTFDBv2.hmm /Disk04/Project/RNA/ref/A731/project/result/TF/longest_orfs.pep_filter.fa && \
perl /Result/huangfei/RNA_RNAref_version4.1/TF/extract4hmm.pl -i /Disk04/Project/RNA/ref/A731/project/result/TF/TF.hmm.tab -e 0.0001 -o /Disk04/Project/RNA/ref/A731/project/result/TF -s AllSample  -r /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/AllSamples/allSample.expr.xls  -d /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-Melatonin.DEGseq.diffFilter.xls,/Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-TM.DEGseq.diffFilter.xls,/Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-Leptin.DEGseq.diffFilter.xls,  && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/TF/draw_TFdist.R /Disk04/Project/RNA/ref/A731/project/result/TF/AllSample.TFpred_stat.xls /Disk04/Project/RNA/ref/A731/project/result/TF/AllSample.TFdist.pdf && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/TF/AllSample.TFdist.pdf /Disk04/Project/RNA/ref/A731/project/result/TF/AllSample.TFdist.png && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/TF/draw_heatmap4TF.R /Disk04/Project/RNA/ref/A731/project/result/TF/AllSample.TFpred_expr.xls /Disk04/Project/RNA/ref/A731/project/result/TF/AllSample.TFpred_expr.pdf /Disk04/Project/RNA/ref/A731/project/result/TF/AllSample.TFpred_expr.sort.xls && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/TF/AllSample.TFpred_expr.pdf /Disk04/Project/RNA/ref/A731/project/result/TF/AllSample.TFpred_expr.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/TF/AllSample.*.xls /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/TF && \
cp /Disk04/Project/RNA/ref/A731/project/result/TF/*.pdf /Disk04/Project/RNA/ref/A731/project/result/TF/*.png /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/TF && \
rm /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/TF/AllSample.TFpred_expr.xls && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/TF/TFpredict.sh.sign


