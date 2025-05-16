####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.

Record point : Type := mkPoint { px : R; py : R }.

Definition colinear (A B C : point) : Prop :=
  exists k : R, B.(px) = A.(px) + k * (C.(px) - A.(px)) /\ B.(py) = A.(py) + k * (C.(py) - A.(py)).

Definition midpoint (A B D : point) : Prop :=
  D.(px) = (A.(px) + B.(px))/2 /\ D.(py) = (A.(py) + B.(py))/2.

Definition on_circle (O : point) (r : R) (P : point) : Prop :=
  (P.(px) - O.(px))^2 + (P.(py) - O.(py))^2 = r^2.

Definition perpendicular (A B C : point) : Prop :=
  let v1x := B.(px) - A.(px) in
  let v1y := B.(py) - A.(py) in
  let v2x := C.(px) - A.(px) in
  let v2y := C.(py) - A.(py) in
  (v1x * v2x + v1y * v2y = 0).

Definition parallel (A B C D : point) : Prop :=
  let v1x := B.(px) - A.(px) in
  let v1y := B.(py) - A.(py) in
  let v2x := D.(px) - C.(px) in
  let v2y := D.(py) - C.(py) in
  (v1x * v2y = v1y * v2x).

Definition angle (A O B : point) : R :=
  let v1x := A.(px) - O.(px) in
  let v1y := A.(py) - O.(py) in
  let v2x := B.(px) - O.(px) in
  let v2y := B.(py) - O.(py) in
  let d1 := sqrt (v1x^2 + v1y^2) in
  let d2 := sqrt (v2x^2 + v2y^2) in
  let dot := v1x * v2x + v1y * v2y in
  acos (dot / (d1 * d2)).

Variables A B C O D E F G : point.
Variable r : R.

Hypothesis HABC_circ : ~ colinear A B C.
Hypothesis H_O_circle : on_circle O r A /\ on_circle O r B /\ on_circle O r C.
Hypothesis H_D_mid : midpoint B C D.
Hypothesis H_AE_circle : exists k1 : R, k1 <> 0 /\ E = mkPoint (A.(px) + k1 * (D.(px) - A.(px))) (A.(py) + k1 * (D.(py) - A.(py))) /\ on_circle O r E /\ A <> E.
Hypothesis H_EF_parallel_BC : exists k2 : R, k2 <> 0 /\ F = mkPoint (E.(px) + k2 * (D.(px) - E.(px))) (E.(py) + k2 * (D.(py) - E.(py))) /\ on_circle O r F /\ parallel E F B C /\ E <> F.
Hypothesis H_G_on_AE_CG_perp_AC : exists k3 : R, G = mkPoint (A.(px) + k3 * (E.(px) - A.(px))) (A.(py) + k3 * (E.(py) - A.(py))) /\ perpendicular C G A C.

Theorem triangle_angle_equality :
  angle A G C = angle F G C.
Proof. Admitted.

End Geometry_Theorem.
####