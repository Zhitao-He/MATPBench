####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition midpoint (A B : point) : point :=
  Point ((px A + px B) / 2) ((py A + py B) / 2).

Definition on_line (A B P : point) : Prop :=
  exists k : R, px P = px A + k * (px B - px A) /\ py P = py A + k * (py B - py A).

Definition collinear (A B C : point) : Prop :=
  (px B - px A) * (py C - py A) = (py B - py A) * (px C - px A).

Definition on_circle (O : point) (r : R) (P : point) : Prop :=
  ((px P - px O)^2 + (py P - py O)^2 = r^2).

Definition tangent_at (C : point) (r : R) (lA lB : point) (P : point) : Prop :=
  on_circle C r P /\
  exists Q : point, Q <> P /\ on_line lA lB Q /\
    (forall t : R, let T := Point (px P + t * (px Q - px P)) (py P + t * (py Q - py P)) in
      (t = 0)%R \/ (on_circle C r T -> False)).

Definition orthogonal (A B C D : point) : Prop :=
  ((px B - px A) * (px D - px C) + (py B - py A) * (py D - py C) = 0).

Variables A B C : point.

Hypothesis non_collinear_ABC : ~ collinear A B C.

Let D := midpoint B C.

Variable O : point.
Variable r : R.

Hypothesis circle_passes_through_A_and_C :
  on_circle O r A /\ on_circle O r C.

Hypothesis circle_tangent_to_DA_at_A :
  tangent_at O r D A A.

(* Define E: the second intersection of the line BA with the circle (other than A) *)
Variable E : point.
Hypothesis E_on_BA : on_line B A E.
Hypothesis E_on_circle : on_circle O r E.
Hypothesis E_not_A : E <> A.

(* Define F: intersection point of DA and CE *)
Variable F : point.
Hypothesis F_on_DA : on_line D A F.
Hypothesis F_on_CE : on_line C E F.

Theorem geometry_FO_perp_BC :
  orthogonal F O B C.
Proof. Admitted.

End GeometryProblem.
####