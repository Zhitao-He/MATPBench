import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic

-- Define the cube side length
def cubeSide : ℝ := 2

-- Vertices of the base square (z=0 plane)
def baseA : EuclideanSpace ℝ (Fin 3) := ![0, 0, 0]
def baseB : EuclideanSpace ℝ (Fin 3) := ![cubeSide, 0, 0]
def baseC : EuclideanSpace ℝ (Fin 3) := ![cubeSide, cubeSide, 0]
def baseD : EuclideanSpace ℝ (Fin 3) := ![0, cubeSide, 0]

-- Apex at the cube center
def apex : EuclideanSpace ℝ (Fin 3) := 
  ![cubeSide / 2, cubeSide / 2, cubeSide / 2]

-- Base area (square area)
def baseArea : ℝ := cubeSide * cubeSide

-- Pyramid height (distance from base to apex)
def pyramidHeight : ℝ := cubeSide / 2

-- Pyramid volume formula
def pyramidVolume : ℝ := (1/3 : ℝ) * baseArea * pyramidHeight

-- Theorem statement
theorem pyramid_volume_eq_four_thirds : pyramidVolume = (4/3 : ℝ) := by
  sorry