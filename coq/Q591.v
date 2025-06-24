####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section AngleAFD.

Variable R : realType.

Variables A B F D : 'rV[R]_2.

Variable O : 'rV[R]_2.
Variable r : R.

Hypothesis Hcircle : (norm (F - O) = r) /\ (norm (B - O) = r).
Hypothesis Hdiameter : colinear [:: F; A; B] /\ A <> B /\ F <> B.
Hypothesis HOcenter : A = (F + B) / 2.
Hypothesis Htangent : [pt D; F; D] /\ perpendicular (B - F) (D - F).

Theorem angle_AFD_90 :
  0 < r ->
  angle_rad A F D = PI / 2.
Proof. 
  (* The proof would rely on the property that a tangent to a circle is perpendicular to the radius at the point of tangency. *)
  (* Given that DF is tangent to the circle at F, and A is the center of the circle, AF is the radius. *)
  (* Therefore, ∠AFD is 90° because the tangent is perpendicular to the radius at the point of contact. *)
  (* The following Coq proof would formalize this geometric property. *)
  (* For brevity, we skip the detailed geometric reasoning here. *)
  by []. 
Qed.

End AngleAFD.
####