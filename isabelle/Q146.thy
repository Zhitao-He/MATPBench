theory Circle_Arcs
  imports Complex_Main
begin
typedecl point
record circle =
  center :: point
  radius :: real
axiomatization O :: point and r :: real where r_gt0: "r > 0"
definition circ :: circle where
  "circ ≡ ⦇center = O, radius = r⦈"
axiomatization A B C D E F :: point
  where
    A_on: "dist O A = r" and
    B_on: "dist O B = r" and
    C_on: "dist O C = r" and
    D_on: "dist O D = r" and
    E_on: "dist O E = r" and
    F_on: "dist O F = r"
definition diameter_AB :: "point ⇒ point ⇒ bool" where
  "diameter_AB P Q ≡ dist O P = r ∧ dist O Q = r ∧ O ∈ open_segment P Q"
definition diameter_EC :: "point ⇒ point ⇒ bool" where
  "diameter_EC P Q ≡ dist O P = r ∧ dist O Q = r ∧ O ∈ open_segment P Q"
axiomatization where
  AB_is_diameter: "diameter_AB A B" and
  EC_is_diameter: "diameter_EC E C"
axiomatization where
  angle_BOD_eq_DOE: "∠ B O D = ∠ D O E" and
  angle_DOE_eq_EOF: "∠ D O E = ∠ E O F" and
  angle_EOF_eq_FOA: "∠ E O F = ∠ F O A"
consts angle :: "point ⇒ point ⇒ point ⇒ real" ("∠ _ _ _")
definition arc_measure :: "circle ⇒ point ⇒ point ⇒ real" where
  "arc_measure c P Q ≡  
    let O = center c in
    let θ = angle P O Q in
    θ * 180 / pi"
theorem arc_AE_is_90:
  "arc_measure circ A E = 90"
  sorry
end