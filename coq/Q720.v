####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_ABC_hypotenuse_value :
  forall (A B C : R * R),
    (* Points configuration – as inferred from the diagram: *)
    A = (0,0) ->
    C = (0,6) ->
    B = (15,6) ->
    (* Right angle at C: *)
    [/\ A != B, B != C, C != A] ->
    let x := sqrt ((A.1 - B.1)^+2 + (A.2 - B.2)^+2) in
    x = 3 * sqrt 29.
Proof. Admitted.
####