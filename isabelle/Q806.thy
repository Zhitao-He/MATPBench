theory ValueTanAngleSRT
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale triangle_SRT =
  fixes S R T :: "real^2"
  assumes distinct: "S ≠ R" "R ≠ T" "S ≠ T"
  and distances: "norm (S - R) = 5" "norm (S - T) = 4" "norm (T - R) = 3"
  and right_angle: "(S - T) ⋅ (R - T) = 0"  
  thus "tan(angle S R T) = 4/3"
    by simp
qed