From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition pi := Num.Theory.PI.
Definition eps0 := 8.854187817e-12.

Definition R1 : R := 1.30e-3.
Definition R2 : R := 10 * R1.
Definition L  : R := 11.0.
Definition Q1 : R := 3.40e-12.
Definition Q2 : R := -2 * Q1.

Theorem physics_figure_23_42_electric_field :
  let r := 2 * R2 in
  let E := Q1 + Q2 in
  (r > 0) ->
  (R2 > R1) ->
  (forall E_mag : R,
      E_mag = (Q1 + Q2) / (4 * pi * eps0 * (r ^ 2)) ->
      E_mag = 0).
Proof.
move=> Hr_pos Hr_gt Hfield.
apply: Hfield.
rewrite /Q2 /Q1.
field.
Qed.
####