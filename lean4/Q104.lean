import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic
import Mathlib.Data.Nat.GCD
import Mathlib.NumberTheory.Prime

open EuclideanGeometry

section Putnam2010B6

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P]
variable [NormedSpace ℝ P] [FiniteDimensional ℝ P] [Fact (FiniteDimensional.finrank ℝ P = 2)]

variables (A B C : P)

structure TriangleABC_Properties (A B C : P) where
  side_BC : dist B C = 23
  side_CA : dist C A = 27
  side_AB : dist A B = 30
  not_collinear : ¬ Collinear ℝ {A, B, C}

variable (props : TriangleABC_Properties A B C)

noncomputable def a : ℝ := dist B C
noncomputable def b : ℝ := dist C A
noncomputable def c : ℝ := dist A B

noncomputable def area_ABC : ℝ =>
  let s := (a A B C + b A B C + c A B C) / 2
  Real.sqrt (s * (s - a A B C) * (s - b A B C) * (s - c A B C))

noncomputable def H_A : ℝ => 2 * area_ABC A B C / a A B C
noncomputable def H_B : ℝ => 2 * area_ABC A B C / b A B C
noncomputable def H_C : ℝ => 2 * area_ABC A B C / c A B C

variable (h : ℝ)

noncomputable def V : P => A + (h / H_A A B C) • (C -ᵥ A)
noncomputable def W : P => C + (h / H_C A B C) • (A -ᵥ C)
noncomputable def X : P => C + (h / H_C A B C) • (B -ᵥ C)
noncomputable def Y : P => B + (h / H_B A B C) • (C -ᵥ B)
noncomputable def Z : P => B + (h / H_B A B C) • (A -ᵥ B)
noncomputable def U : P => A + (h / H_A A B C) • (B -ᵥ A)

def condition_AC : Prop =>
  h > 0 ∧ (h / H_A A B C + h / H_C A B C) ≤ 1
def condition_BC : Prop =>
  h > 0 ∧ (h / H_B A B C + h / H_C A B C) ≤ 1
def condition_AB : Prop =>
  h > 0 ∧ (h / H_A A B C + h / H_B A B C) ≤ 1

def isValidHeight : Prop =>
  condition_AC A B C h ∧ condition_BC A B C h ∧ condition_AB A B C h

noncomputable def maxHeight : ℝ =>
  sSup { h' : ℝ | isValidHeight A B C h' }

theorem UV_parallel_BC (h' : ℝ) (h'pos : isValidHeight A B C h') :
    ∃ (l₁ l₂ : AffineSubspace ℝ P),
      l₁ = affineSpan ℝ {U A B C h', V A B C h'} ∧
      l₂ = affineSpan ℝ {B, C} ∧
      l₁.direction = l₂.direction := by sorry

theorem WX_parallel_AB (h' : ℝ) (h'pos : isValidHeight A B C h') :
    ∃ (l₁ l₂ : AffineSubspace ℝ P),
      l₁ = affineSpan ℝ {W A B C h', X A B C h'} ∧
      l₂ = affineSpan ℝ {A, B} ∧
      l₁.direction = l₂.direction := by sorry

theorem YZ_parallel_CA (h' : ℝ) (h'pos : isValidHeight A B C h') :
    ∃ (l₁ l₂ : AffineSubspace ℝ P),
      l₁ = affineSpan ℝ {Y A B C h', Z A B C h'} ∧
      l₂ = affineSpan ℝ {C, A} ∧
      l₁.direction = l₂.direction := by sorry

variables (k m n : ℕ)

def IsSquareFree (m : ℕ) : Prop =>
  m > 0 ∧ ∀ p : ℕ, Nat.Prime p → ¬ (p * p ∣ m)

theorem maxHeight_value :
  ∃ k m n : ℕ, maxHeight A B C = (k : ℝ) * Real.sqrt (m : ℝ) / (n : ℝ)
    ∧ IsSquareFree m
    ∧ Nat.gcd k n = 1
    ∧ k > 0 ∧ n > 0 := by sorry

theorem sum_k_m_n (hk : maxHeight A B C = (k : ℝ) * Real.sqrt (m : ℝ) / (n : ℝ))
  (h_sq : IsSquareFree m) (h_gcd : Nat.gcd k n = 1) (hk_pos : k > 0) (hn_pos : n > 0) :
  k + m + n = 318 := by sorry

end Putnam2010B6