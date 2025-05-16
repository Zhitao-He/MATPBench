theory QuadrilateralTheorem
imports Complex_Main "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
type_synonym line = "point × point"
definition on_line :: "point ⇒ line ⇒ bool" where
  "on_line P L ≡ let (A, B) = L in
                ∃t. P = A + t *⇩R (B - A)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ≡ ∃t. C - A = t *⇩R (B - A)"
definition parallel :: "line ⇒ line ⇒ bool" where
  "parallel L1 L2 ≡ let (A, B) = L1; (C, D) = L2 in
                   ∃t. t ≠ 0 ∧ (B - A) = t *⇩R (D - C)"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec A B = B - A"
definition dot :: "real × real ⇒ real × real ⇒ real" where
  "dot v1 v2 = fst v1 * fst v2 + snd v1 * snd v2"
definition cross :: "real × real ⇒ real × real ⇒ real" where
  "cross v1 v2 = fst v1 * snd v2 - snd v1 * fst v2"
definition angle_bisector :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "angle_bisector A B C D ≡ 
   let vAB = vec A B; vAD = vec A D; nAB = sqrt(dot vAB vAB); nAD = sqrt(dot vAD vAD) in
   dot (vAB / nAB) (vAC / nAC) = dot (vAD / nAD) (vAC / nAC)"
   where "vAC = vec A C" and "nAC = sqrt(dot vAC vAC)"
type_synonym circle = "point × real"
definition on_circle :: "point ⇒ circle ⇒ bool" where
  "on_circle P C ≡ let (O, r) = C in 
                  (fst P - fst O)² + (snd P - snd O)² = r²"
definition circumcircle :: "point ⇒ point ⇒ point ⇒ circle" where
  "circumcircle A B C = undefined" 
definition tangent :: "circle ⇒ line ⇒ bool" where
  "tangent C L = undefined" 
definition concyclic :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "concyclic A B C D ≡ 
   cross (vec A B) (vec A C) * cross (vec D B) (vec D C) = 
   cross (vec A C) (vec A D) * cross (vec B C) (vec B D)"
theorem quadrilateral_theorem:
  fixes A B C D E F P Q :: point
  assumes "collinear B C E" 
      and "collinear C D F" 
      and "parallel (E, F) (B, D)" 
      and "angle_bisector A B A C D" 
      and "collinear F A P" 
      and "collinear E A Q" 
      and "tangent (circumcircle A B P) (A, C)" 
      and "tangent (circumcircle A D Q) (A, C)" 
  shows "concyclic B P Q D" 
proof -
  sorry
qed