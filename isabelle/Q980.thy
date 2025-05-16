theory MidpointTangency
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
consts O :: point
consts P :: point
consts A :: point
consts B :: point
consts C :: point
consts D :: point
consts E :: point
consts F :: point
consts rO :: real
consts rP :: real
axiomatization where
  rO_pos: "rO > 0" and
  rP_pos: "rP > 0"
axiomatization where
  A_on_O: "norm (A - O) = rO" and
  A_on_P: "norm (A - P) = rP" and
  B_on_O: "norm (B - O) = rO" and
  B_on_P: "norm (B - P) = rP" and
  AB_distinct: "A ≠ B"
axiomatization where
  C_on_BO: "∃k1. C = B + k1 *⇧ (O - B)" and
  C_on_PA: "∃k2. C = P + k2 *⇧ (A - P)" and
  O_neq_P: "O ≠ P"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line A B X ≡ ∃t. X = A + t *⇧ (B - A)"
axiomatization where
  D_on_O: "norm (D - O) = rO" and
  E_on_P: "norm (E - P) = rP" and
  D_neq_E: "D ≠ E"
definition is_tangent :: "point ⇒ real ⇒ point ⇒ point ⇒ bool" where
  "is_tangent center radius point1 point2 ≡ 
    norm (point1 - center) = radius ∧
    ((point1 - center) ∙ (point2 - point1)) = 0"
axiomatization where
  CD_tangent_O: "is_tangent O rO D C" and
  CE_tangent_P: "is_tangent P rP E C"
axiomatization where
  F_on_DE: "on_line D E F" and
  F_on_AB: "on_line A B F"
theorem intersection_tangent_midpoint: "F = (D + E) / 2"
  sorry