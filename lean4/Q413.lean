import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace SemicircleProblem


noncomputable def semiCircleArea (d : ℝ) : ℝ :=
  Real.pi * d^2 / 8


theorem shadedArea_div_unshadedArea_eq_11_div_7 :
    ∀ (x : ℝ) (hx : 0 < x),
      let AB := x
      let BC := 2 * x
      let CD := 3 * x
      let AD := AB + BC + CD   
      let areaAB := semiCircleArea AB
      let areaBC := semiCircleArea BC
      let areaCD := semiCircleArea CD
      let areaAD := semiCircleArea AD
      let unshadedArea := areaAB + areaBC + areaCD
      let shadedArea := areaAD - unshadedArea
      shadedArea / unshadedArea = 11 / 7 :=
  by sorry

end SemicircleProblem