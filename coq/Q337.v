####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables S P Q R : 'rV[R]_2.

Hypothesis PQ_collinear : exists k : R, Q = P + k *: (P - S).
Hypothesis PQS_collinear : exists l : R, S = P + l *: (Q - P).
Hypothesis R_not_collinear : ~ (colinear [:: P; Q; R]).

Definition angle (A B C : 'rV[R]_2) : R :=
  let u := A - B in
  let v := C - B in
  let dot := u *m v^T in
  let normu := sqrt ((u *m u^T) 0 0) in
  let normv := sqrt ((v *m v^T) 0 0) in
  acos ((dot 0 0) / (normu * normv)).

Theorem angle_problem_sin_cos :
  sin (angle R P Q) = 7 / 25 ->
  cos (angle R P S) = -24 / 25.
Proof. Admitted.
####