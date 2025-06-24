theory Geometry_Problem_Tangent_Circle
imports
  Main
  "HOL-Analysis.Cartesian_Euclidean_Space"
begin
type_synonym point = "real^2"
definition length_KL :: real where
  "length_KL = 17.0"
definition length_ML_extension :: real where 
  "length_ML_extension = 10.0"
definition geometric_configuration :: "point \<Rightarrow> point \<Rightarrow> point \<Rightarrow> real \<Rightarrow> bool" where
  "geometric_configuration M K L x \<equiv>
    (x > 0.0 \<and>                                
     norm (K - M) = x \<and>                       
     norm (L - K) = length_KL \<and>               
     norm (L - M) = x + length_ML_extension \<and> 
     (K - M) \<cdot> (L - K) = 0.0)"                
definition equation_for_x :: "real \<Rightarrow> bool" where
  "equation_for_x x \<equiv>
    x pow 2 + length_KL pow 2 = (x + length_ML_extension) pow 2"
definition given_x_value :: real where
  "given_x_value = 9.45"
end