####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleTriangleProblem.
Variable R : realType.
Variables A B C O D E F G : 'Point[R]_2.

(* Triangle and circumcircle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].
Hypothesis circum_ABC : circumcircle O A B C.

(* Midpoint condition *)
Hypothesis D_midpoint : midpoint D B C.

(* AD intersects circle again at E *)
Hypothesis E_intersection : collinear [:: A; D; E] /\ on_circle O (dist O A) E /\ E != A.

(* Parallel condition *)
Hypothesis EF_parallel_BC : parallel (line E F) (line B C).
Hypothesis F_on_circle : on_circle O (dist O A) F.

(* Perpendicular condition *)
Hypothesis CG_perp_AC : perpendicular (line C G) (line A C).
Hypothesis G_on_AE : collinear [:: A; E; G].

(* Angle measures *)
Definition angle_AGC := angle_deg (A,G,C).
Definition angle_FGC := angle_deg (F,G,C).

(* Main theorem *)
Theorem angles_equal : angle_AGC = angle_FGC.
Proof. by []. Qed.

End CircleTriangleProblem.
####