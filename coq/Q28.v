####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleAngle.
Variable R : realType.
Variables A B C O : 'rV[R]_2.

Hypothesis on_circle : on_circle O A B C.
Hypothesis angle_ACB_25 : angle A C B = (25%:R * PI) / 180.

Theorem angle_BAO_65 : angle B A O = (65%:R * PI) / 180.
Proof.
  have Hcentral : angle A O B = 2 * (25%:R * PI) / 180 by field.
  (* Since OA = OB, triangle AOB is isosceles *)
  (* angle B A O = (PI - angle A O B) / 2 *)
  rewrite Hcentral; field.
Qed.
End CircleAngle.
####