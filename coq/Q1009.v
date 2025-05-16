####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryTheorem.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition collinear (A B C : point) : Prop :=
  (px B - px A) * (py C - py A) = (py B - py A) * (px C - px A).

Definition on_circle (O : point) (r : R) (P : point) : Prop :=
  ((px P - px O)^+2 + (py P - py O)^+2 = r^+2).

Definition midpoint (A B : point) : point :=
  Point ((px A + px B) / 2) ((py A + py B) / 2).

Definition foot (P Q R : point) : point :=
  let u1 := px R - px Q in
  let u2 := py R - py Q in
  let t := ((px P - px Q) * u1 + (py P - py Q) * u2) / (u1^+2 + u2^+2) in
  Point (px Q + t * u1) (py Q + t * u2).

Definition tangent_at (O : point) (r : R) (T : point) (L1 L2 : point) : Prop :=
  on_circle O r T /\
  let v1 := (px L1 - px L2, py L1 - py L2) in
  let n := (px T - px O, py T - py O) in
  (v1.1 * n.1 + v1.2 * n.2) = 0.

Definition eq_line (P Q R S : point) : Prop :=
  exists k l : R, k <> 0 \/ l <> 0 /\
    (forall t : R, Point (k * t + px P) (l * t + py P) =
                   Point (k * t + px R) (l * t + py R)).

Definition on_line (A B P : point) : Prop :=
  exists t : R, px P = px A + t * (px B - px A) /\ py P = py A + t * (py B - py A).

Definition perpendicular (A B C D : point) : Prop :=
  let v1 := (px B - px A, py B - py A) in
  let v2 := (px D - px C, py D - py C) in
  (v1.1 * v2.1 + v1.2 * v2.2) = 0.

Variable O : point.
Variable r : R.
Hypothesis r_pos : r > 0.

Variables A B : point.
Hypothesis AB_diameter : on_circle O r A /\ on_circle O r B /\ midpoint A B = O.

Variable C : point.
Hypothesis CB_tangent : tangent_at O r B C B.

Variable D : point.
Hypothesis D_on_arc : on_circle O r D /\ ~ collinear A O D /\ ~ collinear B O D.

(* CD meets O again at F (F ≠ D, F on O, and F collinear with C, D, distinct from D) *)
Variable F : point.
Hypothesis F_on_circle : on_circle O r F.
Hypothesis CDF_collinear : collinear C D F /\ F <> D.

(* AD meets OC at E *)
Variable E : point.
Hypothesis E_on_AD_OC :
  exists k l : R, 0 < k /\ 0 < l /\
    Point (px A + k * (px D - px A)) (py A + k * (py D - py A)) =
    Point (px O + l * (px C - px O)) (py O + l * (py C - py O)) /\
    E = Point (px A + k * (px D - px A)) (py A + k * (py D - py A)).

Theorem geometry_perpendicular_EB_FB :
  perpendicular E B F B.
Proof. Admitted.

End GeometryTheorem.
####