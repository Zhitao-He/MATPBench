import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
theorem angle_FOG_eq_angle_BAC
  (A B C O D E F G : Point)
  (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hO : O = circumcenter A B C)
  (hD : D ∈ segment ℝ A B)
  (hE : E ∈ segment ℝ A C)
  (h_collinear : Collinear ℝ ({O, D, E} : Set Point))
  (hF : F = midpoint ℝ B E)
  (hG : G = midpoint ℝ C D)
  (hF_ne_O : F ≠ O)
  (hG_ne_O : G ≠ O)
  : EuclideanGeometry.angle F O G = EuclideanGeometry.angle B A C := by
  sorry
