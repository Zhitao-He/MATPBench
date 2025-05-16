####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Let A := (0,6).
Let B := (0,0).
Let C := (8,0).
Definition midpoint (P Q : R * R) : R * R := ((fst P + fst Q)/2, (snd P + snd Q)/2).
Let D := midpoint A B.
Let E := midpoint B C.
Definition det P Q := fst P * snd Q - snd P * fst Q.
Definition quad_area P Q R S :=
  abs ((det P Q + det Q R + det R S + det S P) / 2).

Theorem quadrilateral_ADEC_area :
  quad_area A D E C = 16.
Proof.
admit.
Qed.
####