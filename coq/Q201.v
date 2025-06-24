####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleAngle.

Variable R : realType.

Variables O A B P : 'rV[R]_2.

Hypothesis O_distinct_points : O <> A /\ O <> B /\ O <> P.
Hypothesis A_distinct_B : A <> B.
Hypothesis A_distinct_P : A <> P.
Hypothesis B_distinct_P : B <> P.

(* All four points lie on the same circle with center O *)
Hypothesis A_on_circle : norm (A - O) = norm (B - O).
Hypothesis B_on_circle : norm (B - O) = norm (P - O).
Hypothesis P_on_circle : norm (P - O) = norm (A - O).

(* Central angle AOB is 40 degrees *)
Hypothesis angle_AOB_40 : angle O A B = (40%:R * PI) / 180.

Theorem angle_APB_20 :
  angle A P B = (20%:R * PI) / 180.
Proof. Admitted.

End CircleAngle.
####