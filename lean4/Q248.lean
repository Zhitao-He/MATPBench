import Mathlib.Data.Real.Basic

import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic


namespace SphereVolumeProblem


def radius : ℝ := 3


noncomputable def sphereVolume (r : ℝ) : ℝ := (4 / 3) * Real.pi * (r ^ 3)


noncomputable def calculatedVolume : ℝ := sphereVolume radius


noncomputable def roundTo2Decimal (x : ℝ) : ℝ :=
  let factor := (10 : ℝ) ^ 2
  round (x * factor) / factor


noncomputable def roundedVolume : ℝ := roundTo2Decimal calculatedVolume


def assertedVolume : ℝ := 113.10


theorem volumeAssertion : roundedVolume = assertedVolume := by sorry

end SphereVolumeProblem
