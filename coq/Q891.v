####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points *)
Variables A B N S L C : 'rV[R]_2.

Hypotheses
  (AN : dist A N = 21)
  (BN : dist B N = 18)
  (BL_perp : ([/\ colinear A L B, right_angle A L B ]))
  (BL_len : dist B L = 6)
  (SC_perp : ([/\ colinear S C N, right_angle S C N ]))
  (SC_len : dist S C = 4).

(* Triangle area function *)
Definition area (P Q R : 'rV[R]_2) : R :=
  `| (Q - P) 0 0 * (R - P) 0 1 - (Q - P) 0 1 * (R - P) 0 0 | / 2.

Theorem area_SBN_NBA :
  area S B N + area N B A = 99.
Proof. Admitted.
####