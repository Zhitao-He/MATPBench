theory Circles_Tangent_Midpoint
imports Complex_Main "HOL-Algebra.Real_Vector_Spaces"
begin

type_synonym point = "real × real"

definition px :: "point ⇒ real" where "px p = fst p"
definition py :: "point ⇒ real" where "py p = snd p"

definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = ((px B - px A) * (py C - py A) = (py B - py A) * (px C - px A))"

definition midpoint :: "point ⇒ point ⇒ point ⇒ bool" where
  "midpoint F D E = (px F = (px D + px E) / 2 ∧ py F = (py D + py E) / 2)"

definition on_circle :: "point ⇒ real ⇒ point ⇒ bool" where
  "on_circle O r X = ((px X - px O)^2 + (py X - py O)^2 = r^2)"

definition tangent :: "point ⇒ real ⇒ point ⇒ point ⇒ bool" where
  "tangent O r A X = (
    on_circle O r X ∧
    let v1 = (px X - px O, py X - py O);
        v2 = (px X - px A, py X - py A)
    in fst v1 * fst v2 + snd v1 * snd v2 = 0)"

definition line_intersect :: "point ⇒ point ⇒ point ⇒ point ⇒ point option" where
  "line_intersect A B C D = (
    let 
      x1 = px A; y1 = py A;
      x2 = px B; y2 = py B;
      x3 = px C; y3 = py C;
      x4 = px D; y4 = py D;
      
      den = (x1 - x2) * (y3 - y4) - (y1 - y2) * (x3 - x4)
    in
      if den = 0 then None
      else 
        let
          t = ((x1 - x3) * (y3 - y4) - (y1 - y3) * (x3 - x4)) / den;
          x = x1 + t * (x2 - x1);
          y = y1 + t * (y2 - y1)
        in Some (x, y))"

theorem circles_tangent_midpoint:
  fixes O P A B C D E F :: point
  fixes rO rP :: real
  assumes rO_pos: "rO > 0"
  and rP_pos: "rP > 0"
  and A_on_O: "on_circle O rO A"
  and A_on_P: "on_circle P rP A"
  and B_on_O: "on_circle O rO B"
  and B_on_P: "on_circle P rP B"
  and A_neq_B: "A ≠ B"
  and C_on_BO_ext: "∃l1. l1 ≠ 0 ∧ 
                       px C = px B + l1 * (px O - px B) ∧
                       py C = py B + l1 * (py O - py B)"
  and C_on_PA_ext: "∃l2. l2 ≠ 0 ∧
                       px C = px P + l2 * (px A - px P) ∧
                       py C = py P + l2 * (py A - py P)"
  and D_tangent_to_O: "tangent O rO C D"
  and E_tangent_to_P: "tangent P rP C E"
  and F_on_DE: "∃t. 0 < t ∧ t < 1 ∧
                   px F = px D + t * (px E - px D) ∧
                   py F = py D + t * (py E - py D)"
  and F_on_AB: "∃s. 0 < s ∧ s < 1 ∧
                   px F = px A + s * (px B - px A) ∧
                   py F = py A + s * (py B - py A)"
  shows "midpoint F D E"
  sorry

end