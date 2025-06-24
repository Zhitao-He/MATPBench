theory Triangle_RSV_TVS
  imports Complex_Main
begin
locale points =
  fixes R S V T :: "'a::euclidean_space"
definition triangle :: "'a::euclidean_space ⇒ 'a ⇒ 'a ⇒ bool" where
  "triangle A B C ≡ ¬ collinear {A, B, C}"
definition angle_deg :: "'a::euclidean_space ⇒ 'a ⇒ 'a ⇒ real" where
  "angle_deg A B C ≡ 
    let u = A - B; v = C - B in
    arccos ((u • v) / (norm u * norm v)) * 180 / pi"
locale triangle_problem =
  fixes R S V T :: "real^2"
  assumes triangle_RSV: "triangle R S V"
    and triangle_TVS: "triangle T V S"
    and angle_RVS_78: "angle_deg R V S = 78"
    and angle_SVT_90: "angle_deg S V T = 90"
    and length_RS: "dist R S = 2 * y - 1"
    and length_ST: "dist S T = 24.5"
    and length_VT: "dist V T = 24"
    and triangles_congruent: "∃f. bij_betw f {R,S,V} {T,V,S} ∧ (∀A∈{R,S,V}. ∀B∈{R,S,V}. dist A B = dist (f A) (f B))"
    and find_x: "angle_deg V T S = x"
    and x_is_12: "x = 12"
end