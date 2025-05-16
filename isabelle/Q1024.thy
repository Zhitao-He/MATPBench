theory CircumcenterOrthocenterAngle
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
type_synonym vector = "real × real"
definition vec :: "point ⇒ point ⇒ vector" where
  "vec A B = (fst B - fst A, snd B - snd A)"
definition dot :: "vector ⇒ vector ⇒ real" where
  "dot v1 v2 = fst v1 * fst v2 + snd v1 * snd v2"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = sqrt((fst B - fst A)^2 + (snd B - snd A)^2)"
definition perpendicular :: "vector ⇒ vector ⇒ bool" where
  "perpendicular v1 v2 = (dot v1 v2 = 0)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = (∃t. vec A C = scaleR t (vec A B) ∧ t ≠ 0)"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line P A B = collinear A B P"
definition circumcenter :: "point ⇒ point ⇒ point ⇒ point" where
  "circumcenter A B C = undefined" 
definition orthocenter :: "point ⇒ point ⇒ point ⇒ point" where
  "orthocenter A B C = undefined" 
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = undefined" 
theorem circumcenter_orthocenter_angle:
  fixes A B C O H D E :: point
  assumes non_collinear: "¬collinear A B C"
      and O_def: "O = circumcenter A B C" 
      and H_def: "H = orthocenter A B C"
      and D_on_AB: "on_line D A B"
      and D_on_CH: "on_line D C H"
      and E_on_AC: "on_line E A C"
      and DE_perp_OD: "perpendicular (vec D E) (vec O D)"
  shows "angle E H D = angle B A C"
proof -
  sorry
qed