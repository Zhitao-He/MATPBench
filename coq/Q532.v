####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleXZK.

Variable R : realType.

(* Points L, W, X, E, N, Z, K in the plane *)
Variables L W X E N Z K : R^2.

(* Hypotheses *)
Hypothesis angle_LWX : \angle (L, W, X) = 53%:R * (PI / 180). (* ∠LWX = 53° *)
Hypothesis WL_parallel_XE : (W - L) \parallel (E - X). (* WL is parallel to XE *)
Hypothesis XN_parallel_ZK : (N - X) \parallel (K - Z). (* XN is parallel to ZK *)

(* Theorem to prove: Measure of angle XZK = 53° *)
Theorem measure_of_angle_XZK :
  \angle (X, Z, K) = 53%:R * (PI / 180).
Proof. Admitted.

End AngleXZK.
####