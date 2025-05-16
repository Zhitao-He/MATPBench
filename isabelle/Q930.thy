theory TriangleGeometryProblem
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
section "Triangle Problem: Find the value of y"
(*
  Problem description:
  As shown in the diagram, AB=y, AC=5, BC=x, ∠BAC=60°, AC is perpendicular to BC.
  Find the value of y.
*)
theorem triangle_side_length_y:
  fixes A B C :: "real × real"
  assumes "dist A C = 5"
    and "angle B A C = pi / 3" (* 60 degrees in radians *)
    and "inner_product (C - A) (B - C) = 0" (* AC is perpendicular to BC *)
    and "dist A B = y"
    and "dist B C = x"
  shows "y = 10"
proof -
  (* Define AC, AB, BC vectors *)
  let ?AC = "C - A"
  let ?AB = "B - A"
  let ?BC = "B - C"
  (* Use the law of cosines in triangle ABC *)
  have "dist B C^2 = dist A B^2 + dist A C^2 - 2 * dist A B * dist A C * cos(angle B A C)"
    by (simp add: law_of_cosines)
  (* Substitute known values *)
  also have "... = y^2 + 5^2 - 2 * y * 5 * cos(pi/3)"
    using assms by simp
  (* cos(pi/3) = 1/2 *)
  also have "... = y^2 + 25 - 2 * y * 5 * (1/2)"
    by simp
  (* Simplify *)
  also have "... = y^2 + 25 - 5 * y"
    by simp
  (* By Pythagoras theorem (since AC ⊥ BC) *)
  have "dist A C^2 + dist B C^2 = dist A B^2" 
    using assms pythagorean_theorem[of A C B] by simp
  (* Substitute known values *)
  hence "25 + x^2 = y^2"
    using assms by simp
  (* From the first equation chain *)
  have "x^2 = y^2 + 25 - 5 * y"
    by (simp add: calculation)
  (* Combine equations *)
  hence "25 + (y^2 + 25 - 5 * y) = y^2"
    by simp
  (* Solve for y *)
  hence "50 - 5 * y = 0"
    by simp
  hence "y = 10"
    by simp
  thus ?thesis
    by simp
qed