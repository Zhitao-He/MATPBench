####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section SquareInscribedInCircle.

Variable R : realType.

(* Points A, B, C, D define a square inscribed in circle K with center O *)
Variables (A B C D O : 'P[R^2]).
Hypotheses
  (Hcyc : on_circle O A /\ on_circle O B /\ on_circle O C /\ on_circle O D)
  (Hsq : square A B C D)
  (Hcenter : O = center (circumcircle4 A B C D)).

(* The central angle subtended by arc AB is 90 degrees = pi/2 radians *)
Theorem square_inscribed_central_angle :
  let theta := angle R O A O B in
  theta = PI / 2.
Proof. Admitted.

End SquareInscribedInCircle.
####