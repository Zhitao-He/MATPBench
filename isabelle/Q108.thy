theory Square_Quadrilaterals
  imports Complex_Main
begin
type_synonym point = "real × real"
locale square =
  fixes A B C D :: point
  assumes AB: "A = (0, s)" "B = (0, 0)" "C = (s, 0)" "D = (s, s)"
    and s_pos: "s > 0"
definition on_segment :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_segment P Q X ⟷ (∃t::real. 0 < t ∧ t < 1 ∧ X = ((1-t)*fst P + t*fst Q, (1-t)*snd P + t*snd Q))"
locale square_with_points =
  square A B C D for A B C D :: point +
  fixes E F G H :: point
  assumes E_on_AB: "on_segment A B E"
    and F_on_BC: "on_segment B C F"
    and G_on_CD: "on_segment C D G"
    and H_on_DA: "on_segment D A H"
definition segment_length :: "point ⇒ point ⇒ real" where
  "segment_length P Q = sqrt ((fst P - fst Q)^2 + (snd P - snd Q)^2)"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular P Q R S ⟷ 
    let v1 = (fst Q - fst P, snd Q - snd P);
        v2 = (fst S - fst R, snd S - snd R)
    in v1⋅v2 = 0"
  where "v1⋅v2 ≡ fst v1 * fst v2 + snd v1 * snd v2"
locale square_with_quads =
  square_with_points A B C D E F G H +
  fixes P :: point
  assumes EG_len: "segment_length E G = 34"
    and FH_len: "segment_length F H = 34"
    and EG_FH_perp: "∃P. (∃t1 t2. 0 < t1 ∧ t1 < 1 ∧ 0 < t2 ∧ t2 < 1 ∧ 
                        P = ((1-t1)*fst E + t1*fst G, (1-t1)*snd E + t1*snd G) ∧
                        P = ((1-t2)*fst F + t2*fst H, (1-t2)*snd F + t2*snd H)) ∧
                        perpendicular E G F H"
    and P_on_EG: "∃t1. 0 < t1 ∧ t1 < 1 ∧ P = ((1-t1)*fst E + t1*fst G, (1-t1)*snd E + t1*snd G)"
    and P_on_FH: "∃t2. 0 < t2 ∧ t2 < 1 ∧ P = ((1-t2)*fst F + t2*fst H, (1-t2)*snd F + t2*snd H)"
definition area_quadrilateral :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "area_quadrilateral A B C D = 
    0.5 * abs ((fst A * snd B + fst B * snd C + fst C * snd D + fst D * snd A)
             - (snd A * fst B + snd B * fst C + snd C * fst D + snd D * fst A))"
definition quad1 where "quad1 = area_quadrilateral A E P H"
definition quad2 where "quad2 = area_quadrilateral B F P E"
definition quad3 where "quad3 = area_quadrilateral C G P F"
definition quad4 where "quad4 = area_quadrilateral D H P G"
definition area_ratio where
  "area_ratio = [quad1, quad2, quad3, quad4]"
definition given_ratio where
  "given_ratio = [269, 275, 405, 411]"
definition square_area where
  "square_area = 850"
end