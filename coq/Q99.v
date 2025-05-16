####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition side := 13%:R.

Let A : 'rV[R]_2 := row2 0 0.
Let B : 'rV[R]_2 := row2 side 0.
Let C : 'rV[R]_2 := row2 side side.
Let D : 'rV[R]_2 := row2 0 side.

Theorem square_ef_squared :
  exists E F : 'rV[R]_2,
    ( (norm (B - E) = 5%:R) /\
      (norm (A - E) = 12%:R) /\
      (norm (D - F) = 5%:R) /\
      (norm (C - F) = 12%:R) /\
      (E \notin [set A; B; C; D]) /\
      (F \notin [set A; B; C; D]) /\
      (EF2 := (norm (E - F))^+2) /\
      (EF2 = 578%:R)
    ).
Proof. Admitted.
####