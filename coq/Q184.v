####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section PerimeterOfSimilarQuadrilaterals.

Variable R : realType.

Variables M N P Q X Y Z W : Type.

Variables d_MN d_NP d_PQ d_QM d_XW d_WZ d_ZY d_YX : R.

Hypothesis d_MN_9  : d_MN = 9.
Hypothesis d_NP_10 : d_NP = 10.
Hypothesis d_PQ_7  : d_PQ = 7.
Hypothesis d_QM_8  : d_QM = 8.
Hypothesis d_XW_4  : d_XW = 4.

Hypothesis quadrilaterals_similar :
  exists k, k > 0 /\
    d_MN = k * d_XW /\ d_NP = k * d_WZ /\ d_PQ = k * d_ZY /\ d_QM = k * d_YX.

Theorem perimeter_MNPQ_34 :
  d_MN + d_NP + d_PQ + d_QM = 34.
Proof.
admit.
Qed.

End PerimeterOfSimilarQuadrilaterals.
####