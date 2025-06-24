####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C : 'rV[R]_2.
Variables x y : R.

Hypotheses
  (triangle_ABC : let a := A in let b := B in let c := C in
     let ab := b - a in let ac := c - a in let bc := c - b in
     let s := (ab + ac + bc) / 2 in
     let area := sqrt (s * (s - ab) * (s - ac) * (s - bc)) in
     area > 0) (* Ensure non-degenerate triangle *)
  (angle_sum : angle_deg A B C + angle_deg B C A + angle_deg C A B = 180)
  (angle_x : angle_deg A B C = x)
  (angle_y : angle_deg B C A = y).

Theorem sum_angles_is_90 : x + y = 90.
Proof. Admitted.
####