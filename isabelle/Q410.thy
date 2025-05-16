theory RectangularPrism
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^3"
definition is_rect_prism :: "point list ⇒ bool" where
  "is_rect_prism pts = (length pts = 8 ∧ 
    let A = pts!0; B = pts!1; C = pts!2; D = pts!3; 
        E = pts!4; F = pts!5; G = pts!6; H = pts!7 in
    (E - A) = (F - B) ∧ (F - B) = (G - C) ∧ (G - C) = (H - D) ∧ (H - D) = (E - A) ∧
    ((B - A) • (C - B)) = 0 ∧ ((C - B) • (D - C)) = 0 ∧ ((D - C) • (A - D)) = 0 ∧
    ((B - A) • (F - B)) = 0 ∧ ((C - B) • (G - C)) = 0 ∧ ((D - C) • (H - D)) = 0 ∧ ((A - D) • (E - A)) = 0)"
definition triangle_area :: "point ⇒ point ⇒ point ⇒ real" where
  "triangle_area A B C = norm (cross_product (B - A) (C - A)) / 2"
definition pyramid_volume :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "pyramid_volume A B C H = triangle_area A B C * norm (H - A) / 3"
definition prism_volume :: "point list ⇒ real" where
  "prism_volume pts = (if is_rect_prism pts then
                         let A = pts!0; B = pts!1; C = pts!2; E = pts!4 in
                         norm (cross_product (B - A) (C - B)) * norm (E - A)
                       else 0)"
lemma prism_pyramid_volume:
  fixes A B C D E F G H :: point
  assumes "is_rect_prism [A, B, C, D, E, F, G, H]"
  assumes "pyramid_volume A B C H = 20"
  shows "prism_volume [A, B, C, D, E, F, G, H] = 120"