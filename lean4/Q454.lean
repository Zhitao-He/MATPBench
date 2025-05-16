import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt

namespace Putnam1999B2


def sideA : ℝ := 6
def sideB : ℝ := 8
def sideC : ℝ := 10


def perimeterABC : ℝ := sideA + sideB + sideC


noncomputable def semiperimeterABC : ℝ := perimeterABC / 2


noncomputable def areaABC : ℝ :=
  Real.sqrt (semiperimeterABC * (semiperimeterABC - sideA)
           * (semiperimeterABC - sideB) * (semiperimeterABC - sideC))


noncomputable def inradiusABC : ℝ := areaABC / semiperimeterABC


def rRoll : ℝ := 1


noncomputable def inradiusPathP : ℝ := inradiusABC - rRoll


noncomputable def distancePTraveled : ℝ := perimeterABC * (inradiusPathP / inradiusABC)


theorem putnam_1999_b2_distance_is_12 : distancePTraveled = 12 := by sorry

end Putnam1999B2
