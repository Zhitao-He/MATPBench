####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem triangle_angle_value_y :
  forall (A B C : R^2),
    let dAB := normr (A - B) in
    let dBC := normr (B - C) in
    let dCA := normr (C - A) in
    (* Given: triangle ABC is right at C, AB = 20, AC = 10 *)
    [/\ dCA = 10,
        dAB = 20,
        ((A$1 = C$1 + 10) /\ (A$2 = C$2)) (* AC horizontal of length 10 *) /\
        ((B$1 = C$1) /\ (B$2 > C$2))       (* BC vertical *) /\
        (let y := acos ((dCA^2 + dAB^2 - dBC^2)/(2 * dCA * dAB)) * 180 / PI in y = 30)
    ].
Proof. Admitted.
####