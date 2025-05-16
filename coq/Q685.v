####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section cyclic_quadrilateral_angle.

Variable R : realType.

Variable B S R_ T : 'rV[R]_2.

Hypothesis distinct_pts : uniq [:: B; S; R_; T].
Hypothesis cyclic : on_circle B S R_ T.
Hypothesis convex_quad : convex_quad B S R_ T.

(* The measure of angle BRS is 103° *)
Hypothesis angle_BRS_103 : angle_deg B R_ S = 103.

Theorem measure_angle_RTS_77 :
  angle_deg R_ T S = 77.
Proof. Admitted.

End cyclic_quadrilateral_angle.
####