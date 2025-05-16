####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleAngle.

Variable R : realType.

Variables O A B P : 'rV[R]_2.

Hypothesis AB_nondeg : A <> B.
Hypothesis OA_pos : norm (O - A) > 0.
Hypothesis OB_pos : norm (O - B) > 0.
Hypothesis OP_pos : norm (O - P) > 0.

(* All four points are distinct and lie on the same circle with center O *)
Hypothesis A_on_circle : norm (A - O) = norm (B - O).
Hypothesis B_on_circle : norm (B - O) = norm (P - O).
Hypothesis P_on_circle : norm (P - O) = norm (A - O).
Hypothesis AB_arc_not_whole : A <> P /\ B <> P.

(* Central angle AOB is 40 degrees *)
Hypothesis angle_AOB_40 : angle O A B = (40%:R * PI) / 180.

Theorem angle_APB_20 :
  angle A P B = (20%:R * PI) / 180.
Proof. Admitted.

End CircleAngle.
####