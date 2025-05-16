####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.
Require Import Reals Psatz.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variable R : realType.

Theorem surface_area_of_composite_solid :
  let s1 := 33%:R in let s2 := 25%:R in let s3 := 20%:R in
  let r := 6%:R in let h := 11%:R in let π := Rtrigo.pi in
  let box_area := 2*(s1*s2 + s1*s3 + s2*s3) in
  let cyl_area := 2*π*r*h + 2*π*r^+2 in
  exists S, Rabs (S - (box_area*2 - 2*π*r^+2 + cyl_area)) < 1e-2.
Proof.
admit.
Qed.
####