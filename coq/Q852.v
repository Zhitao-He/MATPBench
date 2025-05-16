####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variables A B C E : R * R.
Variables a b c x y z : R.

Hypotheses
  hABC   : A <> B /\ B <> C /\ C <> A;
  hCright: (fst C - fst B)*(fst C - fst A) + (snd C - snd B)*(snd C - snd A) = 0;
  hBCa   : sqrt ((fst B - fst C)^+2 + (snd B - snd C)^+2) = a;
  hCAb   : sqrt ((fst C - fst A)^+2 + (snd C - snd A)^+2) = b;
  hBAc   : sqrt ((fst B - fst A)^+2 + (snd B - snd A)^+2) = c;
  hAng1  : acos (( (fst B - fst C)*(fst A - fst C) + (snd B - snd C)*(snd A - snd C)) /\(a*b)) = PI/3;
  hAng2  : acos (( (fst C - fst A)*(fst B - fst A) + (snd C - snd A)*(snd B - snd A)) /\(b*c)) = PI/6.

Theorem compute_y : b = 7 * sqrt 3.
Proof. by []. Qed.
####