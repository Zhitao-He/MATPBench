theory TriangleTableHeight
imports Complex_Main "HOL-Analysis.Polytope"
begin
definition "triangle_ABC A B C \<equiv> 
  dist B C = 23 \<and> dist C A = 27 \<and> dist A B = 30 \<and> 
  \<not> collinear A B C"
definition "on_segment P A B \<equiv> 
  collinear P A B \<and> 
  dist A P + dist P B = dist A B"
definition "between P A B \<equiv>
  on_segment P A B \<and> P \<noteq> A \<and> P \<noteq> B"
definition "parallel_segments A B C D \<equiv>
  (B - A) = r *\<^sub>R (D - C) \<or> 
  (B - A) = r *\<^sub>R (C - D) 
  for some r > 0"
definition "valid_folding_points A B C V W X Y Z U \<equiv>
  triangle_ABC A B C \<and>
  on_segment V A C \<and> on_segment W A C \<and> between V A W \<and>
  on_segment X B C \<and> on_segment Y B C \<and> between X C Y \<and>
  on_segment Z A B \<and> on_segment U A B \<and> between Z B U \<and>
  parallel_segments U V B C \<and>
  parallel_segments W X A B \<and>
  parallel_segments Y Z C A"
theorem table_height:
  assumes "triangle_ABC A B C"
  shows "\<exists>h. h = (12 * sqrt 6) / 7 \<and> 
         h represents maximum height of table with triangular legs
         when triangle ABC is folded along UV, WX, and YZ such that
         table top is parallel to floor"
  sorry
theorem answer: "12 + 6 + 7 = 25"
  by simp