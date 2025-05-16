theory AngleProblem
  imports Complex_Main "HOL-Analysis.Analysis"
begin
typedecl Point
consts angle :: "Point ⇒ Point ⇒ Point ⇒ real"
consts P :: Point
consts Q :: Point
consts R :: Point
consts S :: Point
consts x :: real
axiomatization where
  angle_QPS: "angle Q P S = x" and
  angle_RQP: "angle R Q P = 2 * x - 16" and
  angle_SRQ: "angle S R Q = 2 * x" and
  angle_PSR: "angle P S R = x + 10"
axiomatization where
  quadrilateral_property: "angle Q P S + angle P Q R + angle Q R S + angle R S P = 360"
theorem measure_of_angle_PSR: "angle P S R = 71"
proof -
  have "angle Q P S + angle P Q R + angle Q R S + angle R S P = 360"
    by (rule quadrilateral_property)
  also have "angle Q P S = x" 
    by (rule angle_QPS)
  also have "angle P Q R = 2 * x - 16"
    by (rule angle_RQP)
  also have "angle Q R S = 2 * x"
    by (rule angle_SRQ)
  also have "angle R S P = x + 10"
    by (rule angle_PSR)
  finally have "x + (2 * x - 16) + 2 * x + (x + 10) = 360" by simp
  hence "6 * x - 6 = 360" by simp
  hence "6 * x = 366" by simp
  hence "x = 61" by simp
  thus "angle P S R = 71" using angle_PSR by simp
qed