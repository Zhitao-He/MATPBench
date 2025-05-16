####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points A,B,C,D,E,F,G,H of a right rectangular prism *)
Variables (A B C D E F G H : 'rV[R]_3).

Hypothesis rect_prism :
  is_rect_prism [:: A; B; C; D; E; F; G; H].

(* The volume of the pyramid ABCH is 20 *)
Hypothesis vol_ABCH : pyramid_volume A B C H = 20.

Theorem prism_vol_120 :
  prism_volume [:: A; B; C; D; E; F; G; H] = 120.
Proof. Admitted.
####