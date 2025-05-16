####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem rectangle_segments_area
  (A B C D W X Y Z P Q : R^2)
  (h : forall x y : R^2, 0 <= (x - y) \dot (x - y)) (* Euclidean geometry context *)
  (ABCD_rect : forall, 
      [/\ D - A = C - B,
          B - A = C - D,
          (A \neq B) & (B \neq C)])
  (AB_eq : exists l : R, l > 0 /\ B = A + (l, 0))
  (BC_eq : exists w : R, w > 0 /\ C = B + (0, w))
  (BC_19 : norm (C - B) = 19)
  (PQ_parallel : (Q - P) = k * (B - A) /\ k > 0)
  (XY_collinear : X \in line A B /\ Y \in line A B /\ (X <> Y))
  (WZ_collinear : W \in line D C /\ Z \in line D C /\ (W <> Z))
  (P_collinear : P \in line X W
####