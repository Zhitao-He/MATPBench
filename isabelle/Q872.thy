theory AngleProblem
imports Main Real "HOL-Analysis.Analysis"
begin
locale geometry_problem =
  fixes A B C D E F G :: "real × real"
  assumes angle_ACE: "angle A C E = 25"
  assumes angle_AEG: "angle A E G = 51"
  assumes angle_DAB: "angle D A B = 35"
  assumes angle_GBA: "angle G B A = 28"
  assumes AB_perp_FB: "perpendicular A B F B"
  assumes AG_perp_BG: "perpendicular A G B G"
  assumes BD_perp_FD: "perpendicular B D F D"
begin
definition "angle_BAG ≡ angle B A G"
theorem angle_BAG_value: "angle_BAG = 62"
proof -
  have "angle A G B + angle G B A + angle B A G = 180"
    by (simp add: triangle_angle_sum)
  have "angle A G B = 90"
    using AG_perp_BG perpendicular_angle by auto
  have "90 + 28 + angle B A G = 180"
    using ‹angle A G B = 90› angle_GBA by auto
  hence "angle B A G = 180 - 90 - 28" by simp
  hence "angle B A G = 62" by simp
  thus "angle_BAG = 62" 
    unfolding angle_BAG_def by simp
qed