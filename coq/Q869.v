####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points J, K, L, M in the plane *)
Variables J K L M : 'rV[R]_2.

Hypotheses
  (H_neq_JK : J != K)
  (H_neq_KL : K != L)
  (H_neq_LJ : L != J)
  (H_M_on_JL : colinear J L M)
  (H_M_between_JL : between J M L)
  (H_MK_perp_JL : [< K - M, L - J >] = 0)
  (H_KM_perp_JL : [< K - M, L - J >] = 0)
  (H_JS_K : dist J K = 11%:R)
  (H_LS_K : dist K L = 11%:R)
  (H_ML : dist M L = 5.5)
  (H_MJ : is_midpoint M J L)
  (H_triangle : is_triangle J K L)
.

Theorem measure_of_angle_LKJ_60 :
  measure_angle L K J = pi / 3.
Proof. Admitted.
####