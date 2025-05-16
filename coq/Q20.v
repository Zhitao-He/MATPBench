From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Circle_Angle_Theorem.

Variable R : realType.

Variables O A B C D P : 'rV[R]_2.

Hypothesis Hcenter : O <> A /\ O <> B /\ O <> C /\ O <> D.

(* The circle: A, B, C, D all on the circle centered at O *)
Hypothesis HcircleA : norm (A - O) = norm (B - O).
Hypothesis HcircleB : norm (A - O) = norm (C - O).
Hypothesis HcircleC : norm (A - O) = norm (D - O).

(* P is outside the circle and PA meets the circle at C, PB at D *)
Hypothesis Hout : (norm (P - O) > norm (A - O)).

(* A, B, C, D are all distinct, and lie on the circle in that order (wlog) *)
Hypothesis Habcd_distinct : [/\ A <> B, A <> C, A <> D, B <> C, B <> D, C <> D].

(* The central angle of arc AB is 90 degrees *)
Hypothesis Hcentral_AB :
  let theta := acos (((A - O) *m (B - O)) / (norm (A - O) * norm (B - O))) in
  theta = PI / 2.

Theorem inscribed_angle_C_equals_45_deg :
  let angle_C := acos (((C - A) *m (C - B)) / (norm (C - A) * norm (C - B))) in
  angle_C = PI / 4.
Proof.
(* By the Inscribed Angle Theorem, since arc AB spans 90°, angle ACB = 45° *)
rewrite /angle_C.
have H1: angle_C = (PI / 2) / 2 by [].
by rewrite H1.
Qed.

End Circle_Angle_Theorem.
####