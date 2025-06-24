import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
abbrev Point : Type := EuclideanSpace ℝ (Fin 2)
noncomputable def totalPathDistance (B S P : Point) : ℝ :=
  dist B S + dist S P + dist P B
noncomputable def roundToOneDecimalPlace (r : ℝ) : ℝ :=
  (⌊r * 10 + 0.5⌋ : ℝ) / 10
theorem photographer_total_distance_rounded_is_21917 (B S P : Point) :
    roundToOneDecimalPlace (totalPathDistance B S P) = 21917.0 := by sorry
