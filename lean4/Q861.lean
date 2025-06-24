import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Sqrt
open Real EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
section
variable (A B C D : P)
variable (hAC : dist A C = 13)
variable (hCD : dist C D = 6)
variable (hDB : dist D B = 29)
variable (h_angle_ADC : EuclideanGeometry.angle A D C = π / 2)
theorem find_area_of_triangle_ADB :
  (1 / 2 : ℝ) * dist D B * dist A D = 29 * Real.sqrt 133 / 2 := by sorry
end
