theory QuadrilateralPerimeter
imports Main Real "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition angle_deg :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_deg p1 p2 p3 = undefined" 
definition perimeter :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "perimeter p1 p2 p3 p4 = dist p1 p2 + dist p2 p3 + dist p3 p4 + dist p4 p1"
definition similar_quadrilaterals :: "point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "similar_quadrilaterals p1 p2 p3 p4 q1 q2 q3 q4 = undefined" 
locale quadrilateral_problem =
  fixes A B C D E F G :: point
  assumes AB_val: "dist A B = 26"
  and AD_val: "dist A D = 12"
  and DG_val: "dist D G = 9/2"
  and EF_val: "dist E F = 8"
  and GF_val: "dist G F = 14"
  and AGF_angle: "angle_deg A G F = 108"
  and similar_quadrilaterals: "similar_quadrilaterals A G F E A D C B"
begin
lemma "dist A G / dist A D = dist G F / dist D C"
  sorry
lemma "dist A G / dist A D = dist F E / dist C B"
  sorry
theorem perimeter_AGFE: "perimeter A G F E = 183/4"
  sorry