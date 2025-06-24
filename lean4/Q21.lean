import Mathlib.Data.Real.Basic 
def thisFunction (x : ℝ) : ℝ := 5 * x^3 + (-2) * x^2 + 7 * x + (-10)
structure IsPolynomialOfDegreeThree (f : ℝ → ℝ) where
  coeff_a : ℝ  
  coeff_b : ℝ  
  coeff_c : ℝ  
  coeff_d : ℝ  
  a_ne_zero : coeff_a ≠ 0  
  is_of_form : ∀ (x : ℝ), f x = coeff_a * x^3 + coeff_b * x^2 + coeff_c * x + coeff_d
def degree_of_thisFunction_is_3 : IsPolynomialOfDegreeThree thisFunction := {
  coeff_a := 5,
  coeff_b := -2,
  coeff_c := 7,
  coeff_d := -10,
  a_ne_zero := by norm_num,
  is_of_form := fun x ↦ rfl
}