theory AngleProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)² + (snd p2 - snd p1)²)"
definition vector :: "point ⇒ point ⇒ real × real" where
  "vector p1 p2 = (fst p2 - fst p1, snd p2 - snd p1)"
definition dot_product :: "real × real ⇒ real × real ⇒ real" where
  "dot_product v1 v2 = fst v1 * fst v2 + snd v1 * snd v2"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle p1 p2 p3 = 
    (let v1 = vector p2 p1;
         v2 = vector p2 p3;
         dot = dot_product v1 v2;
         len1 = sqrt(dot_product v1 v1);
         len2 = sqrt(dot_product v2 v2)
     in arccos(dot / (len1 * len2)))"
definition rad_to_deg :: "real ⇒ real" where
  "rad_to_deg rad = rad * 180 / pi"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular p1 p2 p3 p4 = 
    (dot_product (vector p1 p2) (vector p3 p4) = 0)"
definition is_incenter :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_incenter I A B C = 
    (let a = distance B C;
         b = distance A C;
         c = distance A B
     in angle A I B = angle A I C ∧
        angle B I A = angle B I C ∧
        angle C I A = angle C I B)"
axiomatization
  A B C D E F P :: point 
where
  length_AB: "distance A B = 11" and
  length_EP: "distance E P = 15" and
  length_PA: "distance P A = 13" and
  angle_DCP: "rad_to_deg(angle D C P) = 30" and
  angle_PAE: "rad_to_deg(angle P A E) = 33" and
  P_is_incenter: "is_incenter P A E C" and
  ED_perp_PD: "perpendicular E D P D" and
  PB_perp_AB: "perpendicular P B A B" and
  PF_perp_EF: "perpendicular P F E F"
theorem angle_AEB: "rad_to_deg(angle A E B) = 24"
  sorry