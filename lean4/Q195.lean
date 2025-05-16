import Mathlib.Data.Real.Basic

namespace StreetLampProblem


def personHeight : ℝ := 1.5


def distLampToPerson : ℝ := 25.0


def personShadowLength : ℝ := 30.0


noncomputable def calculatedLampHeight : ℝ :=
  personHeight * (distLampToPerson + personShadowLength) / personShadowLength


theorem lampHeight_is_9m : calculatedLampHeight = 9.0 := by
  sorry

end StreetLampProblem
