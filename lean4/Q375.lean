import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
abbrev Point := ℝ × ℝ
def q : Point := (0, 12)
def a : Point := (2, 12)
def b : Point := (12, 0)
def o : Point := (0, 0)
noncomputable def areaQuadrilateral (p1 p2 p3 p4 : Point) : ℝ :=
  let (x1, y1) := p1
  let (x2, y2) := p2
  let (x3, y3) := p3
  let (x4, y4) := p4
  abs (((x1 * y2 - x2 * y1) +
            (x2 * y3 - x3 * y2) +
            (x3 * y4 - x4 * y3) +
            (x4 * y1 - x1 * y4)) / 2)
theorem area_QABO : areaQuadrilateral q a b o = 84 := by
  sorry
