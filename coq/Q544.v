####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section AngleBisector.

Variable R : realType.

Variables E F G H : 'point[R].

Hypothesis EFG_equilateral : equilateral E F G.
Hypothesis EH_bisects_GEF : angle_bisector E H G E F.
Hypothesis angle_FHE_15x : angle F H E = (15 * x)%:R%:degrees.
Hypothesis collinear_FHG : colinear F H G.
Hypothesis between_FHG : between F H G.

Theorem value_x_6 :
  x = 6.
Proof. Admitted.

End AngleBisector.
####