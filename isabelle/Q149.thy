theory Circle_Arcs
  imports Complex_Main
begin
locale circle_geom =
  fixes O :: "complex"  
    and r :: real       
    and A B C D E F :: "complex"
  assumes
    nonzero_r: "r > 0"
    and on_circle: "cmod (A - O) = r ∧ cmod (B - O) = r ∧ cmod (C - O) = r ∧ 
                    cmod (D - O) = r ∧ cmod (E - O) = r ∧ cmod (F - O) = r"
    and diam_AB: "A - O = -(B - O)"  
    and diam_EC: "E - O = -(C - O)"  
    and eq_angles: 
      "let θ = Arg ((B - O) / (D - O)) in
       θ = Arg ((D - O) / (E - O)) ∧
       θ = Arg ((E - O) / (F - O)) ∧
       θ = Arg ((F - O) / (A - O)) ∧ θ > 0"
begin
definition arc_AC_deg :: real where
  "arc_AC_deg = (let α = Arg ((C - O) / (A - O)) in if α < 0 then α * 180 / pi + 360 else α * 180 / pi)"
end
end