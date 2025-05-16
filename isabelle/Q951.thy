theory TangentBisector
imports Complex_Main HOL.Real
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt(((fst p1 - fst p2)^2) + ((snd p1 - snd p2)^2))"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle p c r = (dist p c = r)"
definition dot_product :: "point ⇒ point ⇒ real" where
  "dot_product p1 p2 = (fst p1 * fst p2) + (snd p1 * snd p2)"
definition vector_diff :: "point ⇒ point ⇒ point" where
  "vector_diff p1 p2 = (fst p1 - fst p2, snd p1 - snd p2)"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular a b c d = (dot_product (vector_diff b a) (vector_diff d c) = 0)"
definition angle_between :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_between p1 p2 p3 = (let 
    v1 = vector_diff p1 p2;
    v2 = vector_diff p3 p2
  in atan2 (fst v1 * snd v2 - snd v1 * fst v2) (dot_product v1 v2))"
locale tangent_bisector =
  fixes O P A B C D E F :: point
  fixes r :: real
  assumes r_pos: "r > 0"
  assumes A_on_circ: "on_circle A O r"
  assumes B_on_circ: "on_circle B O r" 
  assumes C_on_circ: "on_circle C O r"
  assumes P_outside: "dist P O > r"
  assumes PA_tangent: "dot_product (vector_diff P A) (vector_diff A O) = 0"
  assumes PB_tangent: "dot_product (vector_diff P B) (vector_diff B O) = 0"
  assumes D_on_AB: "∃t. 0 < t ∧ t < 1 ∧ 
    fst D = (1 - t) * fst A + t * fst B ∧ 
    snd D = (1 - t) * snd A + t * snd B"
  assumes CD_perp_AB: "perpendicular A B C D"
  assumes EC_tangent: "∃s. 
    fst E = fst C + s * (-(snd C - snd O)) ∧ 
    snd E = snd C + s * (fst C - fst O) ∧
    (fst A - fst P) * (snd E - snd P) = (snd A - snd P) * (fst E - fst P)"
  assumes FC_tangent: "∃s. 
    fst F = fst C + s * (snd C - snd O) ∧ 
    snd F = snd C + s * (-(fst C - fst O)) ∧
    (fst B - fst P) * (snd F - snd P) = (snd B - snd P) * (fst F - fst P)"
theorem circle_tangent_bisector:
  "let 
    angle_EDC = angle_between E D C;
    angle_FDC = angle_between F D C
   in
   abs angle_EDC = abs angle_FDC"
  sorry