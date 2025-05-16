####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section CircleDiagram.

Variable R : realType.

Variables A B C D E F G H J K : 'rV[R]_2.

Hypothesis circle_center : forall P : 'rV[R]_2,
  (exists r : R, r > 0 /\ (norm (P - D) = r <-> P \in [set B; C; J])).

Hypothesis A_on_circle : norm (A - D) = norm (B - D).

Hypothesis B_on_circle : norm (B - D) = norm (C - D).

Hypothesis C_on_circle : norm (C - D) = norm (J - D).

Hypothesis square_vertices :
  F - A = G - F /\ G - H = H - C /\ F - H = A - C /\ G - C = F - B.

Hypothesis points_distinct :
  A <> B /\ B <> C /\ C <> A /\ D <> A /\ D <> B /\ D <> C.

Theorem angle_ABC_right :
  angleR (A - B) (C - B) = PI / 2.
Proof. Admitted.

End CircleDiagram.
####