####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences trig_complex.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem greeting_card_travel_difference :
  let width := 6%:R in
  let height := 8%:R in
  let OA := 3%:R in
  let OB := width in
  let theta := (PI / 4) in
  (* As card is opened to 45°, A travels an arc of radius 3, B travels an arc of radius 6 *)
  (* The difference in distances traveled is (OB - OA) * theta *)
  (OB - OA) * theta = (3%:R / 4%:R) * PI.
Proof. Admitted.
####