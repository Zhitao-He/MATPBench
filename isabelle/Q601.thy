theory AngleMeasurement
imports Main HOL.Real
begin
typedecl Point
consts angle :: "Point ⇒ Point ⇒ Point ⇒ real"
axiomatization where
  angle_GKM: "angle G K M = 62" and
  adjacent_angles: "angle B K G + angle G K M = 180"
theorem angle_BKG: "angle B K G = 118"
proof -
  have "angle B K G = 180 - angle G K M" 
    using adjacent_angles by auto
  also have "... = 180 - 62" 
    using angle_GKM by simp
  also have "... = 118" by simp
  finally show ?thesis .
qed