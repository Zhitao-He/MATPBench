theory Geometry_Problem_Definition
  imports Main "HOL-Analysis.Real" "HOL-Analysis.Transcendental"
begin
type_synonym point = "real × real"
definition vec_add :: "point ⇒ point ⇒ point" (infixl "+v" 65) where
  "p +v q = (fst p + fst q, snd p + snd q)"
definition vec_sub :: "point ⇒ point ⇒ point" (infixl "-v" 65) where
  "p -v q = (fst p - fst q, snd p - snd q)"
definition scalar_mult :: "real ⇒ point ⇒ point" (infixl "*v" 70) where
  "s *v p = (s * fst p, s * snd p)"
definition dot_product :: "point ⇒ point ⇒ real" (infixl "•" 70) where
  "p • q = (fst p * fst q) + (snd p * snd q)"
definition norm_sq :: "point ⇒ real" where
  "norm_sq p = p • p"
definition norm :: "point ⇒ real" where
  "norm p = sqrt (norm_sq p)" 
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = norm (p -v q)"
definition angle_points :: "point ⇒ point ⇒ point ⇒ real" ("∠⇩<sub>p</sub> _ _ _") where
  "∠⇩<sub>p</sub> P Q R = (let QP = P -v Q; QR = R -v Q in
    if QP = (0,0) ∨ QR = (0,0) then 0 
    else acos ((QP • QR) / (norm QP * norm QR)))" 
definition degrees_to_radians :: "real ⇒ real" where
  "degrees_to_radians d = d * (pi / 180)" 
definition is_collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_collinear A B C ≡ fst (B -v A) * snd (C -v A) - snd (B -v A) * fst (C -v A) = 0"
definition is_on_segment :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_on_segment P A B ≡ is_collinear A P B ∧ (P -v A) • (P -v B) ≤ 0"
definition segments_perpendicular :: "point ⇒ point ⇒ point ⇒ bool" where
  "segments_perpendicular A B C ≡ (A -v B) • (C -v B) = 0"
definition foot_perpendicular :: "point ⇒ point ⇒ point ⇒ point" where
  "foot_perpendicular P A B = (let vec_AB = B -v A; vec_AP = P -v A in
    if vec_AB = (0,0) then A 
    else A +v (((vec_AP • vec_AB) / (norm_sq vec_AB)) *v vec_AB))"
definition cross_product_2d :: "point ⇒ point ⇒ real" where
  "cross_product_2d u v = fst u * snd v - snd u * fst v"
definition lines_intersect_param_t :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "lines_intersect_param_t P1 P2 P3 P4 =
    (let v1 = P2 -v P1; v2 = P4 -v P3; P3_minus_P1 = P3 -v P1 in
     cross_product_2d P3_minus_P1 v2 / cross_product_2d v1 v2)"
definition intersection_of_lines :: "point ⇒ point ⇒ point ⇒ point ⇒ point" where
  "intersection_of_lines P1 P2 P3 P4 =
    P1 +v (lines_intersect_param_t P1 P2 P3 P4 *v (P2 -v P1))"
locale geometric_problem_setup =
  fixes A B C D :: point 
  fixes O :: point       
  fixes E F G H :: point 
  fixes K :: point       
  fixes M :: point       
  fixes r :: real        
  assumes square_ABCD:
    "let side_len = dist A B in
     side_len > 0 ∧
     dist B C = side_len ∧ dist C D = side_len ∧ dist D A = side_len ∧ 
     (A +v C) *v 0.5 = (B +v D) *v 0.5 ∧ 
     segments_perpendicular D A B" 
  assumes O_is_center_of_square:
    "O = (A +v C) *v 0.5" 
  assumes radius_positive:
    "r > 0"
  assumes tangency_properties:
    "E = foot_perpendicular O A B ∧ is_on_segment E A B ∧ dist O E = r ∧
     F = foot_perpendicular O B C ∧ is_on_segment F B C ∧ dist O F = r ∧
     G = foot_perpendicular O C D ∧ is_on_segment G C D ∧ dist O G = r ∧
     H = foot_perpendicular O D A ∧ is_on_segment H D A ∧ dist O H = r"
  assumes K_properties:
    "is_on_segment K B D ∧  
     dist O K = r"          
  assumes M_properties:
    "cross_product_2d (F -v A) (K -v B) ≠ 0 ∧ 
     M = intersection_of_lines A F B K ∧      
     is_on_segment M A F ∧                    
     is_on_segment M B K"                     
  assumes angle_AMK:
    "M ≠ A ∧ M ≠ K ∧                          
     ∠⇩<sub>p</sub> A M K = degrees_to_radians 130.9" 
begin
end