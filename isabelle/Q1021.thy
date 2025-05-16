theory ParallelQuadrilateralConcurrentCircles
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin

section "定义平面几何基础概念"

type_synonym point = "complex"
type_synonym circle = "point × real"

definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line P A B ≡ ∃t::real. P = A + t *\<^sub>R (B - A)"

definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ≡ on_line C A B ∨ on_line A B C ∨ on_line B C A"

definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = norm (A - B)"

definition intersection_point :: "point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "intersection_point P A B C D ≡ 
    P ≠ A ∧ P ≠ B ∧ P ≠ C ∧ P ≠ D ∧
    on_line P A B ∧ on_line P C D"

definition on_circle :: "point ⇒ circle ⇒ bool" where
  "on_circle P circle ≡ dist P (fst circle) = snd circle"

definition circumcircle :: "point ⇒ point ⇒ point ⇒ circle" where
  "circumcircle A B C = 
    (let
      D = (A + B) / 2;
      E = (B + C) / 2;
      u = (B - A) * (Complex(0,1));
      v = (C - B) * (Complex(0,1));
      center = D + complex_of_real(Re((E - D) /\<^sub>C v) * Re(u)) *\<^sub>C u
    in
    (center, dist center A))"

section "平行四边形中的四个圆的交点定理"

theorem parallel_quadrilateral_circles_concurrent:
  fixes A B C D E F S T :: point
  assumes "collinear A D E"             
      and "collinear B C F"
      and "dist A E / dist E D = dist B F / dist F C"
      and "intersection_point T C D E F"
      and "intersection_point S B A E F"
  defines "circumcircle_AES ≡ circumcircle A E S"
      and "circumcircle_BFS ≡ circumcircle B F S"
      and "circumcircle_CFT ≡ circumcircle C F T"
      and "circumcircle_DET ≡ circumcircle D E T"
  shows "∃P. on_circle P circumcircle_AES ∧
             on_circle P circumcircle_BFS ∧
             on_circle P circumcircle_CFT ∧
             on_circle P circumcircle_DET"
  sorry

end