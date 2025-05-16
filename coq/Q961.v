####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry geometry_point geometry_circle geometry_line.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Triangle_OP_parallel_HD.

Variable R : realType.
Implicit Types A B C D E F H O P : 'R^2.

Theorem triangle_OP_parallel_HD
  (A B C : 'R^2)
  (h_neq : ~~ colinear A B C)
  (D : 'R^2)
  (hD : D = (B + C) / 2)
  (O : 'R^2)
  (hO : circumcenter A B C O)
  (H : 'R^2)
  (hH : orthocenter A B C H)
  (E : 'R^2) (F : 'R^2)
  (hE : on_line E [B;A])
  (hF : on_line F [C;A])
  (hAE_AF : `|A - E| = `|A - F|%R)
  (hcol : colinear D H E)
  (P : 'R^2)
  (hP : circumcenter A E F P)
  :
  parallel (O - P) (H - D).
Proof. Admitted.
####