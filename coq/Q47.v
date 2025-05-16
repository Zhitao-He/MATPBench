From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals anglearith.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometryCongruentTriangles.

Variable R : realType.

Variables A B C D E F G : 'rV[R]_2.

Hypothesis Hcong : exists (f : 'rV[R]_2 -> 'rV[R]_2),
  bijective f /\
  f A = D /\ f B = E /\ f C = F /\
  forall X Y, '[X - Y, X - Y] = '[f X - f Y, f X - f Y].

Hypothesis Hbisect : is_angle_bisector C D B A.

Hypothesis Hangle_A : angle B A C = PI / 3.

Theorem congruent_triangles_angle_conclusion :
  exists theta : R, angle K H J = theta.
Proof.
admit.
Qed.

End GeometryCongruentTriangles.
####