 LZ=/home/alice/Downloads/lastz-distrib-1.04.00/src/lastz
WD=/home/alice/Desktop/CPE/pOXAseq



for FILE in `ls /home/alice/Desktop/CPE/PlC/ | grep H | grep .fst`; do
NAME=`echo "$FILE"  | awk '{gsub(/\.fst/, "");print}'`
$LZ /home/alice/Desktop/CPE/pOXA48.fasta /home/alice/Desktop/CPE/PlC/$FILE --rdotplot=/home/alice/Desktop/CPE/PlC/Rdot$NAME.txt --format=axt > /home/alice/Desktop/CPE/PlC/z$NAME.axt;
done;


for FILE in `ls /home/alice/Desktop/CPE/PlC/ | grep Ext`; do
NAME=`echo "$FILE"  | awk '{gsub(/\.fst/, "");print}'`
$LZ /home/alice/Desktop/CPE/pOXA48.fasta /home/alice/Desktop/CPE/PlC/$FILE --rdotplot=/home/alice/Desktop/CPE/PlC/Rdot$NAME.txt --format=axt > /home/alice/Desktop/CPE/PlC/z$NAME.axt;
done;
    
for FILE in `ls /home/alice/Desktop/CPE/pOXAseq/ `; do NAME=`echo "$FILE"  | awk '{gsub(/\.fst/, "");print}'`; /home/alice/Downloads/lastz-distrib-1.04.00/src/lastz /home/alice/Desktop/CPE/pOXA48.fasta /home/alice/Desktop/CPE/pOXAseq/$FILE --rdotplot=/home/alice/Desktop/CPE/pOXAseq/Rdot$NAME.txt --format=axt > /home/alice/Desktop/CPE/pOXAseq/z$NAME.axt; done;


