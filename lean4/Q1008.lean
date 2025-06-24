import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Sphere.SecondInter
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
theorem fo_perp_bc
  (A B C D E F O : Point)
  (ω : EuclideanGeometry.Sphere Point)
  (h_noncollinear : ¬Collinear ℝ ({A, B, C} : Set Point))
  (hD : D = midpoint ℝ B C)
  (hO : O = ω.center)
  (hA_on_ω : A ∈ ω)
  (hC_on_ω : C ∈ ω)
  (hA_ne_D : A ≠ D)
  (h_tangent : inner ℝ (A -ᵥ ω.center) (D -ᵥ A) = 0)
  (hE_on_ω : E ∈ ω)
  (hE_ne_A : E ≠ A)
  (hE_on_BA : E ∈ line[ℝ, B, A])
  (hA_between_B_E : Wbtw ℝ B A E)
  (hF_on_CE : F ∈ line[ℝ, C, E])
  (hF_on_DA : F ∈ line[ℝ, D, A])
  (hF_ne_O : F ≠ O)
  : inner ℝ (F -ᵥ O) (B -ᵥ C) = 0 := by
  sorry
