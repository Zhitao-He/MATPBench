####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem square_in_square_area :
  let A := (0, 0) : R * R in
  let B := (sqrt 50, 0) in
  let C := (sqrt 50, sqrt 50) in
  let D := (0, sqrt 50) in
  exists E F G H : R * R,
    square E F G H /\n    (exists Q1 Q2 Q3 Q4,
       line_through E F Q1 /\ (Q1 = A \/ Q1 = B \/ Q1 = C \/ Q1 = D) /
       line_through F G Q2 /\ (Q2 = A \/ Q2 = B \/ Q2 = C \/ Q2 = D) /
       line_through G H Q3 /\ (Q3 = A \/ Q3 = B \/ Q3 = C \/ Q3 = D) /
       line_through H E Q4 /\ (Q4 = A \/ Q4 = B \/ Q4 = C \/ Q4 = D)).
Proof.
admit.
Qed.
####