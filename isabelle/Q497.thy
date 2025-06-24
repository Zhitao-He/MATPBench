theory Parallelogram_Angle
  imports Main
begin
typedecl Point
consts W X Y Z :: Point
consts dist :: "Point ⇒ Point ⇒ real"
consts angle :: "Point ⇒ Point ⇒ Point ⇒ real"
definition parallelogram :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool" where
  "parallelogram A B C D ⟷ (dist A B = dist C D ∧ dist B C = dist D A ∧
    angle D A B + angle A B C = 180 ∧ angle A B C + angle B C D = 180)"
locale parallelogram_problem =
  assumes YX_24: "dist Y X = 24"
    and YZ_28: "dist Y Z = 28"
    and angle_XWZ_105: "angle X W Z = 105"
    and parallelogram_WZYX: "parallelogram W Z Y X"
begin
definition result :: "bool" where
  "result ⟷ (angle W Z Y = 75)"
end
end