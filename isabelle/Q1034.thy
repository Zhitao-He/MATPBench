theory Triangle_OI
  imports Complex_Main
begin
type_synonym point = complex
locale triangle_geom =
  fixes A B C :: point
  assumes non_collinear: "A ≠ B" "B ≠ C" "C ≠ A" "¬ collinear {A, B, C}"
begin
definition circumcenter :: point where
  "circumcenter = (SOME O. dist O A = dist O B ∧ dist O B = dist O C)"
definition incenter :: point where
  "incenter = (SOME I. 
      let d = dist I (line_through B C) in
      d = dist I (line_through A C) ∧ d = dist I (line_through A B))"
abbreviation len_AB :: real where "len_AB ≡ dist A B"
abbreviation len_AC :: real where "len_AC ≡ dist A C"
abbreviation len_BC :: real where "len_BC ≡ dist B C"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular P Q R S ⟷ 
    let v1 = Q - P; v2 = S - R in
    Re (v1 * cnj v2) = 0"
assumes O_def: "O = circumcenter"
    and I_def: "I = incenter"
    and perp: "perpendicular O I A I"
definition problem_conclusion :: bool where
  "problem_conclusion ⟷ (len_AB + len_AC = 2 * len_BC)"
end
end