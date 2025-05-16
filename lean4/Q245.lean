import Mathlib.Data.Real.Basic 
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

def radius_cm : Real := 6
def height_cm : Real := 8


noncomputable def cylinderVolume (r h : Real) : Real := Real.pi * r^2 * h


noncomputable def calculatedVolumeCm3 : Real := cylinderVolume radius_cm height_cm


noncomputable def roundToTwoDecimalPlaces (x : Real) : Real :=
  (round (x * 100)).toReal / 100


theorem cylinder_volume_claim : roundToTwoDecimalPlaces calculatedVolumeCm3 = 904.78 := by sorry
