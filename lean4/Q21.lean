import Mathlib.Data.Real.Basic
import Mathlib.Data.Polynomial.Basic

-- Define the function f(x) = x³
def f (x : ℝ) : ℝ := x ^ 3

/-!
  The degree of the function f(x) = x³ is 3. 
  Formally: f is a polynomial function of degree 3.
  One can characterize this by showing that there exists a degree 3 polynomial p such that
  ∀ x, f(x) = p.eval x and p.degree = 3.
-/

theorem degree_of_f_is_3 :
  ∃ (p : Polynomial ℝ), (Polynomial.degree p = 3) ∧ (∀ x : ℝ, f x = Polynomial.eval x p) :=
by sorry