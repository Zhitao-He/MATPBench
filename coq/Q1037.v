####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryTheorem.

Variable P : Type.
Variable Point : P -> Prop.
Variable on_circle : P -> P -> Prop.
Variable between : P -> P -> P -> Prop.
Variable collinear : P -> P -> P -> Prop.
Variable incenter : P -> P -> P -> P.
Variable line_through : P -> P -> P -> Prop.
Variable intersection : (P -> Prop) -> (P -> Prop) -> P -> Prop.

Variables A B C O P_center : P.
Hypotheses
  (HneqAB : A <> B)
  (HneqAC : A <> C)
  (HneqBC : B <> C)
  (HcircleP : forall X, on_circle P_center X <-> X = A \/ X = B \/ X = C)
  (HcircleO : on_circle O A /\ on_circle O B).

(* Circles O passes through A,B, meets AC again at E (E ≠ A) and BC again at F (F ≠ B) *)
Variables E F : P.
Hypotheses
  (H_E_on_O : on_circle O E)
  (H_F_on_O : on_circle O F)
  (H_E_on_AC : collinear A E C)
  (H_E_not_A : E <> A)
  (H_F_on_BC : collinear B F C)
  (H_F_not_B : F <> B)
  (H_E_diff_B : E <> B)
  (H_F_diff_A : F <> A)
  (H_E_diff_C : E <> C)
  (H_F_diff_C : F <> C).

(* D is intersection of lines AF and BE *)
Variable D : P.
Hypothesis
  (H_D_on_AF : collinear A F D)
  (H_D_on_BE : collinear B E D).

(* OD meets (P) again at K (K ≠ O, K ≠ D) *)
Variable K : P.
Hypotheses
  (H_K_on_OD : collinear O D K)
  (H_K_on_P : on_circle P_center K)
  (H_K_diff_O : K <> O)
  (H_K_diff_D : K <> D)
  (H_K_diff_A : K <> A)
  (H_K_diff_B : K <> B)
  (H_K_diff_C : K <> C).

Theorem triangles_KBE_and_KAF_same_incenter :
  incenter K B E = incenter K A F.
Proof. Admitted.

End GeometryTheorem.
####