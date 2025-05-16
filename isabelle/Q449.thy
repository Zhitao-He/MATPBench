theory PrismVolume
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
  "HOL-Algebra.Algebra"
begin
type_synonym vector3 = "real × real × real"
definition dist :: "vector3 ⇒ vector3 ⇒ real" where
  "dist v1 v2 = sqrt(((fst v1 - fst v2)^2) + ((fst (snd v1) - fst (snd v2))^2) + ((snd (snd v1) - snd (snd v2))^2))"
definition angle :: "vector3 ⇒ vector3 ⇒ vector3 ⇒ real" where
  "angle A B C = 
    (let 
      vBA = (fst A - fst B, fst (snd A) - fst (snd B), snd (snd A) - snd (snd B));
      vBC = (fst C - fst B, fst (snd C) - fst (snd B), snd (snd C) - snd (snd B));
      dot_product = (fst vBA * fst vBC) + (fst (snd vBA) * fst (snd vBC)) + (snd (snd vBA) * snd (snd vBC));
      len_vBA = sqrt((fst vBA)^2 + (fst (snd vBA))^2 + (snd (snd vBA))^2);
      len_vBC = sqrt((fst vBC)^2 + (fst (snd vBC))^2 + (snd (snd vBC))^2)
    in
      acos (dot_product / (len_vBA * len_vBC)))"
definition prism_volume :: "vector3 ⇒ vector3 ⇒ vector3 ⇒ vector3 ⇒ vector3 ⇒ vector3 ⇒ real" where
  "prism_volume A B C D E F = 
    (let 
      area_triangle = (1/2) * dist A B * dist B C * sin(angle A B C);
      height = dist A D
    in
      area_triangle * height)"
theorem prism_volume_as_fraction:
  fixes A B C D E F :: vector3
  assumes right_angle: "angle A B C = π/2"
      and angle_EAB: "angle E A B = π/3"
      and angle_CAB: "angle C A B = π/3"
      and length_AE: "dist A E = 2"
  shows "∃m n. coprime m n ∧ prism_volume A B C D E F = real m / real n ∧ m + n = 5"