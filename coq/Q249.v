####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem volume_hemisphere_minus_upper_sphere_cap :
  let pi := Num.PI in
  let r_big := 6%:R in (* radius of the hemisphere in cm *)
  let r_small := 3%:R in (* radius of the removed upper hemisphere in cm *)
  let v_hemisphere := (2%:R / 3%:R) * pi * r_big ^+ 3 in
  let v_upper_cap :=
    let h := r_big - r_small in
    (1%:R / 3%:R) * pi * h^2 * (3%:R * r_small - h)
  in
  let volume := v_hemisphere - v_upper_cap in
  (`|volume - 50894| < 0.01).
Proof. Admitted.
####