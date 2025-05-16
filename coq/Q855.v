####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables S T U V Y Z J : point2D.
Hypotheses
  Hcol1    : colinear [:: S; T; U];
  Hcol2    : colinear [:: S; Y; Z];
  Hcol3    : colinear [:: U; V; Z];
  Hcol4    : colinear [:: Y; J; U];
  Hcol5    : colinear [:: Z; J; T];
  Hcol6    : between S J T;
  Hcol7    : between Z V U;
  Hcross1  : between Y J U;
  Hcross2  : between Z J T;
  Hlen_ZT  : `|Z - T| = 18;
  Hlen_JV  : `|J - V| = 3;
  Hlen_VT  : `|V - T| = 9;
  Hlen_VU  : `|V - U| = `|V - Z|;
  Hlen_SJ  : `|S - J| = `|J - T|;
  Hlen_TU  : `|T - U| = `|S - U|.

Theorem solve_YS : `|Y - S| = 9.
Proof. by []. Qed.
####