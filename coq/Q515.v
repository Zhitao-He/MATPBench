####
From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem value_of_x_in_trapezoid_FGHK :
  forall (F G H J K : R^2)
         (x : R),
    (* Points F, H, K are noncollinear; G and J are on segments FH and HK respectively *)
    colinear F H K = false ->
    between F G H ->
    between H J K ->
    (* Segment lengths according to diagram *)
    `|G - H| = 6 ->            (* length GH = 6 *)
    `|J - H| = 8 ->            (* length HJ = 8 *)
    `|F - G| = 12 ->           (* length FG = 12 *)
    `|J - K| = x - 4 ->        (* length JK = x - 4 *)
    (* FG // JK *)
    is_parallel (G - F) (J - K) ->
    is_parallel (H - G) (K - J) ->
    (* The required value *)
    x = 20.
Proof. Admitted.
####