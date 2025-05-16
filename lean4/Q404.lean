import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
open EuclideanGeometry

abbrev E := EuclideanSpace ℝ (Fin 2)


noncomputable def heptagonVertex (k : Fin 7) : E :=
  ![Real.cos (2 * Real.pi * (k : ℝ) / 7), Real.sin (2 * Real.pi * (k : ℝ) / 7)]


noncomputable def angle_x_rad : ℝ := angle (heptagonVertex 0) (heptagonVertex 6) (heptagonVertex 2)


noncomputable def radToDeg (r : ℝ) : ℝ := r * 180 / Real.pi


theorem angle_x_measure_in_degrees : radToDeg angle_x_rad = 360 / 7 := by sorry


theorem angle_x_measure_in_radians : angle_x_rad = 2 * Real.pi / 7 := by sorry
