####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angles.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variable B C D E F : 'P[R]_2.
Hypotheses
  Hdistinct : uniq [:: B; C; D; E; F];
  Hcol1 : colinear [:: D; E; B]; Hcol2 : colinear [:: D; E; C];
  Hcol3 : colinear [:: F; E; B]; Hcol4 : colinear [:: F; E; C];
  Hncol : ~~ colinear [:: D; F; B];
  DEB : angle_at E D B = 40%:R;
  H_EB : `|D - E| = 9 /\ `|E - B| = 4;
  H_FC : angle_at E F C = 2 * x /\ 0 < x < 180.

Theorem value_of_x : x = 20.
Proof. by []. Qed.
####