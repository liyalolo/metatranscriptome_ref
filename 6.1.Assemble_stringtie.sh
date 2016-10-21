
#!/bin/bash
echo ==========start at : `date` ==========
/Result/huangfei/software/stringtie-1.0.4.Linux_x86_64/stringtie /Disk04/Project/RNA/ref/A731/project/result/Alignment/Hisat/Control/Control.sorted.bam -G /Disk04/Project/RNA/yilingbo/Database/Database/ref/mm10/NCBI/gene/GCF_000001635.25_GRCm38.p5_genomic.gff.gtf -j 2 -m 100 -p 6 -o /Disk04/Project/RNA/ref/A731/project/result/Assemble/StringTie/Control/Control.transcript.gtf -C /Disk04/Project/RNA/ref/A731/project/result/Assemble/StringTie/Control/Control.transcript.txt && \
echo ==========end at : `date` ========== && \
echo This-work-is-completed! 1>&2 && \
echo This-work-is-completed! > /Disk04/Project/RNA/ref/A731/project/result/Assemble/StringTie/Control/stringtie_Control.sh.sign



