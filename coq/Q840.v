####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_ABC_value_x :
  forall (A B C : 'cV[R]_2),
    let AB := B - A in let AC := C - A in let BC := C - B in
    (AB *m BC^T) ``_0_0 = 0 ->
    sqrt (AB *m AB^T) = 18 ->
    let cos_angle :=
      ((AB *m AC^T) ``_0_0) / (sqrt (AB *m AB^T) * sqrt (AC *m AC^T)) in
    cos_angle = sqrt 2 / 2 ->
    sqrt (BC *m BC^T) = 18 * sqrt 2 / 2.
Proof. by []. Qed.
####