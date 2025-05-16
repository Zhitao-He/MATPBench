theory AreaProblem
imports Complex_Main HOL.Real
begin
(* Define points in the plane *)
definition A :: "real × real" where "A = (6, 0)"
definition B :: "real × real" where "B = (6, 6)"
definition E :: "real × real" where "E = (0, 0)"
definition F :: "real × real" where "F = (0, 6)"
definition D :: "real × real" where "D = (3, 12)"
definition H :: "real × real" where "H = (3, 6)"
(* Helper functions *)
definition vec :: "real × real ⇒ real × real ⇒ real × real" where
  "vec p q = (fst q - fst p, snd q - snd p)"
definition cross_product :: "real × real ⇒ real × real ⇒ real" where
  "cross_product v w = fst v * snd w - snd v * fst w"
(* Area calculations *)
definition area_triangle :: "real × real ⇒ real × real ⇒ real × real ⇒ real" where
  "area_triangle P Q R = abs(cross_product (vec P Q) (vec P R)) / 2"
definition area_quadrilateral :: "real × real ⇒ real × real ⇒ real × real ⇒ real × real ⇒ real" where
  "area_quadrilateral P Q R S = area_triangle P Q R + area_triangle P R S"
(* Theorem about the sum of areas *)
theorem area_sum: "area_triangle D F B + area_quadrilateral F E A B = 54"
  unfolding area_triangle_def area_quadrilateral_def cross_product_def vec_def
  D_def F_def B_def E_def A_def
  by (simp add: algebra_simps)