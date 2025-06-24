theory Parallelogram_CADB_Perimeter
  imports Complex_Main
begin
locale geometry_setup =
  fixes A B C D E :: "'a::euclidean_space"
definition length :: "'a::euclidean_space ⇒ 'a ⇒ real" where
  "length P Q = norm (Q - P)"
definition angle :: "'a::euclidean_space ⇒ 'a ⇒ 'a ⇒ real" where
  "angle A B C = 
    (let u = A - B; v = C - B in
      acos ((u • v) / (norm u * norm v)))"
definition perimeter_CADB :: "'a::euclidean_space ⇒ 'a ⇒ 'a ⇒ 'a ⇒ real" where
  "perimeter_CADB C A D B = 
    length C A + length A D + length D B + length B C"
locale parallelogram_CADB_setup = geometry_setup +
  assumes CB_len: "length C B = 23"
    and DE_len: "length D E = 5"
    and angle_EDB: "angle E D B = pi / 4"  
    and parallelogram: "C - A = D - B"     
    and AE_perp_BE: "let v1 = A - E; v2 = B - E in v1 • v2 = 0"
theorem perimeter_CADB_value:
  assumes "parallelogram_CADB_setup A B C D E"
  shows "perimeter_CADB C A D B = 10 * sqrt 2 + 46"
  sorry
end