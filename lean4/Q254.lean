import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds


def radiusSphere : ℝ := 11


noncomputable def sphereSurfaceArea (r : ℝ) : ℝ :=
  4 * Real.pi * r ^ 2


noncomputable def calculatedSurfaceArea : ℝ :=
  sphereSurfaceArea radiusSphere


def claimedRoundedSurfaceArea : ℝ := 1520.53


theorem verifySphereSurfaceAreaRounding :
  |calculatedSurfaceArea - claimedRoundedSurfaceArea| < 0.005 := by sorry
