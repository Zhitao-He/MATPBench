####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem snug_square_between_two_circles :
  let r := 1000%:R in
  let s := 400%:R in
  exists (C1 C2 : R * R) (l : R -> R) (square_bottom_left square_top_right : R * R),
    (* The centers of the circles *)
    let (x1, y1) := C1 in
    let (x2, y2) := C2 in
    (* The circles have radius r *)
    (forall t : R * R, ((t.1 - x1)^2 + (t.2 - y1)^2 = r^2) -> True) /\
    (forall t : R * R, ((t.1 - x2)^2 + (t.2 - y2)^2 = r^2) -> True) /\
    (* Circles are tangent externally *)
    (`|x1 - x2| = 2 * r /\ y1 = y2) /\
    (* The horizontal line y = 0 is tangent to both circles *)
    (y1 = r /\ y2 = r) /\
    (* The square has side length s *)
    let (x_bl, y_bl) := square_bottom_left in
    let (x_tr, y_tr) := square_top_right in
    (`|x_tr - x_bl| = s /\ `|y_tr - y_bl| = s) /\
    (* The square lies between the line and the circles, tangent to both *)
    (y_bl = 0 /\ y_tr = s) /\
    (* Distance from the square's left edge to the left circle's right edge is s *)
    (`|x1 - x_bl| = r - s / 2) /\
    (* Distance from the square's right edge to the right circle's left edge is s *)
    (`|x_tr - x2| = r - s / 2).
Proof. Admitted.
####