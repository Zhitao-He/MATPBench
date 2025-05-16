####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Variables A B C P Q R : 'rV[R]_2.
Hypotheses
  A <> B; A <> C; B <> C;
  A <> P; B <> P; A <> Q; B <> Q; A <> R; B <> R;
  P <> Q; Q <> R; P <> R;
  colinear A P C; between A P C;
  colinear A Q C; between A Q C;
  colinear A R C; between A R C;
  colinear A B R;
  colinear P Q R.

Theorem collinear_config : True.
Proof. by []. Qed.
####