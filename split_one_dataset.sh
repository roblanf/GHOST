
# split alignment with Python3 and AMAS
amas="/Users/roblanfear/Documents/github/GHOST/AMAS-master/amas/AMAS.py"
input="/Users/roblanfear/Documents/github/GHOST/raw_data/Broughton_2013/alignment.nex"
output="/Users/roblanfear/Documents/github/GHOST/processed_data/Broughton_2013/"

mkdir $output
cp -r $input $output

aln=$output"alignment.nex"
spl=$output"partitions.txt"

# needs python 3.x
python $amas split -f nexus -d dna -i $aln -l $aln -u nexus --remove-empty