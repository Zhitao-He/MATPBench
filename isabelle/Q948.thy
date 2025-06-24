theory Geometry_Problem_Formalization
imports Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition dist :: "point \<Rightarrow> point \<Rightarrow> real" where
"dist A B = norm (B - A)"
definition midpoint :: "point \<Rightarrow> point \<Rightarrow> point" where
"midpoint A B = A + (0.5::real) *\<^sub>R (B - A)"
definition on_line :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> bool" where
"on_line P Q R \<longleftrightarrow> (Q = R \<and> P = Q) \<or> (\<exists> (k :: real). P - Q = k *\<^sub>R (R - Q))"
definition collinear :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> bool" where
"collinear A B C \<equiv> on_line A B C \<or> on_line B A C \<or> on_line C A B"
definition is_triangle :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> bool" where
"is_triangle A B C \<longleftrightarrow> \<not> (collinear A B C)"
definition incenter :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point" where
"incenter V1 V2 V3 =
  let side_a = dist V2 V3; 
      side_b = dist V1 V3; 
      side_c = dist V1 V2; 
      perimeter = side_a + side_b + side_c
  in if perimeter = 0 then V1 
     else ((side_a *\<^sub>R V1) + (side_b *\<^sub>R V2) + (side_c *\<^sub>R V3)) /⇩<sub>R</sub> perimeter"
locale Isosceles_Triangle_Incenter_Problem =
  fixes A B C D E F :: point 
  assumes
    abc_is_triangle: "is_triangle A B C" and
    abc_is_isosceles: "dist C A = dist C B" and
    d_is_midpoint_ab: "D = midpoint A B" and
    edf_collinear: "on_line D E F" and
    efc_is_triangle: "is_triangle E F C" and
    same_incenter_property: "incenter A B C = incenter E F C" and
    e_on_line_ac: "collinear E A C" and 
    f_on_line_bc: "collinear F B C"     
  shows proposition_to_prove: "dist D E * dist D F = dist D A * dist D A"
end