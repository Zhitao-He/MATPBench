####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals mathcomp.analysis.angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleBPO_Theorem.

Variable R : realType.

Variables B P O : R^2.
Variables K C M : R^2.
Variables G H N J F Q : R^2.

Hypothesis distinct_points :
  B <> P /\ P <> O /\ B <> O.

Hypothesis KPC_collinear : collinear [:: K; P; C].
Hypothesis BPK_collinear : collinear [:: B; P; K].
Hypothesis OMC_collinear : collinear [:: O; M; C].
Hypothesis GNH_collinear : collinear [:: G; N; H].
Hypothesis JNQ_collinear : collinear [:: J; N; Q].
Hypothesis FHN_collinear : collinear [:: F; H; N].

Hypothesis PK_parallel_OC : is_parallel (B -- P) (M -- O).
Hypothesis GH_parallel_KC : is_parallel (G -- H) (K -- C).
Hypothesis angle_KPO_43 :
  angle K P O = 43%:R.

Theorem measure_angle_BPO_137 :
  angle B P O = 137%:R.
Proof. Admitted.

End AngleBPO_Theorem.
####