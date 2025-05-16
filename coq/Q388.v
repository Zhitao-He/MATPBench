####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section geometry_problem.

Variable R : realType.

Variables A B C D E F G : 'rV[R]_2.

Hypothesis square_ABCD :
  is_square A B C D.

Hypothesis square_BEFBG :
  B <> E /\ E <> F /\ F <> G /\ G <> B /\
  colinear_rV B E F = false /\
  is_square B E F G.

Hypothesis equilateral_BCE :
  is_equilateral B C E.

Theorem angle_GCE_45_degrees :
  let ang := angle (G - C)%R (E - C)%R in
  ang = (PI / 4).
Proof. Admitted.

End geometry_problem.
####