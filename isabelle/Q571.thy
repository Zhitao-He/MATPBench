theory Arc_BFA_Theorem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin

text ‹As shown in the diagram, ∠CBD=55°, ∠FBG=35°, the center of ⊙B is B. 
Find the measure of arc BFA.›

locale circle_with_points =
  fixes B A C D F G :: "real^2"
  assumes on_circle: "∥A - B∥ = ∥C - B∥" "∥A - B∥ = ∥D - B∥" "∥A - B∥ = ∥F - B∥" "∥A - B∥ = ∥G - B∥"
  and distinct: "distinct [A, C, D, F, G]"
  and angle_CBD: "angle (C - B) (D - B) = 55 / 180 * pi"
  and angle_FBG: "angle (F - B) (G - B) = 35 / 180 * pi"

context circle_with_points
begin

definition measure_arc :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "measure_arc O P Q = angle (P - O) (Q - O) * (180 / pi)"

theorem arc_BFA: "measure_arc B F A = 270"
  
end

end