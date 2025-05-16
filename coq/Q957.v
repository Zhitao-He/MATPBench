####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Geometry_Theorem.

Variable R : realType.

Structure point := Point { px : R; py : R }.

Variable O A B C D E F G : point.

Hypothesis Hcirc : on_circle O A /\ on_circle O B /\ on_circle O C.
Hypothesis HABCDistinct : A <> B /\ B <> C /\ C <> A /\ A <> C /\ A <> D /\ B <> D /\ C <> D.
Hypothesis HM_BC : midpoint D B C.
Hypothesis HAED : collinear A D E /\ on_circle O E /\ E <> A /\ E <> D /\ E <> B /\ E <> C.
Hypothesis HAD_int : between A D E.
Hypothesis HEF : F <> E /\ on_circle O F.
Hypothesis HEF_parallel : parallel (Line E F) (Line B C).
Hypothesis HCG : (perpendicular (Line C G) (Line A C)) /\ collinear C G A /\ collinear G A E.
Hypothesis HGAE : between G A E.
Hypothesis HCG_int : intersection_point G (Line C (proj_pt_A_on_AC)) (Line A E).
Hypothesis Hdistinct : E <> F /\ G <> C /\ G <> A.

(* Synthetic geometric angle measure *)
Parameter angle : point -> point -> point -> R.
Axiom angle_well_defined : forall X Y Z : point, 0 <= angle X Y Z < 2*PI.

Theorem geometry_problem_angle_equality :
  angle A G C = angle F G C.
Proof. Admitted.

End Geometry_Theorem.
####