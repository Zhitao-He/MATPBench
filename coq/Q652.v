####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition dist (A B : point) : R :=
  sqrt ((px A - px B)^+2 + (py A - py B)^+2).

Variables Q R S T X Y : point.

Hypotheses
  (HQX : colinear Q X T)
  (HRY : colinear R Y S)
  (HXTY : colinear X Y)
  (QX : dist Q X > 0)
  (XR : dist X R > 0)
  (Q_R_parallel_TS : 
    exists k : R, k <> 0 /\ py Q - py R = k * (py T - py S) /\ px Q - px R = k * (px T - px S))
  (length_QR : dist Q R = 22)
  (length_XY : dist X Y = 15).

Theorem length_TS_eq_8 : dist T S = 8.
Proof. Admitted.
####