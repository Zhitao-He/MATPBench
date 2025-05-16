theory QuadrilateralReflectionPerpendicularity
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition reflection :: "point ⇒ point ⇒ point ⇒ point" where
  "reflection A B P = 2 * ((P - A) • (B - A)) / ((B - A) • (B - A)) *\<^sub>R (B - A) + A - P + A"
definition line :: "point ⇒ point ⇒ point set" where
  "line A B = {P. ∃t. P = (1 - t) *\<^sub>R A + t *\<^sub>R B}"
definition distinct :: "point ⇒ point ⇒ bool" where
  "distinct A B = (A ≠ B)"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line A B P = (P ∈ line A B)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = on_line A B C"
definition circle :: "point ⇒ real ⇒ point set" where
  "circle O r = {P. norm (P - O) = r}"
definition intersection_point :: "point ⇒ point ⇒ point ⇒ point ⇒ point" where
  "intersection_point A B C D = 
    (let 
      v1 = B - A;
      v2 = D - C;
      det = v1 $ 1 * v2 $ 2 - v1 $ 2 * v2 $ 1;
      t = ((C $ 1 - A $ 1) * v2 $ 2 - (C $ 2 - A $ 2) * v2 $ 1) / det
    in
      A + t *\<^sub>R v1)"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular A B C D = ((B - A) • (D - C) = 0)"
locale quadrilateral_reflection_perpendicularity =
  fixes A B C D :: point
  defines "O ≡ (B + D) /\<^sub>R 2"
  defines "r ≡ norm (B - O)"
  defines "k ≡ circle O r"
  assumes ABCD_cyclic: "A ∈ k ∧ B ∈ k ∧ C ∈ k ∧ D ∈ k"
  and BD_distinct: "distinct B D"
  defines "A' ≡ reflection B D A"
  defines "B' ≡ reflection A C B"
  assumes AC_DB'_not_parallel: "¬collinear A C D ∧ ¬collinear A C B'"
  defines "Q ≡ intersection_point A C D B'"
  assumes DB_CA'_not_parallel: "¬collinear D B C ∧ ¬collinear D B A'"
  defines "P ≡ intersection_point D B C A'"
theorem quadrilateral_reflection_perpendicular:
  shows "perpendicular P Q A C"
  oops