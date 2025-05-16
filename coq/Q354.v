####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section IsoscelesTriangleAngle.

Variable R : realType.
Variables A B C X : 'rV[R]_2.

Hypotheses
  H_dist : [/\A != B, B != C, C != A, X != C] and
  H_iso : normr (A - B) = normr (A - C) and
  H_angle_ABC : angle (B - A) (B - C) = PI/6 and
  H_X_on_ray : exists t, 1 < t /\X = B + t *: (C - B) and
  H_AC_CX : normr (A - C) = normr (C - X).

Theorem isosceles_ext_angle_15 :
  angle (A - X) (C - X) = PI/12.
Proof.
admit.
Qed.

End IsoscelesTriangleAngle.
####