####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section HexagonParallelogramAngles.

Variable R : realType.
Variables A B C D E F G : 'rV[R]_2.

Hypothesis hex_convex : convex [::A;B;C;D;E;F].

(* Parallelogram hypotheses: *)
Hypothesis parallelog_ABGF : parallelogram A B G F.
Hypothesis parallelog_CDGB : parallelogram C D G B.
Hypothesis parallelog_EFGD : parallelogram E F G D.

(* Angle hypotheses: *)
Hypothesis angle_ABG_53 : angle_deg A B G = 53.
Hypothesis angle_CDG_56 : angle_deg C D G = 56.

Theorem hexagon_angle_EFG_71 :
  angle_deg E F G = 71.
Proof. Admitted.

End HexagonParallelogramAngles.
####