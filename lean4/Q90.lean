import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt

namespace SkaterProblem

-- Constants for the problem
def allieSpeed : ℝ := 8
def billieSpeed : ℝ := 7
def distAB : ℝ := 100
def angleAllie : ℝ := Real.pi / 3   -- 60 degrees in radians

-- Let t be the meeting time. Position of Allie after t seconds:
-- A0 = (0,0), direction (cos(angleAllie), sin(angleAllie))
def alliePos (t : ℝ) : ℝ × ℝ :=
  (allieSpeed * t * Real.cos angleAllie, allieSpeed * t * Real.sin angleAllie)

-- Billie starts at (distAB, 0), unknown direction, but for earliest meeting, Billie heads straight to the moving Allie.
-- Instead, from symmetry, the point of minimal meeting time satisfies (by Law of Cosines):
-- |Billie trajectory| = |Allie trajectory| = t * billieSpeed,
-- Let the meeting point M = (x, y) = alliePos t = billie's position at time t.
-- The distance between (x,y) and (distAB, 0) is t*billieSpeed:
-- ((x - distAB)^2 + y^2) = (billieSpeed * t)^2
-- But (x, y) = (allieSpeed * t * cos(angleAllie), allieSpeed * t * sin(angleAllie))

-- Compute as a quadratic in t:

def quadraticA : ℝ := allieSpeed^2 - billieSpeed^2         -- 8^2 - 7^2 = 15
def quadraticB : ℝ := -2 * allieSpeed * distAB * Real.cos angleAllie  -- -2*8*100*0.5 = -800
def quadraticC : ℝ := distAB^2                             -- 10000

def discriminant : ℝ := quadraticB^2 - 4 * quadraticA * quadraticC   -- 640000 - 600000 = 40000

axiom discriminant_nonneg : discriminant ≥ 0 := by sorry
axiom quadraticA_nonzero : quadraticA ≠ 0 := by sorry

-- The quadratic formula: t = (-B ± sqrt(D)) / (2A)
def t1 : ℝ :=
  ((-quadraticB) + Real.sqrt discriminant) / (2 * quadraticA)

def t2 : ℝ :=
  ((-quadraticB) - Real.sqrt discriminant) / (2 * quadraticA)

axiom t1_pos : t1 > 0 := by sorry
axiom t2_pos : t2 > 0 := by sorry

def earliestMeetingTime : ℝ := min t1 t2

-- The distance Allie skates before meeting Billie
def allieDistance : ℝ := allieSpeed * earliestMeetingTime

-- The answer should be 160
theorem allieSkatingDistance_is_160 : allieDistance = 160 := by
  sorry

end SkaterProblem