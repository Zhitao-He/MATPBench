####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem two_circles_centered_at_origin_k_value :
  let O := (0:R, 0:R) in
  let P := (8:R, 6:R) in
  (exists r1 r2 : R, 0 < r2 < r1 / 
        P.1^+2 + P.2^+2 = r1^+2 / 
        exists Q R' : R * R, 
            Q.2 = 0 /\ Q.1 > 0 / Q.1^+2 + Q.2^+2 = r2^+2 / 
            R'.2 = 0 /\ R'.1 > Q.1 / R'.1^+2 + R'.2^+2 = r1^+2 / 
            `|Q.1 - R'.1| = 3 / 
        exists k : R, 
            S := (0, k);
            S.1^+2 + S.2^+2 = r2^+2 / S.1 = 0
        /\ k = 7).
Proof. Admitted.
####