theory Problem_Formalization
imports Main
begin
axiomatization x :: real  
axiomatization y :: real  
axiomatization len_AC :: real 
axiomatization len_AY :: real 
axiom ax_AC_AY: "len_AC = len_AY"
definition len_AD :: real where
  "len_AD = x + (2::real)"
definition len_CB :: real where
  "len_CB = ((5::real)/(3::real)) * x + (11::real)"
definition len_DB :: real where
  "len_DB = (3::real)*y - (9::real)"
definition len_YD :: real where
  "len_YD = (2::real)*y + (6::real)"
axiom ax_DB_eq_YD: "len_DB = len_YD"
definition len_CY :: real where
  "len_CY = len_AC + len_AY" 
definition len_BY :: real where
  "len_BY = len_DB + len_YD" 
axiom ax_similarity_consequence: "len_CB = (2::real) * len_AD"
axiom ax_positive_lengths:
  "len_AC > (0::real)" and
  "len_AY > (0::real)" and
  "len_AD > (0::real)" and  
  "len_CB > (0::real)" and  
  "len_DB > (0::real)" and  
  "len_YD > (0::real)"      
end