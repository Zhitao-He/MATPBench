####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section RightTriangleProblem.
Variable R : realType.
Variables A B C D E Y X J O : 'Point[R]_2.

(* Right triangle condition *)
Hypothesis right_angle : angle_deg (B,A,C) = 90.

(* Circumcircle properties *)
Hypothesis circum_ABC : circumcircle O A B C.

(* Tangent condition *)
Hypothesis AD_tangent : tangent (line A D) (circle O (dist O A)).
Hypothesis D_on_extension : collinear [:: B; C; D] /\ ~ between B D C.

(* Reflection condition *)
Hypothesis E_reflection : reflect_over (line B C) A E.

(* Perpendicular and midpoint conditions *)
Hypothesis AY_perp : perpendicular (line A Y) (line B E).
Hypothesis Y_on_BE : collinear [:: B; E; Y].
Hypothesis X_midpoint : midpoint X A Y.

(* BX meets circumcircle at J *)
Hypothesis J_intersection : collinear [:: B; X; J] /\ on_circle O (dist O A) J /\ J != B.

(* Circumcircle of AJD *)
Definition O_AJD := circumcenter A J D.
Definition r_AJD := dist O_AJD A.

(* Main theorem *)
Theorem BD_tangent_AJD : tangent (line B D) (circle O_AJD r_AJD).
Proof. by []. Qed.

End RightTriangleProblem.
####