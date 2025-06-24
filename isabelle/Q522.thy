theory Parallelogram_Angle
  imports Main
begin
typedecl Point
consts A X W Z Y :: Point
consts angle :: "Point ⇒ Point ⇒ Point ⇒ real"
consts parallelogram :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool"
axiomatization where
  Parallelogram_XWZY: "parallelogram X W Z Y"
axiomatization where
  Angle_AXW: "angle A X W = 82"
axiomatization where
  Angle_YXA: "angle Y X A = 33"
theorem angle_WZY_115:
  "angle W Z Y = 115"
  sorry
end