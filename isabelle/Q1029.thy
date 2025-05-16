theory Cyclic_AFOE
imports Complex_Main 
begin
type_synonym point = "real × real"
definition px :: "point ⇒ real" where "px p = fst p"
definition py :: "point ⇒ real" where "py p = snd p"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = ((px B - px A) * (py C - py A) = (py B - py A) * (px C - px A))"
definition eq_pt :: "point ⇒ point ⇒ bool" where
  "eq_pt P Q = (px P = px Q ∧ py P = py Q)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((px A + px B) / 2, (py A + py B) / 2)"
definition perpendicular_bisector :: "point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular_bisector A B Q = (
    let M = midpoint A B in
    (px Q - px M) * (px B - px A) + (py Q - py M) * (py B - py A) = 0)"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line P A B = (∃t. eq_pt P (px A + t * (px B - px A), py A + t * (py B - py A)))"
definition circumcenter :: "point ⇒ point ⇒ point ⇒ point" where
  "circumcenter A B C = 
    let D = 2 * ((px A - px C) * (py B - py C) - (py A - py C) * (px B - px C));
        x = (((px A - px C) * (px A + px C) + (py A - py C) * (py A + py C)) / 2 * (py B - py C) -
             ((px B - px C) * (px B + px C) + (py B - py C) * (py B + py C)) / 2 * (py A - py C)) / D;
        y = (((px B - px C) * (px B + px C) + (py B - py C) * (py B + py C)) / 2 * (px A - px C) -
             ((px A - px C) * (px A + px C) + (py A - py C) * (py A + py C)) / 2 * (px B - px C)) / D
    in (x, y)"
definition on_circle :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "on_circle P Q R S = (
    let dist_sq = λp1 p2. (px p1 - px p2)^2 + (py p1 - py p2)^2 
    in ∃C. dist_sq C P = dist_sq C Q ∧
           dist_sq C Q = dist_sq C R ∧
           dist_sq C R = dist_sq C S ∧
           ¬eq_pt P Q ∧ ¬eq_pt P R ∧ ¬eq_pt P S ∧
           ¬eq_pt Q R ∧ ¬eq_pt Q S ∧ ¬eq_pt R S)"
theorem cyclic_AFOE:
  fixes A B C D :: point
  assumes "¬collinear A B C"
  assumes "∃t. eq_pt D (px B + t * (px C - px B), py B + t * (py C - py B))"
  defines "O ≡ circumcenter A B C"
  defines "F_def ≡ λF_pt. on_line F_pt A B ∧ perpendicular_bisector B D F_pt"
  defines "E_def ≡ λE_pt. on_line E_pt A C ∧ perpendicular_bisector C D E_pt"
  shows "∀F_pt E_pt. F_def F_pt ⟶ E_def E_pt ⟶ on_circle A F_pt O E_pt"
  