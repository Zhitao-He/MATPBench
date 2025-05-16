theory GeometryTheorem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition px :: "point ⇒ real" where
  "px p = fst p"
definition py :: "point ⇒ real" where
  "py p = snd p"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = ((px B - px A) * (py C - py A) = (py B - py A) * (px C - px A))"
definition on_circle :: "point ⇒ real ⇒ point ⇒ bool" where
  "on_circle O r P = ((px P - px O)^2 + (py P - py O)^2 = r^2)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((px A + px B) / 2, (py A + py B) / 2)"
definition tangent_at :: "point ⇒ real ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "tangent_at O r T L1 L2 = (
    on_circle O r T ∧
    let v1 = (px L1 - px L2, py L1 - py L2);
        n = (px T - px O, py T - py O)
    in (fst v1 * fst n + snd v1 * snd n) = 0)"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line A B P = (∃t. px P = px A + t * (px B - px A) ∧ py P = py A + t * (py B - py A))"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C D = (
    let v1 = (px B - px A, py B - py A);
        v2 = (px D - px C, py D - py C)
    in (fst v1 * fst v2 + snd v1 * snd v2) = 0)"
locale geometry_problem =
  fixes O :: point
  fixes r :: real
  assumes r_pos: "r > 0"
  fixes A B :: point
  assumes AB_diameter: "on_circle O r A ∧ on_circle O r B ∧ midpoint A B = O"
  fixes C :: point
  assumes CB_tangent: "tangent_at O r B C B"
  fixes D :: point
  assumes D_on_arc: "on_circle O r D ∧ ¬collinear A O D ∧ ¬collinear B O D"
  fixes F :: point
  assumes F_on_circle: "on_circle O r F"
  assumes CDF_collinear: "collinear C D F ∧ F ≠ D"
  fixes E :: point
  assumes E_on_AD_OC: "∃k l. 0 < k ∧ 0 < l ∧
    (px A + k * (px D - px A), py A + k * (py D - py A)) =
    (px O + l * (px C - px O), py O + l * (py C - py O)) ∧
    E = (px A + k * (px D - px A), py A + k * (py D - py A))"
theorem geometry_perpendicular_EB_FB:
  "perpendicular E B F B"
  sorry