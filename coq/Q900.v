####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

(* Points *)
Variables A B C D E F : 'rV[R]_2.

Hypotheses
  (* Parallelogram BCFD *)
  (parallelogram_BCFD : (B - C = F - D) /\ (B - F = C - D))
  (* Parallelogram BCDE *)
  (parallelogram_BCDE : (B - C = E - D) /\ (B - E = C - D))
  (* Segments lengths from diagram *)
  (dist_AB : `|A - B| = 6)
  (dist_AF : `|A - F| = 8)
  (dist_BF : `|B - F| = 6)
  (dist_CF : `|C - F| = x)
  (dist_CD : `|C - D| = y)
  (dist_DE : `|D - E| = 2 * y - 3)
  (dist_FE : `|F - E| = x + 10 / 3).

Theorem value_length_CD : y = 9.
Proof. Admitted.
####