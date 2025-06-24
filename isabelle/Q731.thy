theory Geometry_Problem
  imports Main
begin
typedecl Point
consts A B C D E :: Point
consts angle :: "Point ⇒ Point ⇒ Point ⇒ real"
consts parallel :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool"
consts x y :: real
axiomatization where
  angle_ACE_def: "angle A C E = y" and
  angle_BDA_def: "angle B D A = 68" and
  angle_EAC_def: "angle E A C = 2 * x" and
  angle_EBD_def: "angle E B D = 3 * x - 15" and
  parallel_EA_BD: "parallel E A B D"
definition Value_y :: "real ⇒ bool" where
  "Value_y v ⟷ y = v"
end