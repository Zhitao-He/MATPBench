import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace EuclideanGeometryProblem

-- Given triangle ABC with AC = 11, BC = 9, and ∠BCA = 28° (7π/45 radians)
def angleBCA : ℝ := 7 * Real.pi / 45  -- More direct definition of 28° in radians

-- The length of AB calculated using the cosine theorem
theorem value_of_x :
    let x := Real.sqrt (11^2 + 9^2 - 2 * 11 * 9 * Real.cos angleBCA) in
    x = Real.sqrt (202 - 198 * Real.cos angleBCA) := by
  simp [angleBCA]
  ring

end EuclideanGeometryProblem