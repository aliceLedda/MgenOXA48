
for FILE in `ls $WORK/CPEbam/*.bam |awk '{sub(/.bam$/,"");print}'`;do
samtools view $FILE".bam" | awk -F "\t" '{if ((NR%2)==1) {print "@"$1"/1\n"$9"\n+\n"$10}}' >$WORK/CPEfQ/$FILE"_R1.fastq"
samtools view $FILE".bam" | awk -F "\t" '{if ((NR%2)==0) {print "@"$1"/2\n"$9"\n+\n"$10}}' >$WORK/CPEfQ/$FILE"_R2.fastq"
done


for FILE in `ls *.bam |awk '{sub(/.bam$/,"");print}'`;do
samtools view $FILE".bam" | awk -F "\t" '{if ((NR%2)==1) {print "@"$1"/1\n"$10"\n+\n"$11}}' >/media/alice/SAMSUNG/CPE/CPEfq/$FILE"_R1.fastq"
samtools view $FILE".bam" | awk -F "\t" '{if ((NR%2)==0) {print "@"$1"/2\n"$10"\n+\n"$11}}' >/media/alice/SAMSUNG/CPE/CPEfq/$FILE"_R2.fastq"
done


samtools view $FILE".bam" | awk -F "\t" '{if ((NR%2)==1) {print "@"$1"/1\n"$10"\n+\n"$11}}' >/media/alice/SAMSUNG/CPE/CPEfq/$FILE"_R1.fastq"
samtools view $FILE".bam" | awk -F "\t" '{if ((NR%2)==0) {print "@"$1"/2\n"$10"\n+\n"$11}}' >/media/alice/SAMSUNG/CPE/CPEfq/$FILE"_R2.fastq"

