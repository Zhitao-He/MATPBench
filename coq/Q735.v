####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points F, G, H, J are distinct and coplanar. The diagram shows quadrilateral FGHJ with diagonals intersecting at K. *)
Variables F G H J K : 'rV[R]_2.

Hypotheses
  (FG : F != G)
  (GH : G != H)
  (HJ : H != J)
  (JF : J != F)
  (coplanar : colinear F G H = false)
  (K_on_diag1 : on_line K F H)
  (K_on_diag2 : on_line K G J)
  (K_between_diag1 : between F K H)
  (K_between_diag2 : between G K J).

(* The measure of angle JHK is 49 degrees. *)
Theorem angle_JHK_49 :
  angle_deg J H K = 49.
Proof. Admitted.
####