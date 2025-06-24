import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry Affine AffineSubspace
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (A B C D E F G O : P)
variable (r : ℝ)
variable (ω : EuclideanGeometry.Sphere P)
axiom h_center_ω : ω.center = O
axiom h_radius_ω : ω.radius = r
axiom h_r_pos : 0 < r
axiom hA_on_ω : A ∈ ω
axiom hB_on_ω : B ∈ ω
axiom hC_on_ω : C ∈ ω
axiom hA_ne_B : A ≠ B
axiom hB_ne_C : B ≠ C
axiom hA_ne_C : A ≠ C
axiom h_noncollinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set P)
axiom hD_midpoint_BC : D = midpoint ℝ B C
axiom hADE_collinear : Collinear ℝ ({A, D, E} : Set P)
axiom hE_on_ω : E ∈ ω
axiom hE_ne_A : E ≠ A
axiom hE_ne_F : E ≠ F
axiom hEF_parallel_BC : (affineSpan ℝ ({E, F} : Set P)) ∥ (affineSpan ℝ ({B, C} : Set P))
axiom hF_on_ω : F ∈ ω
axiom hG_on_AE : G ∈ (affineSpan ℝ ({A, E} : Set P) : Set P)
axiom hC_ne_G : C ≠ G
axiom hCG_perp_AC : True
axiom hA_ne_G : A ≠ G
axiom hF_ne_G : F ≠ G
theorem inscribed_triangle_angle_equality
  (A B C D E F G O : P)
  (r : ℝ)
  (ω : EuclideanGeometry.Sphere P)
  (h_center_ω : ω.center = O)
  (h_radius_ω : ω.radius = r)
  (h_r_pos : 0 < r)
  (hA_on_ω : A ∈ ω)
  (hB_on_ω : B ∈ ω)
  (hC_on_ω : C ∈ ω)
  (hA_ne_B : A ≠ B)
  (hB_ne_C : B ≠ C)
  (hA_ne_C : A ≠ C)
  (h_noncollinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set P))
  (hD_midpoint_BC : D = midpoint ℝ B C)
  (hADE_collinear : Collinear ℝ ({A, D, E} : Set P))
  (hE_on_ω : E ∈ ω)
  (hE_ne_A : E ≠ A)
  (hE_ne_F : E ≠ F)
  (hEF_parallel_BC : (affineSpan ℝ ({E, F} : Set P)) ∥ (affineSpan ℝ ({B, C} : Set P)))
  (hF_on_ω : F ∈ ω)
  (hG_on_AE : G ∈ (affineSpan ℝ ({A, E} : Set P) : Set P))
  (hC_ne_G : C ≠ G)
  (hCG_perp_AC : True)
  (hA_ne_G : A ≠ G)
  (hF_ne_G : F ≠ G) :
  EuclideanGeometry.angle A G C = EuclideanGeometry.angle F G C := by
  sorry
