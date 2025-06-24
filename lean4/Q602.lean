import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem cos_angle_TSR_eq_four_fifths
    (S R T : PPoint)
    (hSR : dist S R = 5)
    (hTR : dist T R = 3)
    (hTS : dist T S = 4)
    (hPerpendicular : EuclideanGeometry.angle S T R = Real.pi / 2) :
    Real.cos (EuclideanGeometry.angle T S R) = (4 : ℝ) / 5 := by
  sorry
