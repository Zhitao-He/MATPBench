####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryDiagram.

Variable R : realType.

Variables P Q R S : 'rV[R]_2.

Hypothesis pq_perp_sp : [< (Q - P) , (S - P) >] = 0.
Hypothesis rq_perp_sr : [< (Q - R) , (S - R) >] = 0.
Hypothesis sp_eq_sr : norm (S - P) = norm (S - R).
Hypothesis angle_psr_48 : angle (P - S) (R - S) = (48%:R * INR pi) / 180%:R.

Theorem measure_angle_sqp_42 :
  angle (S - Q) (P - Q) = (42%:R * INR pi) / 180%:R.
Proof. Admitted.

End GeometryDiagram.
####