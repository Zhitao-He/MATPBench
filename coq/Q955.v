####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Theorem_Midpoint_DE.

Variable R : realType.

Record point := mkPoint { px : R; py : R }.

Definition collinear (A B C : point) : Prop :=
  (px B - px A) * (py C - py A) = (py B - py A) * (px C - px A).

Definition between (A B C : point) : Prop :=
  collinear A B C /\
    ((px B - px A) * (px B - px C) <= 0) /\
    ((py B - py A) * (py B - py C) <= 0).

Definition midpoint (F D E : point) : Prop :=
  px F = (px D + px E) / 2 /\ py F = (py D + py E) / 2.

Definition on_circle (O : point) (r : R) (X : point) : Prop :=
  (px X - px O)^2 + (py X - py O)^2 = r^2.

Definition tangent (O : point) (r : R) (A X : point) : Prop :=
  on_circle O r X /\
  let v1 := (px X - px O, py X - py O) in
  let v2 := (px X - px A, py X - py A) in
    v1.1 * v2.1 + v1.2 * v2.2 = 0.

Variables O P : point.
Variables rO rP : R.
Hypothesis rO_pos : 0 < rO.
Hypothesis rP_pos : 0 < rP.

Variables A B : point.
Hypothesis A_on_O : on_circle O rO A.
Hypothesis A_on_P : on_circle P rP A.
Hypothesis B_on_O : on_circle O rO B.
Hypothesis B_on_P : on_circle P rP B.
Hypothesis A_neq_B : A <> B.

(* Define C as the intersection of the extensions of lines BO and PA *)
Variable C : point.
Hypothesis C_on_BO_ext : exists l1 : R, l1 <> 0 /\ 
  px C = px B + l1 * (px O - px B) /\
  py C = py B + l1 * (py O - py B).
Hypothesis C_on_PA_ext : exists l2 : R, l2 <> 0 /\
  px C = px P + l2 * (px A - px P) /\
  py C = py P + l2 * (py A - py P).

(* CD tangent to O at D, CE tangent to P at E *)
Variables D E : point.
Hypothesis D_tangent_to_O : tangent O rO C D.
Hypothesis E_tangent_to_P : tangent P rP C E.

(* Line DE meets AB at F *)
Variable F : point.
Hypothesis F_on_DE : exists t : R, 0 < t < 1 /\
  px F = px D + t * (px E - px D) /\
  py F = py D + t * (py E - py D).
Hypothesis F_on_AB : exists s : R, 0 < s < 1 /\
  px F = px A + s * (px B - px A) /\
  py F = py A + s * (py B - py A).

Theorem circles_tangent_midpoint :
  midpoint F D E.
Proof. Admitted.

End Theorem_Midpoint_DE.
####