####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variables G L E N K H M I W X Y Z : 'rV[R]_2.
Hypotheses
  (col1 : colinear [:: G;W;L;X;E;N])
  (col2 : colinear [:: M;Y;I])
  (col3 : colinear [:: L;W;H])
  (col4 : colinear [:: M;Y;Z;H])
  (col5 : colinear [:: N;X;Z;K]).

Theorem measure_angle_XZK :
  angle X Z K = 30%:R * PI / 180.
Proof.
admit.
Qed.
####