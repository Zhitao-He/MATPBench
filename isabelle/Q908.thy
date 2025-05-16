theory TrapezoidArea
imports Complex_Main HOL.Real
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition perpendicular :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "perpendicular p1 p2 p3 p4 = 
    ((fst p2 - fst p1) * (fst p4 - fst p3) + (snd p2 - snd p1) * (snd p4 - snd p3) = 0)"
definition trapezoid_area :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "trapezoid_area A B C D = 
    (let h = dist A D in 
     let a = dist D C in
     let b = dist A B in
     h * (a + b) / 2)"
lemma "let A = (0, 0);
           B = (0, 17);
           C = (15, 17);
           D = (6, 0)
       in perpendicular C D A D ∧ perpendicular D A B A ∧ trapezoid_area D A B C = 96"
proof -
  let ?A = "(0, 0)"
  let ?B = "(0, 17)"  
  let ?D = "(6, 0)"   
  let ?C = "(15, 17)" 
  have perp1: "perpendicular ?C ?D ?A ?D"
    unfolding perpendicular_def 
    by (simp add: algebra_simps)
  have perp2: "perpendicular ?D ?A ?B ?A"
    unfolding perpendicular_def
    by (simp add: algebra_simps)
  have area: "trapezoid_area ?D ?A ?B ?C = 96"
  proof -
    have "dist ?A ?D = 6" unfolding dist_def by simp
    have "dist ?A ?B = 17" unfolding dist_def by simp
    have "dist ?D ?C = 15" unfolding dist_def by simp
    have "trapezoid_area ?D ?A ?B ?C = 6 * (17 + 15) / 2" 
      unfolding trapezoid_area_def by simp
    thus ?thesis by simp
  qed
  show ?thesis
    using perp1 perp2 area
    by simp
qed