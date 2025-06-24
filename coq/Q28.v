From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleAngle.
Variable R : realType.
Variables A B C O : 'rV[R]_2.

(* Hypothesis: Points A, B, C lie on the circle centered at O *)
Hypothesis on_circle : on_circle O A B C.

(* Hypothesis: Angle ACB is 25 degrees *)
Hypothesis angle_ACB_25 : angle A C B = (25%:R * PI) / 180.

(* Theorem to prove: Angle BAO is 65 degrees *)
Theorem angle_BAO_65 : angle B A O = (65%:R * PI) / 180.
Proof.
  (* First, calculate the central angle AOB using the inscribed angle theorem *)
  (* The inscribed angle ACB is half of the central angle AOB *)
  have Hcentral : angle A O B = 2 * angle A C B by rewrite angle_ACB_25; field.
  
  (* Since OA = OB (both are radii of the same circle), triangle AOB is isosceles *)
  (* Therefore, angles BAO and ABO are equal *)
  (* The sum of angles in a triangle is PI radians *)
  (* So, angle BAO = (PI - angle AOB) / 2 *)
  rewrite Hcentral.
  (* Simplify the expression to get the desired result *)
  field.
Qed.

End CircleAngle.
####