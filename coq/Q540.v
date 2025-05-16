####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points in the plane *)
Variables S Q R T : 'rV[R]_2.

(* The following hypotheses translate the geometric configuration depicted in the diagram: *)

Hypothesis SQ18 : `|Q - S| = 18.
Hypothesis QR6 : `|R - Q| = 6.
Hypothesis RS14 : `|S - R| = 14.

(* T lies on segment QR *)
Hypothesis T_on_QR : exists t : R, 0 < t < 1 /\ T = (1 - t) *: Q + t *: R.

(* ST and TR are straight lines (trivially implied by definitions of points) *)

(* We are to compute x = |T - Q| *)

Theorem value_x_TQ :
  `|T - Q| = 27/5.
Proof. Admitted.
####