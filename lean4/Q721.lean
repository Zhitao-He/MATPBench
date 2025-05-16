import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

-- Assume we are in a Euclidean space P over ℝ, dim P ≥ 2
variable {P : Type*} [EuclideanSpace ℝ P]

-- Points of interest
variable (B C D F G : P)

-- Degrees to radians conversion
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)

-- Hypotheses based on the problem --

-- ∠BGC = 40°
variable (h_BGC : ∠ B G C = degToRad 40)

-- C B ⊥ G B  <=> ∠C B G = 90°
variable (h_CB_perp_GB : ∠ C B G = Real.pi / 2)

-- F G ⊥ C G  <=> ∠F G C = 90°
variable (h_FG_perp_CG : ∠ F G C = Real.pi / 2)

-- Angle sum property: ∠FGB + ∠BGC = ∠FGC
variable (h_FGB_add_BGC_eq_FGC : ∠ F G B + ∠ B G C = ∠ F G C)

-- Conclusion: ∠FGB = 50°
theorem find_angle_FGB : ∠ F G B = degToRad 50 := by
  rw [h_FGB_add_BGC_eq_FGC, h_FG_perp_CG, h_BGC]
  simp only [degToRad]
  ring