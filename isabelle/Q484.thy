theory GeometryProblem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
text ‹As shown in the diagram, ∠CFK=28°, ∠GKF=35°, ∠KAC=25°, ∠KHC=51°, 
      EG is perpendicular to FG, HC is perpendicular to KC, 
      KF is perpendicular to EF. Find ∠FEK.›
definition deg_to_rad :: "real ⇒ real" where
  "deg_to_rad α = (α * pi) / 180"
axiomatization where
  angle_CFK: "angle C F K = deg_to_rad 28" and
  angle_GKF: "angle G K F = deg_to_rad 35" and
  angle_KAC: "angle K A C = deg_to_rad 25" and
  angle_KHC: "angle K H C = deg_to_rad 51" and
  perp_EG_FG: "orthogonal (E - G) (F - G)" and
  perp_HC_KC: "orthogonal (H - C) (K - C)" and
  perp_KF_EF: "orthogonal (K - F) (E - F)"
theorem angle_FEK: "angle F E K = deg_to_rad 55"
  sorry