####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryAECE.

Variable R : realType.
Implicit Types (A B C D E O : 'e2[R]).

Theorem AE_CE_squared_sum
  (A B C D E O : 'e2[R])
  (h_circ : circle_center O A B C) (* O is the center of the circle passing through A, B, C *)
  (h_D_perp : orthogonal (A - D) (D - B)) (* D is the foot of the perpendicular from A to BC *)
  (h_E_on_AC : foot_point E O A C) (* E is the foot of the perpendicular from O to AC *)
  (h_AD : midpoint D A B) (* D is the midpoint of AB *)
  (h_perp_len : `|E - O| = 1) (* The length of segment OE is 1 *)
  :
  (`|A - E| ^+ 2 + `|C - E| ^+ 2 = 2)%R.
Proof. Admitted.

End GeometryAECE.
####