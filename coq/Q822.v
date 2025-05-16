####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem perimeter_triangle_ABC
  (x y z : R)
  (HA : 10 * z - 40 > 0)
  (HB : 12 * y - 4 + 4 * y > 0)
  (HC : 18 - 6 * x + 3 * x > 0)
  (Hsum1 : 10 * z - 40 + 2 * z = 12 * y - 4)
  (Hsum2 : 12 * y - 4 + 4 * y = 18 - 6 * x)
  (Hsum3 : 18 - 6 * x + 3 * x = 10 * z - 40)
  : (10 * z - 40) + (12 * y - 4 + 4 * y) + (18 - 6 * x + 3 * x) = 360.
Proof. by []. Qed.
####