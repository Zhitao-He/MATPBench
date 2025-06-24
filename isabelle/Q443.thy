theory Geometry_Problem
imports Main "HOL-Analysis.Real" 
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p1 p2 = sqrt ((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
type_synonym triangle_vertices = "point × point × point"
definition v1_of :: "triangle_vertices ⇒ point" where "v1_of (A,_,_) = A"
definition v2_of :: "triangle_vertices ⇒ point" where "v2_of (_,B,_) = B"
definition v3_of :: "triangle_vertices ⇒ point" where "v3_of (_,_,C) = C"
definition T_side1 :: real where "T_side1 = 1"
definition T_side2 :: real where "T_side2 = 2"
definition T_side3 :: real where "T_side3 = sqrt 7"
definition is_triangle_T :: "triangle_vertices ⇒ bool" where
  "is_triangle_T tri ≡
    let A = v1_of tri; B = v2_of tri; C = v3_of tri;
        sAB = dist A B; sBC = dist B C; sCA = dist C A
    in {sAB, sBC, sCA} = {T_side1, T_side2, T_side3}"
definition is_equilateral :: "triangle_vertices ⇒ bool" where
  "is_equilateral tri ≡
    let A = v1_of tri; B = v2_of tri; C = v3_of tri;
        sAB = dist A B; sBC = dist B C; sCA = dist C A
    in sAB > 0 ∧ sAB = sBC ∧ sBC = sCA" 
definition area_of_equilateral :: "triangle_vertices ⇒ real" where
  "area_of_equilateral tri =
    (if is_equilateral tri
     then let s = dist (v1_of tri) (v2_of tri) 
          in (sqrt 3 / 4) * s^2
     else 0)" 
definition problem_arrangement :: "triangle_vertices ⇒ triangle_vertices ⇒ bool" where
  "problem_arrangement inner_tri outer_tri ≡
    is_equilateral inner_tri ∧
    is_equilateral outer_tri ∧
    (let P1 = v1_of inner_tri; P2 = v2_of inner_tri; P3 = v3_of inner_tri;
         Q1 = v1_of outer_tri; Q2 = v2_of outer_tri; Q3 = v3_of outer_tri;
         s_in = dist P1 P2;   
         s_out = dist Q1 Q2   
     in
       s_in > 0 ∧ s_out > 0 ∧ 
       is_triangle_T (P1,P2,Q1) ∧
       is_triangle_T (P2,P3,Q2) ∧
       is_triangle_T (P3,P1,Q3) ∧
       (let area_T_val = sqrt 3 / 2
        in (sqrt 3 / 4) * (s_out^2 - s_in^2) = 3 * area_T_val)
    )"
definition ratio_of_areas :: real where
  "ratio_of_areas = (SOME r. EX inner_tri outer_tri.
      problem_arrangement inner_tri outer_tri ∧
      area_of_equilateral inner_tri > 0 ∧ 
      r = area_of_equilateral outer_tri / area_of_equilateral inner_tri)"
end