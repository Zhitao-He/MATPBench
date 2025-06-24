import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
set_option autoImplicit false
open Real EuclideanGeometry
noncomputable section
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (deg : ℝ) : ℝ := deg * (Real.pi / 180)
noncomputable def areaOfParallelogramFromAdjacentSidesAtC
  (A C B : PPoint) : ℝ :=
  dist C A * dist C B * Real.sin (EuclideanGeometry.angle A C B)
theorem find_area_parallelogram_ACBD
    (A B C D E : PPoint)
    (h_CB_dist : dist C B = 20)
    (h_EC_dist : dist E C = 24)
    (h_angle_CAE : EuclideanGeometry.angle C A E = degToRad 37)
    (h_parallelogram_ACBD : D -ᵥ A = B -ᵥ C)
    (h_AE_perp_CE : EuclideanGeometry.angle A E C = Real.pi / 2)
    (h_EC_perp_CB : EuclideanGeometry.angle E C B = Real.pi / 2)
    : areaOfParallelogramFromAdjacentSidesAtC A C B = 480 := by
  sorry
end
