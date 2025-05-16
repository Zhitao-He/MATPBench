theory CircleOrthocentreBisector
imports
  Main
  "HOL-Analysis.Euclidean_Space"
begin
section "Geometry Theorem about Angle Bisector"
locale circle_orthocenter_bisector =
  fixes A B C :: "'a::euclidean_space"
  assumes triangle: "~collinear A B C"
  (* O is the circumcenter of triangle ABC *)
  fixes O :: "'a"
  assumes circumcenter: "dist A O = dist B O" "dist B O = dist C O"
  (* Define the circumcircle *)
  defines "circle_O r P ≡ dist O P = r"
  defines "r ≡ dist O A"
  (* F is on the angle bisector of BAC and on the circumcircle *)
  fixes F :: "'a"
  assumes F_on_bisector: "angle (B - A) (F - A) = angle (F - A) (C - A)" 
  assumes F_on_circle: "circle_O r F"
  assumes F_not_A: "F ≠ A"
  (* H is the orthocenter of triangle ABC *)
  fixes H :: "'a"
  assumes orthocenter: 
    "inner_product (B - A) (C - H) = 0" 
    "inner_product (C - B) (A - H) = 0" 
    "inner_product (A - C) (B - H) = 0"
  (* CE perpendicular to AB at E *)
  fixes E :: "'a"
  assumes E_on_AB: "∃t. E = A + t *R (B - A) ∧ 0 ≤ t ∧ t ≤ 1"
  assumes CE_perp_AB: "inner_product (E - C) (B - A) = 0"
  (* BD perpendicular to AC at D *)
  fixes D :: "'a"
  assumes D_on_AC: "∃t. D = A + t *R (C - A) ∧ 0 ≤ t ∧ t ≤ 1"
  assumes BD_perp_AC: "inner_product (D - B) (C - A) = 0"
  (* Circumcircle of triangle ADE *)
  fixes O' :: "'a"
  assumes circumcenter_ADE: "dist A O' = dist D O'" "dist D O' = dist E O'"
  defines "r' ≡ dist O' A"
  defines "circle_O' r' P ≡ dist O' P = r'"
  (* G is the intersection of the circumcircle of ADE with circle O *)
  fixes G :: "'a"
  assumes G_on_circle_O: "circle_O r G"
  assumes G_on_circle_O': "circle_O' r' G"
  assumes G_not_A: "G ≠ A"
  (* I is the intersection of GF with BC *)
  fixes I :: "'a"
  assumes I_on_GF: "∃t. I = G + t *R (F - G) ∧ t ≥ 0"
  assumes I_on_BC: "∃s. I = B + s *R (C - B) ∧ 0 ≤ s ∧ s ≤ 1"
begin
(* Theorem: IH bisects angle BHC *)
theorem IH_bisects_BHC:
  "angle (B - H) (I - H) = angle (I - H) (C - H)"
sorry