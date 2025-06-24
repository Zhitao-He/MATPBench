####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelogramAreaProblem.
Variable R : realType.
Variables A B C D E : 'Point[R]_2.

Hypotheses
  AC_length : dist A C = 21;
  AD_length : dist A D = 17;
  DE_length : dist D E = 8;
  parallelogram_BCAD : (dist B C = dist A D) /\ parallel (line B C) (line A D) /\ parallel (line B A) (line C D);
  CA_perp_EA : perpendicular (line C A) (line E A);
  DE_perp_AE : perpendicular (line D E) (line A E);
  collinear_AED : collinear [:: A; E; D].

Definition quad_area := area_quadrilateral [:: B; C; A; D].

Theorem area_BCAD_315 : quad_area = 315.
Proof. by []. Qed.

End ParallelogramAreaProblem.
####