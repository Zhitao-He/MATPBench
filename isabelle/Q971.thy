theory Geometry_Parallelogram
  imports
    Main
    "HOL-Analysis.Euclidean_Space" 
begin
type_synonym point = "real vector"
definition on_circle :: "point \<Rightarrow> point \<Rightarrow> real \<Rightarrow> bool" where
  "on_circle P O_center r_val \<equiv> r_val > 0 \<and> dist P O_center = r_val"
definition is_tangent_at :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> bool"
  where "is_tangent_at P_line C_tangent_point O_center \<equiv>
    P_line \<noteq> C_tangent_point \<and>    
    dist O_center C_tangent_point > 0 \<and> 
    orthogonal (P_line - C_tangent_point) (O_center - C_tangent_point)" 
definition is_diameter :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> bool"
  where "is_diameter A_end C_end O_center \<equiv>
    A_end \<noteq> C_end \<and>                     
    O_center = (A_end + C_end) / (2::real) \<and> 
    dist A_end O_center > 0"               
definition is_secant_line :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> real \<Rightarrow> bool"
  where "is_secant_line P_external E_on_circle F_on_circle O_center r_val \<equiv>
    E_on_circle \<noteq> F_on_circle \<and>        
    on_circle E_on_circle O_center r_val \<and>
    on_circle F_on_circle O_center r_val \<and>
    collinear {P_external, E_on_circle, F_on_circle}" 
definition intersection_of_lines :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> bool"
  where "intersection_of_lines p1_l1 p2_l1 p1_l2 p2_l2 I_intersect \<equiv>
    p1_l1 \<noteq> p2_l1 \<and> 
    p1_l2 \<noteq> p2_l2 \<and> 
    collinear {p1_l1, I_intersect, p2_l1} \<and> 
    collinear {p1_l2, I_intersect, p2_l2}"    
definition is_parallelogram :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> bool"
  where "is_parallelogram A B C D_pt \<equiv>
    (A + C) / (2::real) = (B + D_pt) / (2::real) \<and> 
    A \<noteq> B \<and> B \<noteq> C \<and> C \<noteq> D_pt \<and> D_pt \<noteq> A \<and> 
    \<not> collinear {A, B, C}" 
theorem Tangent_Secant_Parallelogram:
  fixes P A C O E F B D :: point
  assumes A_neq_E: "A \<noteq> E" 
  assumes A_neq_F: "A \<noteq> F" 
  assumes P_neq_O: "P \<noteq> O" 
  assumes tangent_PC: "is_tangent_at P C O"
  assumes diameter_AC: "is_diameter A C O"
  let ?r = "dist O C"
  assumes secant_PEF: "is_secant_line P E F O ?r"
  assumes B_is_intersection: "intersection_of_lines A E P O B"
  assumes D_is_intersection: "intersection_of_lines A F P O D"
  shows "is_parallelogram A B C D"
proof -
qed
end