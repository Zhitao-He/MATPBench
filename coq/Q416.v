####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences matrix geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record rectangle := {
  P : 'rV[R]_2;
  u : 'rV[R]_2;
  v : 'rV[R]_2;
  orth_u_v : u *m v^T = 0
}.

Definition rect_area r :=
  norm (u r) * norm (v r).

Definition R0 : rectangle.
Proof.
  exists (col_mx 0 0) (col_mx 3 0) (col_mx 0 4).
  by rewrite mulmx_row_col mxE.
Defined.

Theorem R0_area : rect_area R0 = 12.
Proof.
  by rewrite /rect_area /= norm_rowE normr_nat norm_rowE normr_nat.
Qed.
####