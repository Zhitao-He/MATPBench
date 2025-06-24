import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
namespace SquareSemicirclesArea
abbrev P := EuclideanSpace ℝ (Fin 2)
def s : ℝ := 2
def pointA : P := ![0, 0]
def pointB : P := ![s, 0]
def pointD : P := ![0, s]
def pointC : P := ![s, s]
def square : Set P :=
  { p | 0 ≤ p 0 ∧ p 0 ≤ s ∧ 0 ≤ p 1 ∧ p 1 ≤ s }
noncomputable def r : ℝ := s / 2
noncomputable def centerAB : P := ![s/2, 0]
noncomputable def semicircleAB : Set P :=
  { p | dist p centerAB ≤ r ∧ p 1 ≥ 0 }
noncomputable def centerAD : P := ![0, s/2]
noncomputable def semicircleAD : Set P :=
  { p | dist p centerAD ≤ r ∧ p 0 ≥ 0 }
def lensRegion : Set P := semicircleAB ∩ semicircleAD
def regionNearC : Set P := square \ (semicircleAB ∪ semicircleAD)
def shadedRegion : Set P := lensRegion ∪ regionNearC
theorem area_of_shaded_region : (sorry : ℝ) = 8 := by sorry 
end SquareSemicirclesArea
