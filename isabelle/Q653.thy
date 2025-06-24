theory Geometry_Parallel_Corresponding_Angle
  imports Main
begin
typedecl Point
consts
  angle :: "Point ⇒ Point ⇒ Point ⇒ real"  ("∠ _ _ _")
consts
  parallel :: "(Point × Point) ⇒ (Point × Point) ⇒ bool"
consts
  F H M C A :: Point
axiomatization where
  angle_FHM_94: "angle F H M = 94" and
  parallel_HM_CA: "parallel (H, M) (C, A)"
definition HCA_angle_is_94 :: bool where
  "HCA_angle_is_94 ⟷ (angle H C A = 94)"
end