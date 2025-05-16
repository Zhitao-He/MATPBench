####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import euclidean_geometry angle realalg.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section MNG_angle_theorem.

Variable R : realType.

(* Points on the circle *)
Variables M N G E P B : 'rV[R]_2.

Hypothesis Hdistinct : M <> N /\ N <> G /\ G <> E /\ E <> M /\ M <> G /\ N <> E.

(* All points are concyclic *)
Hypothesis Hcyclic : on_circle M N G E.

(* P and B are interior points as in the diagram, locations such that: *)
Hypothesis HP_Between : between M P G.
Hypothesis HB_Between : between M B E.

(* Given measures from diagram: *)
Hypothesis Hangle_PMG : angle_of_points M P G = 89%:R / 2%:R.
Hypothesis Hangle_BNE : angle_of_points B N E = 66%:R.

(* Theorem statement: *)
Theorem measure_angle_MNG :
  angle_of_points M N G = 89%:R / 2%:R.
Proof. Admitted.

End MNG_angle_theorem.
####