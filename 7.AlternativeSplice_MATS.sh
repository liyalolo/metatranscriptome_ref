
#!/bin/bash
echo ==========start at : `date` ==========
perl /Result/huangfei/RNA_RNAref_version4.1/AS/filter4AS.pl -cut 2 -cov 0.9 -bam /Disk04/Project/RNA/ref/A731/project/result/AlternativeSplice/MATS/AS/ASEvents/unique.Control.sam -a5ss /Disk04/Project/RNA/ref/A731/project/result/AlternativeSplice/MATS/AS/ASEvents/fromGTF.A5SS.txt -a3ss /Disk04/Project/RNA/ref/A731/project/result/AlternativeSplice/MATS/AS/ASEvents/fromGTF.A3SS.txt -ri /Disk04/Project/RNA/ref/A731/project/result/AlternativeSplice/MATS/AS/ASEvents/fromGTF.RI.txt -mxe /Disk04/Project/RNA/ref/A731/project/result/AlternativeSplice/MATS/AS/ASEvents/fromGTF.MXE.txt -se /Disk04/Project/RNA/ref/A731/project/result/AlternativeSplice/MATS/AS/ASEvents/fromGTF.SE.txt -afe /Disk04/Project/RNA/ref/A731/project/result/AlternativeSplice/MATS/AS/ASEvents/fromGTF.AFE.txt -ale /Disk04/Project/RNA/ref/A731/project/result/AlternativeSplice/MATS/AS/ASEvents/fromGTF.ALE.txt -sample Control -out /Disk04/Project/RNA/ref/A731/project/result/AlternativeSplice/MATS/AS/Control  && \
rm /Disk04/Project/RNA/ref/A731/project/result/AlternativeSplice/MATS/AS/ASEvents/unique.Control.sam && \
cp /Disk04/Project/RNA/ref/A731/project/result/AlternativeSplice/MATS/AS/Control/Control.*.xls /Disk04/Project/RNA/ref/A731/project/result/Upload/TGS_Report/Result/AlternativeSplice && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/AlternativeSplice/MATS/AS/Control/as_Control.sh.sign



