import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
namespace GeometryProblem
open EuclideanGeometry Real
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)
theorem find_angle_CBD
    (A B C D : PPoint)
    (h_C_ne_B : C ≠ B)
    (h_B_sbtw_AD : Sbtw ℝ A B D)
    (h_C_not_collinear : ¬ Collinear ℝ ({A, B, C} : Set PPoint))
    (h_angle_ABC : angle A B C = degreesToRadians 110)
    (hA_ne_B : A ≠ B) (hB_ne_D : B ≠ D) :
    angle C B D = degreesToRadians 70 := by
  sorry
end GeometryProblem
