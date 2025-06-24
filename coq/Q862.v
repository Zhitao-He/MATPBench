####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelogramProblem.
Variable R : realType.
Variables A B C D E : 'Point[R]_2.

Hypotheses
  AB_length : dist A B = 15;
  DA_length : dist D A = 9;
  DB_length : dist D B = 12;
  parallelogram_ADCB : (dist A D = dist B C) /\ parallel (line A D) (line B C) /\ parallel (line A B) (line D C);
  BE_perp_DE : perpendicular (line B E) (line D E);
  CB_perp_DB : perpendicular (line C B) (line D B);
  collinear_ABE : collinear [:: A; B; E].

Definition x := dist D E.

Theorem x_value : x = 36 / 5.
Proof. by []. Qed.

End ParallelogramProblem.
####