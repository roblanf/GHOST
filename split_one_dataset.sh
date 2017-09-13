
# split alignment with Python3 and AMAS
amas="/Users/roblanfear/Documents/github/GHOST/AMAS-master/amas/AMAS.py"
raw="/Users/roblanfear/Documents/github/GHOST/raw_data"
pro="/Users/roblanfear/Documents/github/GHOST/processed_data"

folders=$(find $raw -type d -maxdepth 1 -mindepth 1 -type d)

mkdir $pro

for f in $folders
do
	cp -r $f $pro

	echo $f
	d=$(basename $f)
	output=$pro"/"$d

	aln=$output"/alignment.nex"
	spl=$output"/partitions.txt"

	# needs python 3.x
	python $amas split -f nexus -d dna -i $aln -l $spl -u nexus --remove-empty

done



