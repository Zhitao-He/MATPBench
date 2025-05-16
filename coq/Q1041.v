####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section geometry_problem.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition colinear (A B C : point) : Prop :=
  exists (k : R), px B = px A + k * (px C - px A) /\ py B = py A + k * (py C - py A).

Definition midpoint (A B : point) : point :=
  Point ((px A + px B) / 2) ((py A + py B) / 2).

Definition eq_angle (A B C D E F : point) : Prop :=
  let v1x := px B - px A in
  let v1y := py B - py A in
  let v2x := px C - px A in
  let v2y := py C - py A in
  let w1x := px E - px D in
  let w1y := py E - py D in
  let w2x := px F - px D in
  let w2y := py F - py D in
  let ang1 := atan2 (v1x * v2y - v1y * v2x) (v1x * v2x + v1y * v2y) in
  let ang2 := atan2 (w1x * w2y - w1y * w2x) (w1x * w2x + w1y * w2y) in
  ang1 = ang2.

Definition on_line (A B P : point) : Prop :=
  exists k : R, px P = px A + k*(px B - px A) /\ py P = py A + k*(py B - py A).

Definition on_segment (A B P : point) : Prop :=
  exists k : R, 0 <= k <= 1 /\ px P = px A + k*(px B - px A) /\ py P = py A + k*(py B - py A).

Definition on_circle (O : point) (r : R) (P : point) :=
  ((px P - px O)^2 + (py P - py O)^2 = r^2).

Definition perp (A B C D : point) : Prop :=
  let u1 := px B - px A in
  let u2 := py B - py A in
  let v1 := px D - px C in
  let v2 := py D - py C in
  (u1 * v1 + u2 * v2 = 0).

Variable A B C : point.

Hypothesis ABC_noncolinear : ~ colinear A B C.

Variable D : point.
Hypothesis D_on_BC : on_segment B C D.
Hypothesis angle_DAC_eq_ABD : eq_angle D A C A B D.

(* The circle ω passing through points B and D *)
Variable O : point.
Variable r : R.
Hypothesis rf : 0 < r.

Hypothesis B_on_circle : on_circle O r B.
Hypothesis D_on_circle : on_circle O r D.

(* E: second intersection point of ω with AB (E ≠ B) *)
Variable E : point.
Hypothesis E_on_AB : on_circle O r E /\ on_line A B E /\ E <> B.

(* F: second intersection of ω with AD (F ≠ D) *)
Variable F : point.
Hypothesis F_on_AD : on_circle O r F /\ on_line A D F /\ F <> D.

(* G is the intersection of lines BF and DE *)
Variable G : point.
Hypothesis G_intersection : exists l1 l2 : R,
  px G = px B + l1 * (px F - px B) /\ py G = py B + l1 * (py F - py B) /\
  px G = px D + l2 * (px E - px D) /\ py G = py D + l2 * (py E - py D).

Definition M : point := midpoint A G.

Theorem geometry_circumcircle_midpoint_perpendicular :
  perp C M A O.
Proof. Admitted.

End geometry_problem.
####