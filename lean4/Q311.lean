import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
theorem lenaWisconsinParallelCircumference :
  let equatorCircumference_miles : Real := 25100
  let earthRadius_miles : Real := equatorCircumference_miles / (2 * Real.pi)
  
  
  let latitude_radians : Real := Real.pi / 4
  
  let radiusAtLatitude_miles : Real := earthRadius_miles * Real.cos latitude_radians
  
  let circumferenceAtLatitude_miles : Real := 2 * Real.pi * radiusAtLatitude_miles
  
  
  let roundedCircumference_miles : Real := (round (circumferenceAtLatitude_miles / 100)) * 100
  
  roundedCircumference_miles = 17700 := by sorry
