####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Angle2_39.

Variable R : realType.

Variables P Q R S : 'rV[R]_2.

Hypothesis triangle_PQR : ~~ colinear P Q R.
Hypothesis S_on_PR : colinear P S R.
Hypothesis S_between_PR : between P S R.

Definition angle_rad d := d * PI / 180.

Hypothesis angle_PQR_90 : angle P Q R = angle_rad 90.
Hypothesis angle_QPS_51 : angle Q P S = angle_rad 51.
Hypothesis angle_QRS_33 : angle Q R S = angle_rad 33.

(* Theorem: m∠2 = 39° at Q between QS and QR *)
Theorem angle2_39 :
  let angle2 := angle S Q R in angle2 = angle_rad 39.
Proof.
admit.
Qed.

End Angle2_39.
####