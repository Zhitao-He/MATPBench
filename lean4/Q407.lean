import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Pi.Basic
import Mathlib.Data.Real.Basic

-- Euclidean plane ℝ²
abbrev P := EuclideanSpace ℝ (Fin 2)

-- Points on x-axis
def pO : P := ![0, 0]
def pC : P := ![32, 0]
def pB : P := ![68, 0]  -- OC = 32, CB = 36 → OB = 68

-- Centers of semicircles as midpoints
def K_center : P := (pO + pC) / 2
def O_center : P := (pO + pB) / 2
def M_center : P := (pC + pB) / 2

-- Radii of semicircles
def rK : ℝ := dist pO pC / 2    -- 16
def rO : ℝ := dist pO pB / 2    -- 34
def rM : ℝ := dist pC pB / 2    -- 18

-- Area of a semicircle
def area_semicircle (r : ℝ) : ℝ := (Real.pi * r^2) / 2

-- Areas of the three semicircles
def S_K : ℝ := area_semicircle rK
def S_O : ℝ := area_semicircle rO
def S_M : ℝ := area_semicircle rM

-- Shaded area calculation
def shaded_area : ℝ := S_O - S_M + S_K

-- Problem statement
theorem problem_statement : shaded_area = 900 * Real.pi := by
  sorry