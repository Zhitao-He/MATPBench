####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition pentagon_vertices : seq (R * R) :=
  [:: (-1, -1); (-3, 4); (1, 7); (6, 5); (3, -1) ].

Definition polygon_area (pts : seq (R * R)) : R :=
  let n := size pts in
  if n < 3%nat then 0 else
    let s := \sum_(i < n)
      (let: (xi, yi) := nth (0,0) pts i in
       let: (xj, yj) := nth (0,0) pts ((i.+1) %% n) in
       (xi * yj - xj * yi)) in
    (`| s |) / 2.

Theorem pentagon_area_47 :
  polygon_area pentagon_vertices = 47.
Proof. Admitted.
####