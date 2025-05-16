####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables R Y A X Q S P W : 'rV[R]_2.
Hypotheses
  H1 : `|W - X| = 10;
  H2 : `|W - Y| = 8;
  H3 : `|X - Y| = 6;
  H4 : `|R - Y| = 5;
  H5 : [seg Y, S] \perp [seg S, W];
  H6 : [seg Q, X] \perp [seg Q, W];
  H7 : [seg Q, S] \perp [seg Y, S];
  H8 : [seg Y, S] = [seg Q, S];
  H9 : colinear [:: R; Y; W];
  H10: colinear [:: X; Q; W];
  H11: colinear [:: R; A; X];
  H12: colinear [:: R; A; W];
  H13: colinear [:: P; S; W];
  H14: colinear [:: S; Q; W].

Theorem length_PQ_6 : `|P - Q| = 6.
Proof. by []. Qed.
####