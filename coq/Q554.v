####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angletype.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometryProblem.

Variable R : realType.
Variables D E F G : R^2.

Variable x : R.

Hypothesis DFE_triangle : colinear D F E = false.
Hypothesis points_distinct : [/\ D != E, E != F, F != D, G != F & G != E].

(* Angles are measured in degrees *)
Variable angle : R^2 -> R^2 -> R^2 -> R.

Hypothesis angle_DFE : angle D F E = 9 * x + 7.
Hypothesis angle_EDF : angle E D F = 5 * x.
Hypothesis angle_FED : angle F E D = 5 * x.

Definition GFE := angle G F E.

Theorem value_GFE_70 :
  GFE = 70.
Proof. Admitted.

End GeometryProblem.
####