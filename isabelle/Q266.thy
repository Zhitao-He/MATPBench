theory TriangularPrism
imports Main "HOL-Analysis.Analysis"
begin

theorem triangular_prism_surface_area:
  fixes base_length :: real
    and triangle_height :: real
    and triangle_side :: real
    and prism_length :: real
  assumes "base_length = 12"
    and "triangle_height = 8"
    and "triangle_side = 10"
    and "prism_length = 21"
  shows "2 * ((1/2) * base_length * triangle_height) + 
         base_length * prism_length + 
         triangle_side * prism_length + 
         triangle_side * prism_length = 768"
proof -
  have triangle_area: "(1/2) * base_length * triangle_height = (1/2) * 12 * 8"
    using assms(1) assms(2) by simp
  also have "... = 48"
    by simp
  finally have triangle_area': "(1/2) * base_length * triangle_height = 48" .

  have lateral_face1: "base_length * prism_length = 12 * 21"
    using assms(1) assms(4) by simp
  also have "... = 252"
    by simp
  finally have lateral_face1': "base_length * prism_length = 252" .

  have lateral_face2: "triangle_side * prism_length = 10 * 21"
    using assms(3) assms(4) by simp
  also have "... = 210"
    by simp
  finally have lateral_face2': "triangle_side * prism_length = 210" .

  have lateral_face3: "triangle_side * prism_length = 10 * 21"
    using assms(3) assms(4) by simp
  also have "... = 210"
    by simp
  finally have lateral_face3': "triangle_side * prism_length = 210" .

  have "2 * ((1/2) * base_length * triangle_height) + 
        base_length * prism_length + 
        triangle_side * prism_length + 
        triangle_side * prism_length = 
        2 * 48 + 252 + 210 + 210"
    using triangle_area' lateral_face1' lateral_face2' lateral_face3'
    by simp
  also have "... = 96 + 252 + 210 + 210"
    by simp
  also have "... = 96 + 252 + 420"
    by simp
  also have "... = 768"
    by simp
  finally show ?thesis .
qed

end