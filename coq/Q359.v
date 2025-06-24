####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope ring_scope.

Section tangent_circle_angles.

Variable R : realType.

(* Points *)
Variables J O N H : 'rV[R]_2.

(* The circle J passes through O and N *)
Variable r : R.
Hypothesis r_pos : 0 < r.
Hypothesis O_on_circle : norm (O - J) = r.
Hypothesis N_on_circle : norm (N - J) = r.

(* HO and HN are tangent to the circle J at points O and N, respectively *)
Hypothesis HO_tangent : 
  [line H; O] is_tangent_with_center J O.
Hypothesis HN_tangent : 
  [line H; N] is_tangent_with_center J N.

(* The requested angles: angle at center J, and angle at external point H *)
Definition angle_J := angle (O - J) (N - J).
Definition angle_H := angle (H - O) (H - N).

Theorem tangent_circle_angle_sum :
  angle_J + angle_H = 180%:R.
Proof. Admitted.

End tangent_circle_angles.
####