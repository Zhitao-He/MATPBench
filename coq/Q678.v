####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D E : 'e2(R).

Hypotheses
  (HAC : dist A C = 5)
  (HAB : dist A B = 3)
  (HBD : dist B D = 7/2)
  (HED : dist E D = 3)
  (HBE_col : colinear (B :: E :: D :: nil))
  (HAB_col : colinear (A :: B :: C :: nil))
  (HAE_col : colinear (A :: E :: D :: nil))
  (HBE_dir : is_between B E D).

Theorem length_BE_21_10 :
  dist B E = 21 / 10.
Proof. Admitted.
####