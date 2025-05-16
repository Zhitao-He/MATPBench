####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleT103.

Variable R : realType.

Variables Q R S T : 'e2[R].

Hypothesis circle_QRS : on_circle Q R S.
Hypothesis angle_RQS : angle_deg R Q S = 103.

(* Points T, S, R are collinear such that QR and QS are tangents/intersect at Q as shown, and angle at Q subtended is 103 degrees.
   The diagram indicates that angle RTS (angle at T made by points R, T, S) is the tangent-chord angle at T.
 
   The theorem to formalize: The measure of angle RTS is 77 degrees.
*)
Theorem angle_T_measure :
  angle_deg R T S = 77.
Proof. Admitted.

End AngleT103.
####