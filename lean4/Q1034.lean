import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Convex.Side
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
theorem incenter_circumcenter_perpendicular_implies_side_relation
  (A B C O I : Point)
  (h_triangle : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hO : O = circumcenter A B C)
  (hI_bisects_angle_A : EuclideanGeometry.angle B A I = EuclideanGeometry.angle I A C)
  (hI_bisects_angle_B : EuclideanGeometry.angle A B I = EuclideanGeometry.angle I B C)
  (hI_bisects_angle_C : EuclideanGeometry.angle B C I = EuclideanGeometry.angle I C A)
  (hI_in_interior_AB_C : (line[ℝ, A, B]).WSameSide I C)
  (hI_in_interior_BC_A : (line[ℝ, B, C]).WSameSide I A)
  (hI_in_interior_CA_B : (line[ℝ, C, A]).WSameSide I B)
  (h_OI_perp_AI : inner ℝ (O -ᵥ I) (A -ᵥ I) = (0 : ℝ))
  : dist A B + dist A C = 2 * dist B C := by
  sorry
