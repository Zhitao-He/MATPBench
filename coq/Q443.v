####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Record triangle := mkTri { U : 'rV[R]_2; V : 'rV[R]_2; W : 'rV[R]_2 }.
Variables X Y Z P Q R0 : 'rV[R]_2.
Hypothesis HUVW : ~~ colinear U V W.
Hypothesis HX : on_line X U V.
Hypothesis HY : on_line Y V W.
Hypothesis HZ : on_line Z U W.
Hypothesis HY_div : exists lam, lam = 3%:R/7%:R /\Y = (1-lam)*:V + lam*:W.
Hypothesis HP_conc : exists a b c, a>0 /\b>0 /\c>0 /\n  X = (a* U + b* V + c* W) / (a+b+c) /\n  Y = (a* U + b* V + c* W) / (a+b+c) /
  Z = (a* U + b* V + c* W) / (a+b+c).
Theorem cevians_concurrent_area_ratio :
  (area_triangle U V W = (161%:R/315%:R) * area_triangle U V W).
Proof.
admit.
Qed.
####