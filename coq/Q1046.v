####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry euclidean.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometryProblem.

Variable R : realType.

(* Points: A, B, C are non-collinear and define triangle ABC *)
Variables A B C : 'rV[R]_2.
Hypothesis triangle_ABC : ~~ collinear [::A;B;C].

(* O is the circumcenter of triangle ABC *)
Variable O : 'rV[R]_2.
Hypothesis O_circum : is_circumcenter O A B C.

(* D is an interior point of triangle ABC *)
Variable D : 'rV[R]_2.
Hypothesis D_interior : in_triangle D A B C.

(* Angle conditions: ∠DAB = ∠DBC and ∠DAC = ∠DCB *)
Hypothesis angle_DAB_eq_DBC : angle_vec (D - A) (B - A) = angle_vec (D - B) (C - B).
Hypothesis angle_DAC_eq_DCB : angle_vec (D - A) (C - A) = angle_vec (D - C) (B - C).

(* E is the midpoint of AD *)
Variable E : 'rV[R]_2.
Hypothesis E_midpoint : E = (A + D) / 2.

(* F is the intersection of EF (perpendicular to AD) and the extension of CB *)
Variable F : 'rV[R]_2.
Hypothesis EF_perpendicular_AD : (F - E) \perp (A - D).
Hypothesis F_on_extension_CB : exists l : R, F = B + l * (C - B) /\ l > 1.

(* Distinctness of points where needed *)
Hypothesis A_neq_D : A != D.
Hypothesis E_neq_F : E != F.

(* Goal: Prove that ∠AFD = 2∠OFC *)
Theorem geometry_AFD_2_OFC :
  angle_vec (A - F) (D - F) = 2 * angle_vec (O - F) (C - F).
Proof. Admitted.

End GeometryProblem.
####