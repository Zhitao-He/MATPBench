####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points J, K, N, M are vertices of rectangle JKNM *)
Variables (J K N M Q : 'e2[R]).

Hypotheses
  (Hrect : is_rectangle J K N M)
  (Hdiag1 : midpoint Q J M)
  (Hdiag2 : midpoint Q K N)
  (HJQ : exists x : R, `|N - Q| = 2*x + 3 /\ `|K - Q| = 5*x - 9).

Theorem length_JQ_eq_11 : `|J - Q| = 11.
Proof. Admitted.
####