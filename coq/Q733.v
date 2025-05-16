####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem geometry_chord_secant_problem :
  forall (B D F A C E : R^2) (x : R),
    (* D and F are intersection points of lines BA, BC with circle centered at E *)
    (* |B - D| = x, |B - F| = 5, |D - A| = x + 5, |F - C| = x + 5 *)
    let circle := fun P : R^2 => norm (P - E) = norm (A - E) in
    D \in line B A /\ F \in line B C /\
    D <> A /\ F <> C /\
    circle A /\ circle C /\ circle D /\ circle F /\
    norm (B - D) = x /\ norm (B - F) = 5 /\
    norm (D - A) = x + 5 /\ norm (F - C) = x + 5 ->
    x = 5.
Proof. Admitted.
####