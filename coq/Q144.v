####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals euclidean_geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section perpendicular_angle.

Variable R : realType.

Variables A O B : 'e2d[R].
Hypothesis AOB_straight : colinear A O B.

Variable C : 'e2d[R].
Hypothesis OC_perp_AB : perpendicular O C A B.

(* x is the angle between AO and OC *)
Definition x : R := angle_deg A O C.

(* Theorem: The angle x between AO and OC is 90 degrees *)
Theorem angle_x_is_90 :
  x = 90%:R.
Proof.
  (* Proof steps would involve:
     1. Using the perpendicularity condition `OC_perp_AB` to show that angle AOC is 90 degrees.
     2. Concluding that x = 90%:R.
  *)
  Admitted.

End perpendicular_angle.
####