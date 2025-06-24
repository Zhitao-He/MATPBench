import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith 
variable (L C R M N : Type) 
noncomputable def measureAngleLCR (x : ℝ) : ℝ := 3 * x + 5
noncomputable def measureAngleRCM (x : ℝ) : ℝ := x - 1
noncomputable def measureAngleMCN : ℝ := 60 
theorem angle_LCR_value (x : ℝ) 
  (h_LCR_RCM_supplementary : measureAngleLCR x + measureAngleRCM x = 180)
  (_ : measureAngleLCR x > 0)
  (_ : measureAngleRCM x > 0)
  : measureAngleLCR x = 137 := by
  have h1 : 3 * x + 5 + (x - 1) = 180 := h_LCR_RCM_supplementary
  have h2 : 4 * x + 4 = 180 := by
    calc
      4 * x + 4 = (3 * x + x) + (5 - 1) := by linarith 
      _ = 3 * x + 5 + (x - 1) := by linarith 
      _         = 180                  := h1
  have h3 : 4 * x = 176 := by
    linarith [h2] 
  have h4 : x = 44 := by
    linarith [h3] 
  calc
    measureAngleLCR x = 3 * x + 5 := rfl
    _                 = 3 * 44 + 5 := by rw [h4]
    _                 = 132 + 5    := by norm_num
    _                 = 137        := by norm_num
