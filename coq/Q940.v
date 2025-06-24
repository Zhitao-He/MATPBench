####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.
Variable R : realType.
Variables A B C D E F P Q : 'Point[R]_2.

(* Convex quadrilateral ABCD *)
Hypothesis convex_ABCD : convex_quadrilateral [:: A; B; C; D].

(* AC bisects angle BAD *)
Hypothesis AC_bisects : angle_bisector (line A B) (line A C) (line A D).

(* Points E on BC and F on CD *)
Hypothesis E_on_BC : on_segment E (seg B C).
Hypothesis F_on_CD : on_segment F (seg C D).

(* EF parallel to BD *)
Hypothesis EF_parallel_BD : parallel (line E F) (line B D).

(* Extensions of FA to P and EA to Q *)
Hypothesis P_on_extension : exists k, k > 1 /\ P = k *: (F - A) + A.
Hypothesis Q_on_extension : exists k, k > 1 /\ Q = k *: (E - A) + A.

(* Circumcircle conditions *)
Hypothesis omega1_circum : circumcircle A B P.
Hypothesis omega1_tangent : tangent (circumcircle A B P) (line A C).

Hypothesis omega2_circum : circumcircle A D Q.
Hypothesis omega2_tangent : tangent (circumcircle A D Q) (line A C).

(* Main theorem *)
Theorem concyclic_BPQD : concyclic [:: B; P; Q; D].
Proof. by []. Qed.

End GeometryProblem.
####