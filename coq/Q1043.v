####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section IncircleCircumcircleTangency.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition collinear (A B C : point) : Prop :=
  (px B - px A) * (py C - py A) = (py B - py A) * (px C - px A).

Definition midpoint (A B : point) : point :=
  Point ((px A + px B)/2) ((py A + py B)/2).

Definition perpendicular (A B C : point) : Prop :=
  ((px B - px A)*(px C - px A) + (py B - py A)*(py C - py A)) = 0.

Definition on_line (P A B : point) : Prop :=
  collinear A B P.

Definition circle (O : point) (r : R) := fun P : point => ((px P - px O)^2 + (py P - py O)^2 = r^2).

Definition tangent_at (O1 O2 P : point) (r1 r2 : R) : Prop :=
  circle O1 r1 P /\ circle O2 r2 P /\
  exists l, on_line P (Point (px O1 + (px P - px O1)*r2/(r1+r2))
                            (py O1 + (py P - py O1)*r2/(r1+r2)))
                   (Point (px O2 + (px P - px O2)*r1/(r1+r2))
                          (py O2 + (py P - py O2)*r1/(r1+r2)))
    /\ forall Q, circle O1 r1 Q -> circle O2 r2 Q -> on_line Q (Point (px O1 + (px P - px O1)*r2/(r1+r2))
                                                         (py O1 + (py P - py O1)*r2/(r1+r2)))
                                              (Point (px O2 + (px P - px O2)*r1/(r1+r2))
                                                     (py O2 + (py P - py O2)*r1/(r1+r2))) -> Q = P.

Variables A B C : point.
Hypothesis noncollinear_ABC : ~ collinear A B C.

(* Incenter I and incircle tangent to BC at D *)
Variable I : point.
Variable rI : R.
Hypothesis incircle_A_B_C :
  circle I rI A /\ circle I rI B /\ circle I rI C.

Variable D : point.
Hypothesis D_on_BC : on_line D B C.
Hypothesis D_tangent : circle I rI D /\
  perpendicular D I (Point (px C + (px B - px C)) (py C + (py B - py C))) (* Direction of BC *).

(* AE ⟂ BC at E, E on BC *)
Variable E : point.
Hypothesis E_on_BC : on_line E B C.
Hypothesis AE_perp_BC : perpendicular A E B /\ perpendicular A E C.

(* F is midpoint of AE *)
Definition F := midpoint A E.

(* DF intersects ⊙I at G ≠ D *)
Variable G : point.
Hypothesis G_on_DF : exists t : R, t <> 0 /\ 
  px G = px D + t * (px F - px D) /\ py G = py D + t * (py F - py D).
Hypothesis G_on_incircle : circle I rI G.
Hypothesis G_neq_D : G <> D.

(* Circumcircle of BCG: O is the circumcenter *)
Variable O : point.
Variable rO : R.
Hypothesis O_circum_BCG : forall P : point, circle O rO P <-> 
  (P = B \/ P = C \/ P = G \/
   (* On the circle through B,C,G *)
   ((px P - px B)*(py C - py B) - (py P - py B)*(px C - px B)) /
   ((px G - px B)*(py C - py B) - (py G - py B)*(px C - px B)) >= 0).

Theorem incircle_circumcircle_tangent_at_G :
  tangent_at O I G rO rI.
Proof. Admitted.

End IncircleCircumcircleTangency.
####