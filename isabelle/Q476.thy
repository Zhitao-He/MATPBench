theory Geometry_Problem
imports Main
begin
typedecl point
axiomatization length :: "point => point => real"
  where
    length_non_negative: "length p q ≥ 0"
    and length_eq_zero_iff: "length p q = 0 <-> p = q" 
    and length_symmetric: "length p q = length q p"
definition is_midpoint :: "point => point => point => bool" where
  "is_midpoint M P Q == (length P M = length M Q) AND (length P M + length M Q = length P Q)"
axiomatization parallel :: "point => point => point => point => bool" (infix "||" 50)
  where
    parallel_refl: "P ~= Q ==> P Q || P Q"
    and parallel_sym: "P Q || R S ==> R S || P Q"
    and parallel_trans: "P Q || R S ==> R S || U V ==> P Q || U V"
axiom trapezoid_midsegment_theorem:
  assumes M_midpoint_of_PS: "is_midpoint M P S_arg"
    and N_midpoint_of_QR: "is_midpoint N Q_arg R_arg"
    and bases_are_parallel: "P Q_arg || S_arg R_arg"
  shows "(length M N = (length P Q_arg + length S_arg R_arg) / 2) AND (M N || P Q_arg)"
variables Q T R S A B J K :: point
axiomatization where
  length_RS_is_54: "length R S = 54"
  and length_QT_is_86: "length Q T = 86"
  and A_is_midpoint_of_RQ: "is_midpoint A R Q"   
  and B_is_midpoint_of_ST: "is_midpoint B S T"   
  and J_is_midpoint_of_AQ: "is_midpoint J A Q"   
  and K_is_midpoint_of_BT: "is_midpoint K B T"   
  and RS_is_parallel_to_QT: "R S || Q T"      
lemma length_of_JK_is_78:
  "length J K = 78"
proof -
  have AB_properties: "(length A B = (length R S + length Q T) / 2) AND (A B || R S)"
    using trapezoid_midsegment_theorem[OF A_is_midpoint_of_RQ B_is_midpoint_of_ST RS_is_parallel_to_QT] .
  have length_AB_calculation: "length A B = (54 + 86) / 2"
    by (simp add: AB_properties length_RS_is_54 length_QT_is_86)
  have length_AB_is_70: "length A B = 70"
    by (simp add: length_AB_calculation)
  have AB_is_parallel_to_RS: "A B || R S"
    using AB_properties by simp
  have AB_is_parallel_to_QT: "A B || Q T"
    using parallel_trans[OF AB_is_parallel_to_RS RS_is_parallel_to_QT] .
  have JK_properties: "(length J K = (length A B + length Q T) / 2) AND (J K || A B)"
    using trapezoid_midsegment_theorem[OF J_is_midpoint_of_AQ K_is_midpoint_of_BT AB_is_parallel_to_QT] .
  have length_JK_calculation: "length J K = (70 + 86) / 2"
    by (simp add: JK_properties length_AB_is_70 length_QT_is_86)
  show "length J K = 78"
    by (simp add: length_JK_calculation)
qed
end