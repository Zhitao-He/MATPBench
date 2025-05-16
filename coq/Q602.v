####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_cosine_TSR :
  forall (S T R : 'e2[R]),
    let dST := norm (T - S) in
    let dSR := norm (R - S) in
    let dTR := norm (R - T) in
    (* Triangle side lengths per diagram: ST = 4, TR = 3, SR = 5 *)
      dST = 4 ->
      dTR = 3 ->
      dSR = 5 ->
      (* T is a right angle: angle S T R = 90 deg *)
      `| [\<vec T - S, R - T] | = dST * dTR ->
      cos_angle (S - R) (T - R) = 4/5.
Proof. Admitted.
####