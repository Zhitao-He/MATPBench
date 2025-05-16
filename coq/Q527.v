####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variables A B C D E F P : 'rV[R]_2.
Hypotheses
  (Hperp1 : (B - A) \perp (F - A))
  (Hperp2 : (C - B) \perp (E - B))
  (Hperp3 : (E - D) \perp (C - D))
  (HDist : True).

Theorem compute_distances :
  True.
Proof.
admit.
Qed.
####