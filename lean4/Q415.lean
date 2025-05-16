import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Equiv

open EuclideanSpace

abbrev P2 := EuclideanSpace ℝ (Fin 2)

def s : ℝ := 8

def ptA : P2 := ![0, 0]
def ptB : P2 := ![s, 0]
def ptC : P2 := ![s, s]
def ptD : P2 := ![0, s]

def semicircleRadius : ℝ := s / 2

def centerSemicircleBC : P2 := ![s, s/2]
def centerSemicircleCD : P2 := ![s/2, s]

def semicircleBCRegion : Set P2 :=
  { p | dist p centerSemicircleBC ≤ semicircleRadius ∧ p.get 0 ≤ s }

def semicircleCDRegion : Set P2 :=
  { p | dist p centerSemicircleCD ≤ semicircleRadius ∧ p.get 1 ≤ s }

def shadedRegion : Set P2 := semicircleBCRegion ∩ semicircleCDRegion

def distCenters : ℝ := dist centerSemicircleBC centerSemicircleCD

def calculatedAreaOfShadedRegion : ℝ :=
  let r := semicircleRadius
  let d := distCenters
  2 * r^2 * Real.acos(d/(2*r)) - (d/2) * Real.sqrt (4 * r^2 - d^2)

def expectedAreaValue : ℝ := 8 * Real.pi - 16

theorem areaIsAsExpected : calculatedAreaOfShadedRegion = expectedAreaValue := by sorry