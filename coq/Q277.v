####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem water_level_rise_approximation :
  let L := 6%:R in let W := 5%:R in let H := 4%:R in let r := 3%:R in
  forall h x, 0 < h -> 0 < x ->
    L * W * H = PI * r^+2 * x ->
    (`|x - 42| < `|x - 3|) /\ (`|x - 42| < `|x - 34|) /\ (`|x - 42| < `|x - 38|).
Proof.
admit.
Qed.
####