#!/bin/bash

python -m semstr.scripts.annotate ../UCCA_English-EWT/sentences/train -u ../udpipe/models/english-ewt-ud-2.3-181115.udpipe -o udpipe/train -a
python -m semstr.scripts.annotate ../UCCA_English-EWT/sentences/dev -u ../udpipe/models/english-ewt-ud-2.3-181115.udpipe -o udpipe/dev -a
python -m semstr.scripts.annotate ../UCCA_English-EWT/sentences/test -u ../udpipe/models/english-ewt-ud-2.3-181115.udpipe -o udpipe/test -a

python -m semstr.scripts.annotate ../UCCA_English-EWT/sentences/train -s en -o stanfordnlp/train -a
python -m semstr.scripts.annotate ../UCCA_English-EWT/sentences/dev -s en -o stanfordnlp/dev -a
python -m semstr.scripts.annotate ../UCCA_English-EWT/sentences/test -s en -o stanfordnlp/test -a

python -m semstr.scripts.annotate ../UCCA_English-EWT/sentences/train -c ../UD_English-EWT/en_ewt-ud-train.conllu -o goldud/train -a
python -m semstr.scripts.annotate ../UCCA_English-EWT/sentences/dev -c ../UD_English-EWT/en_ewt-ud-dev.conllu -o goldud/dev -a
python -m semstr.scripts.annotate ../UCCA_English-EWT/sentences/test -c ../UD_English-EWT/en_ewt-ud-test.conllu -o goldud/test -a
