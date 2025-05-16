theory RightTriangleProblem
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
section ‹Finding the value of y in the right triangle›
text ‹As shown in the diagram, BA=32, BC=x, CA=y, ∠BAC=60°, AC⊥BC. Find the value of y.›
lemma right_triangle_problem:
  fixes A B C :: "real × real"
  assumes "dist B A = 32"
    and "angle B A C = pi/3"  (* 60° in radians *)
    and "is_orthogonal (C - A) (B - C)"  (* AC ⊥ BC *)
  shows "dist C A = 16"
proof -
  (* In a right triangle with one angle of 60°, the other angles are 90° and 30° *)
  have angle_sum: "angle B A C + angle A C B + angle C B A = pi"
    by (simp add: triangle_angle_sum)
  (* Using the fact that AC ⊥ BC means angle ACB = 90° *)
  have "angle A C B = pi/2"
    using assms(3) is_orthogonal_def
    by (metis (no_types, lifting) angle_orthogonal vector_subtraction_orthogonal)
  (* From the angle sum in a triangle *)
  have "angle C B A = pi - angle B A C - angle A C B"
    using angle_sum by algebra
  (* Substituting the known angles *)
  have "angle C B A = pi - pi/3 - pi/2"
    using ‹angle B A C = pi/3› ‹angle A C B = pi/2› by simp
  (* Simplifying *)
  have "angle C B A = pi/6"
    by simp
  (* By the Law of Sines *)
  have "dist C A / sin (angle C B A) = dist B A / sin (angle A C B)"
    by (simp add: law_of_sines)
  (* Substituting the known values *)
  have "dist C A / sin (pi/6) = 32 / sin (pi/2)"
    using assms(1) ‹angle C B A = pi/6› ‹angle A C B = pi/2› by simp
  (* Simplifying with sin(pi/6) = 1/2 and sin(pi/2) = 1 *)
  have "dist C A / (1/2) = 32 / 1"
    by simp
  (* Final calculation *)
  have "dist C A = 32 * (1/2)"
    by simp
  thus "dist C A = 16"
    by simp
qed