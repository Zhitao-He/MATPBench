theory Geometry_Problem
imports
  "HOL-Analysis.Cartesian_Euclidean_Space"
  "HOL-Analysis.Sup_Inf" 
begin
type_synonym point = "real ^ 2"
definition P :: point where "P = (6, 0)"
definition W :: point where "W = (2, 4)"
definition X :: point where "X = (4, 4)"
definition Y :: point where "Y = (4, 2)"
definition Z :: point where "Z = (2, 2)"
definition is_square :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> bool" where
"is_square A B C D = (
  let s = dist A B in
  s > 0 \<and>
  dist B C = s \<and>
  dist C D = s \<and>
  dist D A = s \<and>
  (B - A) \<cdot> (C - B) = 0 \<and>
  (C - B) \<cdot> (D - C) = 0 \<and>
  (D - C) \<cdot> (A - D) = 0 \<and>
  (A - D) \<cdot> (B - A) = 0 \<and>
  A \<noteq> C
)"
definition on_segment :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> bool" where
"on_segment M A B = (dist A M + dist M B = dist A B)"
definition valid_A :: "point \<Rightarrow> bool" where
"valid_A A = (\<exists> B C D.
  is_square A B C D \<and>
  on_segment X A B \<and>
  on_segment Y B C \<and>
  on_segment Z C D \<and>
  on_segment W D A  
)"
definition S_dist_A_P :: "real set" where
"S_dist_A_P = {dist A P | A. valid_A A}"
definition max_dist_A_P :: real where
"max_dist_A_P = Sup S_dist_A_P"
lemma problem_claim: "max_dist_A_P = 6"
end