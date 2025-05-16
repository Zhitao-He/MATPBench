theory ShadedAreaUnderCurve
imports Complex_Main "HOL-Analysis.Analysis"
begin
definition f :: "real ⇒ real" where
  "f x = sqrt (9 - (x - 3)^2)"
theorem shaded_area_under_semicircle:
  "integral {3..6} f = 7.07"
proof -
  have "integral {3..6} f = (π * 9) / 4"
  proof -
    have "integral {3..6} f = (π * 9) / 4"
      by (metis Real_Vector_Spaces.integral_real)
    thus ?thesis by simp
  qed
  also have "(π * 9) / 4 ≈ 7.07"
    by (approximation)
  finally show ?thesis by simp
qed