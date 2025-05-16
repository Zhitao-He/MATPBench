####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem tetrahedron_midpoint_distance :
  exists (A B C D : 'rV[R]_3),
    norm (A - B) = 41%:R /\
    norm (A - C) = 7%:R /\
    norm (A - D) = 18%:R /\
    norm (B - C) = 36%:R /\
    norm (B - D) = 27%:R /\
    norm (C - D) = 13%:R /\
    let M1 := (A + B) / 2%:R in
    let M2 := (C + D) / 2%:R in
    (norm (M1 - M2))^2 = 137%:R.
Proof. Admitted.
####