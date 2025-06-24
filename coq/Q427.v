####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section IsoscelesTriangleAngleProblem.

Variable Point : Type.
Variables P Q R : Point.

Variable angle : Point -> Point -> Point -> R.
Variable is_isosceles : Point -> Point -> Point -> Prop.

Hypothesis isosceles_PQR : is_isosceles P Q R.
Hypothesis apex_at_P : is_isosceles_PQR = (angle Q P R = angle R Q P \/ angle Q P R = angle Q R P).
Hypothesis angle_P : angle Q P R = 40.

(* x is the angle on the straight extension at R : angle Q R (extension) *)
Variable x : R.

(* The exterior angle at R, adjacent to angle Q R P, formed by extending QR beyond R. *)
Hypothesis straight_angle : angle Q R P + x = 180.

Theorem triangle_angle_value :
  x = 70.
Proof. Admitted.

End IsoscelesTriangleAngleProblem.
####