####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section geometry_problem.

Variable R : realType.

Variables F G H J : Point R.

Hypothesis H_circ : on_circle (Circle F G H J) F.
Hypothesis G_circ : on_circle (Circle F G H J) G.
Hypothesis H_circ2 : on_circle (Circle F G H J) H.
Hypothesis J_circ : on_circle (Circle F G H J) J.

Hypothesis FJ_diam : collinear F J G /\ dist F J =: diameter (Circle F G H J).
Hypothesis GJ_perp_FH : is_perpendicular (Line G J) (Line F H).

Hypothesis GH_arc_degree : arc_degree (Circle F G H J) G H = 78.

(* "angle 1" is the angle at H between chords G-H and J-H (labelled as 1 in the diagram), i.e. angle GHJ at point H *)
Definition angle1 : R := angle_at H G J.

Theorem geometry_circle_angle1 :
  angle1 = 39.
Proof. Admitted.
####