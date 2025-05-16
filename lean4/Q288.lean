import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Pow.Real
namespace FrustumSrfArea


def radiusTop : ℝ := 4
def radiusBot : ℝ := 10
def height : ℝ := 8


noncomputable def slantHeight : ℝ :=
  Real.sqrt ((radiusBot - radiusTop)^2 + height^2)


noncomputable def circumference (r : ℝ) : ℝ := 2 * Real.pi * r


noncomputable def lateralArea : ℝ :=
  (1 / 2) * slantHeight * (circumference radiusTop + circumference radiusBot)


noncomputable def areaTop : ℝ := Real.pi * radiusTop^2
noncomputable def areaBot : ℝ := Real.pi * radiusBot^2


noncomputable def totalArea : ℝ := lateralArea + areaTop + areaBot


theorem totalArea_eq_256pi :
    totalArea = 256 * Real.pi := by sorry

end FrustumSrfArea
