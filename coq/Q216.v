####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables B S P : 'rV[R]_2.

Hypotheses
  HB : B = 0 /
  HSP : `|P - S| = 916 /
  Hangle_BSP : let u := (B - S) / `|B - S| in let v := (P - S) / `|P - S| in `[u, v] = cos (145%:R * PI / 180).

Theorem photographer_roundtrip_distance :
  exists dBS, 0 <= dBS /\n    let dSB := dBS in
    let dSP := 916 in
    let dPB := sqrt (dSB ^+ 2 + dSP ^+ 2 - 2 * dSB * dSP * cos (145%:R * PI / 180)) in
    dBS + dSP + dPB = dBS + 916 + dPB.
Proof.
admit.
Qed.
####