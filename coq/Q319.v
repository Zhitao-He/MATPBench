####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section TriangleAngle140.

Variable R : realType.

Variables A B C : 'rV[R]_2.

Hypothesis noncollinear_ABC : ~~ collinear [:: A; B; C].
Hypothesis eq_AC_BC : \| A - C \| = \| B - C \|.
Hypothesis angle_BAC_40 : angle B A C = 40%:R * PI / 180.

(* Define point D as the extension of BC beyond B to form an exterior angle. *)
Variable D : 'rV[R]_2.
Hypothesis D_extension : exists t, t < 0 /\ D = (1 - t)*:B + t *:C.

(* Define angle x as the angle between BA and the exterior ray BD. *)
Definition angle_x := angle B A D.

Theorem triangle_isoceles_exterior_angle_140 :
  angle_x = 140%:R * PI / 180.
Proof. Admitted.

End TriangleAngle140.
####