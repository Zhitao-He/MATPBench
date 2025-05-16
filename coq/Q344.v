####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Problem.

Variable R : realType.
Variables A B C D : 'rV[R]_2.
Hypotheses
  neqAB : A <> B /\B <> C.
Hypotheses
  eqAB_BC : normr (A - B) = normr (B - C).
Hypotheses
  angle_ABD : angle (A - B) (D - B) = 30%:R * PI / 180.
Hypotheses
  angle_CBD : angle (C - B) (D - B) = 80%:R * PI / 180.
Hypotheses
  angle_C : angle (B - C) (D - C) = 50%:R * PI / 180.

Theorem solve_angles : True.
Proof.
admit.
Qed.

End Geometry_Problem.
####