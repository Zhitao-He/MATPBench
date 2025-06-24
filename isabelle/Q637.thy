theory Geometry_Problem_202406
  imports Main
begin
typedecl Point
consts A B C D E F G :: Point
consts angle :: "Point ⇒ Point ⇒ Point ⇒ real"
definition equilateral_triangle :: "Point ⇒ Point ⇒ Point ⇒ bool" where
  "equilateral_triangle X Y Z ≡ 
    (dist X Y = dist Y Z ∧ dist Y Z = dist Z X)"
definition isosceles_triangle :: "Point ⇒ Point ⇒ Point ⇒ bool" where
  "isosceles_triangle X Y Z ≡ 
    (dist X Y = dist X Z ∨ dist X Y = dist Y Z ∨ dist X Z = dist Y Z)"
axiomatization where
  triangle_angle_sum: "∀X Y Z. X ≠ Y ∧ Y ≠ Z ∧ Z ≠ X ⟶ 
    angle X Y Z + angle Y Z X + angle Z X Y = 180"
axiomatization where
  angle_CAD_42: "angle C A D = 42"
axiomatization where
  angle_CFG_77: "angle C F G = 77"
axiomatization where
  CDE_equilateral: "equilateral_triangle C D E"
axiomatization where
  CAB_isosceles: "isosceles_triangle C A B"
axiomatization where
  CFG_isosceles: "isosceles_triangle C F G"
definition goal :: bool where
  "goal ≡ angle G C F = 26"
end