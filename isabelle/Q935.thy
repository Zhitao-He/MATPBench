theory Geometry_Problem_Formalization
imports Main
begin
type_synonym point = "real × real"
definition x_coord :: "point ⇒ real" where "x_coord p = fst p"
definition y_coord :: "point ⇒ real" where "y_coord p = snd p"
definition dist_sq :: "point ⇒ point ⇒ real" where
  "dist_sq p1 p2 = (x_coord p2 - x_coord p1)^2 + (y_coord p2 - y_coord p1)^2"
lemma dist_sq_nonneg: "dist_sq p1 p2 ≥ 0"
  by (simp add: dist_sq_def pow2_ge_0 add_nonneg_nonneg)
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt (dist_sq p1 p2)"
lemma dist_ge_0: "dist p1 p2 ≥ 0"
  by (simp add: dist_def sqrt_ge_0 dist_sq_nonneg)
definition segments_perpendicular_at_common_point :: "point ⇒ point ⇒ point ⇒ point ⇒ bool"
  where "segments_perpendicular_at_common_point P1 P2 P3 P4 ≡
    P2 = P3 ∧ ((x_coord P2 - x_coord P1) * (x_coord P4 - x_coord P2) +
              (y_coord P2 - y_coord P1) * (y_coord P4 - y_coord P2) = 0)"
definition lines_parallel :: "point ⇒ point ⇒ point ⇒ point ⇒ bool"
  where "lines_parallel P1 P2 P3 P4 ≡
    (x_coord P2 - x_coord P1) * (y_coord P4 - y_coord P3) -
    (y_coord P2 - y_coord P1) * (x_coord P4 - x_coord P3) = 0"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool"
  where "collinear P1 P2 P3 ≡ lines_parallel P1 P2 P1 P3"
definition on_segment :: "point ⇒ point ⇒ point ⇒ bool"
  where "on_segment P1 M P2 ⟷ collinear P1 M P2 ∧ dist P1 M + dist M P2 = dist P1 P2"
locale GeometricProblem =
  fixes A B C D E F :: point  
  assumes
    dist_AB: "dist A B = real_of_int 35" and
    dist_CD: "dist C D = real_of_int 19" and
    perimeter_DBAC: "dist D B + dist B A + dist A C + dist C D = real_of_int 74" and
    DC_parallel_AB: "lines_parallel D C A B" and
    isosceles_legs: "dist D B = dist A C" and
    A_neq_B: "A ≠ B" and 
    C_neq_D: "C ≠ D" and 
    D_not_on_line_AB: "¬ collinear A B D" and
    C_not_on_line_AB: "¬ collinear A B C" and
    DE_perp_AE: "segments_perpendicular_at_common_point D E E A" and
    CF_perp_AF: "segments_perpendicular_at_common_point C F F A" and
    E_on_line_AB: "collinear A B E" and
    F_on_line_AB: "collinear A B F" and
    order_B_E_F: "on_segment B E F" and 
    order_E_F_A: "on_segment E F A" and 
    dist_BE_pos: "dist B E > 0" and  
    dist_EF_pos: "dist E F > 0" and  
    dist_FA_pos: "dist F A > 0" and  
    EF_equals_CD: "dist E F = dist C D" and
    DE_equals_CF: "dist D E = dist C F" and
    BE_equals_FA: "dist B E = dist F A"
  shows Area_DBAC_is_162: "(dist A B + dist C D) * dist D E / (real_of_int 2) = real_of_int 162"
end