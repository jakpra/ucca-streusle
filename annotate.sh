#!/bin/bash

wget https://raw.githubusercontent.com/danielhers/tupa/streusle-features/tupa/scripts/annotate_structural.py
for div in train dev test; do
  python -m semstr.scripts.annotate ../UCCA_English-EWT/sentences/$div -u ../udpipe/models/english-ewt-ud-2.3-181115.udpipe -o udpipe/$div -ae
  python -m semstr.scripts.annotate ../UCCA_English-EWT/sentences/$div -s en -o stanfordnlp/$div -ae
  python -m semstr.scripts.annotate ../UCCA_English-EWT/sentences/$div -o spacy/$div -ae
  python -m semstr.scripts.annotate ../UCCA_English-EWT/sentences/$div -c ../UD_English-EWT/en_ewt-ud-$div.conllu -o goldud/$div -ae
  python annotate_structural.py goldud/$div -f ../streusle/$div/xml -c annotated/$div -o annotated_structure/$div
done
