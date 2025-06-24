####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C X : 'rV[R]_2.

Hypotheses
  (bisector : forall P, on_line P (line B C) ->
     let d1 := `|P - B|` in let d2 := `|P - C|` in
     let dX := `|X - B|` in let dXC := `|X - C|` in
     d1 * `|X - C|` = d2 * `|X - B|`)
  (AC_length : `|A - C|` = 21)
  (AB_length : `|A - B|` = 45).

Theorem find_AX : 
  let AX := `|A - X|` in
  AX = 14.
Proof. Admitted.
####