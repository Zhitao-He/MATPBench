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
  exists (l : R * R * R), l.1.1 * (px A) + l.1.2 * (py A) + l.2 = 0 /\
                          l.1.1 * (px B) + l.1.2 * (py B) + l.2 = 0 /\
                          l.1.1 * (px C) + l.1.2 * (py C) + l.2 = 0.

Definition eq_point (A B : point) : Prop := px A = px B /\ py A = py B.

Definition circle (O : point) (r : R) (X : point) : Prop :=
  ((px X - px O)^2 + (py X - py O)^2 = r^2).

Variables O C D P E A B : point.
Variable r : R.

Hypothesis Hcd_diameter : circle O r C /\ circle O r D /\ (px C + px D) / 2 = px O /\ (py C + py D) / 2 = py O.
Hypothesis Hcircle_pts : circle O r E /\ circle O r A /\ circle O r B.
Hypothesis HC_neq_D : ~ eq_point C D.
Hypothesis HP_not_on_circle : ~ circle O r P.

(* PC tangent to circle O at C *)
Hypothesis Htangent_PC_C :
  forall X : point, (collinear P X C /\ collinear X C C) -> eq_point X C.

(* PE tangent to circle O at E *)
Hypothesis Htangent_PE_E :
  forall X : point, (collinear P X E /\ collinear X E E) -> eq_point X E.

(* PBA is a secant: passes through P, B, A in that order, with A, B on the circle *)
Hypothesis Hsecant_PBA :
  exists l_pba : R * R * R, 
    l_pba.1.1 * (px P) + l_pba.1.2 * (py P) + l_pba.2 = 0 /\
    l_pba.1.1 * (px B) + l_pba.1.2 * (py B) + l_pba.2 = 0 /\
    l_pba.1.1 * (px A) + l_pba.1.2 * (py A) + l_pba.2 = 0.

(* F = AC ∩ BD *)
Definition line_AC (X : point) := exists k : R, px X = px A + k * (px C - px A) /\ py X = py A + k * (py C - py A).
Definition line_BD (X : point) := exists k : R, px X = px B + k * (px D - px B) /\ py X = py B + k * (py D - py B).
Definition intersection (l1 l2 : point -> Prop) : point -> Prop :=
  fun X => l1 X /\ l2 X.
Definition F := 
  let AC := line_AC in
  let BD := line_BD in
  let Pts := fun X => AC X /\ BD X in
  (* Some unique F satisfying both *)
  (choose (fun X => AC X /\ BD X)).

(* G = DE ∩ AB *)
Definition line_DE (X : point) := exists k : R, px X = px D + k * (px E - px D) /\ py X = py D + k * (py E - py D).
Definition line_AB (X : point) := exists k : R, px X = px A + k * (px B - px A) /\ py X = py A + k * (py B - py A).
Definition G := 
  let DE := line_DE in
  let AB := line_AB in
  let Pts := fun X => DE X /\ AB X in
  (choose (fun X => DE X /\ AB X)).

(* Angle function between three points: angle at Y between X and Z *)
Parameter angle : point -> point -> point -> R.

Theorem circle_secant_tangent_angle :
  angle G (F (proj1_sig (constructive_indefinite_description _ (classic (ex_intro _ F I))))) E =
  angle A D E.
Proof. Admitted.
####