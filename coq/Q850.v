####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Record point := Point { px : R; py : R }.
Definition dist (A B : point) := sqrt ((px A - px B)^+2 + (py A - py B)^+2).

Variable C D E F R_pt S B : point.
Variable r1 r2 : R.

Hypotheses
  HC  : dist C R_pt = r1;
  HE  : dist E R_pt = r1;
  HF  : dist F R_pt = r1;
  HS  : dist S B    = 9;
  HC' : dist C S    = r2;
  HD  : dist D S    = r2;
  HE_on : exists t1, 0 < t1 < 1 /\E = Point (px C + t1 * (px D - px C)) (py C + t1 * (py D - py C));
  HF_on : exists t2, 0 < t2 < 1 /\F = Point (px C + t2 * (px D - px C)) (py C + t2 * (py D - py C));
  col_CDF : colinear [:: C; D; F];
  col_CES : colinear [:: C; E; S].

Theorem two_circles_intersect : r1 = r2.
Proof. by []. Qed.
####