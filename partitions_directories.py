# -*- coding: utf-8 -*-
"""
Created on Wed Sep 13 14:27:15 2017

@author: Suha nasser
"""

from shutil import copyfile
import glob
import os

for f in glob.glob('data/GHOST/processed_data/*/alignment_*.nex'):
    dataset = os.path.dirname(f)
    aln_name = os.path.basename(f)
    aln_name = aln_name[10:-8]
    new_dir = os.path.join(dataset, aln_name)
    if not os.path.exists(new_dir):
        os.makedirs(new_dir)
        part_aln = os.path.join(new_dir, 'alignment.nex')
        copyfile(f, part_aln)
        os.remove(f)

