theory Triangle_Geometry_OK_perp_AK
  imports Main
begin
locale triangle_geometry =
  fixes A B C :: "real^2"
  assumes non_collinear: "\<not> collinear {A, B, C}"
begin
definition D :: "real^2" where "D = (B + C) / 2"
definition E :: "real^2" where "E = (C + A) / 2"
definition F :: "real^2" where "F = (A + B) / 2"
definition AD :: "real^2 set" where "AD = {A + t *\<^sub>R (D - A) | t. 0 \<le> t \<and> t \<le> 1}"
definition EI :: "real^2 set" where "EI = {E + t *\<^sub>R (C - A) | t. t \<in> UNIV}"
definition M :: "real^2" where
  "M = (SOME X. X \<in> AD \<and> (\<exists>t. X = E + t *\<^sub>R (C - A)))"
definition FI :: "real^2 set" where "FI = {F + t *\<^sub>R (B - A) | t. t \<in> UNIV}"
definition N :: "real^2" where
  "N = (SOME X. X \<in> AD \<and> (\<exists>t. X = F + t *\<^sub>R (B - A)))"
definition EM :: "real^2 set" where "EM = {E + t *\<^sub>R (M - E) | t. t \<in> UNIV}"
definition FN :: "real^2 set" where "FN = {F + t *\<^sub>R (N - F) | t. t \<in> UNIV}"
definition O :: "real^2" where
  "O = (SOME X. (\<exists>t1 t2. X = E + t1 *\<^sub>R (M - E) \<and> X = F + t2 *\<^sub>R (N - F)))"
definition CM :: "real^2 set" where "CM = {C + t *\<^sub>R (M - C) | t. t \<in> UNIV}"
definition BN :: "real^2 set" where "BN = {B + t *\<^sub>R (N - B) | t. t \<in> UNIV}"
definition K :: "real^2" where
  "K = (SOME X. (\<exists>t1 t2. X = C + t1 *\<^sub>R (M - C) \<and> X = B + t2 *\<^sub>R (N - B)))"
definition OK_perp_AK :: "bool" where
  "OK_perp_AK \<longleftrightarrow> ((K - O) \<bullet> (K - A) = 0)"
end
end