####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_angle_JKL_y_70 :
  forall (J K L : R^2),
    let dJK := sqrt ((J - K) *m (J - K)) in
    let dKL := sqrt ((K - L) *m (K - L)) in
    let dLJ := sqrt ((L - J) *m (L - J)) in
    (* Triangle JKL: JK = 6, KL = 12, LJ = unknown, angle KJL unknown *)
    dJK = 6 -> dKL = 12 ->
    let angle_JLK := 30 in (* degrees, angle at L *)
    (* y is angle at K *)
    let y := (acosd ((dJK ^+ 2 + dKL ^+ 2 - (dLJ ^+ 2)) / (2 * dJK * dKL))) in
    (* Law of Sines: sin(y) / 12 = sin(30°) / 6 *)
    y = 70.
Proof. Admitted.
####