theory Geometry_Circle_Tangent_Square
  imports Complex_Main
begin
locale geometry_setup =
  fixes D E C B :: "complex"
  assumes CE_eq_7: "dist C E = 7"
    and ED_eq_x:  "dist E D = x"
    and circle_center: "C = C"  
    and tangent_DE: "dist C E = dist C B"  
    and DE_tangent: "let r = dist C E in dist C D > r ∧ dist C E = r"
    and CE_perp_DE: "Re ((E - C) / (E - D)) = 0"  
    and DB_perp_CB: "Re ((B - D) / (B - C)) = 0"  
    and ED_perp_BD: "Re ((D - E) / (D - B)) = 0"  
begin
definition value_x :: real where "value_x = x"
end
end