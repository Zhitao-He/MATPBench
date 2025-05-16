####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section Circle_Chord_Secant.

Variable R : realType.

Variables A B C D E F : 'rV[R]_2.

Hypothesis on_circle : exists O r,
    O ≠ B /\ O ≠ C /\ O ≠ D /\ O ≠ E /\
    dist O B = r /\
    dist O C = r /\
    dist O D = r /\
    dist O E = r.

Hypothesis F_on_BE : between E F B.
Hypothesis F_on_CD : between C F D.

Hypothesis FB_9 : dist F B = 9.
Hypothesis EF_x : exists x : R, dist E F = x.
Hypothesis FC_6 : dist F C = 6.
Hypothesis FD_6 : dist F D = 6.

Theorem value_x_eq_4 :
  exists x : R, dist E F = x /\ x = 4.
Proof. Admitted.

End Circle_Chord_Secant.
####