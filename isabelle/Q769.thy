theory CircleTangentProblem
imports 
  Main
  Complex_Main
  "HOL-Analysis.Analysis"
begin
locale circle_tangent_problem =
  fixes R :: "real × real"        
    and S :: "real × real"        
    and T :: "real × real"        
    and C :: "real × real"        
    and x :: real                 
  assumes 
    radius_def: "dist R C = x"     
    and tangent_prop: "dist S T = 20"   
    and c_between: "∃t. 0 < t ∧ t < 1 ∧ 
                    C = ((1 - t) *R fst S + t *R fst T, 
                         (1 - t) *R snd S + t *R snd T)"  
theorem value_of_x:
  assumes "circle_tangent_problem R S T C x"
  shows "x = 32/3"
proof -
  interpret circle_tangent_problem R S T C x using assms .
  have right_angle: "((fst S - fst R) * (fst T - fst S) + 
                      (snd S - snd R) * (snd T - snd S)) = 0"
    by (rule tangent_perp)
  have "dist T R^2 = dist T S^2 + dist S R^2"
    using right_angle
    by (metis dist_real_def pythagoras_thm)
  moreover have "dist T R = dist T C + dist C R"
    using c_between
    by (metis between_points_dist dist_commute)
  hence "dist T R = 12 + x"
    using c_dist radius_def by simp
  moreover have "dist T S = 20" 
    by (rule tangent_prop)
  moreover have "dist S R = x" 
    by (rule tangent_def)
  ultimately have "(12 + x)^2 = 20^2 + x^2"
    by simp
  hence "144 + 24*x + x^2 = 400 + x^2"
    by (simp add: power2_sum)
  hence "24*x = 400 - 144"
    by simp
  hence "24*x = 256"
    by simp
  hence "x = 256/24"
    by (simp add: field_simps)
  thus "x = 32/3"
    by (simp add: field_simps)
qed