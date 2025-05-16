####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_x_circle_tangent
  (R_pt S T C : 'rV[R]_2)
  (x : R)
  (h_circ : dist R_pt S = x)
  (h_CS : [ collinear R_pt S ] /\ [ on_circle R_pt S C ])
  (h_SC_tangent : [ tangent S T (circle R_pt x) ])
  (h_C_between_S_T : between C S T)
  (h_dist_CT : dist C T = 12)
  (h_dist_ST : dist S T = 20)
  :
  x = 32 / 3.
Proof. Admitted.
####