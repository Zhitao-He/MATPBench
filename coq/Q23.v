####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition piecewise_f (x : R) : R :=
  if x < 1 then x + 3 else (x - 2)^+2.

Theorem left_limit_piecewise_f_at_1 :
  is_lim (fun x : R => if x < 1 then x + 3 else (x - 2)^+2) 1^- 4.
Proof. Admitted.
####