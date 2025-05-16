####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section AngleAFD.

Variable R : realType.

Variables A B F D : 'rV[R]_2.

Variable O : 'rV[R]_2.
Variable r : R.

Hypothesis Hcircle : (norm (F - O) = r) /\ (norm (B - O) = r).
Hypothesis Hdiameter : colinear [:: F; A; B] /\ A <> B /\ F <> B.
Hypothesis HOcenter : A = (F + B) / 2.
Hypothesis Htangent : [pt D; F; D] /\ perpendicular (B - F) (D - F).

Theorem angle_AFD_90 :
  0 < r ->
  angle_rad A F D = PI / 2.
Proof. Admitted.

End AngleAFD.
####