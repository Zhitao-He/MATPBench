import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic



variable {P : Type*} [MetricSpace P] [NormedAddTorsor ℝ P]

variables (C D : P)

theorem length_of_CD_is_6 : dist C D = (6 : ℝ) := by
  sorry