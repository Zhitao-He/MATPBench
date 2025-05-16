####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Angle_DAC_Theorem.

Variable R : realType.

Variables A B C D : Point R.

Hypothesis Hcol : ~ collinear [::A;B;C].

(* Given: BA meets AC at D and D is between B and C *)
Hypothesis Hbet : between B D C.

(* Given: |AD| = |DC| *)
Hypothesis Hcong : dist A D = dist D C.

(* Given: angle ABD = 24 degrees *)
Hypothesis Hangle_ABD : angle B A D = (24%:R * pi) / 180.

(* Given: angle DCA = 66 degrees *)
Hypothesis Hangle_DCA : angle D C A = (66%:R * pi) / 180.

Theorem measure_of_angle_DAC :
  angle D A C = (66%:R * pi) / 180.
Proof. Admitted.

End Angle_DAC_Theorem.
####