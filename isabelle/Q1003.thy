theory GeometryProblem
imports Main 
begin
type_synonym point = "real × real"
definition dist_sq :: "point ⇒ point ⇒ real" where
"dist_sq A B = (fst A - fst B)^2 + (snd A - snd B)^2"
definition dist :: "point ⇒ point ⇒ real" where
"dist A B = sqrt (dist_sq A B)"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
"on_circle Pt Center Radius = (Radius > 0 ∧ dist_sq Pt Center = Radius^2)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
"collinear A B C = ((fst B - fst A) * (snd C - snd A) - (snd B - snd A) * (fst C - fst A) = 0)"
definition on_segment :: "point ⇒ point ⇒ point ⇒ bool" where
"on_segment P A B = (collinear A P B ∧
                     (let vec_AP = (fst P - fst A, snd P - snd A);
                          vec_BP = (fst P - fst B, snd P - snd B)
                      in (fst vec_AP * fst vec_BP + snd vec_AP * snd vec_BP) ≤ 0))"
definition on_line :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
"on_line P LinePt1 LinePt2 = (LinePt1 ≠ LinePt2 ∧ collinear LinePt1 LinePt2 P)"
definition vec :: "point ⇒ point ⇒ point" where 
"vec A B = (fst B - fst A, snd B - snd A)"
definition dot_product :: "point ⇒ point ⇒ real" where 
"dot_product v1 v2 = (fst v1 * fst v2 + snd v1 * snd v2)"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
"perpendicular A B C D = (A ≠ B ∧ C ≠ D ∧
  dot_product (vec A B) (vec C D) = 0)"
definition tangent_line_circle :: "point ⇒ point ⇒ point ⇒ real ⇒ point ⇒ bool" where
"tangent_line_circle LinePt1 LinePt2 CircleCenter Radius TangentPt =
  (on_circle TangentPt CircleCenter Radius ∧
   on_line TangentPt LinePt1 LinePt2 ∧
   (TangentPt = CircleCenter ∨ perpendicular TangentPt CircleCenter LinePt1 LinePt2))"
definition norm_sq :: "point ⇒ real" where 
"norm_sq v = dot_product v v"
definition norm :: "point ⇒ real" where 
"norm v = sqrt (norm_sq v)"
definition cos_angle :: "point ⇒ point ⇒ point ⇒ real" where
"cos_angle A B C = (let vec_BA = vec B A; vec_BC = vec B C;
                        norm_BA = norm vec_BA; norm_BC = norm vec_BC
                    in if norm_BA = 0 ∨ norm_BC = 0 then 0 
                       else dot_product vec_BA vec_BC / (norm_BA * norm_BC))"
axiomatization
  P_center :: point and Q_center :: point and 
  rP :: real and rQ :: real and 
  A :: point and B :: point and C :: point and D :: point and E :: point and
  F :: point and G :: point and M :: point and N :: point
where
  ax_rP_positive: "rP > 0" and
  ax_rQ_positive: "rQ > 0" and
  ax_P_neq_Q: "P_center ≠ Q_center" and
  ax_A_on_cP: "on_circle A P_center rP" and
  ax_A_on_cQ: "on_circle A Q_center rQ" and
  ax_B_on_cP: "on_circle B P_center rP" and
  ax_B_on_cQ: "on_circle B Q_center rQ" and
  ax_A_neq_B: "A ≠ B" and 
  ax_C_on_cP: "on_circle C P_center rP" and
  ax_D_on_cQ: "on_circle D Q_center rQ" and
  ax_C_neq_D: "C ≠ D" and 
  ax_CD_tangent_cP: "tangent_line_circle C D P_center rP C" and
  ax_CD_tangent_cQ: "tangent_line_circle C D Q_center rQ D" and
  ax_E_on_extension_BA: "A ≠ E ∧ B ≠ E ∧ on_segment A B E" and
  ax_E_neq_C: "E ≠ C" and 
  ax_F_on_cP: "on_circle F P_center rP" and
  ax_F_on_line_EC: "on_line F E C" and
  ax_F_neq_C: "F ≠ C" and 
  ax_E_neq_D: "E ≠ D" and 
  ax_G_on_cQ: "on_circle G Q_center rQ" and
  ax_G_on_line_ED: "on_line G E D" and
  ax_G_neq_D: "G ≠ D" and 
  ax_F_neq_G: "F ≠ G" and 
  ax_M_on_cQ: "on_circle M Q_center rQ" and
  ax_M_on_line_FG: "on_line M F G" and
  ax_M_neq_G: "M ≠ G" and 
  ax_N_on_cP: "on_circle N P_center rP" and
  ax_N_on_line_FG: "on_line N F G" and 
  ax_N_neq_F: "N ≠ F" and 
  ax_M_neq_C: "M ≠ C" and
  ax_N_neq_D: "N ≠ D" and
  ax_A_neq_C : "A ≠ C" and
  ax_A_neq_D : "A ≠ D" and
  ax_B_neq_C : "B ≠ C" and
  ax_B_neq_D : "B ≠ D"
theorem Problem_Statement:
  "cos_angle F C M = cos_angle G D N"
end