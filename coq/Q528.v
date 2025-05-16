####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem right_triangle_side_length :
  forall (A B C : R * R),
    (* C is the right angle *)
    [/\ (A.2 = C.2 + 6) /\ (A.1 = C.1),
        (B.2 = C.2) /\ (B.1 > C.1),
        ((A.1 - B.1)^+2 + (A.2 - B.2)^+2 = 10^2),
        ((A.1 - C.1)^+2 + (A.2 - C.2)^+2 = 6^2)] ->
    let x := ((B.1 - C.1)^+2 + (B.2 - C.2)^+2)^(1%R/2) in
    x = 8.
Proof. Admitted.
####