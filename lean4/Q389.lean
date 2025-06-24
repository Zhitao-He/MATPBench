import Mathlib.Data.Real.Basic
import Mathlib.Data.List.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace PentagonArea
def pentagonVertices : List (ℝ × ℝ) :=
  [(-1, -1), (-3, 4), (1, 7), (6, 5), (3, -1)]
noncomputable def polygonArea (pts : List (ℝ × ℝ)) : ℝ :=
  let n := pts.length
  if n < 3 then
    0
  else
    let terms := (List.range n).map fun i =>
      let (xi, yi) := pts.getD i (0, 0)
      let (xj, yj) := pts.getD ((i + 1) % n) (0, 0)
      xi * yj - xj * yi
    abs (List.sum terms) / 2
theorem pentagon_area_is_47 : polygonArea pentagonVertices = 47 := by sorry
end PentagonArea
