####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem two_intersecting_circles_equal_chords :
  exists (O1 O2 Q P R : 'e2[R]),
    let r1 := 6%:R in
    let r2 := 8%:R in
    (\norm(O1 - O2) = 12%:R) /\
    (on_circle O1 r1 Q) /\ (on_circle O1 r1 P) /\ (on_circle O2 r2 P) /\ (on_circle O2 r2 R) /\
    (** P is a point of intersection; Q in circle O1, R in circle O2, colinear Q,P,R *)
    colinear Q P R /\
    (Q <> P) /\ (R <> P) /\
    (** QP = PR *)
    (\norm(Q - P) = \norm(P - R)) /\
    (\norm(Q - P)^+2 = 130%:R).
Proof. Admitted.
####