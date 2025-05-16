theory IsoscelesTriangles
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
definition triangle_area :: "real × real × real ⇒ real" where
  "triangle_area sides = (let (a,b,c) = sides;
                          s = (a + b + c) / 2
                      in sqrt (s * (s - a) * (s - b) * (s - c)))"
definition isosceles :: "real × real × real ⇒ bool" where
  "isosceles sides = (let (a,b,c) = sides in
                     a = b ∨ b = c ∨ c = a)"
definition integer_sides :: "real × real × real ⇒ bool" where
  "integer_sides sides = (let (a,b,c) = sides in
                        a = of_int ⌊a⌋ ∧ b = of_int ⌊b⌋ ∧ c = of_int ⌊c⌋)"
definition valid_triangle :: "real × real × real ⇒ bool" where
  "valid_triangle sides = (let (a,b,c) = sides in
                         a > 0 ∧ b > 0 ∧ c > 0 ∧ a + b > c ∧ a + c > b ∧ b + c > a)"
definition perimeter :: "real × real × real ⇒ real" where
  "perimeter sides = (let (a,b,c) = sides in a + b + c)"
lemma "valid_triangle (17, 17, 30)" 
  by (simp add: valid_triangle_def)
lemma "isosceles (17, 17, 30)"
  by (simp add: isosceles_def)
lemma "integer_sides (17, 17, 30)"
  by (simp add: integer_sides_def)
lemma "triangle_area (17, 17, 30) = 120"
  by (simp add: triangle_area_def)
lemma second_triangle: "valid_triangle (13, 13, 24) ∧ 
                      isosceles (13, 13, 24) ∧ 
                      integer_sides (13, 13, 24) ∧ 
                      triangle_area (13, 13, 24) = 120"
  by (auto simp add: valid_triangle_def isosceles_def integer_sides_def triangle_area_def)
lemma "perimeter (13, 13, 24) = 50"
  by (simp add: perimeter_def)