theory OM_eq_OD_Problem
  imports Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition on_line :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "on_line P Q R ≡ Q = R ∨ (∃t::real. P = Q + t *⇩<sub>R</sub> (R - Q))"
definition on_segment :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "on_segment P Q R ≡ on_line P Q R ∧ dist Q P + dist P R = dist Q R"
definition midpoint :: "point ⇒ point ⇒ point ⇒ point" where
  "midpoint P Q = (P + Q) / (2::real)"
definition is_circumcenter :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_circumcenter O A B C ≡
    ¬(on_line A B C) ∧ 
    dist O A = dist O B ∧ dist O B = dist O C"
theorem OM_equals_OD:
  fixes A B C D E F M O :: point
  assumes
    distinct_vertices: "A ≠ B ∧ B ≠ C ∧ A ≠ C" and
    not_collinear_ABC: "¬(on_line A B C)" and 
    D_is_foot_of_altitude: "on_line D B C" and 
    AD_perpendicular_BC: "(A - D) ⋅ (B - C) = 0" and 
    M_is_midpoint_of_BC: "M = midpoint B C" and
    E_on_segment_AB: "on_segment E A B" and 
    F_on_segment_AC: "on_segment F A C" and 
    E_M_F_collinear: "on_line M E F" and 
    AE_equals_AF: "dist A E = dist A F" and
    O_is_circumcenter_of_ABC: "is_circumcenter O A B C"
  shows "dist O M = dist O D"
  sorry
end