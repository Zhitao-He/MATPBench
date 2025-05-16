####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section AngleBisection.

Variable R : realType.
Let point := 'rV[R]_2.

Variables O P A B C D E F : point.

Hypotheses
  (O_center : forall r : R, 0 < r ->
    forall X, X != O ->
      (distance O X = r <-> on_circle O r X))
  (r : R)
  (r_pos : 0 < r)
  (A_on_circle : on_circle O r A)
  (B_on_circle : on_circle O r B)
  (C_on_circle : on_circle O r C)
  (D_on_circle : on_circle O r D)
  (E_on_circle : on_circle O r E)
  (E_neq_C : E != C)
  (A_tangent : tangent P A O r)
  (B_tangent : tangent P B O r)
  (PA_tan : collinear P A O = false /\ distance O A = r)
  (PB_tan : collinear P B O = false /\ distance O B = r)
  (P_outside : ~~ on_circle O r P)
  (PCD_collinear : collinear P C D)
  (COE_collinear : collinear C O E)
  (E_other : E != C /\ on_circle O r E /\ collinear C O E)
  (P_NEQ_A : P != A)
  (P_NEQ_B : P != B)
  (P_NEQ_C : P != C)
  (P_NEQ_D : P != D)
  (P_NEQ_E : P != E)
  (A_NEQ_B : A != B)
  (A_NEQ_C : A != C)
  (A_NEQ_D : A != D)
  (A_NEQ_E : A != E)
  (B_NEQ_C : B != C)
  (B_NEQ_D : B != D)
  (B_NEQ_E : B != E)
  (C_NEQ_D : C != D)
  (C_NEQ_E : C != E)
  (D_NEQ_E : D != E)
  (F_on_AC : exists la, between 0 la 1 /\ F = A +m ((C -m A) *m la))
  (F_on_EB : exists mu, between 0 mu 1 /\ F = E +m ((B -m E) *m mu))
.

Theorem angle_bisector_CD_A_D_F :
  angle_bisector_at D C D F A D F.
Proof. Admitted.

End AngleBisection.
####