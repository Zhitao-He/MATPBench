####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TriangleLengths.

Variable R : realType.

Variables F G H : R^2.

Variable x : R.

Hypothesis side_FG : `|G - F| = 9 * x - 6.
Hypothesis side_GH : `|H - G| = 7 * x + 4.
Hypothesis side_FH : `|H - F| = 17.

(* Markings in the diagram indicate FG = GH *)
Hypothesis fg_eq_gh : `|G - F| = `|H - G|.

Theorem find_GH_eq_39 : `|H - G| = 39.
Proof. Admitted.

End TriangleLengths.
####