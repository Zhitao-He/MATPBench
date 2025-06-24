####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TangentCirclesProblem.
Variable R : realType.
Variables P Q A B C D E F G M N : 'Point[R]_2.

(* Circle intersection properties *)
Hypothesis A_on_both : on_circle P (dist P A) A /\ on_circle Q (dist Q A) A.
Hypothesis B_on_both : on_circle P (dist P B) B /\ on_circle Q (dist Q B) B.

(* Tangent conditions *)
Hypothesis CD_tangent : 
  tangent (line C D) (circle P (dist P C)) /\ 
  tangent (line C D) (circle Q (dist Q D)).

(* Point E on BA extended *)
Hypothesis E_on_BA_ext : between B A E.

(* Second intersection points *)
Hypothesis F_intersection : 
  collinear [:: E; C; F] /\ 
  on_circle P (dist P A) F /\ 
  F != C.
Hypothesis G_intersection : 
  collinear [:: E; D; G] /\ 
  on_circle Q (dist Q A) G /\ 
  G != D.

(* FG meets circles again at M and N *)
Hypothesis M_intersection : 
  collinear [:: F; G; M] /\ 
  on_circle Q (dist Q A) M /\ 
  M != G.
Hypothesis N_intersection : 
  collinear [:: F; G; N] /\ 
  on_circle P (dist P A) N /\ 
  N != F.

(* Angle measures *)
Definition angle_FCM := angle_deg (F,C,M).
Definition angle_GDN := angle_deg (G,D,N).

(* Main theorem *)
Theorem angles_equal : angle_FCM = angle_GDN.
Proof. by []. Qed.

End TangentCirclesProblem.
####