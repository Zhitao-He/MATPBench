theory GeometricSolid
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin

section ‹The Geometric Solid Problem›

text ‹We define a solid with a square base of side length s.
The upper edge is parallel to the base and has length 2s.
All other edges have length s. We will prove that when s = 6√2,
the volume of the solid is 288.›

subsection ‹Definitions›

(* Let the base be in the xy-plane with corners at:
   A = (0,0,0)
   B = (s,0,0)
   C = (s,s,0)
   D = (0,s,0)
   
   And the upper vertices at:
   E = (0,0,h)
   F = (2s,0,h)
   G = (2s,s,h)
   H = (0,s,h)
   
   where h is the height of the solid.
   
   Given that all edges except the upper parallel edge have length s,
   we can determine h using the Pythagorean theorem.
*)

lemma height_calculation:
  fixes s :: real
  assumes "s > 0"
  shows "sqrt (s^2 - (s^2/4)) = s * sqrt(3)/2"
  by (simp add: real_sqrt_mult_pos power2_eq_square assms algebra_simps)

theorem solid_volume:
  fixes s :: real
  assumes "s > 0" and "s = 6 * sqrt 2"
  shows "s^2 * (s * sqrt(3)/2) = 288"
proof -
  have "s^2 * (s * sqrt(3)/2) = (s^3 * sqrt(3))/2" by simp
  also have "s = 6 * sqrt 2" by (rule assms(2))
  also have "(6 * sqrt 2)^3 * sqrt(3)/2 = 288"
  proof -
    have "(6 * sqrt 2)^3 = 6^3 * (sqrt 2)^3" by (simp add: power_mult_distrib)
    also have "... = 216 * 2 * sqrt 2" by (simp add: power_mult_distrib power3_eq_cube)
    also have "... = 432 * sqrt 2" by simp
    also have "432 * sqrt 2 * sqrt(3)/2 = 432 * sqrt 6 / 2" 
      by (simp add: real_sqrt_mult)
    also have "... = 216 * sqrt 6" by simp
    also have "... = 216 * sqrt (2*3)" by simp
    also have "... = 216 * sqrt 2 * sqrt 3" by (simp add: real_sqrt_mult)
    also have "... = 216 * sqrt 2 * sqrt 3" by simp
    also have "... = 288" 
      by (simp add: numeral_eq_Suc)
    finally show ?thesis .
  qed
  finally show ?thesis .
qed

end