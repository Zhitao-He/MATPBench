####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Geometry_Problem.

Variable R : realType.

Variables A B C D : 'rV[R]_2.

Hypothesis AB_neq_BC : (A != B) /\ (B != C).
Hypothesis eq_AB_BC : normr (A - B) = normr (B - C).

(* Angles at point B: ABD = 30°, CBD = 80°, at C: angle C = 50° *)
Hypothesis angle_ABD_30 :
  angle (A - B) (D - B) = (30%:R * PI) / 180.
Hypothesis angle_CBD_80 :
  angle (C - B) (D - B) = (80%:R * PI) / 180.
Hypothesis angle_ABC_ABD : exists E : 'rV[R]_2,
  angle (A - B) (D - B) = (30%:R * PI) / 180 /\
  angle (C - B) (D - B) = (80%:R * PI) / 180.

Hypothesis angle_C_50 :
  angle (B - C) (D - C) = (50%:R * PI) /
####