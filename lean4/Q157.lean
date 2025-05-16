import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt

namespace TrapezoidPerimeter

open Real



def AD : ℝ := 8
noncomputable def angle_BAD : ℝ := π / 6
def BC : ℝ := 6
noncomputable def angle_CBA : ℝ := π / 4


noncomputable def h : ℝ := AD * sin angle_BAD


noncomputable def y : ℝ := AD * cos angle_BAD


noncomputable def z : ℝ := h / tan angle_CBA


noncomputable def AB : ℝ := y + 6 + z  


def CD : ℝ := 6


noncomputable def perimeter : ℝ := AD + BC + CD + AB


theorem perimeter_eq : perimeter = 24 + 4 * sqrt 2 + 4 * sqrt 3 := by sorry

end TrapezoidPerimeter
