####
From mathcomp Require Import all_algebra all_field all_ssreflect.
From mathcomp Require Import reals complex vector.
From mathcomp Require Import euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleTangentsMidpoint.

Variable R : realType.
Variable plane : Type.
Variable Point : Type.

Variable Euclid : euclidean_plane_axioms R plane Point.

Import Euclid.

Variables O P A B C E F L D : Point.

Hypotheses
  (Hcircle : exists r : R, 0 < r /\ forall X : Point, on_circle O r X <-> Col O X r)
  (HPO : P <> O)
  (HA_on : on_circle O (center_radius O A) A)
  (HB_on : on_circle O (center_radius O B) B)
  (HPA_tangent : tangent_at_circle P A O (center_radius O A) /\ outside_circle P O (center_radius O A))
  (HPB_tangent : tangent_at_circle P B O (center_radius O B) /\ outside_circle P O (center_radius O B))
  (HC_on : on_circle O (center_radius O C) C)
  (HE_tangent : collinear P E A /\ tangent_line_at_circle C E O (center_radius O C))
  (HF_tangent : collinear P F B /\ tangent_line_at_circle C F O (center_radius O C))
  (HL : intersection_point (line_through O C) (line_through A B) = Some L)
  (HD : 
    let lLP := line_through L P in
    let lEF := line_through E F in
    intersection_point lLP lEF = Some D)
  (HEF_neq : E <> F)
  (HEF_col : ~ collinear E F D).

Theorem geometry_tangents_midpoint :
  midpoint D E F.
Proof. Admitted.

End CircleTangentsMidpoint.
####