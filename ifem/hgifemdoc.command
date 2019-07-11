#!/bin/bash
hg add ifemdoc/;
hg ci -m nb_files;
python ifemdoc/myconvert.py;
hg add ifemdoc/;
hg ci;
hg push;
