
#!/bin/bash
echo ==========start at : `date` ==========
perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/getCommonDiff.pl -d /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-Melatonin.DEGseq.diff.xls, -o /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap -s Vehicle-vs-Melatonin -f 1 -r 0.001  -sam  -i /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/AllSamples/allSample.expr.xls -g Vehicle,Melatonin,  -diff  -u  && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Cluster/cluster_heatmap.R /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-Melatonin.sam.union.xls /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-Melatonin.sam.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-Melatonin.sam.sort.union.xls && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-Melatonin.sam.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-Melatonin.sam.union.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-Melatonin.sam.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Cluster && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Cluster/cluster_heatmap.R /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-Melatonin.diff.union.xls /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-Melatonin.diff.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-Melatonin.diff.sort.union.xls && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-Melatonin.diff.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-Melatonin.diff.union.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-Melatonin.diff.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Cluster && \
perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/getCommonDiff.pl -d /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-TM.DEGseq.diff.xls, -o /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap -s Vehicle-vs-TM -f 1 -r 0.001  -sam  -i /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/AllSamples/allSample.expr.xls -g Vehicle,TM,  -diff  -u  && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Cluster/cluster_heatmap.R /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM.sam.union.xls /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM.sam.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM.sam.sort.union.xls && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM.sam.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM.sam.union.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM.sam.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Cluster && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Cluster/cluster_heatmap.R /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM.diff.union.xls /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM.diff.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM.diff.sort.union.xls && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM.diff.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM.diff.union.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM.diff.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Cluster && \
perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/getCommonDiff.pl -d /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-TM.DEGseq.diff.xls,/Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-Leptin.DEGseq.diff.xls, -o /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap -s Vehicle-vs-TM-Vehicle-vs-Leptin -f 1 -r 0.001  -sam  -i /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/AllSamples/allSample.expr.xls -g Vehicle,TM,Vehicle,Leptin,  -diff  -u  && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Cluster/cluster_heatmap.R /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.sam.union.xls /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.sam.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.sam.sort.union.xls && \
cp /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM.diff.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Cluster && \
perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/getCommonDiff.pl -d /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-TM.DEGseq.diff.xls,/Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-Leptin.DEGseq.diff.xls, -o /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap -s Vehicle-vs-TM-Vehicle-vs-Leptin -f 1 -r 0.001  -sam  -i /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/AllSamples/allSample.expr.xls -g Vehicle,TM,Vehicle,Leptin,  -diff  -u  && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Cluster/cluster_heatmap.R /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.sam.union.xls /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.sam.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.sam.sort.union.xls && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.sam.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.sam.union.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.sam.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Cluster && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Cluster/cluster_heatmap.R /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.diff.union.xls /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.diff.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.diff.sort.union.xls && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.diff.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.diff.union.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin.diff.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Cluster && \
perl /Result/huangfei/RNA_RNAref_version4.1/Cluster/getCommonDiff.pl -d /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-TM.DEGseq.diff.xls,/Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-Leptin.DEGseq.diff.xls,/Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-Melatonin.DEGseq.diff.xls, -o /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap -s Vehicle-vs-TM-Vehicle-vs-Leptin-Vehicle-vs-Melatonin -f 1 -r 0.001  -sam  -i /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/AllSamples/allSample.expr.xls -g Vehicle,TM,Vehicle,Leptin,Vehicle,Melatonin,  -diff  -u  && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Cluster/cluster_heatmap.R /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin-Vehicle-vs-Melatonin.sam.union.xls /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin-Vehicle-vs-Melatonin.sam.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin-Vehicle-vs-Melatonin.sam.sort.union.xls && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin-Vehicle-vs-Melatonin.sam.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin-Vehicle-vs-Melatonin.sam.union.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin-Vehicle-vs-Melatonin.sam.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Cluster && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Cluster/cluster_heatmap.R /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin-Vehicle-vs-Melatonin.diff.union.xls /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin-Vehicle-vs-Melatonin.diff.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin-Vehicle-vs-Melatonin.diff.sort.union.xls && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin-Vehicle-vs-Melatonin.diff.union.pdf /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin-Vehicle-vs-Melatonin.diff.union.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/Vehicle-vs-TM-Vehicle-vs-Leptin-Vehicle-vs-Melatonin.diff.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Cluster && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/Cluster/pheatmap/pheatmap.sh.sign


