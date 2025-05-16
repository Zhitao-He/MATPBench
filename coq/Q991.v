####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals classical_sets geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_concurrence.

Variable R : realType.

Record point : Type := mkPoint { coords : R * R }.

Definition collinear (A B C : point) : Prop :=
  exists (l : R * R * R),
    let (a, b, c) := l in
    (a <> 0 \/ b <> 0) /\
    forall P : point, a * (fst (coords P)) + b * (snd (coords P)) + c = 0 <-> (P = A \/ P = B \/ P = C).

Definition line_through (P Q : point) : { l | P <> Q /\ forall X : point, (exists t : R, coords X = (fst (coords P) + t * (fst (coords Q) - fst (coords P)),
                                                                          snd (coords P) + t * (snd (coords Q) - snd (coords P)))) }.

Admitted.

Definition intersection_point (l1 l2 : { l : R * R * R | let (a,b,c):=l in a<>0 \/ b<>0}) : point.
Admitted.

Definition circle (O : point) (r : R) : set point :=
  fun P => sqrt ((fst (coords P) - fst (coords O))^2 + (snd (coords P) - snd (coords O))^2) = r.

Definition on_circle (P : point) (O : point) (r : R) : Prop :=
  sqrt ((fst (coords P) - fst (coords O))^2 + (snd (coords P) - snd (coords O))^2) = r.

Definition intersection_of_circles (O1 O2: point) (r1 r2: R) : {Ps : seq point | (forall P, P \in Ps <-> on_circle P O1 r1 /\ on_circle P O2 r2) /\ size Ps <= 2 }.
Admitted.

Variable A B C D O : point.
Variable rO : R.
Hypothesis cyclic_quadrilateral : on_circle A O rO /\ on_circle B O rO /\ on_circle C O rO /\ on_circle D O rO.

(* Lines AB and DC meet at E *)
Definition lAB := proj1_sig (line_through A B).
Definition lDC := proj1_sig (line_through D C).
Definition E := intersection_point lAB lDC.

(* Lines AD and BC meet at F *)
Definition lAD := proj1_sig (line_through A D).
Definition lBC := proj1_sig (line_through B C).
Definition F := intersection_point lAD lBC.

(* Circumcircle of triangle EFC: center P, passing through E, F, C *)
Variable P : point.
Variable rP : R.
Hypothesis P_is_circumcenter_EFC : 
  on_circle E P rP /\ on_circle F P rP /\ on_circle C P rP.

(* The circumcircle of EFC meets circle O at G (other than C, E, F) *)
Variable G : point.
Hypothesis G_on_both_circles : 
  on_circle G P rP /\ on_circle G O rO /\
  G <> E /\ G <> F /\ G <> C.

(* AG meets EF at H *)
Definition lAG := proj1_sig (line_through A G).
Definition lEF := proj1_sig (line_through E F).
Definition H := intersection_point lAG lEF.

(* HC meets circle O again at I *)
Definition lHC := proj1_sig (line_through H C).
Variable I : point.
Hypothesis I_on_O_and_lHC : 
  on_circle I O rO /\ I <> C /\
  exists t : R, coords I = (fst (coords H) + t * (fst (coords C) - fst (coords H)),
                            snd (coords H) + t * (snd (coords C) - snd (coords H))) /\
  (forall t0 : R, coords (mkPoint (fst (coords H) + t0 * (fst (coords C) - fst (coords H)),
                                   snd (coords H) + t0 * (snd (coords C) - snd (coords H)))) = coords I -> t0 <> 0).

(* Concurrence: AI, GC, FE are concurrent *)
Theorem circle_quadrilateral_concurrence :
  exists X : point,
    (exists t1 : R, coords X = (fst (coords A) + t1 * (fst (coords I) - fst (coords A)),
                                snd (coords A) + t1 * (snd (coords I) - snd (coords A))))
  /\ (exists t2 : R, coords X = (fst (coords G) + t2 * (fst (coords C) - fst (coords G)),
                                 snd (coords G) + t2 * (snd (coords C) - snd (coords G))))
  /\ (exists t3 : R, coords X = (fst (coords F) + t3 * (fst (coords E) - fst (coords F)),
                                 snd (coords F) + t3 * (snd (coords E) - snd (coords F)))).

Proof. Admitted.

End geometry_concurrence.
####