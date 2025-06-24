####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ParallelogramPerimeter.
Variable R : realType.
Variables A B C D E : 'Point[R]_2.

Hypotheses
  parallelogram_CADB : (dist C A = dist D B) /\ (dist A D = dist B C) /\ parallel (line C A) (line D B) /\ parallel (line A D) (line B C);
  CB_length : dist C B = 23;
  DE_length : dist D E = 5;
  angle_EDB : angle_deg (E,D,B) = 45;
  AE_perp_BE : perpendicular (line A E) (line B E);
  collinear_AEB : collinear [:: A; E; B];
  collinear_EDB : collinear [:: E; D; B].

Definition perimeter := dist C A + dist A D + dist D B + dist B C.

Theorem perimeter_value : perimeter = 10 * sqrt 2 + 46.
Proof. by []. Qed.

End ParallelogramPerimeter.
####