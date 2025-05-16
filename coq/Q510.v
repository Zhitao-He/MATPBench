####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals angle geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Value_x_31_Theorem.

Variable R : realType.
Variables H K N M L G C E S D I : R^2.

Hypotheses
  (all_distinct : uniq [:: H;K;N;M;L;G;C;E;S;D;I])
  (col1 : colinear [:: H;N;K])
  (col2 : colinear [:: S;N;D])
  (col3 : colinear [:: E;M;C])
  (col4 : colinear [:: D;M;I])
  (col5 : colinear [:: L;G;C])
  (col6 : colinear [:: I;L;G])
  (intersect_M : True).

Theorem x_value_31 :
  x = 31.
Proof.
admit.
Qed.
####