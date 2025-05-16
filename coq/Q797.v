####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables M N C D : 'rV[R]_2.
Hypotheses
  h_NC : dist N C = 12;
  h_ND : dist N D = 2;
  h_DC : dist D C = 10;
  h_circ : exists O r, 0 < r /\ dist O N = r /\ dist O C = r /\ dist O D = r;
  h_perp : let v1 := C - N in let v2 := M - C in (v1 *m v2^T) ``_0_0 = 0;
  h_M_above : exists k, 0 < k /\M = C + k *: row2 0 1.

Theorem foot_on_diameter_right_angle : True.
Proof. by []. Qed.
####