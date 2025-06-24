import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
open Real EuclideanGeometry
namespace Problem
abbrev PPoint := EuclideanSpace ℝ (Fin 2) 
variable (A B C : PPoint)
noncomputable def degreesToRadians (deg : ℝ) : ℝ := deg * (Real.pi / 180)
noncomputable def area_of_sector (r θ : ℝ) : ℝ := (1 / 2) * r^2 * θ
theorem sector_area_calculation
    (h_dist_BA : dist B A = 5)
    (h_angle_ABC : ∠ A B C = degreesToRadians 46) :
    area_of_sector (dist B A) (∠ A B C) = (115 * Real.pi) / 36 := by
  sorry
end Problem
