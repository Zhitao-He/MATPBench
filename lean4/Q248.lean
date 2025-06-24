import Mathlib.Data.Real.Basic 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace SphereFigureProblem

structure Sphere where
  radius : ℝ
def sphereFromImage : Sphere :=
  { radius := 3 }
noncomputable def volumeOfSphere (s : Sphere) : ℝ :=
  (4 / 3) * Real.pi * (s.radius ^ 3)
noncomputable def calculatedExactVolume : ℝ :=
  volumeOfSphere sphereFromImage
def expectedRoundedVolume : ℝ := 113.10
noncomputable def roundToTwoDecimalPlaces (x : ℝ) : ℝ :=
  sorry
theorem volumeMatchesExpectedRoundedValue :
  roundToTwoDecimalPlaces calculatedExactVolume = expectedRoundedVolume := by
  sorry
noncomputable def exactSymbolicVolume : ℝ :=
  36 * Real.pi
theorem calculatedVolumeIs36Pi :
  calculatedExactVolume = exactSymbolicVolume := by
  sorry
end SphereFigureProblem
