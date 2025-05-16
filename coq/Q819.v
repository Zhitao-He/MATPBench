####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables A B C D E F : R * R.
Definition dist P Q := Num.sqrt ((P.1 - Q.1)^2 + (P.2 - Q.2)^2).
Hypotheses
  hAB : dist A B = 5;
  hBC : dist B C = 6;
  hCA : dist C A = 7;
  hDE : dist D E = 3;
  similar : dist A B / dist D E = dist B C / dist E F;
  similar' : dist A B / dist D E = dist C A / dist F D.

Theorem perimeter_DEF : dist D E + dist E F + dist F D = 54/5.
Proof. by []. Qed.
####