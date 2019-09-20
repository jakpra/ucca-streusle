# ucca-streusle

This repository contains data from the English Web Treebank (EWT) section of the UD corpus, which has been annotated with SNACS (Schneider et al., 2018) and UCCA (Abend and Rappoport, 2013).
Here present specifically a version of this data where the two different semantic annotations have been integrated to facilitate joint learning (Prange et al., 2019).

## Overview of directories

* orig: original UCCA annotations
* annotated: original UCCA annotations with SNACS categories as token features, for _pipeline_ setup in Prange et al., 2019
*	autoid-autosyn-autopss, autoid-autosyn-goldpss, goldid-autosyn-goldpss: UCCA annotations with integrated SNACS categories. For details on automatic SNACS target identification (autoid) and disambiguation (autopss), see Schneider et al., 2018; automatic SNACS labels are obtained from their SVM classifier). Subdirectories refer to the following setup-specific inputs in Prange et al., 2019:
    * integrated: _dependent MTL/rel_
    * terminal: _dependent MTL/ter_
    * integrated-concat: _joint/rel_ 
    * terminal-concat: _joint/ter_
* snacs_standard: SNACS targets, formatted as UCCA standard xml, for _independent MTL_ setup in Prange et al., 2019
* find_refined_standard: UCCA passages, with boolean edge labels identifying SNACS-refinement, for _independent MTL_ setup in Prange et al., 2019

## References

Omri Abend and Ari Rappoport. 2013. [Universal Conceptual Cognitive Annotation (UCCA).](https://www.aclweb.org/anthology/P13-1023/) 
In Proc. of ACL, pages 228–238, Sofia, Bulgaria.

Jakob Prange, Nathan Schneider, and Omri Abend. 2019. [Made for Each Other: Broad-coverage Semantic Structures Meet Preposition Supersenses.](https://arxiv.org/abs/1909.08796)
To appear at CoNLL, Hong Kong, China.

Nathan Schneider, Jena D. Hwang, Vivek Srikumar, Jakob Prange, Austin Blodgett, Sarah R. Moeller, Aviram Stern, Adi Bitan, and Omri Abend. 2018. [Comprehensive supersense disambiguation of English prepositions and possessives.](https://www.aclweb.org/anthology/papers/P/P18/P18-1018/)
In Proc. of ACL, pages 185–196, Melbourne, Australia.
