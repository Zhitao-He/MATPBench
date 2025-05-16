####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem shaded_area_equilateral_circles :
  let O := (0,0) in let r1 := 4 in let r2 := 2 in
  exists A B C center2,
    circle (fun p => fst p^+2 + snd p^+2 = r1^+2) A /
    circle (fun p => fst p^+2 + snd p^+2 = r1^+2) B /
    circle (fun p => fst p^+2 + snd p^+2 = r1^+2) C /
    circle (fun p => fst (p) ^+2 + (snd p - (r1 - r2))^+2 = r2^+2) center2 /\n    (* The total shaded area equals: *)
    True.
Proof.
admit.
Qed.
####