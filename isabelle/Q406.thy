theory InternalTangent
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
definition circle1 :: "real × real × real" where
  "circle1 = (5, 0, 1)"  
definition circle2 :: "real × real × real" where
  "circle2 = (11, 0, 2)"  
theorem internal_tangent_intersection:
  "let (x1, y1, r1) = circle1;
       (x2, y2, r2) = circle2
   in (x1*r2 + x2*r1) / (r1 + r2) = 7"
proof -
  have "(5*2 + 11*1) / (1 + 2) = 7"
    by (simp add: circle1_def circle2_def)
  also have "... = 7"
    by simp
  finally show ?thesis
    by (simp add: circle1_def circle2_def)
qed
lemma "let (x1, y1, r1) = circle1;
           (x2, y2, r2) = circle2
       in (x1*r2 + x2*r1) / (r1 + r2) = 7"
  by (simp add: circle1_def circle2_def)