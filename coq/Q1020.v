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

(* Circle O with center O and radius OA *)
Variable radius : R.
Hypothesis Hradius : radius = dist O A.
Hypothesis Hon_circle : forall P, P \in [:: A; B; C; L] -> on_circle O radius P.

(* L is a point on the circle O *)
Hypothesis L_on_circle : on_circle O radius L.

(* E is the intersection of AB and the line through L perpendicular to CL *)
Hypothesis E_on_AB : on_line E A B.
Hypothesis E_perp : on_line E (orthogonal_dir (L - C)) L.

(* F is the intersection of AC and the line through L perpendicular to BL *)
Hypothesis F_on_AC : on_line F A C.
Hypothesis F_perp : on_line F (orthogonal_dir (L - B)) L.

(* Theorem: E, O, F are collinear *)
Theorem circle_points_collinear :
  colinear E O F.
Proof. Admitted.

End Circle_Collinearity.
####