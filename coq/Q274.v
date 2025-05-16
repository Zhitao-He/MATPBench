####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.
Require Import Reals Psatz.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope R_scope.

Variable pi : R.
Axiom pi_def : pi = Rtrigo_def.PI.

Definition cyl_side_area r h := 2*pi*r*h.
Definition cyl_top_area r := pi*r^+2.

Theorem wedding_cake_surface_area :
  let r1 := 20 in let h1 := 20 in let r2 := 40 in let h2 := 20 in let r3 := 60 in let h3 := 40 in
  let S := cyl_top_area r1 + cyl_side_area r1 h1 + cyl_side_area r2 h2 + cyl_side_area r3 h3 in
  Rabs (S - 15708%:R) < 0.1.
Proof.
admit.
Qed.
####