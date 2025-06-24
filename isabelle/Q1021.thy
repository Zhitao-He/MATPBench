theory GeometryProblem
  imports "HOL-Analysis.Euclidean_Space"
begin
default_sort real_vector
type_synonym point = "real^2"
definition vec :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point" where
  "vec A B = B - A"
definition divides_segment_ratio :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> real \<Rightarrow> bool" where
  "divides_segment_ratio P P1 P2 k_ratio \<longleftrightarrow> k_ratio > 0 \<and> (1 + k_ratio) * R P \<noteq> 0 \<and> P = ((1 / (1 + k_ratio)) * R P1) + ((k_ratio / (1 + k_ratio)) * R P2)"
definition point_on_segment_with_ratio :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> real \<Rightarrow> bool" where
  "point_on_segment_with_ratio E A D k_ratio \<longleftrightarrow> k_ratio > 0 \<and> E = (A + k_ratio * D) / (1 + k_ratio)"
definition is_intersection_of_lines :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> bool" where
  "is_intersection_of_lines X P1 P2 P3 P4 \<longleftrightarrow> collinear P1 P2 X \<and> collinear P3 P4 X"
definition non_collinear :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> bool" where
  "non_collinear P1 P2 P3 \<longleftrightarrow> \<not> collinear P1 P2 P3"
definition is_circumcenter :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> bool" where
  "is_circumcenter O P1 P2 P3 \<longleftrightarrow>
    non_collinear P1 P2 P3 \<and> dist O P1 = dist O P2 \<and> dist O P2 = dist O P3"
definition on_circumcircle :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> bool" where
  "on_circumcircle X P Q R \<longleftrightarrow>
    non_collinear P Q R \<and>
    (\<exists> O. is_circumcenter O P Q R \<and> dist X O = dist P O)"
theorem four_circles_concurrent:
  fixes A B C D E F S T :: point
  fixes k_ratio :: real 
  assumes
    "A \<noteq> D" and "B \<noteq> C"
    and "k_ratio > 0"
    and "point_on_segment_with_ratio E A D k_ratio"
    and "point_on_segment_with_ratio F B C k_ratio"
    and "line_BA_exists: B \<noteq> A"
    and "line_CD_exists: C \<noteq> D"
    and "line_EF_exists: E \<noteq> F"
    and "S_is_intersection: is_intersection_of_lines S B A E F"
    and "lines_BA_EF_intersect: \<not> ((vec B A) = (vec E F) * R (_ : real)) \<and> \<not> ((vec E F) = (vec B A) * R (_ : real)) \<and> \<not> (collinear B A E \<and> collinear B A F)"
    and "T_is_intersection: is_intersection_of_lines T C D E F"
    and "lines_CD_EF_intersect: \<not> ((vec C D) = (vec E F) * R (_ : real)) \<and> \<not> ((vec E F) = (vec C D) * R (_ : real)) \<and> \<not> (collinear C D E \<and> collinear C D F)"
    and "tri_AES_non_collinear: non_collinear A E S"
    and "tri_BFS_non_collinear: non_collinear B F S"
    and "tri_CFT_non_collinear: non_collinear C F T"
    and "tri_DET_non_collinear: non_collinear D E T"
  shows 
    "\<exists> P_common.
       on_circumcircle P_common A E S \<and>
       on_circumcircle P_common B F S \<and>
       on_circumcircle P_common C F T \<and>
       on_circumcircle P_common D E T"
  sorry
end