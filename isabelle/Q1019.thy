theory AngleFOGA
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear p1 p2 p3 = (
    let v1 = (fst p2 - fst p1, snd p2 - snd p1);
        v2 = (fst p3 - fst p1, snd p3 - snd p1)
    in fst v1 * snd v2 - snd v1 * fst v2 = 0
  )"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p1 p2 = ((fst p1 + fst p2)/2, (snd p1 + snd p2)/2)"
definition vec :: "point ⇒ point ⇒ point" where
  "vec p1 p2 = (fst p2 - fst p1, snd p2 - snd p1)"
definition dot_product :: "point ⇒ point ⇒ real" where
  "dot_product v1 v2 = fst v1 * fst v2 + snd v1 * snd v2"
definition norm :: "point ⇒ real" where
  "norm v = sqrt(dot_product v v)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle p1 p2 p3 = 
    (let v1 = vec p2 p1;
         v2 = vec p2 p3;
         cos_theta = dot_product v1 v2 / (norm v1 * norm v2)
     in arccos(cos_theta))"
definition between :: "point ⇒ point ⇒ point ⇒ bool" where
  "between p1 p2 p3 = (
    collinear p1 p2 p3 ∧
    dot_product (vec p1 p2) (vec p1 p3) > 0 ∧
    dot_product (vec p3 p2) (vec p3 p1) > 0
  )"
theorem angle_FOG_equals_angle_A:
  fixes A B C O D E F G :: point
  assumes "¬collinear A B C"                           
    and "∃r > 0. dist O A = r ∧ dist O B = r ∧ dist O C = r"  
    and "collinear O D E"                              
    and "between A D B"                                
    and "between A E C"                                
    and "F = midpoint B E"                             
    and "G = midpoint C D"                             
  shows "angle F O G = angle B A C"                   
begin
  sorry  