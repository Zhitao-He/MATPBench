import Mathlib.Data.Real.Basic

-- 最大整数函数（floor函数）
def greatestIntegerFunction (x : ℝ) : ℤ := Int.floor x

-- 修正后的命题：floor函数在所有整数点不连续
theorem greatestIntegerFunction_notContinuousAtIntegers :
    ∀ x₀ : ℝ, (∃ n : ℤ, x₀ = n) → ¬ContinuousAt greatestIntegerFunction x₀ := by sorry