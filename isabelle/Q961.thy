theory Triangle_OP_parallel_HD
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
text \<open>
In triangle ABC, let D be the midpoint of BC, O the circumcenter, and H the orthocenter.
Points E and F lie on AB and AC respectively, such that AE = AF, with D, H, E collinear.
If P is the circumcenter of triangle AEF, prove that OP is parallel to HD.
\<close>
locale triangle =
  fixes A B C :: "real^2"
  assumes not_collinear: "\<not> collinear {A, B, C}"
context triangle
begin
definition midpoint :: "real^2 \<Rightarrow> real^2 \<Rightarrow> real^2" where
  "midpoint P Q = (P + Q) / 2"
definition D :: "real^2" where
  "D = midpoint B C"
definition circumcenter :: "real^2 set \<Rightarrow> real^2" where
  "circumcenter S = (SOME O. \<forall>P\<in>S. dist O P = dist O (SOME Q. Q \<in> S))"
definition O :: "real^2" where
  "O = circumcenter {A, B, C}"
definition orthocenter :: "real^2 \<Rightarrow> real^2 \<Rightarrow> real^2 \<Rightarrow> real^2" where
  "orthocenter A B C = (SOME H. 
    ((H - A) \<bullet> (B - C) = 0) \<and> 
    ((H - B) \<bullet> (A - C) = 0) \<and>
    ((H - C) \<bullet> (A - B) = 0))"
definition H :: "real^2" where
  "H = orthocenter A B C"
definition on_line :: "real^2 \<Rightarrow> real^2 \<Rightarrow> real^2 \<Rightarrow> bool" where
  "on_line P A B \<longleftrightarrow> (\<exists>t. P = A + t *\<^sub>R (B - A))"
definition collinear :: "real^2 set \<Rightarrow> bool" where
  "collinear S \<longleftrightarrow> (\<exists>A B. A \<in> S \<and> B \<in> S \<and> A \<noteq> B \<and> (\<forall>C\<in>S. on_line C A B))"
definition parallel :: "real^2 \<Rightarrow> real^2 \<Rightarrow> bool" where
  "parallel v w \<longleftrightarrow> (\<exists>c. c \<noteq> 0 \<and> v = c *\<^sub>R w)"
theorem triangle_OP_parallel_HD:
  fixes E F :: "real^2"
  assumes "on_line E A B"
    and "on_line F A C"
    and "dist A E = dist A F"
    and "collinear {D, H, E}"
    and "P = circumcenter {A, E, F}"
  shows "parallel (O - P) (H - D)"
  oops