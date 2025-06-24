import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
abbrev E := EuclideanSpace ℝ (Fin 2)
abbrev Point := E
def A : Point := ![0, 1]
def B : Point := ![1, 3]
def C : Point := ![5, 2]
def D : Point := ![4, 0]
noncomputable def shoelaceFormula (p1 p2 p3 p4 : Point) : ℝ :=
  let x1 := p1 0; let y1 := p1 1
  let x2 := p2 0; let y2 := p2 1
  let x3 := p3 0; let y3 := p3 1
  let x4 := p4 0; let y4 := p4 1
  (1/2 : ℝ) * abs (x1 * y2 + x2 * y3 + x3 * y4 + x4 * y1
                        - (y1 * x2 + y2 * x3 + y3 * x4 + y4 * x1))
theorem area_ABCD_is_9 : shoelaceFormula A B C D = 9 := by sorry
