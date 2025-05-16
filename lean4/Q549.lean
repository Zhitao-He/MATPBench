import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic

namespace ParallelogramProblem


abbrev Point := ℝ × ℝ


variable (Q R S P T : Point)


variable (x y : ℝ)



axiom hQT : dist Q T = 5 * y

axiom hRT : dist R T = x

axiom hST : dist S T = 2 * y + 12

axiom hTP : dist T P = 5 * x - 28



axiom h_diag_QS : dist Q T = dist T S
axiom h_diag_RP : dist R T = dist T P


theorem value_of_x : x = 7 := by sorry

end ParallelogramProblem