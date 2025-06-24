import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
open scoped RealInnerProductSpace
open Affine AffineSubspace
abbrev P := EuclideanSpace ℝ (Fin 2)
def linesConcurrent (l₁ l₂ l₃ : AffineSubspace ℝ P) : Prop :=
  ∃ p : P, p ∈ l₁ ∧ p ∈ l₂ ∧ p ∈ l₃
theorem inscribed_quadrilateral_concurrency
  (A B C D E F G H I : P)
  (circleO : Sphere P)
  (hA_on_O : A ∈ circleO) (hB_on_O : B ∈ circleO)
  (hC_on_O : C ∈ circleO) (hD_on_O : D ∈ circleO)
  (hA_ne_B : A ≠ B) (hB_ne_C : B ≠ C) (hC_ne_D : C ≠ D) (hD_ne_A : D ≠ A)
  (hA_ne_C : A ≠ C) (hB_ne_D : B ≠ D)
  (hE_on_AB : True)
  (hE_on_DC : True)
  (hAB_DC_not_parallel : True)
  (hF_on_AD : True)
  (hF_on_BC : True)
  (hAD_BC_not_parallel : True)
  (hEFC_noncollinear : ¬ Collinear ℝ ({E, F, C} : Set P))
  (hG_on_O : G ∈ circleO)
  (hG_on_circumEFC : True)
  (hG_ne_C : G ≠ C)
  (hA_ne_G : A ≠ G)
  (hE_ne_F : E ≠ F)
  (hH_on_AG : True)
  (hH_on_EF : True)
  (hAG_EF_not_parallel : True)
  (hH_ne_C : H ≠ C)
  (hI_on_O : I ∈ circleO)
  (hI_on_HC : True)
  (hI_ne_C : I ≠ C)
  (hA_ne_I : A ≠ I)
  : linesConcurrent (sorry) (sorry) (sorry) :=
by
  sorry
