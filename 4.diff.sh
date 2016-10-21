
#!/bin/bash
echo ==========start at : `date` ==========
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Diff/DEGseq.R /Disk04/Project/RNA/ref/A731/project/result/Expression/HTSeq/AllSamples/allSample.count.xls Vehicle,Vehicle,Vehicle  Melatonin,TM,Leptin  /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq && \
 perl /Result/huangfei/RNA_RNAref_version4.1/Diff/DiffFormat.pl -d /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Melatonin/output_score.txt -o /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Melatonin -c Vehicle -t Melatonin -DEGseq && \
cp /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Melatonin/Vehicle-vs-Melatonin.DEGseq.*.xls /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Diff/DEGs_Distribution_plot.R /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Melatonin/Vehicle-vs-Melatonin.DEGseq.diff.xls /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Melatonin/Vehicle-vs-Melatonin Vehicle Melatonin && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Melatonin/Vehicle-vs-Melatonin.DEGs.pdf  /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Melatonin/Vehicle-vs-Melatonin.DEGs.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Melatonin/Vehicle-vs-Melatonin.DEGs.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq && \
/usr/bin/convert -density 300  /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Melatonin/Vehicle-vs-Melatonin.DEGs_Volcano.pdf  /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Melatonin/Vehicle-vs-Melatonin.DEGs_Volcano.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Melatonin/Vehicle-vs-Melatonin.DEGs_Volcano.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq && \
perl /Result/huangfei/RNA_RNAref_version4.1/Diff/DiffFormat.pl -d /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM/output_score.txt -o /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM -c Vehicle -t TM -DEGseq && \
cp /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM/Vehicle-vs-TM.DEGseq.*.xls /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Diff/DEGs_Distribution_plot.R /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM/Vehicle-vs-TM.DEGseq.diff.xls /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM/Vehicle-vs-TM Vehicle TM && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM/Vehicle-vs-TM.DEGs.pdf  /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM/Vehicle-vs-TM.DEGs.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM/Vehicle-vs-TM.DEGs.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq && \
/usr/bin/convert -density 300  /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM/Vehicle-vs-TM.DEGs_Volcano.pdf  /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM/Vehicle-vs-TM.DEGs_Volcano.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM/Vehicle-vs-TM.DEGs.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq && \
/usr/bin/convert -density 300  /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM/Vehicle-vs-TM.DEGs_Volcano.pdf  /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM/Vehicle-vs-TM.DEGs_Volcano.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-TM/Vehicle-vs-TM.DEGs_Volcano.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq && \
perl /Result/huangfei/RNA_RNAref_version4.1/Diff/DiffFormat.pl -d /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Leptin/output_score.txt -o /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Leptin -c Vehicle -t Leptin -DEGseq && \
cp /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Leptin/Vehicle-vs-Leptin.DEGseq.*.xls /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Diff/DEGs_Distribution_plot.R /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Leptin/Vehicle-vs-Leptin.DEGseq.diff.xls /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Leptin/Vehicle-vs-Leptin Vehicle Leptin && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Leptin/Vehicle-vs-Leptin.DEGs.pdf  /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Leptin/Vehicle-vs-Leptin.DEGs.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Leptin/Vehicle-vs-Leptin.DEGs.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq && \
/usr/bin/convert -density 300  /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Leptin/Vehicle-vs-Leptin.DEGs_Volcano.pdf  /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Leptin/Vehicle-vs-Leptin.DEGs_Volcano.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/Vehicle-vs-Leptin/Vehicle-vs-Leptin.DEGs_Volcano.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq && \
 echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/Diff/DEGseq/DEGseq.sh.sign




