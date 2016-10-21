
#!/bin/bash
echo ==========start at : `date` ==========
awk '{print $1}' /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Control-vs-MT.DEGseq.diffFilter.xls > /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/Control-vs-MT.glist && \
perl /Result/huangfei/RNA_RNAref_version4.1/Enrichement/Goseq.pl -d /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/Control-vs-MT.glist -o /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT -b /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/prepare/Gene.lenght.txt -a /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/prepare/GoseqPrepare -r /System/software/R-3.1.0/bin/Rscript -l /System/software/R-3.1.0/lib64/R/library && \
perl /Result/huangfei/RNA_RNAref_version4.1/Enrichement/getEnrich_Goterm.pl -d /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Control-vs-MT.DEGseq.diffFilter.xls -e /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enrichment_GO.xls -o /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Enrichement/GOEnrich_UpDown.R /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enrichment_UpDown.xls /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enriched_UpDown.pdf && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enriched_UpDown.pdf /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enriched_UpDown.png && \
/System/software/R-3.1.0/bin/Rscript /Result/huangfei/RNA_RNAref_version4.1/Enrichement/GOEnrich.R /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enrichment_GO_top.xls /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enriched_GO_top.pdf && \
perl /Result/huangfei/RNA_RNAref_version4.1/Enrichement/gpath2geneExpr.pl -p /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enrichment_GO.xls -d /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Diff/DEGseq/Control-vs-MT.DEGseq.diffFilter.xls  -t go -o /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/go2geneList && \
perl /Result/huangfei/RNA_RNAref_version4.1/Enrichement/gengoHtml.pl -infile /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enrichment_GO.xls  -sample Control-vs-MT -outfile /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/Control-vs-MT_GO.htm && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enriched_GO_top.pdf /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enriched_GO_top.png && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enriched_BP.pdf /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enriched_BP.png && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enriched_CC.pdf /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enriched_CC.png && \
/usr/bin/convert -density 300 /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enriched_MF.pdf /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enriched_MF.png && \
 if [ -e "/Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Enrichment/GO/Control-vs-MT/go2geneList" ]; then rm -rf /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Enrichment/GO/Control-vs-MT/go2geneList; fi && \
mv /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/go2geneList /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Enrichment/GO/Control-vs-MT && \
ln -s /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Enrichment/GO/Control-vs-MT/go2geneList /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT && \
cp /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/BP_goterm.txt /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Enrichment/GO/Control-vs-MT/BP_goterm.xls && \
cp /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/CC_goterm.txt /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Enrichment/GO/Control-vs-MT/CC_goterm.xls && \
cp /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/MF_goterm.txt /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Enrichment/GO/Control-vs-MT/MF_goterm.xls && \
cp /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enriched_*.* /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Enrichment/GO/Control-vs-MT && \
cp /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/enrichment_*.xls /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/*.htm /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/Enrichment/GO/Control-vs-MT && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/Enrichment/GOSEQ/Control-vs-MT/goseq_Control-vs-MT.sh.sign



