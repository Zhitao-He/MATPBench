theory Square_Problem_Formalization
  imports
    "HOL-Analysis.Cartesian_Euclidean_Space" 
    "HOL-Analysis.Convex"                   
    "HOL-Analysis.Measure_Theory"           
begin
type_synonym point = "real \<^> (2::len)"
definition is_square :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> real \<Rightarrow> bool" where
  "is_square P1 P2 P3 P4 s \<equiv>
    s > 0 \<and>                             
    dist P1 P2 = s \<and>                     
    dist P1 P4 = s \<and>                     
    (P2 - P1) \<cdot> (P4 - P1) = 0 \<and>  
    P3 = P1 + (P2 - P1) + (P4 - P1)"   
definition center_of_square :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point" where
  "center_of_square P1 P2 P3 P4 = (P1 + P3) / (2::real)"
definition square_as_set :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point set" where
  "square_as_set P1 P2 P3 P4 = convex hull {P1, P2, P3, P4}"
locale Two_Squares_Problem =
  fixes A B C D :: point 
  fixes E F G H :: point 
  fixes s_len :: real   
  assumes
    square_ABCD_is_square: "is_square A B C D s_len" and
    square_EFGH_is_square: "is_square E F G H s_len" and
    side_length_is_10: "s_len = 10" and
    G_is_center_of_ABCD: "G = center_of_square A B C D" and
    area_of_union_is_175: "lebesgue_measure (square_as_set A B C D \<union> square_as_set E F G H) = 175"
end