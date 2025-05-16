theory GeometryProblem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
locale geometry_problem =
  fixes J K L R S T P :: "real^2"
  assumes KR_eq_RJ: "dist K R = dist R J" 
  and KS_eq_SL: "dist K S = dist S L"
  and LT_eq_TJ: "dist L T = dist T J"
  and PT_length: "dist P T = 2"
  and R_is_midpoint: "R = (K + J) / 2" 
  and T_is_midpoint: "T = (K + L) / 2" 
  and P_is_centroid: "P = (J + K + L) / 3" 
lemma length_of_KP:
  shows "dist K P = 4"
proof -
  have "dist K P = 2 * dist P T" 
    using P_is_centroid T_is_midpoint
    by (metis dist_commute geometry_problem_axioms geometry_problem_def)
  thus "dist K P = 4"
    using PT_length by simp
qed