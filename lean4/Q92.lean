import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def triangleArea (A B C : Point) : ℝ :=
  (1/2 : ℝ) * abs ((B -ᵥ A) 0 * (C -ᵥ A) 1 - (B -ᵥ A) 1 * (C -ᵥ A) 0)
theorem triangleAreaFromCevianSegments
  (A B C P D E F : Point)
  (h_P_is_inside_triangle : P ∈ interior (convexHull ℝ ({A, B, C} : Set Point)))
  (h_D_on_BC : D ∈ segment ℝ B C)
  (h_E_on_AC : E ∈ segment ℝ A C)
  (h_F_on_AB : F ∈ segment ℝ A B)
  (h_P_on_AD : P ∈ segment ℝ A D)
  (h_P_on_BE : P ∈ segment ℝ B E)
  (h_P_on_CF : P ∈ segment ℝ C F)
  (h_dist_AP : dist A P = 6)
  (h_dist_BP : dist B P = 9)
  (h_dist_PD : dist P D = 6)
  (h_dist_PE : dist P E = 3)
  (h_dist_CF : dist C F = 20)
  (h_triangle_ABC_nondegenerate : ¬Collinear ℝ ({A, B, C} : Set Point)) :
  triangleArea A B C = 108 := by
  sorry
