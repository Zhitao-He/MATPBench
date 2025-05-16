####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables A B C D E F : 'rV[R]_2.

Variable x : R.

Hypothesis h_BC : `|B - C| = 5.
Hypothesis h_AB : `|A - B| = x.
Hypothesis h_AC : exists l : R, `|A - C| = l.
Hypothesis h_DE : `|D - E| = x - 4.
Hypothesis h_EF : `|E - F| = 3.
Hypothesis h_FD : exists m : R, `|F - D| = m.
Hypothesis h_congr : [/\ angle B A C = angle E D F, angle A B C = angle D E F & angle A C B = angle D F E].

Theorem length_DE_is_6 : `|D - E| = 6.
Proof. Admitted.
####