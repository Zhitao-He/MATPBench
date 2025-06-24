theory Circle_Arc_AB
  imports Complex_Main
begin
locale circle_geom =
  fixes O :: "complex" and r :: real
  assumes r_pos: "r > 0"
  fixes A B C D :: "complex"
  assumes A_on_circle: "cmod (A - O) = r"
    and B_on_circle: "cmod (B - O) = r"
    and C_on_circle: "cmod (C - O) = r"
    and D_on_circle: "cmod (D - O) = r"
    and AD_diameter: "A - O = -(D - O)"
    and AD_length: "cmod (A - D) = 36"
    and AB_parallel_CD: "let v1 = B - A; v2 = D - C in v1 / v2 ∈ ℝ"
begin
definition arc_length :: "complex ⇒ complex ⇒ real" where
  "arc_length P Q = r * arc_cos ((Re ((P - O) / r) * Re ((Q - O) / r) + Im ((P - O) / r) * Im ((Q - O) / r)))"
definition arc_AB_length_is_8pi :: bool where
  "arc_AB_length_is_8pi ⟷ arc_length A B = 8 * pi"
end
end