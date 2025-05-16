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
Hypothesis OC_perp_AB : (exists D : 'e2d[R], midpoint O D C /\ [~~ colinear O C A] /\ angle_deg A O C = 90%:R).

(* x is the angle between AO and OC *)
Definition x : R := angle_deg A O C.

Theorem angle_x_is_90 :
  x = 90%:R.
Proof. Admitted.

End perpendicular_angle.
####