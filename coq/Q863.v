####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables A B C D P : 'rV[R]_2.
Hypotheses
  hAB : `|B - A| = 15;
  hAng: let BA := A - B in let BC := C - B in acos ((BA *m BC^T) ``_0_0 / (`|BA| * `|BC|)) = 24%:R;
  hBP : colinear [:: B; P; D];
  hDP : colinear [:: D; P; C];
  hBP_len : `|B - P| = 12;
  hP    : exists k1 k2, 0 < k1 < 1 /\0 < k2 < 1 /\P = (1 - k1)%:R *: A + k1%:R *: C /\ P = (1 - k2)%:R *: B + k2%:R *: D.

Theorem length_AP : `|A - P| = 9.
Proof. by []. Qed.
####