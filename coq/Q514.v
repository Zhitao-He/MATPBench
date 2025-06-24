####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variables L M N P : 'R^2.
Hypotheses
  (H_angle_PLN : angle P L N = 25%:R * PI / 180)
  (H_angle_NLM_eq_PLN : angle N L M = angle P L N)
  (H_right_LMN : angle L M N = PI/2) (* LM is perpendicular to NM *)
  (H_right_LPN : angle L P N = PI/2) (* NP is perpendicular to LP *).

Theorem measure_angle_MNP_130 :
  angle M N P = 130%:R * PI / 180.
Proof.
  (* The proof would involve using the angle sum property of triangles and the given angle relationships to derive the measure of ∠MNP. 
     However, the actual proof steps are omitted here. *)
Admitted.
####