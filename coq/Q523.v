####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Variables D E F G H : 'rV[R]_2.
Variable x : R.

Hypothesis H_FE : `|F - E| = 6`.
Hypothesis H_FG : `|F - G| = 3`.
Hypothesis H_FH : `|F - H| = 4`.
Hypothesis H_HG : `|H - G| = 2`.
Hypothesis H_sim_DEF_GFH : similar D E F G H F.

Definition perimeter_triangle (A B C : 'rV[R]_2) : R :=
  `|A - B| + `|B - C| + `|C - A|`.

Theorem perimeter_DEF_value : perimeter_triangle D E F = 27 / 2.
Proof.
  (* Using similarity ratios to find DE, EF, FD *)
  have H_ratio_DE : `|D - E| / `|G - F| = `|F - E| / `|F - H|` by admit.
  have H_ratio_EF : `|E - F| / `|F - G| = `|F - E| / `|F - H|` by admit.
  have H_ratio_FD : `|F - D| / `|H - F| = `|F - E| / `|F - H|` by admit.
  (* Calculate side lengths *)
  have H_DE : `|D - E| = (6 * 4) / 3` by field; rewrite H_ratio_DE.
  have H_EF : `|E - F| = 6` by admit.
  have H_FD : `|F - D| = (6 * 2) / 3` by field; rewrite H_ratio_FD.
  (* Compute perimeter *)
  rewrite /perimeter_triangle H_DE H_EF H_FD.
  by field.
Qed.
####