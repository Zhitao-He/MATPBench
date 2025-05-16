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
    (* WXYZ is a square with diagonal WX - XZ (order: W-X-Y-Z-W): *)
    is_square W X Y Z /\
    norm (W - Y) = 12 /\
    (* A is the midpoint of WX *)
    A = ((W + X) / 2) /\
    (* AB perpendicular to AC and AB = AC *)
    exists (A' B' C' : E),
      A' = A /\ 
      B' = B /\ 
      C' = C /\
      ((B' - A') ⊥ (C' - A')) /\
      norm (B' - A') = norm (C' - A') /\
    (* B and C determined by these conditions, now conclude: *)
    norm (B - C) = 18.
Proof. Admitted.
####