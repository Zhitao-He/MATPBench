theory CircleAngle
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale circle_with_diameters =
  fixes O :: "real^2" 
    and P N G A :: "real^2" 
  assumes 
    on_circle: "dist P O = dist N O" "dist G O = dist A O"
               "dist P O = dist G O" 
    and diameter_PN: "O ∈ closed_segment P N" 
    and diameter_GA: "O ∈ closed_segment G A" 
    and distinct_points: "O ≠ P" "O ≠ N" "O ≠ G" "O ≠ A"
                         "P ≠ N" "G ≠ A" "P ≠ G" "P ≠ A" "N ≠ G" "N ≠ A"
context circle_with_diameters
begin
definition angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real"
  where "angle A B C = 
    (if B = A ∨ B = C then 0 
     else let 
       v1 = (A - B);
       v2 = (C - B)
     in 
       arccos ((v1 ∙ v2) / (norm v1 * norm v2)))"
definition angle_degrees :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real"
  where "angle_degrees A B C = (angle A B C) * (180 / pi)"
axiomatization
  where angle_GOP: "angle_degrees G O P = 78"
theorem angle_NGA: "angle_degrees N G A = 39"
  sorry