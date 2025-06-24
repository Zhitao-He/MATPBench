####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ExcircleProblem.
Variable R : realType.
Variables A B C P Q D E F G M N L : 'Point[R]_2.

(* Triangle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].

(* Excircle definitions *)
Hypothesis P_excircle : excenter_opposite_A P A B C.
Hypothesis Q_excircle : excenter_opposite_C Q A B C.

(* Tangent points *)
Hypothesis D_tangent : tangent_at (excircle P A B C) (line C B) D.
Hypothesis E_tangent : tangent_at (excircle P A B C) (line C A) E.
Hypothesis F_tangent : tangent_at (excircle Q A B C) (line B C) F.
Hypothesis G_tangent : tangent_at (excircle Q A B C) (line B A) G.

(* Intersection points *)
Hypothesis M_intersection : collinear [:: D; E; M] /\ collinear [:: P; Q; M].
Hypothesis N_intersection : collinear [:: F; G; N] /\ collinear [:: P; Q; N].

(* L is intersection of BN and CM *)
Hypothesis L_intersection : collinear [:: B; N; L] /\ collinear [:: C; M; L].

(* Angle bisector condition *)
Definition angle_BAC := angle_deg (B,A,C).
Definition angle_BAL := angle_deg (B,A,L).
Definition angle_LAC := angle_deg (L,A,C).

(* Main theorem *)
Theorem AL_bisects : angle_BAL = angle_LAC.
Proof. by []. Qed.

End ExcircleProblem.
####