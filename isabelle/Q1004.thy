theory Geometry_AJ_eq_AK
  imports Complex_Main
begin
locale geometry_setup =
  fixes A B C :: "complex"
  assumes non_collinear: "¬ collinear {A, B, C}"
definition circumcircle where
  "circumcircle A B C = 
    (let O = circumcenter A B C;
         R = dist O A
     in (O, R))"
definition incircle where
  "incircle A B C = 
    (let I = incenter A B C;
         r = inradius A B C
     in (I, r))"
definition incircle_tangency_points where
  "incircle_tangency_points A B C =
    (let I = incenter A B C;
         D = foot I B C;
         E = foot I C A;
         F = foot I A B
     in (D, E, F))"
locale circle_P_setup = geometry_setup +
  fixes O R I r D E F :: "complex"
    and P Q :: "complex" and ρ :: real
    and J G H :: "complex"
  assumes O_def: "O = circumcenter A B C"
    and R_def: "R = dist O A"
    and I_def: "I = incenter A B C"
    and D_def: "D = foot I B C"
    and E_def: "E = foot I C A"
    and F_def: "F = foot I A B"
    and P_circle: "circle P ρ"
    and P_tangent_O: "external_tangent_at (O, R) (P, ρ) J"
    and P_tangent_AB: "on_line G A B ∧ dist P G = ρ"
    and P_tangent_AC: "on_line H A C ∧ dist P H = ρ"
definition point_K where
  "point_K A D P ρ ≡ 
    let L = line_through A D in
    let K_candidates = {X. X ≠ A ∧ on_line X A D ∧ dist P X = ρ}
    in (THE K. K ∈ K_candidates)"
theorem (in circle_P_setup)
  "let K = point_K A D P ρ in
   dist A J = dist A K"
  sorry
end