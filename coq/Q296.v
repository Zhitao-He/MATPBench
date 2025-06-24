####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry anglereal.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points in the plane *)
Variables A B C D : 'rV[R]_2.

Hypotheses
  (* Triangle BDC is isosceles: |BD| = |DC| *)
  (isos_BDC : norm (B - D) = norm (D - C))
  (* Triangle ACD is isosceles: |AC| = |CD| *)
  (isos_ACD : norm (A - C) = norm (C - D))
  (* m∠ABC = 70° *)
  (ang_ABC : angle_deg A B C = 70).

Theorem angle_BAC_35 :
  angle_deg B A C = 35.
Proof. Admitted.
####