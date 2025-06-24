####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelLinesProblem.
Variable R : realType.
Variables A B C D E : 'Point[R]_2.

Hypotheses
  AB_length : dist A B = 2;
  CD_length : dist C D = 5;
  AE_length : dist A E = '|x - 1|;
  ED_length : dist E D = '|x + 5|;
  BA_parallel_DC : parallel (line B A) (line D C);
  collinear_ABE : collinear [:: A; B; E];
  collinear_CDE : collinear [:: C; D; E].

Definition x := (dist A E + 1).

Theorem AE_length_4 : dist A E = 4.
Proof. by []. Qed.

End ParallelLinesProblem.
####