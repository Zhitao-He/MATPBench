####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals realalg.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem right_square_pyramid_lateral_height :
  let V := 63960 : R in
  let h := 30 : R in
  (* Let s = length of base edge, l = lateral height AB *)
  exists s l : R,
    0 < s /\ 0 < l /\
    (* Volume of right square pyramid: V = (1/3) * s^2 * h *)
    V = (1%:R / 3%:R) * s ^+ 2 * h /\
    (* l = sqrt((s/2)^2 + h^2), i.e., slant height from apex to base edge midpoint *)
    l = sqrt ((s/2)^+2 + h^2) /\
    (* The answer to the nearest integer is 50 *)
    (`|l - 50| <= 0.5).
Proof. Admitted.
####