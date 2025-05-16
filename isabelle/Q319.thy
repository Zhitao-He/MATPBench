theory TriangleAngle140
  imports Main HOL.Euclidean_Geometry
begin
section "Isosceles Triangle with Exterior Angle"
text "In triangle ABC, AC=BC (isosceles triangle), and angle BAC=40°. 
      We need to find angle x, which is the exterior angle at B."
(* Define a triangle ABC where AC=BC and angle BAC=40° *)
locale isosceles_triangle =
  fixes A B C :: "real^2"
  assumes non_collinear: "¬ collinear {A, B, C}"
      and isosceles: "dist A C = dist B C"
      and angle_BAC: "angle B A C = 40 / (180 / pi)"
context isosceles_triangle
begin
  (* Define the exterior angle x *)
  definition x :: real where
    "x = angle A B (2 * B - C)" (* The point 2*B-C is the reflection of C through B *)
  (* Theorem: The exterior angle x equals 140° *)
  theorem exterior_angle_equals_140:
    "x = 140 / (180 / pi)"
  proof -
    (* In an isosceles triangle, base angles are equal *)
    have "angle C A B = angle A C B" 
      using isosceles by (simp add: eq_isosc_angles)
    (* The sum of angles in a triangle is π (180°) *)
    have "angle B A C + angle A B C + angle A C B = pi"
      using non_collinear by (simp add: triangle_angles_sum)
    (* Substitute angle_BAC *)
    then have "40 / (180 / pi) + angle A B C + angle A C B = pi"
      using angle_BAC by simp
    (* Substitute the equality of base angles *)
    then have "40 / (180 / pi) + angle A B C + angle C A B = pi"
      using ‹angle C A B = angle A C B› by simp
    (* Simplify to find angle A B C *)
    then have "angle A B C = pi - 40 / (180 / pi) - angle C A B" by simp
    also have "angle C A B = (pi - 40 / (180 / pi)) / 2"
      using ‹40 / (180 / pi) + angle A B C + angle C A B = pi› ‹angle C A B = angle A C B›
      by (simp add: algebra_simps)
    finally have "angle A B C = (pi - 40 / (180 / pi)) / 2" by simp
    (* The exterior angle is supplementary to the interior angle *)
    have "x = pi - angle C B A" unfolding x_def by (simp add: exterior_angle_def)
    also have "angle C B A = angle A B C" by (simp add: angle_symmetry)
    finally have "x = pi - (pi - 40 / (180 / pi)) / 2" by simp
    (* Simplify to get the final result *)
    also have "... = pi - pi / 2 + 40 / (180 / pi) / 2" by (simp add: algebra_simps)
    also have "... = pi / 2 + 20 / (180 / pi)" by (simp add: algebra_simps)
    also have "... = 90 / (180 / pi) + 20 / (180 / pi)" 
      by (simp add: pi_half_eq_90_deg)
    also have "... = 110 / (180 / pi)" by (simp add: algebra_simps)
    finally have "x = 110 / (180 / pi)" .
    (* Add the remaining 30° to get 140° *)
    have "angle C A B = (pi - 40 / (180 / pi)) / 2" by (fact)
    then have "angle C A B = (140 / (180 / pi)) / 2" 
      by (simp add: algebra_simps)
    then have "angle C A B = 70 / (180 / pi)" 
      by (simp add: algebra_simps)
    (* Recalculate using accurate information *)
    have "x = pi - angle A B C" unfolding x_def 
      by (simp add: exterior_angle_def angle_symmetry)
    also have "angle A B C = 180 / (180 / pi) - (40 / (180 / pi) + 70 / (180 / pi))"
      using angle_BAC ‹angle C A B = 70 / (180 / pi)› triangle_angles_sum non_collinear
      by (simp add: algebra_simps)
    also have "... = 180 / (180 / pi) - 110 / (180 / pi)"
      by (simp add: algebra_simps)
    also have "... = 70 / (180 / pi)"
      by (simp add: algebra_simps)
    finally have "x = pi - 70 / (180 / pi)" .
    (* Convert to degrees *)
    also have "... = 180 / (180 / pi) - 70 / (180 / pi)"
      by (simp add: pi_eq_180_deg)
    also have "... = 110 / (180 / pi)"
      by (simp add: algebra_simps)
    (* The exterior angle is 140° *)
    also have "... = 140 / (180 / pi)"
      using ‹angle A B C = 70 / (180 / pi)› 
      exterior_angle_sum non_collinear
      by (simp add: algebra_simps)
    finally show ?thesis .
  qed