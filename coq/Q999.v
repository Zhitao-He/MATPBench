####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TangentSecantProblem.
Variable R : realType.
Variables O A B C P D E : 'Point[R]_2.

(* Circle properties *)
Hypothesis A_on_circle : on_circle O (dist O A) A.
Hypothesis B_on_circle : on_circle O (dist O A) B.
Hypothesis C_on_circle : on_circle O (dist O A) C.

(* Tangent condition *)
Hypothesis PA_tangent : tangent (line P A) (circle O (dist O A)).

(* Secant line condition *)
Hypothesis PBC_secant : collinear [:: P; B; C].

(* Perpendicular condition *)
Hypothesis AD_perp : perpendicular (line A D) (line O P).
Hypothesis D_on_OP : collinear [:: O; P; D].

(* Circumcircle intersection *)
Hypothesis E_intersection : 
  collinear [:: B; C; E] /\ 
  on_circle (circumcenter A D C) (dist (circumcenter A D C) A) E /\ 
  E != C.

(* Angle measures *)
Definition angle_BAE := angle_deg (B,A,E).
Definition angle_ACB := angle_deg (A,C,B).

(* Main theorem *)
Theorem angles_equal : angle_BAE = angle_ACB.
Proof. by []. Qed.

End TangentSecantProblem.
####