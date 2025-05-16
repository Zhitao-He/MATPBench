import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

open EuclideanGeometry

-- A "point" in the Euclidean plane
abbrev PPoint := EuclideanPlane ℝ

-- Degree ↔ Radian conversion
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)
noncomputable def radiansToDegrees (r : ℝ) : ℝ := r * (180 / Real.pi)

-- Problem setup structure: the given geometric data
structure ProblemSetup where
  -- Center and circle points
  B : PPoint    -- Center
  F : PPoint    -- On circle
  G : PPoint    -- On circle

  -- F, G ≠ B (distinct from center)
  hF_ne_B : F ≠ B
  hG_ne_B : G ≠ B

  -- Given: central angle FBG is 35°
  angleFBG_deg : ℝ := 35
  h_angle_FBG : Angle.Unoriented.value (∠ F B G) = degreesToRadians angleFBG_deg

-- The major arc BFG refers to the arc from B passing through F to G that does NOT include the minor arc measured by ∠FBG
noncomputable def measureOfArcBFG (setup : ProblemSetup) : ℝ :=
  360 - setup.angleFBG_deg

theorem target_value (setup : ProblemSetup) :
    measureOfArcBFG setup = 325 := by
  rw [measureOfArcBFG, setup.angleFBG_deg]
  norm_num