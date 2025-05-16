import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace ProblemFormalization

open Real

-- Let s, r, t be points in the Euclidean plane
variable (s r t : EuclideanSpace ℝ (Fin 2))

-- Hypotheses:
axiom hSR : dist s r = 5
axiom hTR : dist t r = 3
axiom hTS : dist t s = 4
axiom hRT⊥ST : angle r t s = π / 2

-- Theorem: The value of cos(angle s r t) is 3 / 5
theorem cos_srt_is_three_fifths : Real.cos (angle s r t) = (3 / 5 : ℝ) := by sorry

end ProblemFormalization