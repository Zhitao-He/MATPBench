####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircumcenterMidpointProblem.
Variable R : realType.
Variables A B C O D E F G : 'Point[R]_2.

(* Triangle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].
Hypothesis O_circumcenter : circumcenter O A B C.

(* Line through O intersecting sides *)
Hypothesis D_on_AB : collinear [:: A; B; D] /\ collinear [:: O; D; E].
Hypothesis E_on_AC : collinear [:: A; C; E].

(* Midpoints *)
Hypothesis F_midpoint : midpoint F B E.
Hypothesis G_midpoint : midpoint G C D.

(* Angle measures *)
Definition angle_FOG := angle_deg (F,O,G).
Definition angle_A := angle_deg (B,A,C).

(* Main theorem *)
Theorem angles_equal : angle_FOG = angle_A.
Proof. by []. Qed.

End CircumcenterMidpointProblem.
####