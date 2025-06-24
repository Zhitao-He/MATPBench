import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real
open scoped EuclideanGeometry
noncomputable section
abbrev Point := Fin 2 → ℝ
theorem perimeter_of_triangle_MNC_is_60
  [InnerProductSpace ℝ (Fin 2 → ℝ)]
  (M N C D : Point)
  (r : ℝ)
  (hNC : dist N C = 10)
  (hND : dist N D = 2)
  (h_r_pos : 0 < r)
  (hC_on_circle : dist M C = r)
  (hD_on_circle : dist M D = r)
  (h_MCN_is_right_angle : ∠ M C N = (Real.pi / 2))
  (h_collinear_NDM : sorry) :
  dist M N + dist N C + dist C M = 60 := by
  sorry
end
