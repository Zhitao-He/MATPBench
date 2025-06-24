theory Geometry_Problem
  imports Main
begin
locale geometry_problem =
  fixes F G H J K :: "'point"
  assumes
    GF:  "dist G F = 12"
  and HG: "dist H G = 6"
  and HJ: "dist H J = 8"
  and JK: "dist J K = x - 4"
  and GJ_parallel_FK: "parallel (G, J) (F, K)"
  and collinear_F_G_H: "collinear {F, G, H}"
  and collinear_F_K_H: "collinear {F, K, H}"
  and collinear_G_J_H: "collinear {G, J, H}"
  and collinear_J_K_H: "collinear {J, K, H}"
begin
definition Value where "Value x \<longleftrightarrow> x = 20"
end
end