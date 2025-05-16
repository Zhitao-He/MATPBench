####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit Defensive.

Local Open Scope ring_scope.

Section perpendicular_feet.

Variable R : realType.
Variables A B C D E F : R * R.
Hypotheses
  HE : exists k1, E = ((1 - k1) *: B + k1 *: A) /\n       (D.1 - E.1) * (A.1 - B.1) + (D.2 - E.2) * (A.2 - B.2) = 0,
  HF : exists k2, F = ((1 - k2) *: B + k2 *: A) /
       (C.1 - F.1) * (A.1 - B.1) + (C.2 - F.2) * (A.2 - B.2) = 0,
  HDCE_parallel :
    (D.2 - E.2) * (C.1 - A.1) = (D.1 - E.1) * (C.2 - A.2).

Theorem perpendicular_feet_parallelism :
  True.
Proof.
  (* proof omitted *)
Admitted.

End perpendicular_feet.
####