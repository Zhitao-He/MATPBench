import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (deg : ℝ) : ℝ := deg / 180 * Real.pi
theorem problem_statement
  (b c h d i : PPoint)
  (h_angle_bch : EuclideanGeometry.angle b c h = degToRad 23)
  (h_angle_hbc : EuclideanGeometry.angle h b c = degToRad 32)
  (h_angle_hid : EuclideanGeometry.angle h i d = degToRad 22)
  (h_sbtw_chd : Sbtw ℝ c h d)
  (h_noncollinear_bch : ¬ Collinear ℝ {b, c, h}) :
  EuclideanGeometry.angle b h d = degToRad 55 := by
  sorry
