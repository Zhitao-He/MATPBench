import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
namespace ProblemFormalization
abbrev Point := EuclideanSpace ℝ (Fin 2)
def K_val : ℝ := 2020
noncomputable def K_inv : ℝ := 1 / K_val 
def K_factor : ℝ := 2019
def initialQuadVertices : Point × Point × Point × Point :=
  (![0,0], ![1,0], ![1,1], ![0,1])
noncomputable def nextQuadTransform (qCurr : Point × Point × Point × Point) : Point × Point × Point × Point :=
  let (A_prev, B_prev, C_prev, D_prev) := qCurr
  ( (K_inv • A_prev) + ((K_factor * K_inv) • B_prev),
    (K_inv • B_prev) + ((K_factor * K_inv) • C_prev),
    (K_inv • C_prev) + ((K_factor * K_inv) • D_prev),
    (K_inv • D_prev) + ((K_factor * K_inv) • A_prev) )
noncomputable def quadAtStep : ℕ → Point × Point × Point × Point
  | 0       => initialQuadVertices
  | (n + 1) => nextQuadTransform (quadAtStep n)
def vectorCrossProduct2D (v1 v2 : Point) : ℝ :=
  v1 0 * v2 1 - v1 1 * v2 0
noncomputable def triangleArea (p1 p2 p3 : Point) : ℝ :=
  0.5 * abs (vectorCrossProduct2D (p2 -ᵥ p1) (p3 -ᵥ p1)) 
noncomputable def quadrilateralAreaFromVertices (vertices : Point × Point × Point × Point) : ℝ := 
  let (p1, p2, p3, p4) := vertices
  triangleArea p1 p2 p3 + triangleArea p1 p3 p4
noncomputable def sumOfAreas : ℝ :=
  ∑' (n : ℕ), quadrilateralAreaFromVertices (quadAtStep n)
def isSquareFree (n : ℕ) : Prop :=
  n ≠ 0 ∧ ∀ k : ℕ, k > 1 → ¬ (k * k ∣ n)
structure SolutionTriplet where
  a : ℕ
  b : ℕ
  c : ℕ
  a_pos : a > 0
  b_pos : b > 0
  c_pos : c > 0
  b_sqfree : isSquareFree b
  sum_matches : sumOfAreas = (a^2 * b : ℝ) / c
  c_minimal : Nat.gcd (a^2 * b) c = 1
axiom exists_solution_triplet : Nonempty SolutionTriplet
noncomputable def finalTargetValue : ℕ :=
  let triplet := Classical.choice exists_solution_triplet
  triplet.a + triplet.b + triplet.c
end ProblemFormalization
