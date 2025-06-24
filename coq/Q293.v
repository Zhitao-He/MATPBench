####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem cone_inside_cylinder_volume :
  let pi := PI in
  let V_cyl := 72 * pi in
  exists r h : R,
    0 < r /\ 0 < h /\
    (V_cyl = pi * r^2 * h) /\
    let V_cone := (1%:R / 3%:R) * pi * r^2 * h in
    let V_space := V_cyl - V_cone in
    V_space = 48 * pi.
Proof.
  (* Proof would go here *)
Admitted.
####