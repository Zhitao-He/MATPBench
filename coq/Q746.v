####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_problem.

Variable R : realType.

Variables D E F G A B C : 'rV[R]_2.

Hypothesis distinct_points : forall X Y : 'rV[R]_2,
  (X = D \/ X = E \/ X = F \/ X = G \/ X = A \/ X = B \/ X = C) ->
  (Y = D \/ Y = E \/ Y = F \/ Y = G \/ Y = A \/ Y = B \/ Y = C) ->
  X <> Y -> True.

(* Given angle measures in degrees *)
Hypothesis angle_EBD : angle_deg E B D = 63.
Hypothesis angle_DBE : angle_deg D B E = 69.
Hypothesis angle_ABE : angle_deg A B E = 47.
Hypothesis angle_BCG : angle_deg B C G = 136.

(* All points D, B, C, and G are collinear, in that order *)
Hypothesis collinear_D_B_C_G : collinear [:: D; B; C; G].

Theorem value_of_angle_BCA :
  angle_deg B C A = 44.
Proof. Admitted.

End geometry_problem.
####