theory QuadrilateralArea
imports
  Main
  "HOL-Analysis.Euclidean_Space"
begin
locale quadrilateral_setup =
  fixes A B C D E :: "real^2"
  assumes AE_length: "dist A E = 12"
  and BE_length: "dist B E = 12"
  and CE_length: "dist C E = 17"
  and DE_length: "dist D E = 17"
  and perp_DE_AE: "(E - D) ⊥ (E - A)"
context quadrilateral_setup begin
definition area_triangle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "area_triangle P Q R = (1/2) * norm (cross_product (Q - P) (R - P))"
definition area_quadrilateral :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "area_quadrilateral P Q R S = area_triangle P Q R + area_triangle P R S"
theorem area_ADBC_408: "area_quadrilateral A D B C = 408"
  sorry