####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables C D N : 'rV[R]_2.

Hypothesis H_NC : `|N - C| = 8.
Hypothesis H_N_center : forall P : 'rV[R]_2, on_circle P N C D -> `|N - P| = `|N - C|.

Theorem DN_equals_8 : `|N - D| = 8.
Proof.
  (* Using the property that all radii of a circle are equal *)
  have H_radius_equal : `|N - D| = `|N - C| by apply: H_N_center; apply: on_circle_intro.
  rewrite H_NC in H_radius_equal.
  by [].
Qed.
####