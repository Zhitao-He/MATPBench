####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences point_geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D E F G : 'rV[R]_2.
Hypotheses
  HAB : dist A B = 26;
  HAD : dist A D = 12;
  HDG : dist D G = 9/2;
  HGF : dist G F = 14;
  HFE : dist F E = 8;
  HAngle : angle_deg A D G = 108;
  col1 : colinear [:: A; D; G]; col2 : colinear [:: D; G; F]; col3 : colinear [:: G; F; E]; col4 : colinear [:: F; E; B].
Theorem solve_GE : dist E G = 13.
Proof. by []. Qed.
####