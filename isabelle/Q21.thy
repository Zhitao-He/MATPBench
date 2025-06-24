theory Function_Degree_Formalization
imports Main
begin
definition f :: "real ⇒ real"
  where "f x = x ^ (3::nat)"
definition degree_of_f :: "nat"
  where "degree_of_f = 3"
end