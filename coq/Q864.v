####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryProblem.

Variable Point : Type.

Variables P Q R S T U : Point.

Hypothesis Hcollinear_PUQ : ~ collinear P U Q.
Hypothesis Hcollinear_RQS : ~ collinear R Q S.
Hypothesis Hcollinear_RST : ~ collinear R S T.
Hypothesis Hcollinear_PTU : ~ collinear P T U.

Hypothesis RQ_intersect_triangle : 
  between P Q R /\ between T S R.

Hypothesis PR_eq_RT : dist P R = dist R T.

Hypothesis Q_on_PR : between P Q R.
Hypothesis S_on_RT : between R S T.
Hypothesis U_on_PT : between P U T.
Hypothesis Q_U_S_collinear : collinear Q U S.

Hypothesis angle_QPR_40 : angle Q P R = 40%:R.

Theorem measure_angle_SRQ_40 :
  angle S R Q = 40%:R.
Proof. Admitted.

End GeometryProblem.
####