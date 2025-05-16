####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section PutnamCircleTangents.

Variable R : realType.
Let P := 'rV[R]_2.

Variables A B O C D E F M : P.

Hypotheses
  (circO : is_circle O A B)
  (diamAB : midpoint O A B)
  (C_on_circ : on_circle O A B C)
  (D_on_circ : on_circle O A B D)
  (NC : ~ colinear A B C)
  (ND : ~ colinear A B D)
  (same_side_CD : same_side (line A B) C D)
  (tan_C : tangent_at O A B C E)
  (tan_D : tangent_at O A B D E)
  (F_def : intersection_point (line B C) (line A D) F)
  (M_def : exists EF, (EF = line E F) /\ intersection_point EF (line A B) M)
  (E_neq_C : E != C)
  (E_neq_D : E != D)
  (C_neq_D : C != D)
  (AB_diam : on_line (line A B) O /\ midpoint O A B)
.

Theorem putnam_geometry_tangent_concyclic :
  concyclic4 E C M D.
Proof. Admitted.

End PutnamCircleTangents.
####