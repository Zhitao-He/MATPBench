import Mathlib.Data.Real.Basic
section GeometryProblem
def areaBLAN : ℝ := 72
def areaCDEF : ℝ := 50
def lengthBN : ℝ := 6
variable (x : ℝ)
axiom hsim : areaCDEF / areaBLAN = (x / lengthBN) ^ 2
theorem value_of_x_is_5 : x = 5 := by
  sorry
end GeometryProblem