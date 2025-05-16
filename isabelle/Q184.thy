theory SimilarQuadrilaterals
imports Main HOL.Real
begin
locale similar_quadrilaterals =
  fixes d_MN d_NP d_PQ d_QM d_XW d_WZ d_ZY d_YX :: real
  assumes d_MN_9: "d_MN = 9"
  and d_NP_10: "d_NP = 10"
  and d_PQ_7: "d_PQ = 7"
  and d_QM_8: "d_QM = 8"
  and d_XW_4: "d_XW = 4"
  and similar: "∃k. k > 0 ∧ 
               d_MN = k * d_XW ∧ 
               d_NP = k * d_WZ ∧ 
               d_PQ = k * d_ZY ∧ 
               d_QM = k * d_YX"
context similar_quadrilaterals
begin
theorem perimeter_MNPQ_34: "d_MN + d_NP + d_PQ + d_QM = 34"
  using d_MN_9 d_NP_10 d_PQ_7 d_QM_8
  by simp