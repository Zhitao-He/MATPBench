import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

-- The function being integrated: f(x) = sin x - cos x
def integrand (x : ℝ) : ℝ := Real.sin x - Real.cos x

-- An antiderivative F(x) of the integrand f(x).
-- The derivative of (-Real.cos x - Real.sin x) is (Real.sin x - Real.cos x).
def antiderivativeIntegrand (x : ℝ) : ℝ := -Real.cos x - Real.sin x

-- R1 is defined as the definite integral of 'integrand' from -π to 0.
-- Using the Fundamental Theorem of Calculus: ∫_a^b f(x) dx = F(b) - F(a),
-- where F is an antiderivative of f.
def R1 : ℝ := antiderivativeIntegrand 0 - antiderivativeIntegrand (-Real.pi)

-- R2 is defined as the definite integral of 'integrand' from 0 to π.
def R2 : ℝ := antiderivativeIntegrand Real.pi - antiderivativeIntegrand 0

-- The theorem statement: Prove that R2 is larger than R1.
theorem region_R2_larger : R2 > R1 := by
  sorry