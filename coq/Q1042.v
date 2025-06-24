####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleTangentsSecant.

Variable R : realType.

Record point : Type := Point { px : R; py : R }.

Definition collinear (A B C : point) : Prop :=
  exists (l : R * R * R), 
    l.1.1 * (px A) + l.1.2 * (py A) + l.2 = 0 /\
    l.1.1 * (px B) + l.1.2 * (py B) + l.2 = 0 /\
    l.1.1 * (px C) + l.1.2 * (py C) + l.2 = 0.

Definition eq_point (A B : point) : Prop := px A = px B /\ py A = py B.

Definition circle (O : point) (r : R) (X : point) : Prop :=
  ((px X - px O)^2 + (py X - py O)^2 = r^2).

Variables O C D P E A B : point.
Variable r : R.

(* CD is the diameter of circle O *)
Hypothesis Hcd_diameter : circle O r C /\ circle O r D /\ (px C + px D) / 2 = px O /\ (py C + py D) / 2 = py O.

(* Points A, B, E lie on circle O *)
Hypothesis Hcircle_pts : circle O r A /\ circle O r B /\ circle O r E.

(* C and D are distinct points *)
Hypothesis HC_neq_D : ~ eq_point C D.

(* P is not on the circle O *)
Hypothesis HP_not_on_circle : ~ circle O r P.

(* PC is tangent to circle O at C *)
Hypothesis Htangent_PC_C :
  forall X : point, (collinear P X C /\ X != C) -> (px X - px C) * (px X - px P) + (py X - py C) * (py X - py P) = 0.

(* PE is tangent to circle O at E *)
Hypothesis Htangent_PE_E :
  forall X : point, (collinear P X E /\ X != E) -> (px X - px E) * (px X - px P) + (py X - py E) * (py X - py P) = 0.

(* PBA is a secant: passes through P, B, A in that order, with A, B on the circle *)
Hypothesis Hsecant_PBA :
  collinear P B A.

(* F is the intersection of AC and BD *)
Definition line_AC (X : point) := exists k : R, px X = px A + k * (px C - px A) /\ py X = py A + k * (py C - py A).
Definition line_BD (X : point) := exists k : R, px X = px B + k * (px D - px B) /\ py X = py B + k * (py D - py B).
Definition intersection (l1 l2 : point -> Prop) : point :=
  choose (fun X => l1 X /\ l2 X).
Definition F := intersection line_AC line_BD.

(* G is the intersection of DE and AB *)
Definition line_DE (X : point) := exists k : R, px X = px D + k * (px E - px D) /\ py X = py D + k * (py E - py D).
Definition line_AB (X : point) := exists k : R, px X = px A + k * (px B - px A) /\ py X = py A + k * (py B - py A).
Definition G := intersection line_DE line_AB.

(* Angle function between three points: angle at Y between X and Z *)
Definition angle (X Y Z : point) : R :=
  let u := (X - Y) in
  let v := (Z - Y) in
  let dot_product := u.1 * v.1 + u.2 * v.2 in
  let norm_u := sqrt (u.1^2 + u.2^2) in
  let norm_v := sqrt (v.1^2 + v.2^2) in
  acos (dot_product / (norm_u * norm_v)).

Theorem circle_secant_tangent_angle :
  angle G F E = angle A D E.
Proof. Admitted.

End CircleTangentsSecant.
####