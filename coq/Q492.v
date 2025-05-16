####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Let A, B, C, D be four points in the plane such that ABCD is a quadrilateral with AB parallel to CD,
and AD parallel to BC, i.e., ABCD is a parallelogram. Let AB = 4 * x - 17, CD = 2 * x - 1.
Let angle ABC = (3 * y + 3) degrees, and angle BCD = (4 * y - 19) degrees.
Then y = 22 is the unique solution. *)

Theorem value_y_22 :
  forall (A B C D : Point R) (x y : R),
    parallelogram A B C D /\
    dist A B = 4 * x - 17 /\
    dist C D = 2 * x - 1 /\
    angle_deg B C D = 4 * y - 19 /\
    angle_deg A B C = 3 * y + 3 ->
    y = 22.
Proof. Admitted.
####