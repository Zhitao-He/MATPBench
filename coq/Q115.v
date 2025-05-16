####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences complex.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope complex_scope.

Variable R : realType.
Variable C : complexType.

Definition r : R := 11 / 60.

Definition seq_center : nat -> C :=
  fix f n :=
    match n with
    | 0 => 0
    | S k => f k + (r ^ k)%:C * (1 - r) * (Num.i ^ k)
    end.

Definition point_B : C :=
  \sum_(k < oo) (r ^ k)%:C * (1 - r) * (Num.i ^ k).

Definition dist_to_B := normc point_B.

Theorem amc_10b_2024_p24 :
  exists m n : nat,
    coprime m n /\
    dist_to_B = (m%:R / n%:R)%:C /\
    m + n = 110.
Proof. Admitted.
####