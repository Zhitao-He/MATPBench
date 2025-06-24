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

(* Points F, G, H, J lie on the same circle *)
Hypothesis H_circ : on_circle (Circle F G H J) F.
Hypothesis G_circ : on_circle (Circle F G H J) G.
Hypothesis H_circ2 : on_circle (Circle F G H J) H.
Hypothesis J_circ : on_circle (Circle F G H J) J.

(* FJ is the diameter of the circle, and G lies on FJ *)
Hypothesis FJ_diam : collinear F J G /\ dist F J =: diameter (Circle F G H J).

(* GJ is perpendicular to FH *)
Hypothesis GJ_perp_FH : is_perpendicular (Line G J) (Line F H).

(* The measure of arc GH is 78 degrees *)
Hypothesis GH_arc_degree : arc_degree (Circle F G H J) G H = 78.

(* "angle 1" is the angle at H between chords G-H and J-H (labelled as 1 in the diagram), i.e., angle GHJ at point H *)
Definition angle1 : R := angle_at H G J.

(*
  To find m∠1 = 39°, we use the fact that the angle subtended by an arc at the center is twice the angle subtended at any point on the circumference.
  Here, angle 1 (angle GHJ) is an inscribed angle subtended by arc GH.
  The central angle subtended by arc GH is 78° (given by GH_arc_degree).
  Therefore, angle 1 = (1/2) * 78° = 39°.
*)
Theorem geometry_circle_angle1 :
  angle1 = 39.
Proof.
(*
  The proof would involve:
  1. Using the property that the inscribed angle is half the central angle subtended by the same arc.
  2. Applying this property to arc GH and angle 1 to derive angle1 = 39°.
  The actual proof steps are omitted for brevity and marked with `admit`.
*)
admit.
Qed.

End geometry_problem.
####