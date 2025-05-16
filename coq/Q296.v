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
  (* The points A, B, C are non-collinear (form triangle) *)
  (ABC_noncol : ~ colinear A B C)
  (* D is in the plane of ABC *)
  (D_plane : coplanar4 A B C D)
  (* Triangle BDC is isosceles: |BD| = |DC| *)
  (isos_BDC : norm (B - D) = norm (D - C))
  (* Triangle ACD is isosceles: |AC| = |AD| *)
  (isos_ACD : norm (A - C) = norm (A - D))
  (* m∠ABC = 70° *)
  (ang_ABC : angle_deg B A C = 70).

Theorem triangle_angle_BAC_35 :
  angle_deg A B C = 35.
Proof. Admitted.
####