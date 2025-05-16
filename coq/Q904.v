####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclid_geom.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Local Open Scope ring_scope.

Variables A B C D R : 'rV[R]_2.
Hypotheses
  (HAC : norm (C - A) = 12)
  (HBC : norm (B - C) = 9)
  (HBD : norm (B - D) = 6)
  (HRB : norm (R - B) = 7)
  (HD_on_AC : colinear A D C)
  (HADC    : between A D C)
  (HR_on_AB: colinear A R B)
  (HARB    : between A R B).

Theorem relation_between_R_and_D :
  True.
Proof.
  (* proof omitted *)
Admitted.
####