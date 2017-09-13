
aln="/Users/roblanfear/Documents/github/GHOST/iqtree_example/alignment_16S-out.nex"
iqt="/Users/roblanfear/Documents/github/GHOST/programs/iqtree_osx"

# jobs are ordered ~w.r.t. length o f


# model selection with full tree search for every normal model
$iqt -s $aln -st DNA -mtree -pre GTR

# Fancy heterotachy
$iqt -s $aln -m GTR+FO*H4 -pre g21
$iqt -s $aln -m GTR+FO*H3 -pre g20
$iqt -s $aln -m GTR+FO*H2 -pre g19

$iqt -s $aln -m SYM+FO*H4 -pre s21
$iqt -s $aln -m SYM+FO*H3 -pre s20
$iqt -s $aln -m SYM+FO*H2 -pre s19

$iqt -s $aln -m HKY+FO*H4 -pre h21
$iqt -s $aln -m HKY+FO*H3 -pre h20
$iqt -s $aln -m HKY+FO*H2 -pre h19

# unliked heterotachy
$iqt -s $aln -m GTR*H2 -pre g10
$iqt -s $aln -m GTR*H3 -pre g11
$iqt -s $aln -m GTR*H4 -pre g12

$iqt -s $aln -m SYM*H2 -pre s10
$iqt -s $aln -m SYM*H3 -pre s11
$iqt -s $aln -m SYM*H4 -pre s12

$iqt -s $aln -m HKY*H2 -pre h10
$iqt -s $aln -m HKY*H3 -pre h11
$iqt -s $aln -m HKY*H4 -pre h12

$iqt -s $aln -m JC*H2 -pre j10
$iqt -s $aln -m JC*H3 -pre j11
$iqt -s $aln -m JC*H4 -pre j12


# basic heterotachy
$iqt -s $aln -m GTR+H2 -pre g01
$iqt -s $aln -m GTR+H3 -pre g02
$iqt -s $aln -m GTR+H4 -pre g03

$iqt -s $aln -m SYM+H2 -pre s01
$iqt -s $aln -m SYM+H3 -pre s02
$iqt -s $aln -m SYM+H4 -pre s03

$iqt -s $aln -m HKY+H2 -pre h01
$iqt -s $aln -m HKY+H3 -pre h02
$iqt -s $aln -m HKY+H4 -pre h03

$iqt -s $aln -m JC+H2 -pre j01
$iqt -s $aln -m JC+H3 -pre j02
$iqt -s $aln -m JC+H4 -pre j03

# TO DO after GNU parallel
# 1 choose the g, s, h, or j file with the lowest AICc
# Record that model in the output
# Record the best GTR-based model in the output too, with the two AICc scores
# smush the two 'best' trees into a .trees file
# re-run IQtree 4 times
# 1. Bootstrap with GTR model
# 2. Bootstrap with HET model
# 3. SH test with GTR model
# 4. SH test with HET model
