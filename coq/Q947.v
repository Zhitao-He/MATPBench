####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.
Implicit Types (P A B O K D E F : 'e2gPoint R) (C : 'e2gCircle R).

Hypothesis noncollinear_OAB : forall P A B O : 'e2gPoint R, ~ colinear R P A B.
Variables P A B O K D E F : 'e2gPoint R.

(* O is the center of the circle, and A, B, K are distinct points on the circle *)
Variable C : 'e2gCircle R.
Hypothesis circleC_def : circle_3pts C O A K.
Hypothesis onC_A : on_circle C A.
Hypothesis onC_B : on_circle C B.
Hypothesis onC_K : on_circle C K.
Hypothesis AB_distinct : A <> B.
Hypothesis AK_distinct : A <> K.
Hypothesis BK_distinct : B <> K.

(* PA and PB are tangents to circle O at A and B respectively *)
Hypothesis PA_tangent : is_tangent_at (line_through P A) C A.
Hypothesis PB_tangent : is_tangent_at (line_through P B) C B.

(* D is the foot of the perpendicular from B to OK *)
Hypothesis OK_nonparallel : O <> K.
Hypothesis D_on_OK : on_line D (line_through O K).
Hypothesis D_foot : orthogonal (line_through O K) (line_through B D).

(* BD is perpendicular to OK at D, so D is the foot of the altitude from B onto OK *)
(* BD meets PK at E, and KA at F *)
Hypothesis E_on_BD : on_line E (line_through B D).
Hypothesis E_on_PK : on_line E (line_through P K).
Hypothesis F_on_KA : on_line F (line_through K A).
Hypothesis F_on_BD : on_line F (line_through B D).

Theorem midpoint_geometry_problem :
  midpoint E B F.
Proof. Admitted.

End GeometryProblem.
####