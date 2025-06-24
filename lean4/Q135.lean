import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
abbrev ℝ3 := EuclideanSpace ℝ (Fin 3)
def planeP : Set ℝ3 := fun p => p 2 = 0
def pointA : ℝ3 := ![0, 0, 0]
variable (xB yB xC yC xD yD : ℝ)
def pointB : ℝ3 := ![xB, yB, 2]
def pointC : ℝ3 := ![xC, yC, 8]
def pointD : ℝ3 := ![xD, yD, 10]
def waterSurface : Set ℝ3 := fun p => p 2 = 7
def cubeVolume (a : ℝ) : ℝ := a ^ 3
def waterVolume : ℝ := by sorry
def exists_mn : ∃ (m n : ℕ), Nat.gcd m n = 1 ∧ waterVolume = (m : ℝ) / n ∧ m + n = 751 := by sorry
