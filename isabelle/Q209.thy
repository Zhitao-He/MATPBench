theory Quadrilateral_Similarity_Claim
imports Main
begin
definition ratio_OA_prime_A_prime_A :: real where
  "ratio_OA_prime_A_prime_A = (20::real) / (10::real)"
definition similarity_ratio_k :: real where
  "similarity_ratio_k = ratio_OA_prime_A_prime_A / (ratio_OA_prime_A_prime_A + 1)"
theorem Problem_Statement_Claim:
  fixes area_A_prime_B_prime_C_prime_D_prime area_ABCD :: real 
  assumes areas_related_by_similarity_hypothesis:
    "area_A_prime_B_prime_C_prime_D_prime = similarity_ratio_k^2 * area_ABCD"
  shows "(area_A_prime_B_prime_C_prime_D_prime = (120::real)^2) ==> (area_ABCD = (27::real))"
end