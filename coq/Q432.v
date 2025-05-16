####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Define 2D points as pairs of real numbers *)
Definition point := (R * R)%type.

(* Area of triangle given coordinates of vertices *)
Definition triangle_area (A B C : point) : R :=
  (1%:R / 2) * `| (fst B - fst A) * (snd C - snd A) - (fst C - fst A) * (snd B - snd A) |.

Theorem triangle_midpoint_area
  (A B C : point)
  (hC_right : (fst B - fst C) * (fst A - fst C) + (snd B - snd C) * (snd A - snd C) = 0)
  (* M = midpoint of BC *)
  (M := ((fst B + fst C) / 2 , (snd B + snd C) / 2))
  (* N = midpoint of AC *)
  (N := ((fst A + fst C) / 2 , (snd A + snd C) / 2))
  (* P = midpoint of AB *)
  (P := ((fst A + fst B) / 2 , (snd A + snd B) / 2))
  (
####