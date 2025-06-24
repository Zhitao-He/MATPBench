####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angles geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Variables A B C O : 'rV[R]_2.

Hypotheses
  (h_acute : 0 < angle_deg A B C < 90 /
              0 < angle_deg B C A < 90 /
              0 < angle_deg C A B < 90)
  (h_angle_A : angle_deg A B C = 68)
  (h_circumcenter : circumcenter A B C = O).

Definition angle_OBC := angle_deg O B C.

Theorem find_angle_OBC : angle_OBC = 22.
Proof. Admitted.
####