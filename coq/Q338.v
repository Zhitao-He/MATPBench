####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C D W X Y Z P : 'rV[R]_2.

Hypotheses
  (square_size : let s := 2 in
     `|W.1 - X.1| = s /
     `|X.1 - Y.1| = s /
     `|Y.1 - Z.1| = s /
     `|Z.1 - W.1| = s /
     `|A.1 - B.1| = 6 /
     `|B.1 - C.1| = 6 /
     `|C.1 - D.1| = 6 /
     `|D.1 - A.1| = 6)
  (points_on_corners : W = (0, 0) /
                      X = (6, 0) /
                      Y = (6, 6) /
                      Z = (0, 6))
  (square_construction : forall u v, on_line u (line A B) -> on_line v (line A D) -> ... )

Definition max_distance_AP := `|A - P|`.

Theorem max_distance_from_A_to_P : max_distance_AP <= 6.
Proof. Admitted.
####