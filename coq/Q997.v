####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Excircle_Bisector_Theorem.

Variable R : realType.
Variable plane : euclideanPlaneType R.

Variables A B C : plane.
Hypothesis noncollinear_ABC : ~ colinear A B C.

(* Define excircle P tangent to the extension of CB at D and to the extension of CA at E *)
Variable P : plane.
Variables D E : plane.
Hypothesis excircle_P_tangent_CB_at_D : tangent_at P (line C B) D /\ on_line D (line C B).
Hypothesis excircle_P_tangent_CA_at_E : tangent_at P (line C A) E /\ on_line E (line C A).

(* Define excircle Q tangent to the extension of BC at F and to the extension of BA at G *)
Variable Q : plane.
Variables F G : plane.
Hypothesis excircle_Q_tangent_BC_at_F : tangent_at Q (line B C) F /\ on_line F (line B C).
Hypothesis excircle_Q_tangent_BA_at_G : tangent_at Q (line B A) G /\ on_line G (line B A).

(* P is the center of the excircle opposite A, Q is the center of the excircle opposite C *)
Hypothesis P_excenter_A : excenter_opposite P A B C.
Hypothesis Q_excenter_C : excenter_opposite Q C A B.

(* DE and FG intersect segment PQ at points M and N respectively *)
Variable M N : plane.
Hypothesis M_on_DE : on_line M (line D E).
Hypothesis M_on_PQ : on_line M (line P Q).
Hypothesis N_on_FG : on_line N (line F G).
Hypothesis N_on_PQ : on_line N (line P Q).

(* Let L = intersection of lines BN and CM *)
Variable L : plane.
Hypothesis L_on_BN : on_line L (line B N).
Hypothesis L_on_CM : on_line L (line C M).

Theorem excircle_bisector_theorem :
  bisects_angle (line A L) (angle_at A B C).
Proof. Admitted.

End Excircle_Bisector_Theorem.
####