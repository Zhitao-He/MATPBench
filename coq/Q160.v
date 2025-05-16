####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem area_of_similar_triangle :
  (* Given: two similar triangles *)
  (* Small triangle: side length = 10 mm, area = 25 mm^2 *)
  (* Large triangle: corresponding side length = 18 mm *)
  let side_small := 10%:R in
  let area_small := 25%:R in
  let side_large := 18%:R in
  exists area_large : R,
    (* The large triangle is similar to the small one *)
    area_large = area_small * (side_large / side_small) ^ 2 /\
    area_large = 81.
Proof. Admitted.
####