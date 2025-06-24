theory Isosceles_Trapezoid_Perimeter
  imports Complex_Main
begin
record trapezoid =
  A :: "real × real"
  B :: "real × real"
  C :: "real × real"
  D :: "real × real"
definition is_isosceles_trapezoid :: "trapezoid ⇒ bool" where
  "is_isosceles_trapezoid T ≡
    let A = A T; B = B T; C = C T; D = D T in
    (∃k::real. k ≠ 0 ∧
      (snd B - snd A) / (fst B - fst A) = (snd C - snd D) / (fst C - fst D)) ∧
    (dist A D = dist B C)"
definition trapezoid_data :: trapezoid where
  "trapezoid_data ≡
    ⦇
      A = (0, 0),
      B = (5, 0),
      C = (5 + 2, 2 * sqrt 3),
      D = (-2, 2 * sqrt 3)
    ⦈"
definition side_AB :: real where
  "side_AB ≡ dist (A trapezoid_data) (B trapezoid_data)"
definition side_BC :: real where
  "side_BC ≡ dist (B trapezoid_data) (C trapezoid_data)"
definition side_CD :: real where
  "side_CD ≡ dist (C trapezoid_data) (D trapezoid_data)"
definition side_DA :: real where
  "side_DA ≡ dist (D trapezoid_data) (A trapezoid_data)"
definition perimeter :: real where
  "perimeter ≡ side_AB + side_BC + side_CD + side_DA"
lemma "side_AB = 5"
  by (simp add: side_AB_def trapezoid_data_def dist_def)
lemma "side_CD = 9"
  by (simp add: side_CD_def trapezoid_data_def dist_def)
lemma "side_BC = 4"
  by (simp add: side_BC_def trapezoid_data_def dist_def)
lemma "side_DA = 4"
  by (simp add: side_DA_def trapezoid_data_def dist_def)
lemma "perimeter = 22"
  by (simp add: perimeter_def side_AB_def side_BC_def side_CD_def side_DA_def trapezoid_data_def dist_def)
end