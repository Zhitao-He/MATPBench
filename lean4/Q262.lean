import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open Real
open EuclideanGeometry

-- 3D Euclidean space points as Fin 3 → ℝ
def pointA : Fin 3 → ℝ := ![0, 3, 10]
def pointB : Fin 3 → ℝ := ![15, 3, 10]
def pointC : Fin 3 → ℝ := ![15, 0, 10]
def pointD : Fin 3 → ℝ := ![0, 0, 10]
def pointE : Fin 3 → ℝ := ![0, 0, 0]
def pointF : Fin 3 → ℝ := ![15, 0, 0]

-- X is the midpoint of EF
def pointX : Fin 3 → ℝ := midpoint ℝ pointE pointF

-- Angle ∠BXC at vertex X
def angle_BXC_radians : ℝ := angle pointB pointX pointC

def radiansToDegrees (rad : ℝ) : ℝ := rad * 180 / π

def angle_BXC_degrees : ℝ := radiansToDegrees angle_BXC_radians

-- Target value as claimed in the problem
def targetAngleDegrees : ℝ := 10.74

-- The main theorem statement: ∠BXC ≈ 10.74° (2 decimal places)
theorem angle_BXC_approx_10_74 : abs (angle_BXC_degrees - targetAngleDegrees) < 0.005 := by
  sorry