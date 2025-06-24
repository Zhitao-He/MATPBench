theory Geometry_Angle_EAG
  imports Main
begin
typedecl Point
consts
  angle :: "Point ⇒ Point ⇒ Point ⇒ real"
axiomatization
  A B C D E F G :: Point
where
  angle_ACD: "angle A C D = 50"
and
  angle_CDE: "angle C D E = 78"
and
  angle_FGA: "angle F G A = 120"
and
  angle_GFB: "angle G F B = 56"
theorem angle_EAG_52: "angle E A G = 52"
  sorry
end