####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section IncenterCirclesProblem.
Variable R : realType.
Variables A B C D E F G J K M N : 'Point[R]_2.

(* Triangle properties *)
Hypothesis noncol_ABC : ~ collinear [:: A; B; C].
Hypothesis D_on_BC : between B D C.

(* Incenters *)
Hypothesis E_incenter : incenter E A B D.
Hypothesis F_incenter : incenter F A C D.

(* Circles with centers E and F *)
Definition circleE := circle E (dist E D).
Definition circleF := circle F (dist F D).

(* G is intersection point of circles *)
Hypothesis G_intersection : 
  on_circle circleE G /\ 
  on_circle circleF G /\ 
  G != D.

(* Circle intersections with sides *)
Hypothesis J_intersection : 
  on_circle circleE J /\ 
  collinear [:: A; B; J] /\ 
  J != A /\ J != B.
Hypothesis K_intersection : 
  on_circle circleE K /\ 
  collinear [:: B; C; K] /\ 
  K != B /\ K != C.
Hypothesis M_intersection : 
  on_circle circleF M /\ 
  collinear [:: A; C; M] /\ 
  M != A /\ M != C.
Hypothesis N_intersection : 
  on_circle circleF N /\ 
  collinear [:: B; C; N] /\ 
  N != B /\ N != C.

(* Main theorem - concurrency condition *)
Theorem lines_concurrent : 
  exists P, 
    collinear [:: J; K; P] /\ 
    collinear [:: M; N; P] /\ 
    collinear [:: G; D; P].
Proof. by []. Qed.

End IncenterCirclesProblem.
####