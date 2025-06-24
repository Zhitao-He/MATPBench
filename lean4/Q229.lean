import Mathlib.Data.Real.Basic
namespace HyperbolaDefinition
def hyperbolaEquation (x y : ℝ) : Prop :=
  ((x + 3) ^ (2 : ℕ) / 25) - ((y + 3) ^ (2 : ℕ) / 25) = 1
end HyperbolaDefinition