theory IsoscelesRightTriangle
imports Main "HOL-Analysis.Analysis"
begin

(* In this problem, we need to find the value of x in a triangle where:
   AB = x, AC = x, BC = 5*sqrt(2), and angle CAB is a right angle *)

theorem value_of_x_in_isosceles_right_triangle:
  fixes A B C :: "real × real" 
  assumes "dist A B = x" and "x > 0"
          "dist A C = x"
          "dist B C = 5 * sqrt 2"
          "inner_product (C - A) (B - A) = 0" (* CA ⊥ BA *)
  shows "x = 5"
proof -
  (* Using the Pythagorean theorem in this right triangle *)
  have "dist B C ^ 2 = dist A B ^ 2 + dist A C ^ 2" 
    using assms(5) 
    by (simp add: dist_squared_euclidean inner_product_def)
    
  (* Substitute the known values *)
  then have "(5 * sqrt 2)^2 = x^2 + x^2" 
    using assms(1) assms(3) assms(4) by simp
    
  (* Simplify *)
  then have "50 = 2 * x^2" by (simp add: power2_eq_square)
    
  (* Solve for x *)
  then have "x^2 = 25" by simp
  
  (* Since x > 0, we know x = 5 *)
  then have "x = 5" using assms(2) by (simp add: real_sqrt_unique)
  
  thus "x = 5" by simp
qed

end