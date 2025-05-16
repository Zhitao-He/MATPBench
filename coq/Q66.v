####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem quadrilateral_area_625 :
  forall (A B C D E : 'rV[R]_2),
    (* Points are distinct in order *)
    A != B -> B != C -> C != D -> D != A ->
    (* E is the foot of the perpendicular from D to AB *)
    (exists k : R, E = (1 - k) *m: A + k *m: B /\ [< (E - D) \perp (B - A) >]) ->
    (* AD = DC *)
    norm (D - A) = norm (D - C) ->
    (* Angle ADC = 90° *)
    [< (C - D) \perp (A - D) >] ->
    (* Angle ABC = 90° *)
    [< (C - B) \perp (A - B) >] ->
    (* DE = 25 *)
    norm (D - E) = 25 ->
    (* Area of ABCD = 625 *)
    quadrilateral_area A B C D = 625.
Proof. Admitted.
####