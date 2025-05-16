####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable Point : Type.

Variables P Q R S T : Point.

(* Given: P, R, T are collinear; Q, R, S are collinear *)
Hypothesis collinear_PRT : collinear [:: P; R; T].
Hypothesis collinear_QRS : collinear [:: Q; R; S].

(* Isosceles information from tick marks in diagram *)
Hypothesis PQ_eq_PR : dist P Q = dist P R.
Hypothesis QR_eq_RS : dist Q R = dist R S.
Hypothesis ST_eq_RT : dist S T = dist R T.

(* Angle Q = 40 degrees *)
Hypothesis angle_Q_40 : angle_at Q P Q R = 40%:R.

(* Angle T = x degrees *)
Variable x : R.
Hypothesis angle_T_x : angle_at T S T R = x.

Theorem value_of_x :
  x = 55.
Proof. Admitted.

End GeometryProblem.
####