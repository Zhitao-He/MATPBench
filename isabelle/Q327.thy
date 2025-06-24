theory Triangle_Orthocenter_HE
  imports Complex_Main
begin
type_synonym point = "real × real"
locale triangle_orthocenter =
  fixes A B C D E F H :: point
  assumes acute: "let α = angle B A C; β = angle A B C; γ = angle A C B in α < pi/2 ∧ β < pi/2 ∧ γ < pi/2"
    and D_on_BC: "collinear B C D"
    and AD_perp_BC: "let v1 = (fst D - fst A, snd D - snd A); v2 = (fst C - fst B, snd C - snd B) in v1 ⋅ v2 = 0"
    and E_on_CA: "collinear C A E"
    and BE_perp_CA: "let v1 = (fst E - fst B, snd E - snd B); v2 = (fst A - fst C, snd A - snd C) in v1 ⋅ v2 = 0"
    and F_on_AB: "collinear A B F"
    and CF_perp_AB: "let v1 = (fst F - fst C, snd F - snd C); v2 = (fst B - fst A, snd B - snd A) in v1 ⋅ v2 = 0"
    and H_on_AD: "collinear A D H"
    and H_on_BE: "collinear B E H"
    and H_on_CF: "collinear C F H"
    and BD_len: "dist B D = 5"
    and CD_len: "dist C D = 9"
    and CE_len: "dist C E = 42/5"
definition HE_length :: "point ⇒ point ⇒ real" where
  "HE_length H E = dist H E"
end