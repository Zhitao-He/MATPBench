####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables P L N M K J : R^2.

Variables x y : R.

Hypotheses
  (square_PNML : quadrilateral_is_square P N M L)
  (J_diag : midpoint J P M)
  (J_diag2 : midpoint J N L)
  (NJ_eq : `|N - J| = 14 - x)
  (LK_eq : `|L - K| = 3 * x + 2 * y)
  (KM_eq : `|K - M| = 6 * x).

Theorem diagram_value_of_y :
  y = 3.
Proof. Admitted.
####