import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace ParallelogramProblem
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)
theorem find_WZ_length (W X Y Z : P)
    (h_parallelogram : Z -ᵥ W = Y -ᵥ X) 
    (h_YX : dist Y X = 24)
    (h_ZY : dist Z Y = 28)
    (h_angle : EuclideanGeometry.angle X W Z = degreesToRadians 105)
    : dist W Z = 24 := by
  sorry
end ParallelogramProblem
