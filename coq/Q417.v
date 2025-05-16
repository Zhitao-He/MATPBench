####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Let P0, P1, ..., P9 be the consecutive vertices of a regular decagon inscribed in a circle. Consider the diagonal from P0 to P8, which creates an octagon and a quadrilateral as shown.
Let x denote the interior angle at vertex P9 between sides P8P9 and P9P0 as indicated in the diagram. *)

Theorem regular_decagon_octagon_angle :
  let center := (0, 0) : R * R in
  let r := 1 in
  let P := fun k : 'I_10 => (r * cos (2 * PI * k%:R / 10), r * sin (2 * PI * k%:R / 10)) in
  let angle_x := angleR (P 8) (P 9) (P 0) in
  angle_x = 36%:R.
Proof. Admitted.
####