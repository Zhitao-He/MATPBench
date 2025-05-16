theory IncircleCircumcircleTangency
imports Complex_Main
begin
type_synonym point = "complex"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ⟷ ∃t. t ∈ ℝ ∧ C - A = t *R (B - A)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = (A + B) / 2"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C ⟷ (Re((B-A) * cnj(C-A)) = 0)"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line P A B ⟷ collinear A B P"
definition circle :: "point ⇒ real ⇒ point set" where
  "circle O r = {P. cmod(P - O) = r}"
definition circle_contains :: "point ⇒ real ⇒ point ⇒ bool" where
  "circle_contains O r P ⟷ cmod(P - O) = r"
definition tangent_circles :: "point ⇒ real ⇒ point ⇒ real ⇒ point ⇒ bool" where
  "tangent_circles O₁ r₁ O₂ r₂ P ⟷ P ∈ circle O₁ r₁ ∧ P ∈ circle O₂ r₂ ∧ 
   cmod(O₁ - O₂) = r₁ + r₂ ∨ cmod(O₁ - O₂) = |r₁ - r₂|"
lemma "tangent_circles O₁ r₁ O₂ r₂ P ⟹ P ∈ circle O₁ r₁ ∧ P ∈ circle O₂ r₂"
  by (simp add: tangent_circles_def)
context
  fixes A B C :: point
  assumes non_collinear: "¬ collinear A B C"
  fixes I :: point and r_I :: real
  assumes incircle: "circle_contains I r_I A ∧ circle_contains I r_I B ∧ circle_contains I r_I C"
  fixes D :: point
  assumes D_on_BC: "on_line D B C"
  assumes D_tangent: "circle_contains I r_I D"
  fixes E :: point
  assumes E_on_BC: "on_line E B C"
  assumes AE_perp_BC: "perpendicular E A B ∧ perpendicular E A C"
  defines "F ≡ midpoint A E"
  fixes G :: point
  assumes G_on_DF: "on_line G D F ∧ G ≠ D"
  assumes G_on_incircle: "circle_contains I r_I G"
  fixes O :: point and r_O :: real
  assumes O_circum_BCG: "circle_contains O r_O B ∧ circle_contains O r_O C ∧ circle_contains O r_O G"
begin
theorem incircle_circumcircle_tangent:
  "tangent_circles O r_O I r_I G"
  sorry