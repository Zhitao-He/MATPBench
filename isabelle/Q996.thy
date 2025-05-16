theory GeometryProblem
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
locale euclidean_geometry =
  fixes distance :: "'a \<Rightarrow> 'a \<Rightarrow> real"
  assumes distance_pos: "distance p q > 0 \<Longrightarrow> p \<noteq> q"
  and distance_sym: "distance p q = distance q p"
  and distance_triangle: "distance p r \<le> distance p q + distance q r"
  and distance_id: "distance p p = 0"
context euclidean_geometry
begin
definition on_circle :: "'a \<Rightarrow> 'a \<Rightarrow> bool" where
  "on_circle O P \<equiv> \<exists>r>0. distance O P = r"
definition colinear :: "'a \<Rightarrow> 'a \<Rightarrow> 'a \<Rightarrow> bool" where
  "colinear A B C \<equiv> \<exists>t. distance A B + distance B C = distance A C \<or>
                      distance A C + distance C B = distance A B \<or>
                      distance A B + distance A C = distance B C"
definition on_line :: "'a \<Rightarrow> 'a \<Rightarrow> 'a \<Rightarrow> bool" where
  "on_line P A B \<equiv> colinear P A B"
definition angle_bisector :: "'a \<Rightarrow> 'a \<Rightarrow> 'a \<Rightarrow> 'a \<Rightarrow> bool" where
  "angle_bisector A B C F \<equiv> \<exists>k>0. distance F B = k * distance F C"
definition perpendicular :: "'a \<Rightarrow> 'a \<Rightarrow> 'a \<Rightarrow> 'a \<Rightarrow> bool" where
  "perpendicular A B C D \<equiv> \<exists>k. distance A C * distance B D = k * distance A D * distance B C"
definition foot :: "'a \<Rightarrow> 'a \<Rightarrow> 'a \<Rightarrow> 'a \<Rightarrow> bool" where
  "foot P A B F \<equiv> on_line F A B \<and> perpendicular P F A B"
definition orthocenter :: "'a \<Rightarrow> 'a \<Rightarrow> 'a \<Rightarrow> 'a \<Rightarrow> bool" where
  "orthocenter A B C H \<equiv> \<exists>D E F. 
     foot A B C D \<and> foot B C A E \<and> foot C A B F \<and>
     on_line A H D \<and> on_line B H E \<and> on_line C H F"
theorem bisect_orthocenter_angle:
  assumes "~colinear A B C"
  shows "\<exists>O. on_circle O A \<and> on_circle O B \<and> on_circle O C \<and>
         (\<exists>F. F \<noteq> A \<and> on_circle O F \<and> angle_bisector A B A C F \<and>
         (\<exists>H. orthocenter A B C H \<and>
         (\<exists>E. foot C A B E \<and>
         (\<exists>D. foot B A C D \<and>
         (\<exists>P. on_circle P A \<and> on_circle P D \<and> on_circle P E \<and>
         (\<exists>G. on_circle P G \<and> on_circle O G \<and> G \<noteq> A \<and> G \<noteq> D \<and> G \<noteq> E \<and>
         (\<exists>I. on_line I B C \<and> on_line I G F \<and> angle_bisector I B H C H)))))))"
  sorry