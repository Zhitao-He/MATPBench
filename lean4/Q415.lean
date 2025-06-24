import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
noncomputable section
abbrev Point := EuclideanSpace ℝ (Fin 2)
def s : ℝ := 8
def A : Point := ![0, 0]
def B : Point := ![s, 0]
def C : Point := ![s, s]
def D : Point := ![0, s]
def semicircleBC : Set Point :=
  let center := midpoint ℝ B C 
  let radius := s / 2
  { p : Point | dist p center ≤ radius ∧ p 1 ≥ center 1 }
def semicircleCD : Set Point :=
  let center := midpoint ℝ C D 
  let radius := s / 2
  { p : Point | dist p center ≤ radius ∧ p 0 ≤ center 0 }
def shadedRegion : Set Point := semicircleBC ∩ semicircleCD
def area (R : Set Point) : ℝ := sorry
theorem area_of_shadedRegion :
    area shadedRegion = 8 * Real.pi - 16 := by sorry
end
