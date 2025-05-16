####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Triangle_Area_Problem.

Variable R : realType.
Variables U V W X Y Z P : 'rV[R]_2.
Hypotheses
  HUVW : ~~ colinear U V W /
  HX_on_UV : on_line X (Line U V) /
  HY_on_VW : on_line Y (Line V W) /
  HZ_on_UW : on_line Z (Line U W) /
  HY_div : exists λ, 0 < λ < 1 /\Y = (1-λ) *: V + λ *: W /\λ = 3%:R/(4%:R+3%:R) /
  HP_cevians : exists a1 a2 a3, 0 < a1 /\0 < a2 /\0 < a3 /\n    P = (1-a1) *: U + a1 *: X = (1-a2) *: V + a2 *: Y = (1-a3) *: W + a3 *: Z.

Theorem concurrent_cevians_area_ratio :
  area_triangle U V W = area_triangle X Y Z * (7%:R / 84%:R).
Proof.
admit.
Qed.

End Triangle_Area_Problem.
####