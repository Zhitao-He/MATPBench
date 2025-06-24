From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Circumcircle_Quadrilateral_Angle.

Variable R : realType.

(* Points A, B, C, D on the circle centered at O *)
Variables (A B C D O : 'vec[R]_2).

(* Hypothesis: A, B, C, D are all on the circle centered at O *)
Hypothesis on_circle_hypothesis : on_circle O A /\ on_circle O B /\ on_circle O C /\ on_circle O D.

(* Hypothesis: Points A, B, C, D are distinct *)
Hypothesis distinct_points : A <> B /\ B <> C /\ C <> D /\ D <> A /\ A <> C /\ B <> D.

(* Hypothesis: ABCD is a convex quadrilateral *)
Hypothesis convex_quadrilateral : convex_quad A B C D.

(* Hypothesis: The central angle ∠AOB is 110 degrees *)
Hypothesis angle_AOB : angle A O B = 110%:R.

(* Theorem to prove: The internal angle ∠BCD is 125 degrees *)
Theorem circumcircle_quadrilateral_angle_C :
  angle B C D = 125%:R.
Proof.
  (* Here, we would insert the actual proof, which would involve using properties of inscribed angles 
     and central angles in a circle. *)
  (* For the sake of this example, the proof is omitted. *)
  Admitted.

End Circumcircle_Quadrilateral_Angle.
####