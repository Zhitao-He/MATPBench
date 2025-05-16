theory Incenter_Tangent_Circles
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = (∃t. (fst C - fst A) = t * (fst B - fst A) ∧ 
                          (snd C - snd A) = t * (snd B - snd A))"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle P C r = (distance P C = r)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = atan2 (snd C - snd B) (fst C - fst B) - atan2 (snd A - snd B) (fst A - fst B)"
definition angle_bisector_at :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "angle_bisector_at K B C I = (angle B K I = angle I K C)"
definition tangent_circle_line :: "point ⇒ real ⇒ point ⇒ point ⇒ bool" where
  "tangent_circle_line P r A B = (∃D. on_circle D P r ∧
    (let d = distance P D in
     let v1 = (fst D - fst P) / d in
     let v2 = (snd D - snd P) / d in
     let n1 = -v2 in
     let n2 = v1 in
     (n1 * (fst B - fst A) + n2 * (snd B - snd A) = 0)))"
definition externally_tangent_at :: "point ⇒ real ⇒ point ⇒ real ⇒ point ⇒ bool" where
  "externally_tangent_at O rO P rP K = (
    on_circle K O rO ∧ 
    on_circle K P rP ∧
    distance O P = rO + rP ∧
    (let d = distance O P in
     let v1 = (fst P - fst O) / d in
     let v2 = (snd P - snd O) / d in
     fst K = fst O + v1 * rO ∧
     snd K = snd O + v2 * rO))"
definition incenter :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "incenter I A B C = (
    let a = distance B C in
    let b = distance A C in
    let c = distance A B in
    fst I = (a * fst A + b * fst B + c * fst C) / (a + b + c) ∧
    snd I = (a * snd A + b * snd B + c * snd C) / (a + b + c))"
theorem incenter_bisects_angle:
  fixes A B C I P O K :: point
  fixes rP rO :: real
  assumes "¬ collinear A B C"
  assumes "incenter I A B C"
  assumes "rP > 0" 
  assumes "tangent_circle_line P rP A B"
  assumes "tangent_circle_line P rP A C"
  assumes "rO > 0"
  assumes "on_circle B O rO"
  assumes "on_circle C O rO"
  assumes "externally_tangent_at O rO P rP K"
  assumes "on_circle K P rP"
  assumes "on_circle K O rO"
  shows "angle_bisector_at K B C I"
  sorry