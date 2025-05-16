####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Definition grid p := 0 <= fst p <= 4 /\0 <= snd p <= 4.
Definition shaded_poly := [:: (0,1); (1,3); (2,2); (3,4); (4,3); (3,2); (4,0); (1,1)].
Definition poly_area pts := (1/2%:R) * \\sum_(i < size pts) let P := nth (0,0) pts i in let Q := nth (0,0) pts (i.+1 %% size pts) in P.1 * Q.2 - Q.1 * P.2.
Theorem area_of_shaded_region_bmt_symbol : poly_area shaded_poly = 6.
Proof.
admit.
Qed.
####