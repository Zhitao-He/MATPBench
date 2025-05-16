import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.PerpBisector
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic
import Mathlib.Data.Nat.Prime
import Mathlib.Data.Nat.Gcd

-- Definition of IsSquarefree for natural numbers.
def IsSquarefree (n : ℕ) : Prop := ∀ p₀, Nat.Prime p₀ → ¬ (p₀ ^ 2 ∣ n)

namespace PaperEquilateralTriangleFoldProblem

open Real

abbrev Point := EuclideanSpace ℝ (Fin 2)

noncomputable def A : Point := ![0, 0]
noncomputable def B : Point := ![12, 0]
noncomputable def C : Point := ![6, 6 * sqrt 3]

def side_length : ℝ := 12

lemma dist_A_B_eq_side_length : dist A B = side_length := by sorry
lemma dist_B_C_eq_side_length : dist B C = side_length := by sorry
lemma dist_C_A_eq_side_length : dist C A = side_length := by sorry

lemma triangle_ABC_is_equilateral : IsEquilateral ℝ A B C := by sorry

def distance_B_to_A_prime : ℝ := 9

noncomputable def A_prime : Point := B + (distance_B_to_A_prime / side_length) • (C -ᵥ B)

lemma A_prime_on_segment_BC : A_prime ∈ segment ℝ B C := by sorry
lemma dist_B_A_prime_eq_d_BA' : dist B A_prime = distance_B_to_A_prime := by sorry

noncomputable def foldLine : AffineSubspace ℝ Point := perpBisector A A_prime

noncomputable def foldSegmentLength : ℝ := (45 * sqrt 7) / 7

theorem triangle_fold_express_length_and_find_sum :
  ∃ (m n p : ℕ),
    ( m > 0 ∧ n > 0 ∧ p > 0 ∧
      foldSegmentLength = (m : ℝ) * Real.sqrt (p : ℝ) / (n : ℝ) ∧
      Nat.coprime m n ∧
      IsSquarefree p
    ) ∧
    ( m = 45 ∧
      n = 7 ∧
      p = 7 ∧
      m + n + p = 59
    )
  := by sorry

end PaperEquilateralTriangleFoldProblem