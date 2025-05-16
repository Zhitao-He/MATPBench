####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_length_x_value :
  exists (A B C D : R^2),
    let x := `|B - D| in let y := `|C - B| in
    let a := `|A - D| in let b := `|C - D| in
    a = 2 /\ b = 2 * sqrt 3 /\
    (exists t, 0 < t < 1 /\ D = ((1 - t)%:R *: B + t%:R *: A)%R) /\
    (exists s, C = D + (2 * sqrt 3)%:R *: (-(B - A).2, (B - A).1) /\ (C - D) *m (B - A)^T = 0) /\
    x = 4.
Proof. by exists (0,0),(4,0),(4,2*sqrt 3),(2,0). Qed.
####