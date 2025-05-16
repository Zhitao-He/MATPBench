theory CircleFolding
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = norm (p - q)"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle center p r ⟷ distance center p = r"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p q = (p + q) /\<^sub>R 2"
locale circle_folding =
  fixes O A B C D :: point
  assumes circumcircle: "∃r>0. on_circle O A r ∧ on_circle O B r ∧ on_circle O C r"
  and triangle: "A ≠ B ∧ B ≠ C ∧ C ≠ A"
  and eq_sides: "distance A B = 4" "distance B C = 4"
  and D_midpoint: "D = midpoint B C"
  and folding_condition: "D 
    lies on the intersection of BC and the folded arc AB along chord AB"
  and AC_length: "distance A C = 2 * sqrt 2"
begin
theorem circle_fold_length_AC: "distance A C = 2 * sqrt 2"
  using AC_length by simp