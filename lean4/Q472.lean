import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace MarbleInCone


def marbleRadius : ℝ := 15


noncomputable def coneApexAngle : ℝ := Real.pi / 3


noncomputable def coneSemiVerticalAngle : ℝ := coneApexAngle / 2


noncomputable def yCoordMarbleCenter : ℝ := marbleRadius / Real.sin coneSemiVerticalAngle


noncomputable def holeDepth : ℝ := yCoordMarbleCenter + marbleRadius


theorem holeDepth_eq_45 : holeDepth = 45 := by
  sorry

end MarbleInCone
