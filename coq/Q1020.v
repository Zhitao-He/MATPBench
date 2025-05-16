####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Circle_Collinearity.

Variable R : realType.

(* Points in the real Euclidean plane *)
Variables A B C O L E F : 'rV[R]_2.

Hypothesis ABC_noncollinear : ~ colinear A B C.

(* O is the center of the circle passing through A, B, C *)
Hypothesis circle_def : forall P : 'rV[R]_2, (on_circle O (dist O A) P) <-> (P = A \/ P = B \/ P = C).

(* L is a point on the circle O *)
Hypothesis L_on_circle : on_circle O (dist O A) L.

(* E is the intersection of AB and the line through L perpendicular to CL *)
Hypothesis E_on_AB : on_line A B E.
Hypothesis E_on_perp : on_line L (orthogonal_dir (L - C)) E.

(* F is the intersection of AC and the line through L perpendicular to BL *)
Hypothesis F_on_AC : on_line A C F.
Hypothesis F_on_perp : on_line L (orthogonal_dir (L - B)) F.

Theorem circle_points_collinear :
  colinear E O F.
Proof. Admitted.

End Circle_Collinearity.
####