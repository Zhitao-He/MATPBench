import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (θ_deg : ℝ) : ℝ := θ_deg * (Real.pi / 180)
theorem find_value_of_y_from_geometry
  (A G I D H M K O : P)
  (x y : ℝ)
  (h1 : EuclideanGeometry.angle G I D = degToRad (4 * x))
  (h2 : EuclideanGeometry.angle H I M = degToRad (8 * x - 12))
  (h3 : EuclideanGeometry.angle K H A = degToRad (6 * y + 10))
  (hx1 : 0 < 4 * x) (hx2 : 4 * x < 180)
  (hx3 : 0 < 8 * x - 12) (hx4 : 8 * x - 12 < 180)
  (hy1 : 0 < 6 * y + 10) (hy2 : 6 * y + 10 < 180)
  (h_parallel : (affineSpan ℝ ({H, O} : Set P)).direction = (affineSpan ℝ ({I, M} : Set P)).direction)
  : y = 79 / 3 := by
  sorry
