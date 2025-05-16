####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem right_triangle_cos_tan :
  forall (A B C : R^2),
    (* Right angle at A *)
    [/\ 
      (* A, B, C are non-collinear *)
      A <> B, A <> C, B <> C /\
      (* Right angle at A, i.e., <BAC = 90 degrees *)
      cos_angle B A C = 0 /\
      (* Length of BC is 10 *)
      norm (C - B) = 10 /\
      (* cos B = 6 / 10 *)
      (let BA := A - B in let BC := C - B in
         BC != 0 /\ BA != 0 /\ cos_angle C B A = 6 / 10) 
    ] ->
    (* tan C = 3 / 4 *)
    let AB := B - A in let AC := C - A in
      AC != 0 /\ AB != 0 ->
      tan_angle B C A = 3 / 4.
Proof. Admitted.
####