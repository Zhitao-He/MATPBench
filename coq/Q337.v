####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section AngleProblem.

Variable R : realType.

Variables P Q R S : 'rV[R]_2.

(* Given: sin(angle RPQ) = 7/25 *)
Hypothesis sin_RPQ : sin (angle R P Q) = 7 / 25.

(* Goal: cos(angle RPS) = -24/25 *)
Theorem cos_RPS : cos (angle R P S) = -24 / 25.
Proof. Admitted.

End AngleProblem.
####