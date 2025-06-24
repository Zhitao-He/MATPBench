####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Given: Bases PQ and SR, and area of the trapezoid *)
Theorem trapezoid_PQRS_height :
  let PQ := 20%:R in
  let SR := 30%:R in
  let area := 250%:R in
  exists h : R, 0 < h /\ area = ((PQ + SR) / 2) * h.
Proof.
  (* The area of a trapezoid is given by: Area = ((base1 + base2) / 2) * height *)
  (* We solve for h: h = (2 * Area) / (base1 + base2) *)
  exists (2 * area / (PQ + SR)).
  split.
  - (* Prove h > 0 *)
    rewrite /PQ /SR /area.
    apply: ltR0_neq0 => //.
    by rewrite mulR_gt0 // invR_gt0 ?ltr0n.
  - (* Prove area = ((PQ + SR) / 2) * h *)
    rewrite /PQ /SR /area.
    field.
    (* The denominator (PQ + SR) is non-zero since PQ = 20, SR = 30 *)
    by rewrite addR_neq0 // ltr0n.
Qed.
####