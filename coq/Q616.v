####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points in the plane *)
Variables A B C D E : 'rV[R]_2.

Hypothesis parallelogram_ABCD : 
  (* ABCD is a parallelogram: AB parallel to DC and AD parallel to BC *)
  (B - A = C - D) /\ (D - A = C - B).

Hypothesis length_BC : 
  (\norm (B - C)%R = 6).

Hypothesis angle_BAC_60 : 
  let u := B - A in
  let v := C - A in
    acos ((u *m v') / (\norm u * \norm v)) = INR 60 * PI / 180.

Theorem value_of_length_AC :
  \norm (A - C)%R = 6.
Proof. Admitted.
####