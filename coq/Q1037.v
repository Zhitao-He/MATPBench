####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TwoTrianglesIncenter.

Variable R : realType.
Let point := 'rV[R]_2.

Variables A B C P O E F D K : point.

Hypothesis ABC_on_P : on_circle P A /\ on_circle P B /\ on_circle P C.
Hypothesis O_passes_AB : on_circle O A /\ on_circle O B.
Hypothesis E_intersection : on_line E (line_through A C) /\ on_circle O E /\ E <> A.
Hypothesis F_intersection : on_line F (line_through B C) /\ on_circle O F /\ F <> B.
Hypothesis D_intersection : intersects_at (line_through A F) (line_through B E) D.
Hypothesis K_intersection : on_line K (line_through O D) /\ on_circle P K /\ K <> D.

Theorem same_incenter : incenter K B E = incenter K A F.
Proof. Admitted.

End TwoTrianglesIncenter.
####