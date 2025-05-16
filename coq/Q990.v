####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.

Record point := Point { px : R; py : R }.

(* Distance between points *)
Definition dist (A B : point) : R :=
  sqrt ((px A - px B)^+2 + (py A - py B)^+2).

(* Collinearity predicate *)
Definition collinear (A B C : point) : Prop :=
  ((px B - px A) * (py C - py A)) = ((py B - py A) * (px C - px A)).

(* OnCircle predicate: point lies on the circle passing through three other points *)
Definition on_circle (P A B C : point) : Prop :=
  let d1 := dist A B in
  let d2 := dist B C in
  let d3 := dist C A in
  let dP := dist P A in
  exists O : point, dist O A = dist O B /\ dist O B = dist O C /\
      dist O C = dist O P.

(* Intersection of circles: predicate that a point is the second intersection (other than given) *)
Definition circle_intersection (A B C : point) (D : point) (E : point) : Prop :=
  on_circle D A B C /\ ~(collinear E A B) /\
  on_circle E A B C /\ ~(collinear D A C).

(* All points are in general position (distinct and not degenerate) *)
Variables (A B C D : point).

Hypothesis Hdistinct : A <> B /\ A <> C /\ A <> D /\ B <> C /\ B <> D /\ C <> D.

Hypothesis HAB_eq_HAC : dist A B = dist A C.

(* Let ⊙O₁ be circumcircle of △ABD, F is the second intersection point of ⊙O₁ with AC (other than A) *)
Variable F : point.
Hypothesis HF_on_circ_ABD : on_circle F A B D.
Hypothesis HF_on_AC : collinear A C F /\ F <> A.

(* Let ⊙O₂ be circumcircle of △ACD, E is the second intersection point of ⊙O₂ with AB (other than A) *)
Variable E : point.
Hypothesis HE_on_circ_ACD : on_circle E A C D.
Hypothesis HE_on_AB : collinear A B E /\ E <> A.

(* G = BF ∩ CE *)
Variable G : point.
Hypothesis HG_on_BF : exists t1 : R, 0 < t1 < 1 /\ px G = (1 - t1) * px B + t1 * px F /\ py G = (1 - t1) * py B + t1 * py F.
Hypothesis HG_on_CE : exists t2 : R, 0 < t2 < 1 /\ px G = (1 - t2) * px C + t2 * px E /\ py G = (1 - t2) * py C + t2 * py E.

(* B, D, C are distinct and non-collinear *)
Hypothesis HBCD_ncollinear : ~ collinear B C D.

Theorem geometry_BG_over_CG_eq_BD_over_CD :
  dist B G / dist C G = dist B D / dist C D.
Proof. Admitted.

End Geometry_Theorem.
####