theory Geometry_Angle_GHF
  imports Main
begin
typedecl Point
consts
  angle :: "Point ⇒ Point ⇒ Point ⇒ real" ("∠ _ _ _")
  Perpendicular :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool"
consts A B C D E F G H :: Point
axiomatization
where
  angle_EHC: "angle E H C = 35" and
  angle_GCH: "angle G C H = 28" and
  angle_HDF: "angle H D F = 25" and
  angle_HFG: "angle H F G = 51" and
  CE_perp_HE: "Perpendicular C E H E" and
  FG_perp_HG: "Perpendicular F G H G" and
  HC_perp_AC: "Perpendicular H C A C"
definition angle_GHF :: real where
  "angle_GHF = angle G H F"
theorem angle_GHF_value:
  "angle_GHF = 39"
  unfolding angle_GHF_def
  sorry
end