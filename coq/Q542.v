####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section FDG_Angle.

Variable R : realType.

Variables D E F G : 'rV[R]_2.

Hypothesis E_F_G_collinear : colinear_seq [:: E; G; F].
Hypothesis G_between_EF : between E G F.
Hypothesis G_foot : exists d : R, D = G + d * row_mx [:: 0; 1]%:M.
Hypothesis DG_perp_EF : `[< D - G, F - E >] = 0.
Hypothesis angle_E : angle F E G = (25%:R * (PI / 180)).
Hypothesis angle_F : angle E F G = (65%:R * (PI / 180)).

Theorem measure_of_angle_FDG :
  angle F D G = (25%:R * (PI / 180)).
Proof. Admitted.

End FDG_Angle.
####