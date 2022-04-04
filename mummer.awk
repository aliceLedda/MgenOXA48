 LZ=/home/alice/Downloads/lastz-distrib-1.04.00/src/lastz

WD=/home/alice/Desktop/CPE/PlC
REF=/home/alice/Desktop/CPE/pOXA48.fasta


for FILE in `ls /home/alice/Desktop/CPE/PlC/ | grep H | grep .fst`; do
NAME=`echo "$FILE"  | awk '{gsub(/\.fst/, "");print}'`
nucmer --prefix=OXA48_"$NAME" /home/alice/Desktop/CPE/pOXA48.fasta $FILE
delta-filter -q OXA48_"$NAME".delta > OXA48_"$NAME"F.delta
show-coords -rcl OXA48_"$NAME"F.delta > OXA48_"$NAME".coords
for STRING in `grep ">" $FILE | awk '{sub("^>","");print}'`; 
do echo $STRING; 
show-aligns -r OXA48_"$NAME"F.delta POXA48 $STRING >>OXA48_"$NAME".aln;
done; 
done;


for FILE in `ls /home/alice/Desktop/CPE/PlC/ | grep Ext`; do
NAME=`echo "$FILE"  | awk '{gsub(/\.fst/, "");print}'`
$LZ /home/alice/Desktop/CPE/pOXA48.fasta /home/alice/Desktop/CPE/PlC/$FILE --rdotplot=/home/alice/Desktop/CPE/PlC/Rdot$NAME.txt --format=axt > /home/alice/Desktop/CPE/PlC/z$NAME.axt;
done;


#for FILE in `ls /home/alice/Desktop/CPE/pOXAseq/ | grep .fst`; do
#NAME=`echo "$FILE"  | awk '{gsub(/\.fst/, "");print}'`
#nucmer --prefix=OXA48_"$NAME" /home/alice/Desktop/CPE/pOXA48.fasta $FILE
#delta-filter -q OXA48_"$NAME".delta > OXA48_"$NAME"F.delta
#show-coords -rcl OXA48_"$NAME"F.delta > OXA48_"$NAME".coords
#for STRING in `grep ">" $FILE | awk '{sub("^>","");print}'`; 
#do echo $STRING; 
#show-aligns -r OXA48_"$NAME"F.delta POXA48 $STRING >>OXA48_"$NAME".aln;
#done; 
#done;




