####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ChordIntersectionAngles.

Variable R : realType.

Variables A B C D E : 'rV[R]_2.
Variable O : 'rV[R]_2.

Hypothesis on_circle_A : dist A O = dist B O.
Hypothesis on_circle_B : dist B O = dist C O.
Hypothesis on_circle_C : dist C O = dist D O.
Hypothesis on_circle_D : dist D O = dist A O.
Hypothesis E_inters : exists l1 l2,
    (l1 = Line A B) /\
    (l2 = Line C D) /\
    (incidence_point l1 l2 = Some E).

(* Angles, all in degrees. *)
Variable angle : 'rV[R]_2 -> 'rV[R]_2 -> 'rV[R]_2 -> R.
(* angle X Y Z denotes angle XYZ, in degrees *)

Hypothesis angle_D_eq : angle C D B = 35.
Hypothesis angle_AEC_eq : angle A E C = 105.

Theorem chords_intersect_angle_C :
  angle B C D = 70.
Proof. Admitted.

End ChordIntersectionAngles.
####