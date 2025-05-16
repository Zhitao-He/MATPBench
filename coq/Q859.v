####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometryDiagram.

Variable R : realType.

Variables W H Q A P X : 'cV[R]_2.

Variables x y : R.

Hypotheses
  (Hdistinct : W != H /\ H != Q /\ Q != A /\ A != W /\ W != Q /\ H != A)
  (P_on_HA : on_line P H A)
  (X_on_PQ : on_line X P Q)
  (angles :
      angle W H Q = (4*x - 16) %[deg]
   /\ angle Q W H = (x + 12) %[deg]
   /\ angle Q A H = (3*x - 2) %[deg])
  (distances :
      dist H P = 7*y - 5
   /\ dist P A = 3*y + 11).

Theorem value_length_HA_46 :
  dist H A = 46.
Proof. Admitted.

End GeometryDiagram.
####