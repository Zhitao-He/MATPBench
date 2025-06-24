####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D F G : 'rV[R]_2.
Variable x : R.

Hypothesis H_AGC : angle A G C = 40.
Hypothesis H_DGF : angle D G F = 53.
Hypothesis H_CGB : perpendicular (C - G) (B - G).
Hypothesis H_FGC : perpendicular (F - G) (C - G).
Hypothesis H_FGD : perpendicular (F - G) (D - G).
Hypothesis H_BCG : perpendicular (B - G) (C - B).

Definition angle_deg (A B C : 'rV[R]_2) : R :=
  (atan2 (C.2 - B.2) (C.1 - B.1) - atan2 (A.2 - B.2) (A.1 - B.1)) * 180 / PI.

Theorem measure_angle_FDG : angle_deg F D G = 37.
Proof.
  (* Using angle sum in triangle DGF *)
  have H_sum : angle_deg D G F + angle_deg F G D + angle_deg D F G = 180 by apply: triangle_property_angle_sum.
  rewrite H_DGF in H_sum.
  (* Express other angles in terms of known angles *)
  have H_FGD : angle_deg F G D = 90 - angle_deg F G C by admit.
  have H_FGC : angle_deg F G C = 40 by admit.
  (* Solve for angle_deg F G D *)
  have H_eq : angle_deg F G D = 90 - 40 by rewrite H_FGC in H_FGD.
  (* Further angle relationships *)
  have H_DFG : angle_deg D F G = 180 - angle_deg D G F - angle_deg F G D by field.
  (* Final calculation *)
  rewrite H_eq in H_sum.
  by field.
Qed.
####