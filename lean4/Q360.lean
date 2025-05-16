import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace SphereInCone


def hCone : ℝ := 4
def rCone : ℝ := 3


noncomputable def slantHeight (r h : ℝ) : ℝ := Real.sqrt (r ^ 2 + h ^ 2)


noncomputable def inscribedSphereRadius (r h : ℝ) : ℝ :=
  (r * h) / (slantHeight r h + r)

noncomputable def rSphere : ℝ := inscribedSphereRadius rCone hCone


noncomputable def volumeCone (r h : ℝ) : ℝ :=
  (1 / 3 : ℝ) * Real.pi * r ^ 2 * h


noncomputable def volumeSphere (r : ℝ) : ℝ :=
  (4 / 3 : ℝ) * Real.pi * r ^ 3

theorem volumeRatioIsThreeEighths :
    let vSphere := volumeSphere rSphere
    let vCone := volumeCone rCone hCone
    vSphere / vCone = (3 : ℝ) / (8 : ℝ) := by
  sorry

end SphereInCone
