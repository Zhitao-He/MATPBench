####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Tangent_Symmetry_Theorem.

Variable R : realType.

Variables O P C D E : 'rV[R]_2.

Hypotheses
  (HOCP : norm (O - C) = norm (O - D)) (* C and D are on circle O *)
  (HCD_neq : C <> D)
  (HPC_tan : ([P;C] \is_tangent_to_circle (O, norm (O - C))))
  (HPD_tan : ([P;D] \is_tangent_to_circle (O, norm (O - D))))
  (E_on_arc : (E \is_on_minor_arc C D O))
  (HE_tan : ([E] \is_tangent_to_circle (O, norm (O - C))))
  (A : 'rV[R]_2)
  (B : 'rV[R]_2)
  (HA_on : [A;E] meets [P;C] = A /\ [A;E] meets [P;D] = B)
  (A_on_PC : colinear P C A)
  (B_on_PD : colinear P D B)
  (A_on_E_tan : colinear E A C)
  (B_on_E_tan : colinear E B D)
  (N : 'rV[R]_2)
  (HN : N = intersection_pt (O,E) (C,D))
  (M : 'rV[R]_2)
  (HM : M = intersection_pt (P,N) (A,B))
.

Theorem tangent_symmetry_MA_MB :
  norm (M - A) = norm (M - B).
Proof. Admitted.

End Tangent_Symmetry_Theorem.
####