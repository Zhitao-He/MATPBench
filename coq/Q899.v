####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points of the diagram *)
Variables A E B C F : Type.

(* Real variables for unknowns *)
Variables x y : R.

(* The angle at A is 68°, at E is 2x°, at F is (3x-15)°, at C is y^2° *)
Hypothesis Ang_A : angle A E = 68.
Hypothesis Ang_E : angle E B = 2 * x.
Hypothesis Ang_F : angle F B = 3 * x - 15.
Hypothesis Ang_C : angle C B = y ^+ 2.

(* All points are distinct *)
Hypothesis pts_distinct : A <> E /\ E <> B /\ B <> C /\ C <> F /\ F <> A.

Theorem value_of_x :
  x = 34.
Proof. Admitted.
####