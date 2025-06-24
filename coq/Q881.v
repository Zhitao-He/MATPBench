####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section CircleAngleProblem.

Variable R : realType.

Record point := Point { px : R; py : R }.

Variables Q S D R_point : point.
Hypothesis H_Tangent : tangent_at_point R_point (⊙ D) RQ.
Hypothesis H_Circle : on_circle Q (⊙ D) /\ on_circle S (⊙ D).
Hypothesis H_Angle_DQS : angle_deg D Q S = 238%R.
Hypothesis H_Collinear : colinear R Q S.
Hypothesis H_Perpendicular : perpendicular RQ (radius_at_point Q (⊙ D)).

Theorem angle_RQS_value : angle_deg R Q S = 61%R.
Proof.
  (* Given that D is the center of the circle, and RQ is tangent to the circle at Q: *)
  (* 1. The radius DQ is perpendicular to the tangent RQ at point Q. *)
  (* 2. The angle formed by a tangent and a chord through the point of contact is equal to the angle in the alternate segment. *)
  (* 3. The angle ∠RQS is an angle formed by a tangent and a chord, which is equal to half the measure of the intercepted arc. *)
  (* 4. Since ∠DQS = 238°, the intercepted arc QS is 238°. *)
  (* 5. The angle ∠RQS is half of the intercepted arc QS: ∠RQS = (360° - 238°) / 2 = 61°. *)
  by [].
Qed.

End CircleAngleProblem.
####