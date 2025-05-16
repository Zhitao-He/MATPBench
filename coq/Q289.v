####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Four points in the plane labelled X, Y, Z, W *)
Variables X Y Z W : 'e2[R].

(* The labeled side lengths as in the diagram *)
Hypothesis XY_len : `|Y - X| = 96.
Hypothesis XW_len : `|W - X| = 104.
Hypothesis YZ_len : `|Z - Y| = 32.
Hypothesis ZW_len : `|W - Z| = 24.

(* The labelled angle at Z is a right angle: angle YZW = 90 degrees *)
Hypothesis right_Z : 
  let u := (Y - Z) in let v := (W - Z) in (\dotp[R]_2 u v = 0).

(* The vertices are ordered X Y Z W cyclically, forming a simple quadrilateral *)
Hypothesis quad_simple : 
  ~ colinear X Y Z /\ ~ colinear Y Z W /\ ~ colinear Z W X /\ ~ colinear W X Y.

Theorem area_XYZW_is_2304 :
  area_quadrilateral X Y Z W = 2304.
Proof. Admitted.
####