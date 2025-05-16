####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry planar.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_problem.

Variable R : realType.
Variable plane : Type.
Variable Point : plane -> R * R.
Variable Circle : plane -> R * R -> R -> Prop.

Variables P Q : plane.
Variables rP rQ : R.
Hypothesis rP_pos : 0 < rP.
Hypothesis rQ_pos : 0 < rQ.

Variable centerP : plane.
Variable centerQ : plane.
Hypothesis hP : Circle P (Point centerP) rP.
Hypothesis hQ : Circle Q (Point centerQ) rQ.

Variables A B : plane.
Hypothesis A_on_P : Circle P (Point centerP) rP /\ Circle Q (Point centerQ) rQ /\ Point A <> Point B.
Hypothesis B_on_P : Circle P (Point centerP) rP /\ Circle Q (Point centerQ) rQ /\ Point B <> Point A.

Variables C D : plane.
Hypothesis C_on_P : Circle P (Point centerP) rP.
Hypothesis D_on_Q : Circle Q (Point centerQ) rQ.

Hypothesis CD_tangent : 
    exists l : plane -> R, 
      (forall X : plane, l X = 0 <-> (X = C \/ X = D)) /\
      (forall Y : plane, Circle P (Point centerP) rP -> l Y = 0 -> Y = C) /\
      (forall Z : plane, Circle Q (Point centerQ) rQ -> l Z = 0 -> Z = D) /\
      (forall X : plane, l X = 0 -> (exists2 t, t <> 0 & X = C \/ X = D)).

Variables E : plane.
Hypothesis E_on_ext_BA : exists t : R, t > 1 /\ Point E = 
    ((1 - t) *: Point B) + (t *: Point A).

Variables F G : plane.

Hypothesis F_on_P_other : 
    exists (t1 : R), t1 <> 0 /\ 
        F <> E /\ 
        F <> A /\ 
        F <> B /\ 
        F <> C /\ 
        F <> D /\
        Line_through E C /\ 
        Circle P (Point centerP) rP /\ 
        (forall X : plane,
            X <> E -> X <> C -> X <> F ->
            X \in (Circle P (Point centerP) rP) -> 
            (exists a1 b1 : R,
                Point X = a1 *: Point E + b1 *: Point C /\ 
                a1 + b1 = 1 /\
                a1, b1 <> 0)).

Hypothesis G_on_Q_other : 
    exists (t2 : R), t2 <> 0 /\
        G <> E /\
        G <> D /\ 
        G <> A /\ 
        G <> B /\ 
        G <> C /\
        Line_through E D /\
        Circle Q (Point centerQ) rQ /\
        (forall X : plane,
            X <> E -> X <> D -> X <> G ->
            X \in (Circle Q (Point centerQ) rQ) ->
            (exists a2 b2 : R,
                Point X = a2 *: Point E + b2 *: Point D /\
                a2 + b2 = 1 /\
                a2, b2 <> 0)).

Variables FG : plane -> R.
Hypothesis FG_def : 
    exists lFG : plane -> R,
      (forall X : plane, lFG X = 0 <-> (X = F \/ X = G)).

Variables M N : plane.
Hypothesis M_on_Q : 
    M <> G /\ 
    M <> F /\
    M <> D /\
    M <> C /\
    Circle Q (Point centerQ) rQ /\
    FG M = 0.

Hypothesis N_on_P : 
    N <> F /\
    N <> G /\
    N <> C /\
    N <> D /\
    Circle P (Point centerP) rP /\
    FG N = 0.

Hypothesis FG_intersections :
    (forall S : plane, FG S = 0 -> (S = F \/ S = G \/ S = M \/ S = N)).

Definition angle (X Y Z : plane) : R := 
    vector_angle (Point X - Point Y) (Point Z - Point Y).

Theorem geometry_tangent_circles_angles :
    angle F C M = angle G D N.
Proof. Admitted.

End geometry_problem.
####