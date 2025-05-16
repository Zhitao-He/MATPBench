####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals ssrnum.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_y_in_parallelogram_angles
    (x y : R)
    (Hparallelogram : True) (* ABCX is a parallelogram *)
    (Hangles :
      let alpha := 3 * x - 17 in         (* angle BAD, at A *)
      let beta := 5 * y - 6 in           (* angle ABC, at B *)
      let gamma := y + 58 in             (* angle BCA, at C *)
      let delta := 2 * x + 24 in         (* angle XCB, at X *)
      [/\ 0 < alpha < 180,
          0 < beta < 180,
          0 < gamma < 180,
          0 < delta < 180] )
  : y = 16.
Proof. Admitted.
####