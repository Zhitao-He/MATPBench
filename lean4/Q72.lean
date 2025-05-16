import Mathlib.Data.Real.Basic 


noncomputable def j (x : ℝ) : ℝ :=
  if x ≤ -2 then 4 + x
  else if x ≤ 0 then -x
  else x


theorem j_triple_root_count :
    ∃ x₁ x₂ x₃ x₄ : ℝ,       
      x₁ < x₂ ∧ x₂ < x₃ ∧ x₃ < x₄ ∧  
      j (j (j x₁)) = 0 ∧      
      j (j (j x₂)) = 0 ∧      
      j (j (j x₃)) = 0 ∧      
      j (j (j x₄)) = 0 ∧      
      (∀ y : ℝ, j (j (j y)) = 0 → y = x₁ ∨ y = x₂ ∨ y = x₃ ∨ y = x₄) 
      := by sorry
