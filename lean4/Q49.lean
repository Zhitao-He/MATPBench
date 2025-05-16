import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Sqrt

open scoped EuclideanSpace

-- Define the type for points in 2D Euclidean space over ℝ
abbrev Point := EuclideanSpace ℝ (Fin 2)

-- Given constants
def shipSpeed : ℝ := 40
def travelTime : ℝ := 1 / 2 -- 30min = 0.5h

def distAB : ℝ := shipSpeed * travelTime

-- Point A at the origin, Point B due east
def pointA : Point := ![0, 0]
def pointB : Point := ![distAB, 0]

-- Bearings: angles from NORTH by EAST (degrees)
def bearingA_deg : ℝ := 45
def bearingB_deg : ℝ := 15

-- Convert degrees to radians
noncomputable def degToRad (deg : ℝ) : ℝ := deg * (Real.pi / 180)

-- Mathematical angle (from x-axis, counterclockwise): North is 90°
noncomputable def angleA : ℝ := degToRad (90 - bearingA_deg)
noncomputable def angleB : ℝ := degToRad (90 - bearingB_deg)

-- Unit direction vectors for the rays from A and B toward M
noncomputable def dirVecA : Point := ![Real.cos angleA, Real.sin angleA]
noncomputable def dirVecB : Point := ![Real.cos angleB, Real.sin angleB]

-- Parameter s: distance from B to M, computed from the bearings intersection law
noncomputable def param_s : ℝ :=
  distAB * Real.sin angleA / Real.sin (angleB - angleA)

-- The island M is located at pointB + param_s * dirVecB
noncomputable def pointM : Point := pointB +ᵥ (param_s • dirVecB)

-- The required result: distance from B to M equals 20 * sqrt 2
theorem distance_BM_is_20_sqrt_2 : dist pointB pointM = 20 * Real.sqrt 2 := by
  sorry