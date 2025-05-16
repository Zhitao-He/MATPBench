####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryAECE.

Variable R : realType.
Implicit Types (A B C D E O : 'e2[R]).

Theorem AE_CE_squared_sum
  (A B C D E O : 'e2[R])
  (h_circ : circle_center O A B C)
  (h_D_perp : orthogonal (A - D) (D - B))
  (h_O_perp : orthogonal (E - O) (O - B))
  (h_E_on_AB : foot_point E A C O)  (* E is the foot of the perpendicular from O to AC *)
  (h_AD : midpoint D A B)
  (h_perp_len : `|E - O| = 1)
  :
  (`|A - E| ^+ 2 + `|C - E| ^+ 2 = 2)%R.
Proof. Admitted.

End GeometryAECE.
####