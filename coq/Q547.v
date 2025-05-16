####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem square_diagonal_angle_45
  (A B C D : 'cV[R]_2)
  (Hsq : [/\ 
    (* ABCD is a square, listed in order A (top left), C (top right), B (bottom right), D (bottom left) *)
    norm (C - A) = 12,
    norm (B - C) = 12,
    norm (D - A) = 12,
    norm (B - D) = 12,
    (* right angles at each vertex *)
    '[C - A, D - A] = 0,
    '[B - C, A - C] = 0,
    '[D - B, C - B] = 0,
    '[A - D, B - D] = 0,
    (* orientation: ABCD is traversed counterclockwise *)
    (* A, C, B, D are distinct *)
    A != C /\ A != B /\ A != D /\ B != C /\ B != D /\ C != D
  ])
  :
  (* The angle at A between sides AB and AD and diagonal AB is 45 degrees *)
  let x := acos
####