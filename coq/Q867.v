####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points for quadrilateral ABCD *)
Variables A B C D : 'rV[R]_2.

(* Points for quadrilateral EFGH *)
Variables E F G H : 'rV[R]_2.

(* Variable for the side-length label x in quadrilateral ABCD *)
Variable x : R.

Hypotheses
  (* Quadrilateral ABCD, consecutive vertices, all distinct *)
  (ABCD_cyclic : [/\ A != B, B != C, C != D, D != A])
  (* Quadrilateral EFGH, consecutive vertices, all distinct *)
  (EFGH_cyclic : [/\ E != F, F != G, G != H, H != E])
  (* Side lengths for ABCD are: AB = x+1, CD = x-1 *)
  (AB_len : `|B - A| = x + 1)
  (CD_len : `|D - C| = x - 1)
  (* ABCD has same set of angles (in corresponding order) as EFGH *)
  (angleA_EQ_angleH : angle (B - A) (D - A) = angle (F - H) (E - H))
  (
####