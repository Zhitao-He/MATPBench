import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
namespace ProblemGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
def f1 (x : ℝ) : ℝ := -2 * x + 8
noncomputable def f2 (x : ℝ) : ℝ := (1 / 2 : ℝ) * x - 2
def p1 : P := ![4, 0]
def xCoordLine3 : ℝ := -2
def p2 : P := ![xCoordLine3, f1 xCoordLine3]
noncomputable def p3 : P := ![xCoordLine3, f2 xCoordLine3]
noncomputable def area_triangle (A B C : P) : ℝ :=
  (1/2 : ℝ) * abs ((B 0 - A 0) * (C 1 - A 1) - (C 0 - A 0) * (B 1 - A 1))
theorem triangle_area_is_45 : area_triangle p1 p2 p3 = 45 := by sorry
end ProblemGeometry
