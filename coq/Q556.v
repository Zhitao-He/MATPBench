####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem diagram_value_of_y :
  forall (x y : R),
    (* Given the segment lengths in the diagram: *)
    (* JT = y + 4/5, LM = 2y - 11/5, *)
    (* TM = 10 - 2x, MI = 12 - 3x *)
    let JT := y + 4/5 in
    let LM := 2*y - 11/5 in
    let TM := 10 - 2*x in
    let MI := 12 - 3*x in

    (* The two rightmost slanted segments TM and MI are marked as equal in the diagram *)
    TM = MI ->

    (* The top and middle horizontal segments are equal in ratio to their corresponding slanted segments by the parallelism in the trapezoidal figure *)
    JT / TM = LM / MI ->

    y = 3.
Proof. Admitted.
####