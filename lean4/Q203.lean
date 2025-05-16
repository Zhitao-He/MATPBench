import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic

namespace BridgeProblem

-- The Euclidean plane ℝ².
abbrev P := EuclideanSpace ℝ (Fin 2)

-- The origin O = (0, 0).
def O : P := ![0, 0]

-- The radius of the semicircle.
def r : ℝ := 4

-- A = (-r, 0), B = (r, 0) are diameter endpoints.
def A : P := ![-r, 0]
def B : P := ![r, 0]

-- The apex of the semicircle, C = (0, r).
def C : P := ![0, r]

-- The main semicircle geometric proposition.
def prop_arc_ACB_is_semicircle : Prop :=
  (O = ![0, 0]) ∧
  (r > 0) ∧
  (A = ![-r, 0]) ∧
  (B = ![r, 0]) ∧
  (C = ![0, r]) ∧
  (dist A O = r) ∧
  (dist B O = r) ∧
  (dist C O = r) ∧
  (midpoint ℝ A B = O) ∧
  (InnerProductSpace.inner ℝ (C - O) (B - A) = 0) ∧
  (C 1 ≥ O 1)

-- The height of the water.
def h_water : ℝ := 1

-- Showing the expression under sqrt is nonnegative.
lemma r_sq_minus_h_water_sq_nonneg : r ^ 2 - h_water ^ 2 ≥ 0 := by
  norm_num

-- The absolute value of the x-coordinate for water-surface intersection.
def x_coord_abs_A_prime_B_prime : ℝ := Real.sqrt (r ^ 2 - h_water ^ 2)

-- A', B' are intersection points of the line y = h_water with the semicircle.
def A' : P := ![-x_coord_abs_A_prime_B_prime, h_water]
def B' : P := ![x_coord_abs_A_prime_B_prime, h_water]

-- The width of A'B' is 2√15.
def prop_water_width_is_2_sqrt_15 : Prop :=
  dist A' B' = 2 * Real.sqrt 15

-- The main formalized theorem.
theorem bridge_arch_geometry :
    prop_arc_ACB_is_semicircle ∧ prop_water_width_is_2_sqrt_15 := by
  sorry

end BridgeProblem