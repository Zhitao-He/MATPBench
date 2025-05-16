theory Angle_GHF_Theorem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin

locale angle_problem =
  fixes A C D E F G H :: "real^2"
  assumes CE_perp_HE: "orthogonal (E - C) (E - H)"
      and FG_perp_HG: "orthogonal (G - F) (G - H)"
      and HC_perp_AC: "orthogonal (C - H) (C - A)"
      and angle_EHC: "angle (E - H) (C - H) = pi/180 * 35"
      and angle_GCH: "angle (G - C) (H - C) = pi/180 * 28"
      and angle_HDF: "angle (H - D) (F - D) = pi/180 * 25"
      and angle_HFG: "angle (H - F) (G - F) = pi/180 * 51"

theorem angle_GHF:
  shows "angle (G - H) (F - H) = pi/180 * 39"
  sorry

end