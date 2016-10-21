
#!/bin/bash
echo ==========start at : `date` ==========
perl /Result/huangfei/RNA_RNAref_version4.1/Enrichement/drawGO2bg.pl -diff /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-Melatonin.DEGseq.diffFilter.xls -annot /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/anno/mm10.annot -go /Database/go/RNA/current/go.class -output /Disk04/Project/RNA/ref/A731/project/result/Enrichment/WEGO/Vehicle-vs-Melatonin && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Enrichment/WEGO/Vehicle-vs-Melatonin.svg /Disk04/Project/RNA/ref/A731/project/result/Enrichment/WEGO/Vehicle-vs-Melatonin.png && \
perl /Result/huangfei/RNA_RNAref_version4.1/Enrichement/drawGO2bg.pl -diff /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-TM.DEGseq.diffFilter.xls -annot /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/anno/mm10.annot -go /Database/go/RNA/current/go.class -output /Disk04/Project/RNA/ref/A731/project/result/Enrichment/WEGO/Vehicle-vs-TM && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Enrichment/WEGO/Vehicle-vs-TM.svg /Disk04/Project/RNA/ref/A731/project/result/Enrichment/WEGO/Vehicle-vs-TM.png && \
perl /Result/huangfei/RNA_RNAref_version4.1/Enrichement/drawGO2bg.pl -diff /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Vehicle-vs-Leptin.DEGseq.diffFilter.xls -annot /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/anno/mm10.annot -go /Database/go/RNA/current/go.class -output /Disk04/Project/RNA/ref/A731/project/result/Enrichment/WEGO/Vehicle-vs-Leptin && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Enrichment/WEGO/Vehicle-vs-Leptin.svg /Disk04/Project/RNA/ref/A731/project/result/Enrichment/WEGO/Vehicle-vs-Leptin.png && \
cp /Disk04/Project/RNA/ref/A731/project/result/Enrichment/WEGO/*.svg /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Enrichment/WEGO && \
cp /Disk04/Project/RNA/ref/A731/project/result/Enrichment/WEGO/*.png /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Enrichment/WEGO && \
cp /Disk04/Project/RNA/ref/A731/project/result/Enrichment/WEGO/*.xls /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Enrichment/WEGO && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/Enrichment/WEGO/wego.sh.sign


