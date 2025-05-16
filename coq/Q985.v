####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.
Let Point := 'rV[R]_2.

Variables A B C D E F G H I : Point.

Hypotheses
  (h_triangle_acute : triangle A B C /\ angle B A C < /2%:R * PI /\ angle C A B < /2%:R * PI)
  (h_angleB_gt_angleC : angle A B C > angle A C B)
  (h_F_midpoint : F = (B + C) / 2)
  (h_BE_altitude : [collinear A E B] /\ [orthogonal (E - B) (C - B)])
  (h_CD_altitude : [collinear A D C] /\ [orthogonal (D - C) (B - C)])
  (h_G_midpoint : G = (F + D) / 2)
  (h_H_midpoint : H = (F + E) / 2)
  (h_I_gh : exists l, [collinear A I] /\ [collinear G H I] /\
      (forall Q, [collinear A Q] -> (Q - A) = k * (C - B) -> [collinear G H Q] -> Q = I))
  (h_I_A_parallel_BC : (I - A) = k * (C - B) /\ k <> 0)
.

Theorem geometry_IA_eq_IF :
  \norm{I - A} = \norm{I - F}.
Proof. Admitted.

End Geometry_Theorem.
####