theory TriangleReflection
imports
  Main
  Complex_Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = complex
definition segment :: "point ⇒ point ⇒ point set" where
  "segment A B = {(1 - t) * A + t * B | t. 0 ≤ t ∧ t ≤ 1}"
definition on_segment :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_segment A B P ⟷ (∃t. 0 ≤ t ∧ t ≤ 1 ∧ P = (1 - t) * A + t * B)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = 
     let 
       v1 = A - B;
       v2 = C - B
     in
     cmod(arg(v2) - arg(v1))"
definition deg_of_rad :: "real ⇒ real" where
  "deg_of_rad r = r * 180 / pi"
definition rad_of_deg :: "real ⇒ real" where
  "rad_of_deg d = d * pi / 180"
definition reflect_point_over_line :: "point ⇒ point ⇒ point ⇒ point" where
  "reflect_point_over_line A B P =
     let 
       v = B - A;  
       u = P - A;  
       w = v * (((u ⋅ v) / (v ⋅ v))) 
     in
     A + w + (w - u)" 
locale triangle_reflection =
  fixes A B C D :: point
  assumes D_on_BC: "on_segment B C D"
  assumes distinct_points: "A ≠ B" "A ≠ C" "B ≠ C"
  assumes angle_BAC: "deg_of_rad(angle B A C) = 40"
  assumes reflection: "∀P. (on_segment A B P ∨ P = B) ⟶ 
                          (reflect_point_over_line A D P = C ∨ 
                           reflect_point_over_line A D P = D)"
theorem (in triangle_reflection) angle_B_is_70:
  "deg_of_rad(angle A B C) = 70"
  sorry 