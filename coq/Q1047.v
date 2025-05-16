####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry angle order.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Inscribed_Quadrilateral_Theorem.

Variable R : realType.
Let Point := R^2.

Variables (A B C D E F G O : Point).

Hypotheses
  (Hcircle : forall P : Point, (P = A \/ P = B \/ P = C \/ P = D) -> norm (P - O) = norm (A - O))
  (Hcyclic : & [A; B; C; D] is_cyclic4) (* A, B, C, D concyclic *)
  (HinsideE : inside_quadrilateral E A B C D)
  (H1 : angle E A B = angle E C D)
  (H2 : angle E B A = angle E D C)
  (HFG : collinear F E G)
  (Hbisect : is_angle_bisector (line_through F G) E B C)
  (HF_on_circle : norm (F - O) = norm (A - O))
  (HG_on_circle : norm (G - O) = norm (A - O))
  (F_neq_G : F <> G)
  (F_neq_E : F <> E)
  (G_neq_E : G <> E)
  (between_F_E_G : between F E G).

Theorem inscribed_quadrilateral_equal_chords :
  norm (E - F) = norm (E - G).
Proof. Admitted.

End Inscribed_Quadrilateral_Theorem.
####