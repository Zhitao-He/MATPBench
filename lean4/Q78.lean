import Mathlib.Data.Real.Basic

namespace FlagProblem


variable (s l : ℝ) (h_s_pos : 0 < s) (h_l_pos : 0 < l) (h_s_lt_l : s < l)


noncomputable def lambda (s l : ℝ) : ℝ := s / l


variable (h_geom : l = 3 * s)


theorem valueOf360TimesLambda :
    360 * lambda s l = 120 := by
  sorry

end FlagProblem
