theory Circle_Arc_FDA
  imports Main
begin
typedecl Point
record circle =
  center :: Point
definition circleF :: circle where
  "circleF ≡ ⦇ center = F ⦈"
axiomatization A B C D E F :: Point
axiomatization
  "on_circle" :: "Point ⇒ circle ⇒ bool"
where
  A_on_circleF: "on_circle A circleF" and
  B_on_circleF: "on_circle B circleF" and
  C_on_circleF: "on_circle C circleF" and
  D_on_circleF: "on_circle D circleF" and
  E_on_circleF: "on_circle E circleF"
axiomatization
  angle :: "Point ⇒ Point ⇒ Point ⇒ real" 
  and
  arc_measure :: "Point ⇒ Point ⇒ Point ⇒ real" 
where
  angle_nonneg: "0 ≤ angle A B C" and
  angle_le_360: "angle A B C ≤ 360"
axiomatization where
  angle_EFA: "angle E F A = 63"
axiomatization where
  DF_perp_EF: "angle D F E = 90"
axiomatization where
  arc_center_angle: "on_circle X c ⟹ on_circle Y c ⟹ center c = O ⟹ arc_measure O X Y = angle X O Y"
definition arc_FDA_value :: bool where
  "arc_FDA_value ≡ arc_measure F D A = 207"
end