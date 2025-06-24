####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleProblem.
Variable R : realType.
Variables A B D E G H : 'Point[R]_2.

Hypotheses
  angle_AGE : angle_deg (A,G,E) = 55;
  BD_parallel_GA : parallel (line B D) (line G A);
  collinear_AGE : collinear [:: A; G; E];
  collinear_BGH : collinear [:: B; G; H];
  collinear_DBG : collinear [:: D; B; G].

Definition y := angle_deg (G,B,H).

Theorem y_value_125 : y = 125.
Proof. by []. Qed.

End AngleProblem.
####