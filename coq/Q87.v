####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section PutnamGeometry.

Variable R : realType.

Record point := mkPoint { px : R; py : R }.

Definition dist (A B : point) : R :=
  Num.sqrt ((A.(px) - B.(px))^+2 + (A.(py) - B.(py))^+2).

Definition angle (A B C : point) : R :=
  let u := ((A.(px) - B.(px)), (A.(py) - B.(py))) in
  let v := ((C.(px) - B.(px)), (C.(py) - B.(py))) in
  let dot := u.1 * v.1 + u.2 * v.2 in
  let normu := Num.sqrt (u.1^+2 + u.2^+2) in
  let normv := Num.sqrt (v.1^+2 + v.2^+2) in
  acos (dot / (normu * normv)).

Theorem putnam_1993_b2 :
  exists (A B C P : point),
    (* B is at the right angle of triangle ABC *)
    (let ab := ((A.(px) - B.(px)), (
####