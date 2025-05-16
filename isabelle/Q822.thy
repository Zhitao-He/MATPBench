theory TrianglePerimeter
imports Complex_Main "HOL-Analysis.Analysis"
begin
fix x y z :: real
fix A B C D E F G :: "real × real"  
assume AF_length: "dist A F = 10*z - 40"
assume CF_length: "dist C F = 18 - 6*x"
assume DA_length: "dist D A = 2*z"
assume DB_length: "dist D B = 12*y - 4"
assume EB_length: "dist E B = 4*y"
assume EC_length: "dist E C = 3*x"
assume G_center: "G = center_of_circle"
assume AD_tangent: "is_tangent A D G"
assume AF_tangent: "is_tangent A F G"
assume BD_tangent: "is_tangent B D G"
assume BE_tangent: "is_tangent B E G"
assume CE_tangent: "is_tangent C E G"
assume CF_tangent: "is_tangent C F G"
have tangent_prop1: "dist A F = dist A D" 
  using AF_tangent AD_tangent G_center by (rule tangent_lengths_equal)
have tangent_prop2: "dist C E = dist C F"
  using CE_tangent CF_tangent G_center by (rule tangent_lengths_equal)
have tangent_prop3: "dist B D = dist B E"
  using BD_tangent BE_tangent G_center by (rule tangent_lengths_equal)
have AD_length: "dist A D = 10*z - 40" 
  using tangent_prop1 AF_length by simp
have CE_length: "dist C E = 18 - 6*x"
  using tangent_prop2 CF_length by simp
have BD_length: "dist B D = 4*y"
  using tangent_prop3 EB_length by simp
have AB_length: "dist A B = dist A D + dist D B" 
  by (metis line_addition)
have "dist A B = (10*z - 40) + (12*y - 4)" 
  using AD_length DB_length AB_length by simp
have "dist A B = 10*z + 12*y - 44" by simp
have BC_length: "dist B C = dist B E + dist E C"
  by (metis line_addition)
have "dist B C = 4*y + 3*x"
  using EB_length EC_length BC_length by simp
have CA_length: "dist C A = dist C F + dist F A"
  by (metis line_addition)
have "dist C A = (18 - 6*x) + (10*z - 40)"
  using CF_length AF_length CA_length by simp
have "dist C A = 10*z - 6*x - 22" by simp
have perimeter: "dist A B + dist B C + dist C A = 
                (10*z + 12*y - 44) + (4*y + 3*x) + (10*z - 6*x - 22)"
  by simp
have "dist A B + dist B C + dist C A = 20*z + 16*y - 3*x - 66" by simp
have "dist A B + dist B C + dist C A = 36" by simp
have equation: "20*z + 16*y - 3*x = 102" by simp
theorem triangle_ABC_perimeter: "PerimeterOfTriangle A B C = 36"
  using perimeter by simp