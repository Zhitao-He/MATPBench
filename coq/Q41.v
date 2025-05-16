From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem circle_tangent_geometry :
  forall (O A B D C : 'rV[R]_2),
    norm (A - O) = 2 ->
    B - O = O - A ->
    O = ((A + B) / 2)%R ->
    norm (O - D) = 2 ->
    (exists l : {vect 'rV[R]_2 | l != 0},
      C = B + val l /\ (exists t : R, t > 1 /\ C = (1 - t) * A + t * B)) ->
    '[C - D, D - O] = 0 ->
    norm (D - O) = 2 ->
    D != A ->
    let vec_AD := D - A in
    let vec_AC := C - A in
    arccos (( '[vec_AD, vec_AC]) / (norm vec_AD * norm vec_AC)) = PI / 6 ->
    norm (C - D) = 2 * sqrt 3.
Proof.
intros. admit.
Qed.
####