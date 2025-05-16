####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section PentagonCircleTangent.

Variable R : realType.

Record point : Type := mkPoint { px : R; py : R }.

Definition eqpt (P Q : point) := (px P = px Q) /\ (py P = py Q).

Variable A B C D E : point.

Hypothesis pentagon_regular :
  let dAB := sqrt ((px B - px A)^+2 + (py B - py A)^+2) in
  let dBC := sqrt ((px C - px B)^+2 + (py C - py B)^+2) in
  let dCD := sqrt ((px D - px C)^+2 + (py D - py C)^+2) in
  let dDE := sqrt ((px E - px D)^+2 + (py E - py D)^+2) in
  let dEA := sqrt ((px A - px E)^+2 + (py A - py E)^+2) in
    [/\ dAB = dBC, dBC = dCD, dCD = dDE, dDE = dEA &
        let vAB := (px B - px A, py B - py A) in
        let vBC :=
####