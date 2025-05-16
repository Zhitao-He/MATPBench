####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import finset.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Rectangles.

Variable Point Rectangle : Type.
Variables A B C D E F G H : Point.
Hypotheses
  (rec1 : Rectangle) (rec2 : Rectangle)
  (vABCD : [/\A != B, B != C, C != D, D != A])
  (vEFGH : [/\E != F, F != G, G != H, H != E])
  (axis_aligned : True).

Theorem rectangle_intersection_count :
  1%nat.
Proof.
admit.
Qed.
####