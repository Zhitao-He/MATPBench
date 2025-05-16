####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Cyclic_AFOE.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition collinear (A B C : point) : Prop :=
  (px B - px A) * (py C - py A) = (py B - py A) * (px C - px A).

Definition eq_pt (P Q : point) := px P = px Q /\ py P = py Q.

Definition midpoint (A B : point) : point :=
  Point ((px A + px B) / 2) ((py A + py B) / 2).

Definition on_bisector (P A B : point) : Prop :=
  ((px P - px (midpoint A B)) * (px B - px A) +
   (py P - py (midpoint A B)) * (py B - py A) = 0) /\
  ((px P - px A) * (px B - px A) + (py P - py A) * (py B - py A) <>
   (px P - px B) * (px B - px A) + (py P - py A) * (py B - py A)).

Definition circumcenter (A B C : point) : point :=
  let D := 2 * ((px A - px C) * (py B - py C) - (py A - py C) * (px B - px C)) in
  let x :=
    (((px A - px C) * (px A + px C) + (py A - py C) * (py A + py C)) / 2 * (py B - py C) -
     ((px B - px C) * (px B + px C) + (py B - py C) * (py B + py C)) / 2 * (py A - py C)) / D
  in
  let y :=
    (((px B - px C) * (px B + px C) + (py B - py C) * (py B + py C)) / 2 * (px A - px C) -
     ((px A - px C) * (px A + px C) + (py A - py C) * (py A + py C)) / 2 * (px B - px C)) / D
  in
  Point x y.

Definition on_line (P A B : point) : Prop :=
  exists t : R, eq_pt P (Point (px A + t * (px B - px A))
                               (py A + t * (py B - py A))).

Definition perpendicular_bisector (A B : point) (Q : point) : Prop :=
  let M := midpoint A B in
  ((px Q - px M) * (px B - px A) + (py Q - py M) * (py B - py A) = 0).

Definition on_circle (P Q R S : point) : Prop :=
  let dist_sq p1 p2 := (px p1 - px p2) ^+ 2 + (py p1 - py p2) ^+ 2 in
  exists C : point, dist_sq C P = dist_sq C Q /\
                    dist_sq C Q = dist_sq C R /\
                    dist_sq C R = dist_sq C S /\
                    P <> Q /\ P <> R /\ P <> S /\
                    Q <> R /\ Q <> S /\ R <> S.

Variable A B C D : point.

Hypothesis not_collinear_ABC : ~ collinear A B C.
Hypothesis on_BC : exists t : R, eq_pt D (Point (px B + t * (px C - px B))
                                                (py B + t * (py C - py B))).

Let O := circumcenter A B C.

Let F := fun F_pt : point =>
  (on_line F_pt A B) /\ (perpendicular_bisector B D F_pt).

Let E := fun E_pt : point =>
  (on_line E_pt A C) /\ (perpendicular_bisector C D E_pt).

Theorem cyclic_AFOE :
  forall F_pt E_pt,
    F F_pt -> E E_pt ->
    on_circle A F_pt O E_pt.
Proof. Admitted.

End Cyclic_AFOE.
####