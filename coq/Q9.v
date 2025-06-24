####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section ChordIntersectionAngles.

Variable R : realType.
Variable O : 'rV[R]_2.
Variable radius : R.

(* Define the circle centered at O with radius 'radius' *)
Definition on_circle (P : 'rV[R]_2) := dist P O = radius.

Variables A B C D E : 'rV[R]_2.

Hypothesis A_on_circle : on_circle A.
Hypothesis B_on_circle : on_circle B.
Hypothesis C_on_circle : on_circle C.
Hypothesis D_on_circle : on_circle D.

(* Define chords AB and CD intersecting at E *)
Hypothesis AB_chord : Line A B.
Hypothesis CD_chord : Line C D.
Hypothesis E_inters : incidence_point AB_chord CD_chord = Some E.

(* Angles, all in degrees. *)
Variable angle : 'rV[R]_2 -> 'rV[R]_2 -> 'rV[R]_2 -> R.
(* angle X Y Z denotes angle XYZ, in degrees *)

(* Given angles *)
Hypothesis angle_D_eq : angle C D B = 35.
Hypothesis angle_AEC_eq : angle A E C = 105.

(* To prove: angle B C D = 70 *)
Theorem chords_intersect_angle_C :
  angle B C D = 70.
Proof. 
  (* Here would be the actual proof, which is omitted for brevity. *)
  (* Assuming we have the necessary geometric lemmas, the proof would proceed by 
     using properties of circles, chords, and angles. *)
  Admitted.

End ChordIntersectionAngles.
####