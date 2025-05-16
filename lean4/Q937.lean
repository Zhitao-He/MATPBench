import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
open EuclideanGeometry

open scoped Real


abbrev P2 := EuclideanSpace ℝ (Fin 2)


noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)
noncomputable def radToDeg (r : ℝ) : ℝ := r * (180 / Real.pi)

namespace Problem


variable (P A B C Y : P2)
variable (r x : ℝ)


variable (hA : dist A P = r)
variable (hB : dist B P = r)
variable (hC : dist C P = r)
variable (hY : dist Y P = r)
variable (hr_pos : r > 0)


variable (h_angle_BPY : ∠ B P Y = degToRad (3 * x))
variable (h_angle_PAC : ∠ P A C = degToRad (2 * x + 15))
variable (h_angle_PCY : ∠ P C Y = degToRad (3 * x - 3))


noncomputable def measureOfArcPCYInDegrees : ℝ := radToDeg (∠ Y P C)


theorem target_arc_measure_is_60 : measureOfArcPCYInDegrees = 60 := by
  sorry

end Problem