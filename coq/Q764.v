####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ValueOfX.

Variable R : realType.

Variables A B C D E : 'rV[R]_2.

Variable x : R.

Hypotheses
  (h_collinear : [ colinear A; E; B ])
  (h_perp1 : (vect_eq (A - C) (orthogonality (E - A))))
  (h_perp2 : (vect_eq (E - D) (orthogonality (B - E))))
  (h_CE_eq : `|A - C| = `|D - B|) (* Marked congruent segments *)
  (h_AC_len : `|A - E| = 2*x + 1)
  (h_EB_len : `|E - B| = 3*x - 5).

Theorem value_of_x_diagram :
  x = 6.
Proof. Admitted.

End ValueOfX.
####