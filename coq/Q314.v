####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Let E := 'I_2 -> R.

Theorem square_diagonal_midpt_perp_eq
  (W X Y Z A B C : E)
  :
    (* WXYZ is a square with diagonal WZ of length 12: *)
    is_square W X Y Z /\
    norm (W - Z) = 12 /\
    (* A is the midpoint of WX *)
    A = ((W + X) / 2) /\
    (* AB perpendicular to AC and AB = AC *)
    (B - A) ⊥ (C - A) /\
    norm (B - A) = norm (C - A) /\
    (* Conclusion: length of BC is 18 *)
    norm (B - C) = 18.
Proof. Admitted.
####