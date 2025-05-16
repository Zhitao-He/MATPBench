####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_problem.

Variable R : realType.

Variables A B C D E : R^2.

Hypothesis trapezoid : colinear D A C /\ colinear B E C /\ colinear D B E.
Hypothesis DA_eq_11 : norm (A - D) = 11.
Hypothesis AE_perp_BE : [<: E - A, B - E :>] = 0.
Hypothesis AE_eq_13 : norm (E - A) = 13.
Hypothesis between_AE : between D A E.
Hypothesis between_BC : between B E C.

Definition BC := norm (C - B).

Theorem geometry_BC_value :
  BC = 211 / 13.
Proof. Admitted.

End geometry_problem.
####