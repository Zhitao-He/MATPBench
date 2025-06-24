####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleProblem.
Variable R : realType.
Variables A B C F : 'Point[R]_2.

Hypotheses
  diameter_A : dist A (Point (px A + 4) (py A)) = 8;
  diameter_B : dist B (Point (px B + 9) (py B)) = 18;
  diameter_C : dist C (Point (px C + 5.5) (py C)) = 11;
  on_circle_F : dist F A = 4;
  on_circle_B : dist F B = 9;
  collinear_AFB : collinear [:: A; F; B].

Definition FB_length := dist F B.

Theorem FB_length_5 : FB_length = 5.
Proof. by []. Qed.

End CircleProblem.
####