####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_x_is_3sqrt3_over_2 :
  forall (L B F A : 'e2[R]),
    (* Given lengths *)
    dist L B = 2 * sqrt 3 ->
    dist L A = sqrt 3 ->
    (* Right angles *)
    [angle L B A] = pi/2 ->
    [angle B A F] = pi/2 ->
    (* Collinearity and geometry: points as in the figure *)
    (* x = BF, y = BA, z = AF *)
    let x := dist B F in
    let y := dist B A in
    let z := dist A F in
    (* F lies such that AF is perpendicular to BA (from diagram) *)
    (* Conclusion *)
    x = 3 * sqrt 3 / 2.
Proof. Admitted.
####