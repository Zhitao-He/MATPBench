import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace RectangularBoxDiagonalProblem
structure Point3D where
  x : ℝ
  y : ℝ
  z : ℝ
def D : Point3D := { x := 0, y := 11, z := 0 }
def F : Point3D := { x := 15, y := 0, z := 0 }
noncomputable def dist_Point3D (p₁ p₂ : Point3D) : ℝ :=
  Real.sqrt ((p₂.x - p₁.x) ^ 2 + (p₂.y - p₁.y) ^ 2 + (p₂.z - p₁.z) ^ 2)
noncomputable def y : ℝ := dist_Point3D D F
theorem y_eq_2161 : y = 2161 := by sorry
theorem y_rounded_eq_2161 : (round (y * 100)) / 100 = 2161 := by sorry
end RectangularBoxDiagonalProblem
