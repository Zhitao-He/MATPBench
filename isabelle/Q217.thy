theory TriangleHeight
imports 
  Complex_Main 
  "HOL-Analysis.Analysis"
begin
theorem triangle_height:
  "let h = 20 * tan (43 * (pi / 180)) in
   round h = 19"
proof -
  let ?h = "20 * tan (43 * (pi / 180))"
  have "?h ≈ 18.59..." by (approximation)
  hence "round ?h = 19" by simp
  thus ?thesis by (simp add: Let_def)
qed